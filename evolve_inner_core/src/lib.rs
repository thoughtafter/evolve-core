#![feature(unbounded_shifts)]
#![feature(str_as_str)]
#![no_std]
extern crate alloc;

// extern crate alloc;

mod array;
pub mod class_ids;
mod gmp_mpfr;
mod llvm;
mod mem;
mod misc;
mod string;
// for testing optimizations
// mod testing;

pub mod allocates {
    // extern crate alloc;

    use alloc::boxed::Box;
    pub fn leak_heap_ptr<T>(thing: T) -> *const T {
        Box::into_raw(Box::new(thing))
    }

    pub fn leak_heap_ref<T>(thing: T) -> &'static T {
        Box::leak(Box::new(thing))
    }

    pub fn leak_heap_ref_mut<T>(thing: T) -> &'static mut T {
        Box::leak(Box::new(thing))
    }

    // using box leak
    // does not preserve cstring
    // fn str_to_safe_object2(value: &str) -> Object {
    //     // copy_ref_to_heap_and_leak(&value.to_owned()).as_str().into()
    //     //
    //     let owned = value.to_owned();
    //     let box_string = Box::new(owned);
    //     // // let leak_string = Box::leak(box_string);
    //     // // leak_string.as_str().into()
    //     let leak_string = Box::into_raw(box_string);
    //     unsafe { &*leak_string }.as_str().into()
    //
    //     // let heap = String::from(value);
    // }

    // pub fn str_to_safe_object(value: &str) -> Object {
    //     let heap = value.to_owned();
    //
    //     let leaked: &'static str = Box::leak(heap.into_boxed_str());
    //     leaked.into()
    // }

    // same as above
    // pub fn str_to_safe_object(value: &str) -> Object {
    //     // (&*value.to_string().leak()).into()
    //     (&*value.to_owned().leak()).into()
    // }
}

pub mod object {
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
}

pub mod object_from {
    use alloc::borrow::Cow;
    use crate::class_ids::{
        FALSE_CLASS_ID, FLOAT_CLASS_ID, INT_CLASS_ID, POINTER_CLASS_ID, STRING_CLASS_ID,
        TRUE_CLASS_ID,
    };
    use crate::object::{evolve_core_build_null, Object, Ptr};
    use alloc::ffi::CString;
    use alloc::string::{String};
    use core::ffi::{c_char, CStr};
    // use alloc::string::String;
    use crate::allocates::leak_heap_ref;
    use core::ops::Deref;

    // TODO: this generates possibly suboptimal code
    // assembly looks good
    // evolve_from_i1:
    // .cfi_startproc
    // movl	%edi, %eax
    // leaq	4(,%rax,2), %rax
    // xorl	%edx, %edx
    // retq
    #[no_mangle]
    pub const extern "Rust" fn evolve_from_i1(value: bool) -> Object {
        if value {
            evolve_build_true()
        } else {
            evolve_build_false()
        }

        // let class_id = if value {
        //     TRUE_CLASS_ID
        // } else {
        //     FALSE_CLASS_ID
        // };
        // Object::static_class(class_id)
    }

    #[no_mangle]
    pub const extern "Rust" fn evolve_from_i64(value: i64) -> Object {
        Object::new(INT_CLASS_ID, value as Ptr)
    }

    #[no_mangle]
    pub const extern "Rust" fn evolve_from_f64(value: f64) -> Object {
        Object::new(FLOAT_CLASS_ID, value.to_bits() as Ptr)
    }

    #[no_mangle]
    pub const extern "Rust" fn evolve_from_ptr(value: Ptr) -> Object {
        Object::new(POINTER_CLASS_ID, value)
    }

    #[no_mangle]
    pub const extern "Rust" fn evolve_build_true() -> Object {
        Object::static_class(TRUE_CLASS_ID)
    }

    #[no_mangle]
    pub const extern "Rust" fn evolve_build_false() -> Object {
        Object::static_class(FALSE_CLASS_ID)
    }

    #[no_mangle]
    pub const extern "Rust" fn evolve_from_string(len: u32, ptr: *const c_char) -> Object {
        Object::with_aux(STRING_CLASS_ID, len, ptr as Ptr)
    }

    impl From<bool> for Object {
        fn from(i1: bool) -> Self {
            evolve_from_i1(i1)
        }
    }

    impl From<Object> for bool {
        fn from(val: Object) -> bool {
            val.evolve_core_is_true()
        }
    }

    impl From<i64> for Object {
        fn from(int: i64) -> Self {
            evolve_from_i64(int)
        }
    }

    impl From<Object> for i64 {
        fn from(val: Object) -> i64 {
            val.evolve_extract_i64()
        }
    }

    impl From<f64> for Object {
        fn from(float: f64) -> Self {
            evolve_from_f64(float)
        }
    }

    impl From<Object> for f64 {
        fn from(val: Object) -> f64 {
            val.evolve_extract_f64()
        }
    }

    /// create object from &str - assumed to be already leaked
    impl From<&str> for Object {
        fn from(s: &str) -> Self {
            // let bytes = s.as_bytes();
            // slice_from_raw_parts(bytes.as_ptr(), bytes.len());
            // evolve_from_string(s.len() as u32, s.as_ptr() as *const _)
            let c_string = CString::new(s);
            match c_string {
                Ok(ok) => ok.into(),
                Err(_) => evolve_core_build_null(),
            }
        }
    }

    impl From<Cow<'_, str>> for Object {
        fn from(value: Cow<'_, str>) -> Self {
            // value.to_string().into()
            // let x = value.as_str()
            // let result = CString::new(value);
            value.as_str().into()
        }
    }

    impl From<&CStr> for Object {
        fn from(s: &CStr) -> Self {
            evolve_from_string(s.count_bytes() as u32, s.as_ptr())
        }
    }

    impl From<CString> for Object {
        fn from(s: CString) -> Object {
            let x = leak_heap_ref(s);
            x.as_c_str().into()
        }
    }

    impl From<String> for Object {
        fn from(s: String) -> Object {
            let leaked = s.leak();
            leaked.deref().into()
            // evolve_from_string(leaked.len() as u32, leaked.as_ptr() as _)

        }
    }

    impl From<Object> for &str {
        fn from(val: Object) -> &'static str {
            val.evolve_extract_rust_cstr().to_str().unwrap()
        }
    }

    #[cfg(test)]
    mod tests {
        use super::*;
        use test_case::test_case;

        #[test_case(i64::MAX)]
        #[test_case(i64::MIN)]
        #[test_case(0)]
        fn test_i64(test_case: i64) {
            assert_eq!(test_case, evolve_from_i64(test_case).evolve_extract_i64());
            let x: i64 = Object::from(test_case).into();
            assert_eq!(test_case, x);
        }

        #[test_case(f64::MAX)]
        #[test_case(f64::MIN)]
        #[test_case(f64::INFINITY)]
        #[test_case(0.0)]
        fn test_f64(test_case: f64) {
            assert_eq!(test_case, evolve_from_f64(test_case).evolve_extract_f64());
            assert_eq!(-test_case, evolve_from_f64(-test_case).evolve_extract_f64());

            let x: f64 = Object::from(test_case).into();
            assert_eq!(test_case, x);

            let x: f64 = Object::from(-test_case).into();
            assert_eq!(-test_case, x);
        }

        #[test]
        fn test_f64_nan() {
            assert!(evolve_from_f64(f64::NAN).evolve_extract_f64().is_nan());
        }

        #[test]
        fn test_string() {
            let hello = "Hello World\0";
            // let hello2 = evolve_from_string(hello.len() as u32, hello.as_ptr());
            //
            // // println!("{:?}", hello2);
            // assert_eq!(hello, hello2.evolve_extract_rust_str());
        }

        #[test]
        fn test_from_cstr() {
            let hello = c"Hello World";
            assert_eq!(11, hello.count_bytes());
            assert_eq!(11, unsafe { libc::strlen(hello.as_ptr()) });

            let hello2 = Object::from(hello);

            // println!("{:?}", hello2);
            assert_eq!(hello, hello2.evolve_extract_rust_cstr());
        }
    }
}

mod object_default {
    use crate::object::Object;
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
}

mod object_debug {
    use crate::class_ids::{FLOAT_CLASS_ID, INT_CLASS_ID, STRING_CLASS_ID};
    use crate::object::{evolve_build_ptr, EvolveAuxData, EvolveClassId, Object, Ptr};
    use core::fmt::{Debug, Formatter};
    use libc_print::libc_println;

    impl Debug for Object {
        fn fmt(&self, f: &mut Formatter<'_>) -> core::fmt::Result {
            let mut binding = f.debug_struct("Object");
            let common = binding
                .field("class_id", &self.evolve_core_class_id())
                .field("aux", &self.evolve_core_aux())
                .field("ptr", &self.evolve_extract_ptr());

            let more = match self.evolve_core_class_id() {
                STRING_CLASS_ID => common.field("string", &self.evolve_extract_rust_cstr()),
                INT_CLASS_ID => common.field("i64", &self.evolve_extract_i64()),
                FLOAT_CLASS_ID => common.field("f64", &self.evolve_extract_f64()),
                // 7 => {
                //     let rust_str = evolve_regex_to_rust_str(self.regex_ptr());
                //     common.field("regex", &rust_str.to_string())
                // },
                _ => common,
            };
            more.finish()
        }
    }

    #[no_mangle]
    extern "Rust" fn object_debug2(class_id: u64, aux4: u64, data: u64) {
        let object = evolve_build_ptr(
            class_id as EvolveClassId,
            aux4 as EvolveAuxData,
            data as Ptr,
        );
        libc_println!("{:?}", object);
    }
}

mod bool {
    use crate::object::Object;
    use crate::object_from::evolve_build_true;
    // #[no_mangle]
    // unsafe extern "Rust"  fn evolve_build_false2() -> Object {
    //     Object::static_class(FalseClassId as u16)
    // }

    impl Object {
        #[no_mangle]
        pub(crate) extern "Rust" fn evolve_core_is_true(self) -> bool {
            self.evolve_core_class_id() >= evolve_build_true().evolve_core_class_id()
        }

        #[no_mangle]
        pub extern "Rust" fn evolve_core_is_false(self) -> bool {
            !self.evolve_core_is_true()
        }

        #[no_mangle]
        extern "Rust" fn evolve_intrinsic_true(self) -> Object {
            self.evolve_core_is_true().into()
        }

        #[no_mangle]
        extern "Rust" fn evolve_intrinsic_false(self) -> Object {
            self.evolve_core_is_false().into()
        }
    }
}

// #[no_mangle]
// extern "Rust" fn test_str() -> &'static str {
//     "This"
// }

mod i64 {

    // // inclusive between with ordered params
    // #[no_mangle]
    // extern "Rust" fn evolve_i64_is_between_ordered(value: i64, min: i64, max: i64) -> bool {
    //     value >= min && value <= max
    // }
    //
    // // inclusive between with unordered params
    // #[no_mangle]
    // extern "Rust" fn evolve_i64_is_between_unordered(value: i64, min: i64, max: i64) -> bool {
    //     (value >= min && value <= max) | (value >= max && value <= min)
    // }

    #[no_mangle]
    extern "Rust" fn evolve_i64_cmp(value1: i64, value2: i64) -> i64 {
        value1.cmp(&value2) as i64
    }

    // no need for signum when cmp(0) i sufficiently fast
    // #[no_mangle]
    // extern "Rust" fn evolve_i64_signum(value: i64) -> i64 {
    //     value.signum()
    // }

    /// return dividend and error/overflow
    /// - use checked_div which handles this
    /// - cannot use overflowing_div because of panic on divide by zero
    #[no_mangle]
    const extern "Rust" fn evolve_i64_checked_div(lhs: i64, rhs: i64) -> (i64, bool) {
        if let Some(dividend) = lhs.checked_div(rhs) {
            (dividend, false)
        } else {
            (0, true)
        }
    }

    #[no_mangle]
    const extern "Rust" fn evolve_i64_checked_rem(lhs: i64, rhs: i64) -> (i64, bool) {
        if let Some(rem) = lhs.checked_rem(rhs) {
            (rem, false)
        } else {
            (0, true)
        }
    }

    /// safe rem - no checking needed
    /// min / -1 = 0, though overflow there is no remainder
    /// x / 0 = x, can be checked or used
    #[no_mangle]
    #[allow(unused)]
    const extern "Rust" fn evolve_i64_safe_rem(lhs: i64, rhs: i64) -> i64 {
        match rhs {
            0 => lhs,
            -1 => 0,
            _ => lhs % rhs,
        }
    }

    #[no_mangle]
    const extern "Rust" fn evolve_i64_checked_div_rem(lhs: i64, rhs: i64) -> (i64, i64) {
        let div = lhs.checked_div(rhs);
        let rem = lhs.checked_rem(rhs);

        match (div, rem) {
            (Some(div), Some(rem)) => (div, rem),
            _ => (-1, -1),
        }
    }

    #[no_mangle]
    const extern "Rust" fn evolve_i64_overflowing_abs(value: i64) -> (i64, bool) {
        value.overflowing_abs()
    }

    #[no_mangle]
    const extern "Rust" fn evolve_i64_overflowing_neg(value: i64) -> (i64, bool) {
        value.overflowing_neg()
    }

    #[no_mangle]
    const extern "Rust" fn evolve_i64_nabs(value: i64) -> i64 {
        if value > 0 {
            -value
        } else {
            value
        }
    }

    #[no_mangle]
    extern "Rust" fn evolve_i64_ashr(lhs: i64, rhs: u32) -> i64 {
        lhs.unbounded_shr(rhs)
    }

    #[no_mangle]
    extern "Rust" fn evolve_i64_ashr2(lhs: i64, rhs: u32) -> i64 {
        lhs.checked_shr(rhs).unwrap_or_default()
    }

    #[no_mangle]
    extern "Rust" fn evolve_i64_lshr(lhs: u64, rhs: u32) -> u64 {
        lhs.unbounded_shr(rhs)
    }

    #[no_mangle]
    extern "Rust" fn evolve_i64_lshr2(lhs: u64, rhs: u32) -> u64 {
        lhs.checked_shr(rhs).unwrap_or_default()
    }

    // overflowing_shl - checks for overflow of bits, not result
    #[no_mangle]
    extern "Rust" fn evolve_i64_overflowing_shl(lhs: i64, rhs: u32) -> (i64, bool) {
        let shl = lhs.unbounded_shl(rhs);
        let shr = shl.unbounded_shr(rhs);
        (shl, lhs != shr)
    }

    #[no_mangle]
    extern "Rust" fn evolve_i64_unbounded_shl(lhs: i64, rhs: u32) -> i64 {
        lhs.unbounded_shl(rhs)
    }

    mod tests {
        #[allow(unused_imports)]
        use crate::i64::*;

        #[test]
        fn test_unbounded_shl() {
            assert_eq!(i64::MAX << 1, -2);
            assert_eq!(i64::MIN << 1, 0);

            assert_eq!(evolve_i64_unbounded_shl(i64::MAX, 0), i64::MAX);
            assert_eq!(evolve_i64_unbounded_shl(i64::MAX, 1), -2);

            assert_eq!(evolve_i64_unbounded_shl(i64::MIN, 0), i64::MIN);
            assert_eq!(evolve_i64_unbounded_shl(i64::MIN, 1), 0);

            assert_eq!(evolve_i64_unbounded_shl(1, 1), 2);
            assert_eq!(evolve_i64_unbounded_shl(-1, 1), -2);
        }

        #[test]
        fn test_overflowing_shl() {
            assert_eq!(evolve_i64_overflowing_shl(i64::MAX, 0), (i64::MAX, false));
            assert_eq!(evolve_i64_overflowing_shl(i64::MAX, 1), (-2, true));

            assert_eq!(evolve_i64_overflowing_shl(i64::MIN, 0), (i64::MIN, false));
            assert_eq!(evolve_i64_overflowing_shl(i64::MIN, 1), (0, true));

            assert_eq!(evolve_i64_overflowing_shl(1, 1), (2, false));
            assert_eq!(evolve_i64_overflowing_shl(-1, 1), (-2, false));
        }

        #[test]
        fn test_evolve_i64_checked_div_rem() {
            assert_eq!((2, 1), evolve_i64_checked_div_rem(5, 2));
            assert_eq!((-2, -1), evolve_i64_checked_div_rem(-5, 2));
            assert_eq!((-2, 1), evolve_i64_checked_div_rem(5, -2));
            assert_eq!((2, -1), evolve_i64_checked_div_rem(-5, -2));

            assert_eq!((-i64::MAX, 0), evolve_i64_checked_div_rem(i64::MAX, -1));
            assert_eq!((-1, -1), evolve_i64_checked_div_rem(i64::MIN, -1));
        }
    }
}

mod f64 {
    use ordered_float::OrderedFloat;

    // #[no_mangle]
    // extern "Rust" fn evolve_f64_signum(value: f64) -> i64 {
    //     // value.signum() as i64
    //     OrderedFloat(value).cmp(&OrderedFloat(0.0)) as i64
    // }

    #[no_mangle]
    // https://doc.rust-lang.org/std/primitive.f64.html#method.total_cmp
    // was evolve_math_cmp_f64
    extern "Rust" fn evolve_f64_cmp(value1: f64, value2: f64) -> i64 {
        // works but slightly slower
        // value1.total_cmp(&value2) as i64

        // performance seems better than total_cmp
        OrderedFloat(value1).cmp(&OrderedFloat(value2)) as i64
    }

    // not needed with saturated fptosi
    // #[no_mangle]
    // extern "Rust" fn evolve_f64_fits_i64(value: f64) -> bool {
    //     (value <= i64::MAX as f64) && (value >= i64::MIN as f64)
    // }
}

// #[cfg(not(test))]
// #[panic_handler]
// fn panic(_info: &core::panic::PanicInfo) -> ! {
//     unsafe { libc::abort(); }
// }

mod io {
    // use alloc::ffi::CString;
    use core::mem;
    use libc::{timeval, FILE, RUSAGE_SELF};
    use libc_print::{libc_print, libc_println};

    // TODO: allocators-less, probably using writev and iovec
    // libc_print! may not allocate?
    #[no_mangle]
    extern "Rust" fn evolve_puts2(string: &str, newline: &str) -> u64 {
        // let ptr = string.as_ptr() as *const c_void;
        // unsafe { libc::write(STDOUT_FILENO, ptr, string.len()); }
        libc_print!("{}{}", string, newline);
        0
        //let output = format!("{}{}", string, newline);
        //fwrite(file, )
        // let iov = libc::iovec { iov_base: string.as_ptr() as *mut c_void, iov_len: string.len() };
        //
        // let count = unsafe {
        //     libc::writev(libc::STDOUT_FILENO, &iov, 1)
        // };
        //
        // count as u64
    }

    #[no_mangle]
    extern "Rust" fn evolve_stdout() -> *mut FILE {
        let mode = c"w";
        unsafe { libc::fdopen(libc::STDOUT_FILENO, mode.as_ptr()) }
    }

    #[no_mangle]
    extern "Rust" fn evolve_stderr() -> *mut FILE {
        let mode = c"w";
        unsafe { libc::fdopen(libc::STDERR_FILENO, mode.as_ptr()) }
    }

    #[no_mangle]
    extern "Rust" fn evolve_stdin() -> *mut FILE {
        let mode = c"r";
        unsafe { libc::fdopen(libc::STDIN_FILENO, mode.as_ptr()) }
    }

    const fn calc(tv: timeval) -> f64 {
        ((tv.tv_sec as f64 * 1_000_000.0) + tv.tv_usec as f64) / 1_000_000.0
    }

    #[no_mangle]
    extern "Rust" fn evolve_write_resource_usage() {
        let mut usage: libc::rusage = unsafe { mem::zeroed() };
        unsafe {
            libc::getrusage(RUSAGE_SELF, &mut usage);
        }
        let utime = calc(usage.ru_utime);
        let stime = calc(usage.ru_stime);
        libc_println!("user: {} kernel: {}", utime, stime);
    }
}

// #[no_mangle]
//  extern "Rust" fn evolve_build_ptr_rust(class_id: u32, aux4: u32, ptr: *const u64) -> (u64, *const u64) {
//     (((class_id as u64) << 32) | aux4 as u64, ptr)
// }

// #[no_mangle]
//  extern "C" fn evolve_build_i64_c(i: usize) -> Object {
//     Object {
//         tag: 4,
//         ptr: i as *const i64,
//     }
// }
// #[no_mangle]
//  extern "C" fn evolve_extract_i64_c(o: Object) -> usize {
//     o.ptr.addr()
// }

// #[no_mangle]
// extern "C" fn call_from_c() {
//     println!("Just called a Rust function from C!");
// }
//
// #[no_mangle]
// extern "Rust" fn call_from_rust() {
//     println!("Just called a Rust function from C!");
// }

mod time {
    use libc::timespec;

    fn timespec_to_f64(ts: timespec) -> f64 {
        ts.tv_sec as f64 + (ts.tv_nsec as f64 * 1e-9)
    }

    #[no_mangle]
    extern "Rust" fn evolve_posix_clock_monotonic() -> f64 {
        let mut x = timespec {
            tv_sec: 0,
            tv_nsec: 0,
        };

        unsafe {
            libc::clock_gettime(libc::CLOCK_MONOTONIC, &mut x);
        }
        timespec_to_f64(x)
    }
}

#[cfg(test)]
mod tests {
    use crate::class_ids::INT_CLASS_ID;
    use crate::object::{EvolveClassId, Object};
    use crate::object_from::evolve_from_i64;
    // use test_case;

    #[test]
    #[ignore]
    fn test_evolve_core_class() {
        let i = evolve_from_i64(42);
        assert_eq!(INT_CLASS_ID, i.evolve_core_class_id());

        let i_class_x1 = i.evolve_core_class();
        assert_eq!(INT_CLASS_ID - 1, i_class_x1.evolve_core_class_id());

        let i_class_x2 = i_class_x1.evolve_core_class();
        assert_eq!(65534, i_class_x2.evolve_core_class_id());
        assert_eq!(
            INT_CLASS_ID - 1,
            i_class_x2.evolve_extract_i64() as EvolveClassId
        );

        let i_class_x3 = i_class_x2.evolve_core_class();
        assert_eq!(65534, i_class_x3.evolve_core_class_id());
        assert_eq!(65534, i_class_x3.evolve_extract_i64());

        let i_class_x4 = i_class_x3.evolve_core_class();
        assert_eq!(65534, i_class_x4.evolve_core_class_id());
        assert_eq!(65534, i_class_x4.evolve_extract_i64());
    }

    #[test]
    fn test_object_from_str() {
        let str = "HELLO";
        let o = Object::from(str);
        let x: &str = o.into();
        assert_eq!(str, x);
    }

    // #[test]
    // fn test_object_from_string() {
    //     let str = "HELLO";
    //     let string = str.to_owned();
    //     let o = Object::from(string);
    //     assert_eq!(str, o.string_str());
    // }

    // #[test]
    // fn test_object_from_cow_str() {
    //     let str = "HELLO";
    //     let o = Object::from(Cow::from(str));
    //     assert_eq!(str, o.string_str());
    // }
}
