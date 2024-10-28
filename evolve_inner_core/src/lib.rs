#![feature(unbounded_shifts)]
#![feature(str_as_str)]
#![feature(cstr_bytes)]
#![no_std]
extern crate alloc;

// extern crate alloc;

pub mod array;
pub mod class_ids;
mod gmp_mpfr;
mod llvm;
mod mem;
mod misc;
mod string;
pub mod leak;
pub mod object;
// for testing optimizations
// mod testing;

pub mod object_from {
    use crate::class_ids::{ARRAY_CLASS_ID, FALSE_CLASS_ID, FLOAT_CLASS_ID, INT_CLASS_ID, POINTER_CLASS_ID, STRING_CLASS_ID, TRUE_CLASS_ID};
    use crate::object::{evolve_core_build_null, Object, Ptr};
    use alloc::borrow::Cow;
    use alloc::ffi::CString;
    use alloc::string::String;
    use alloc::vec::Vec;
    use core::ffi::{c_char, CStr};
    // use alloc::string::String;
    use crate::leak::{leak_heap_ptr, leak_heap_ref};
    use core::ops::Deref;
    use crate::array::EvolveArray;

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

    impl From<Vec<String>> for Object {
        fn from(value: Vec<String>) -> Self {
            value.into_iter().map(Object::from).collect::<Vec<_>>().into()
        }
    }

    impl From<Vec<&str>> for Object {
        fn from(value: Vec<&str>) -> Self {
            value.into_iter().map(Object::from).collect::<Vec<_>>().into()
        }
    }

    impl From<Vec<Object>> for Object {
        fn from(value: Vec<Object>) -> Self {
            EvolveArray::from(value).into()
        }
    }

    impl From<EvolveArray> for Object {
        fn from(value: EvolveArray) -> Self {
            let ptr = leak_heap_ptr(value);
            Object::new(ARRAY_CLASS_ID, ptr as Ptr)
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
            // let hello = "Hello World\0";
            // let hello2 = c"Hello World";
            // assert_eq!(hello.bytes(), hello2.bytes());
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
