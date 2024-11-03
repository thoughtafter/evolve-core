use core::cmp::Ordering;
use core::ffi::CStr;
use core::slice;

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
pub const extern "Rust" fn evolve_core_build_null() -> Object {
    Object::null()
}

#[no_mangle]
pub const extern "Rust" fn evolve_build_ptr(
    class_id: EvolveClassId,
    aux4: EvolveAuxData,
    ptr: Ptr,
) -> Object {
    Object::with_aux(class_id, aux4, ptr)
}

impl Object {
    /// evaluate pointer as immutable reference of T
    pub fn to_ref<T>(&self) -> &'static T {
        unsafe { &*(self.ptr as *const T) }
    }

    /// evaluate pointer as mutable reference of T
    pub fn to_mut<T>(&mut self) -> &'static mut T {
        unsafe { &mut *(self.ptr as *mut T) }
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

    pub const fn null() -> Self {
        Self::static_class(0)
    }

    #[no_mangle]
    pub(crate) const extern "Rust" fn evolve_core_class_id(self) -> EvolveClassId {
        self.tag as EvolveClassId
    }

    #[no_mangle]
    pub(crate) const extern "Rust" fn evolve_core_tag(self) -> u64 {
        self.tag
    }

    #[no_mangle]
    pub(crate) const extern "Rust" fn evolve_core_aux(self) -> EvolveAuxData {
        (self.tag >> 32) as EvolveAuxData
    }

    #[no_mangle]
    /// return the class object of the given object
    /// stateful instances are odd numbers, stateless are even
    /// class of odd is -1
    /// class of even is max - 1
    // eg:
    // 0 = @null
    // 1 = non-existent instance of null
    // 2 = @error
    // 4 = @false
    // 6 = @true
    // 8 = @i64
    // 9 = instance of @i64
    pub(crate) const extern "Rust" fn evolve_core_class(self) -> Object {
        let class_id = self.evolve_core_class_id();
        if (class_id & 1) == 0 {
            Object::new(u16::MAX - 1, class_id as Ptr)
        } else {
            Object::new(class_id - 1, class_id as Ptr)
        }
    }

    #[no_mangle]
    pub const extern "Rust" fn evolve_extract_ptr(self) -> Ptr {
        self.ptr
    }

    /// extract ptr value as i64, cannot be const
    #[no_mangle]
    pub extern "Rust" fn evolve_extract_i64(self) -> i64 {
        self.evolve_extract_ptr() as i64
    }

    /// extract ptr value as f64, cannot be const
    #[no_mangle]
    pub extern "Rust" fn evolve_extract_f64(self) -> f64 {
        f64::from_bits(self.evolve_extract_ptr() as u64)
    }

    // #[no_mangle]
    // pub const fn evolve_extract_rust_str<'a>(self) -> &'a str {
    //     let len = self.evolve_core_aux();
    //     let ptr = self.evolve_extract_ptr();
    //     unsafe { from_raw_parts(ptr, len as usize) }
    //     // unsafe { core::slice::from_raw_parts(ptr, len as usize)  }
    // }

    #[no_mangle]
    pub const fn evolve_extract_rust_cstr<'a>(self) -> &'a CStr {
        let len = self.evolve_core_aux();
        let ptr = self.evolve_extract_ptr();
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

#[no_mangle]
extern "Rust" fn evolve_core_is(a: Object, b: Object) -> bool {
    (a.tag == b.tag) && (a.ptr == b.ptr)
}

#[no_mangle]
extern "Rust" fn evolve_core_is_not(a: Object, b: Object) -> bool {
    !evolve_core_is(a, b)
}

#[no_mangle]
pub extern "Rust" fn evolve_core_null(a: Object) -> bool {
    a.tag == 0
}

const fn evolve_internal_build_tag(class_id: EvolveClassId, aux: EvolveAuxData) -> u64 {
    // let bits = mem::size_of_val(&aux) << 3;
    let bits = 32;
    ((aux as u64) << bits) | (class_id as u64)
}

impl Eq for Object {}

impl PartialEq<Self> for Object {
    fn eq(&self, other: &Self) -> bool {
        if evolve_core_is(*self, *other) {
            return true;
        }

        // TODO: call interface for eq
        false
    }
}

impl PartialOrd<Self> for Object {
    fn partial_cmp(&self, other: &Self) -> Option<Ordering> {
        Some(self.cmp(other))
    }
}

impl Ord for Object {
    fn cmp(&self, _other: &Self) -> Ordering {
        todo!()
    }
}

const EVOLVE_STATIC_NULL: &Object = &Object::null();

impl Default for Object {
    fn default() -> Self {
        // Self::null()
        *EVOLVE_STATIC_NULL
    }
}

impl Default for &Object {
    fn default() -> Self {
        EVOLVE_STATIC_NULL
    }
}
