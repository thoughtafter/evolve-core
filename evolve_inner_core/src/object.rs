pub mod convert;
mod debug;
mod default;
mod hash;

use crate::class_ids::*;
// use alloc::string::String;
// use crate::f64::evolve_f64_cmp;
// use crate::i64::evolve_i64_cmp;
// use crate::intrinsic::cmp::{, evolve_intrinsic_eq};
// use crate::string::evolve_string_bytes_eq;
use core::cmp::Ordering;
use core::ffi::CStr;
use core::slice;
use libc_print::libc_println;
// use crate::intrinsic;
// use libc_print::libc_println;
// #[no_mangle]
// pub static NULLTHING: Object = Object::null();

// extern "C" {
//
//     static FalseClassId: u32;
// }

// extern "C" {
//     static FalseClassID: u32;
// }

pub type Ptr = *const u8;
pub type PtrMut = *mut u8;
pub(crate) type EvolveClassId = u16;
pub(crate) type EvolveAuxData = u32;

#[repr(C)]
#[derive(Clone, Copy)]
pub struct Object {
    tag: u64,
    ptr: Ptr,
}

// extern "C" {
//     #[use]
//     pub fn evolve_regex_from_string(string: &str) -> Object;
// }

// #[no_mangle]
// pub const fn evolve_big_int_from_srcptr(mpz: mpz_srcptr) -> Object {
//     Object {
//         tag: evolve_internal_build_tag(BIGINT_CLASS_ID, 16),
//         ptr: mpz as Ptr,
//     }
// }

#[no_mangle]
pub const fn evolve_build_ptr(class_id: EvolveClassId, aux4: EvolveAuxData, ptr: Ptr) -> Object {
    Object::with_aux(class_id, aux4, ptr)
}

impl Object {
    /// evaluate pointer as immutable reference of T
    pub fn to_ref<T>(&self) -> &'static T {
        let const_ptr = self.ptr as *const T;
        unsafe { &*const_ptr }
    }

    /// evaluate pointer as mutable reference of T
    pub fn to_mut<T>(&mut self) -> &'static mut T {
        let mut_ptr = self.ptr as *mut T;
        unsafe { &mut *mut_ptr }
    }

    pub const fn from_ref<T>(class_id: EvolveClassId, ref_t: &T) -> Self {
        let ptr = ref_t as *const T as Ptr;
        Self::with_aux(class_id, 0, ptr)
    }

    pub const fn with_aux(class_id: EvolveClassId, aux: EvolveAuxData, ptr: Ptr) -> Self {
        Object {
            tag: evolve_internal_build_tag(class_id, aux),
            ptr,
        }
    }

    pub const fn new(class_id: EvolveClassId, ptr: Ptr) -> Self {
        Self::with_aux(class_id, 0, ptr)
    }

    pub(crate) const fn static_class(class_id: EvolveClassId) -> Self {
        Self::new(class_id, 0 as Ptr)
    }

    #[export_name = "evolve_core_build_null"]
    pub const fn null() -> Self {
        Self::static_class(0)
    }

    #[export_name = "evolve.core.tag"]
    #[inline(always)]
    pub(crate) const fn tag(self) -> u64 {
        self.tag
    }

    #[export_name = "evolve.core.class_id.u16"]
    #[inline(always)]
    pub(crate) const fn class_id(self) -> EvolveClassId {
        self.tag as EvolveClassId
    }

    #[export_name = "evolve.core.class_id"]
    #[inline(always)]
    pub(crate) const fn class_id_u64(self) -> u64 {
        self.class_id() as u64
    }

    #[export_name = "evolve.core.aux4"]
    #[inline(always)]
    pub(crate) const fn aux(self) -> EvolveAuxData {
        (self.tag >> 32) as EvolveAuxData
    }

    #[export_name = "evolve_core_class"]
    /// return the class object of the given object
    /// stateful instances are odd numbers, stateless are even
    /// class of odd is -1
    /// class of even is max - 1
    // eg:
    // 0 = @null
    // 1 = non-existent instance of null
    // 2 = @error - stateless
    // 4 = @error - stateful
    // 6 = @false
    // 8 = @true
    // 10 = @i64
    // 11 = instance of @i64
    pub(crate) const fn class(self) -> Object {
        let class_id = self.class_id();
        if (class_id & 1) == 0 {
            Object::new(u16::MAX - 1, class_id as Ptr)
        } else {
            Object::new(class_id - 1, class_id as Ptr)
        }
    }

    #[export_name = "evolve.core.is?"]
    #[inline(always)]
    pub(crate) const fn is_same(self, rhs: Object) -> bool {
        // if self.tag != rhs.tag {
        //     return false;
        // }
        //
        // let option = self.ptr.guaranteed_eq(rhs.ptr);
        //
        // match option {
        //     None => false,
        //     Some(bool) => bool,
        // }

        (self.tag == rhs.tag) && (self.extract_i64() == rhs.extract_i64())
    }

    // #[export_name = "evolve_core_is_not"]
    // const fn is_not_same(self, rhs: Object) -> bool {
    //     !self.is_same(rhs)
    // }

    #[export_name = "evolve.core.null?"]
    #[inline(always)]
    pub const fn is_null(self) -> bool {
        self.tag == 0
    }

    // #[export_name = "evolve.core.intrinsic_fail?"]
    // #[inline(always)]
    // pub const fn intrinsic_fail(self) -> bool {
    //     self.tag == EVOLVE_FAILED_INTRINSIC_ID as u64
    // }

    // #[no_mangle]
    // pub const fn evolve_extract_rust_str<'a>(self) -> &'a str {
    //     let len = self.evolve_core_aux();
    //     let ptr = self.evolve_extract_ptr();
    //     unsafe { from_raw_parts(ptr, len as usize) }
    //     // unsafe { core::slice::from_raw_parts(ptr, len as usize)  }
    // }

    #[no_mangle]
    pub const fn evolve_extract_rust_cstr<'a>(self) -> &'a CStr {
        let len = self.aux();
        let ptr = self.extract_ptr();
        let bytes = unsafe { slice::from_raw_parts(ptr, len as usize + 1) };
        unsafe { CStr::from_bytes_with_nul_unchecked(bytes) }
        // unsafe { from_raw_parts(ptr, len as usize) }
        // unsafe { core::slice::from_raw_parts(ptr, len as usize)  }
    }
}

//
// pub fn copy_to_heap_and_leak<T>(thing: T) -> *const T {
//     Box::into_raw(Box::new(thing))
// }

// impl From<String> for Object {
//     fn from(s: String) -> Self {
//         let len = s.len();
//         let ptr = copy_to_heap_and_leak(s.clone());
//         evolve_from_string(len as u32, ptr as Ptr)
//     }
// }
//
// impl From<Cow<'_, str>> for Object {
//     fn from(s: Cow<'_, str>) -> Self {
//         evolve_from_string(s.len() as u32, s.as_ptr())
//     }
// }

// impl Debug for Object {
//     fn fmt(&self, f: &mut Formatter<'_>) -> core::fmt::Result {
//         let mut binding = f
//             .debug_struct("Object");
//         let common = binding
//             .field("class_id", &self.class_id())
//             .field("aux", &self.aux())
//             .field("ptr", &self.ptr);
//
//         let more = match self.class_id() {
//             6 => {
//                 common.field("string", &self.string_str())
//             },
//             7 => {
//                 // let rust_str = evolve_regex_to_rust_str(self.regex_ptr());
//                 // common.field("regex", &rust_str.to_string())
//                 common.field("regex", &"unknown")
//             },
//             _ => common,
//         };
//         more.finish()
//     }
// }

// type EvolveMap = IndexMap<Object, Object, RandomState>;
// type EvolveSet = IndexSet<Object, RandomState>;

const fn evolve_internal_build_tag(class_id: EvolveClassId, aux: EvolveAuxData) -> u64 {
    // let bits = mem::size_of_val(&aux) << 3;
    let bits = 32;
    ((aux as u64) << bits) | (class_id as u64)
}

impl Eq for Object {}

impl PartialEq<Self> for Object {
    fn eq(&self, other: &Self) -> bool {
        self.cmp(other) == Ordering::Equal
    }
    // fn eq(&self, other: &Self) -> bool {
    //     if self.is_same(*other) {
    //         return true;
    //     }
    //
    //     // libc_println!("NOT SAME");
    //
    //     let test = evolve_intrinsic_eq(*self, *other);
    //
    //     // libc_println!("intrinsic_eq says: {:?}", test);
    //
    //     if test.is_same(Object::from(true)) {
    //         return true;
    //     }
    //     if test.is_same(Object::from(false)) {
    //         return false;
    //     }
    //
    //     let further = match (self.tag as u16, other.tag as u16) {
    //         (STRING_CLASS_ID, STRING_CLASS_ID) => Some(evolve_string_bytes_eq(
    //             self.extract_str(),
    //             other.extract_str(),
    //         )),
    //         _ => None,
    //     };
    //
    //     if let Some(ret_val) = further {
    //         return ret_val;
    //     }
    //
    //     libc_println!("EQ FAILURE: {:?} {:?}", self, other);
    //     panic!("NEED TO DO SOMETHING");
    //
    //     // TODO: call interface for eq
    //     // false
    // }
}

impl PartialOrd<Self> for Object {
    fn partial_cmp(&self, other: &Self) -> Option<Ordering> {
        Some(self.cmp(other))
    }
}

fn tag_cmp(lhs: Object, rhs: Object) -> Ordering {
    lhs.tag.cmp(&rhs.tag)
}

fn i64_cmp(lhs: Object, rhs: Object) -> Ordering {
    lhs.extract_i64().cmp(&rhs.extract_i64())
}

fn o64_cmp(lhs: Object, rhs: Object) -> Ordering {
    lhs.extract_o64().cmp(&rhs.extract_o64())
}

fn str_cmp(lhs: Object, rhs: Object) -> Ordering {
    lhs.extract_str().cmp(rhs.extract_str())
}

/// Ord is required for:
/// - heaps: binary_heap, min-max-heap
/// - btrees: btreemap, btreeset
impl Ord for Object {
    fn cmp(&self, other: &Self) -> Ordering {
        if self.is_same(*other) {
            return Ordering::Equal;
        }

        let lhs_tag = self.tag();
        let rhs_tag = other.tag();
        if lhs_tag == rhs_tag {
            match lhs_tag as u16 {
                INT_CLASS_ID => return i64_cmp(*self, *other),
                FLOAT_CLASS_ID => return o64_cmp(*self, *other),
                STRING_CLASS_ID => return str_cmp(*self, *other),
                _ => {}
            }
        }

        // TODO: call interface.cmp

        tag_cmp(*self, *other)
    }
}

#[no_mangle]
fn object_debug2(class_id: u64, aux4: u64, data: u64) {
    let object = evolve_build_ptr(
        class_id as EvolveClassId,
        aux4 as EvolveAuxData,
        data as Ptr,
    );
    libc_println!("{:?}", object);
}

#[export_name = "evolve.from.ptr.app"]
fn evolve_from_ptr_app(argc: u32, argv: Ptr) -> Object {
    evolve_build_ptr(APP_CLASS_ID, argc, argv)
}
