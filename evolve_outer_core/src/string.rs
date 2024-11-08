// use crate::libgc::GC_malloc_atomic_ignore_off_page;
// use core::alloc::{AllocError, Allocator, Layout};
// use core::ptr;
// use core::ptr::NonNull;

// #[no_mangle]
// extern "Rust" fn evolve_string_trim_end(value: &str) -> Object {
//     let trimmed = value.trim_end(); // slice
//     // str_to_safe_object(trimmed)
//     //trimmed.to_owned().into()
//     //String::from_iter(trimmed.chars()).into()
//     // let x = trimmed.to_owned().into_boxed_str();
//     let boxxed = Box::new_in(trimmed.to_owned(), AtomicAllocator);
//     boxxed.deref().into()
// }

use alloc::string::{String, ToString};
use core::cmp::Ordering;
use evolve_inner_core::object::Object;
use unicase::UniCase;

mod parse_f64 {
    use core::str::FromStr;

    #[no_mangle]
    /// return f64 from string, replace strtod
    /// could use nan to signal error
    /// or success bool to match similar calls
    /// better than strtod needing to check errno
    extern "Rust" fn evolve_string_parse_f64(value: &str) -> (f64, bool) {
        // let parsed = value.parse::<f64>();
        let parsed = f64::from_str(value);
        match parsed {
            Ok(f64::INFINITY) => (f64::INFINITY, true),
            Ok(f64::NEG_INFINITY) => (f64::NEG_INFINITY, true),
            Ok(value) => (value, false),
            Err(_) => (0.0, true),
        }
    }

    #[cfg(test)]
    mod tests {
        use super::*;
        use test_case::test_case;

        #[test_case("0" => (0.0, false))]
        #[test_case("+1.7976931348623157e+308" => (f64::MAX, false))]
        #[test_case("-1.7976931348623157e+308" => (f64::MIN, false))]
        #[test_case("+2.2250738585072014e-308" => (f64::MIN_POSITIVE, false))]
        #[test_case("inf" => (f64::INFINITY, true))]
        #[test_case("1e500" => (f64::INFINITY, true))]
        #[test_case("-inf" => (f64::NEG_INFINITY, true))]
        #[test_case("-1e500" => (f64::NEG_INFINITY, true))]
        fn test_parse_f64(value: &str) -> (f64, bool) {
            let parsed = evolve_string_parse_f64(value);
            assert!(!parsed.0.is_nan());
            parsed
        }

        #[test]
        fn test_parse_f64_nan() {
            let parsed = evolve_string_parse_f64("NaN");
            assert!(parsed.0.is_nan());
            assert_eq!(parsed.1, false);
        }
    }
}

mod parse_i64 {
    fn auto_radix(value: &str) -> (&str, u32) {
        let trimmed = value.trim_start().trim_start_matches('+');
        // libc_println!("trimmed: {}", trimmed);
        let hex = trimmed
            .strip_prefix("0x")
            .or_else(|| trimmed.strip_prefix("0X"));
        // libc_println!("hex: {:?}", hex);
        if let Some(hex) = hex {
            // libc_println!("found hex: {}", hex);
            return (hex, 16);
        };

        // need + removed
        (trimmed, 10)
    }

    /// return i64 from string
    /// replace strtoll, no errno
    ///
    #[no_mangle]
    extern "Rust" fn evolve_string_parse_i64(value: &str, radix: u32) -> (i64, bool) {
        let (value, radix) = if radix == 0 {
            auto_radix(value)
        } else {
            (value, radix)
        };
        if !(2..=36).contains(&radix) {
            return (0, true);
        }
        let parsed = i64::from_str_radix(value, radix);
        match parsed {
            Ok(value) => (value, false),
            Err(_) => (0, true),
        }
    }
    #[cfg(test)]
    mod tests {
        use super::*;

        #[test]
        fn test_i64_radix() {
            assert_eq!(i64::from_str_radix("A", 16), Ok(10));
            // assert_eq!(i64::from_str_radix("-0xa", 16), Ok(10));
        }

        #[test]
        fn test_evolve_string_parse_i64_hex() {
            assert_eq!((255, false), evolve_string_parse_i64("0xff", 0));
            assert_eq!((255, false), evolve_string_parse_i64("+0xff", 0));
            // TODO: assert_eq!((-255, false), evolve_string_parse_i64("-0xff", 0));

            assert_eq!((255, false), evolve_string_parse_i64("ff", 16));
            assert_eq!((255, false), evolve_string_parse_i64("+ff", 16));
            assert_eq!((-255, false), evolve_string_parse_i64("-ff", 16));

            // TODO:
            // assert_eq!((255, false), evolve_string_parse_i64("0xff", 16));
        }

        #[test]
        fn test_evolve_string_parse_i64_bin() {
            assert_eq!((7, false), evolve_string_parse_i64("111", 2));
            assert_eq!((7, false), evolve_string_parse_i64("+111", 2));
            assert_eq!((-7, false), evolve_string_parse_i64("-111", 2));

            // TODO:
            // assert_eq!((7, false), evolve_string_parse_i64("0b111", 0));
            // assert_eq!((7, false), evolve_string_parse_i64("0b111", 2));
        }
    }
}

#[no_mangle]
extern "Rust" fn evolve_string_trim_end(value: &str) -> Object {
    let trimmed = value.trim_end(); // slice
    trimmed.to_string().into()
}

#[no_mangle]
extern "Rust" fn evolve_string_trim_start(value: &str) -> Object {
    let trimmed = value.trim_start(); // slice
    trimmed.to_string().into()
}

#[no_mangle]
extern "Rust" fn new_string_repeat(value: &str, times: usize) -> Object {
    // let bytes = value.as_bytes();
    // let repeat = bytes.repeat(times);
    // unsafe { CString::from_vec_unchecked(repeat).into() }
    // let mut repeat = bytes.repeat(times);
    // repeat.push(0);
    // unsafe { CString::from_vec_with_nul_unchecked(repeat) }.into()
    value.repeat(times).into()
}

#[no_mangle]
extern "Rust" fn evolve_string_new_append2(string1: &str, string2: &str) -> Object {
    // let mut appended = string1.to_string();
    // appended.push_str(string2);
    // // libc_println!("\"{}\" + \"{}\" == \"{}\"", string1, string2, appended);
    // appended.into()

    // format!("{}{}", string1, string2).into()

    let mut buffer = String::with_capacity(string1.len() + string2.len());
    buffer.push_str(string1);
    buffer.push_str(string2);
    buffer.into()
}

#[no_mangle]
extern "Rust" fn evolve_string_new_append3(string1: &str, string2: &str, string3: &str) -> Object {
    let capacity = string1.len() + string2.len() + string3.len();
    let mut buffer = String::with_capacity(capacity);
    buffer.push_str(string1);
    buffer.push_str(string2);
    buffer.push_str(string3);
    buffer.into()
}

#[no_mangle]
const extern "Rust" fn evolve_string_is_ascii(value: &str) -> bool {
    value.is_ascii()
}

#[no_mangle]
extern "Rust" fn evolve_string_is_blank(value: &str) -> bool {
    value.trim().is_empty()
}

#[no_mangle]
extern "Rust" fn evolve_string_cmp(lhs: &str, rhs: &str) -> Ordering {
    let a = UniCase::new(lhs);
    let b = UniCase::new(rhs);
    a.cmp(&b)
}

#[cfg(test)]
mod tests {
    use super::*;
    use test_case::test_case;

    use alloc::borrow::ToOwned;
    use alloc::boxed::Box;
    use alloc::ffi::CString;
    use alloc::string::{String, ToString};
    use Ordering::*;

    #[test]
    fn test_lowlevel() {
        let str = "evolve";
        let x = str;
        assert_eq!(str.as_ptr(), x.as_ptr());

        // cloning the reference
        // let clone = str.clone();
        // assert_eq!(str.as_ptr(), clone.as_ptr());

        // new but dropped
        let string = str.to_string();
        assert_ne!(str.as_ptr(), string.as_str().as_ptr());

        // new but dropped
        let owned = str.to_owned();
        assert_ne!(str.as_ptr(), owned.as_str().as_ptr());

        // boxed, raw, box duplicates reference
        let raw = Box::into_raw(Box::new(str));
        assert_eq!(str.as_ptr(), unsafe { *raw }.as_ptr());

        // to_string + leak
        let string = str.to_string();
        let save = string.as_str().as_ptr();
        assert_ne!(str.as_ptr(), save);
        let box_string = Box::new(string);
        assert_eq!(save, box_string.as_ptr());
        let leak_string = Box::leak(box_string);
        assert_eq!(save, leak_string.as_ptr());
        assert_ne!(str.as_ptr(), leak_string.as_str().as_ptr());

        // to_owned + leak
        let owned = str.to_owned();
        let save = owned.as_str().as_ptr();
        assert_ne!(str.as_ptr(), save);
        let box_string = Box::new(owned);
        assert_eq!(save, box_string.as_ptr());
        let leak_string = Box::leak(box_string);
        assert_eq!(save, leak_string.as_ptr());

        let c_string = CString::new(str).unwrap();
        let _ptr = c_string.as_ptr();
        assert_eq!(str.to_string(), c_string.to_string_lossy());
    }

    #[test]
    fn test_trim_end() {
        // let o = {
        //     let x =
        //     let o = evolve_string_trim_end(x);
        //     x.zeroize();
        //     o
        //  };
        let str = "Hello, world!    ";
        let obj = evolve_string_trim_end(str);
        // let extract = obj.evolve_extract_rust_cstr();
        // assert_eq!(c"Hello, world!", extract);
        let extract = String::from(obj);
        assert_eq!("Hello, world!", extract);
        assert_ne!(obj.extract_ptr(), str.as_ptr());
    }

    #[test]
    fn test_trim_start() {
        // let o = {
        //     let x =
        //     let o = evolve_string_trim_end(x);
        //     x.zeroize();
        //     o
        //  };
        let str = "        Hello, world!";
        let obj = evolve_string_trim_start(str);
        let extract = String::from(obj);
        assert_eq!("Hello, world!", extract);

        // let new_ptr = obj.evolve_extract_ptr();
        // let old_ptr = str.as_ptr();
        // let diff = unsafe {
        //     if new_ptr > old_ptr {
        //         new_ptr.sub_ptr(old_ptr)
        //     } else {
        //         old_ptr.sub_ptr(new_ptr)
        //     }
        // };
        // assert_ne!(8, diff);
        // assert_eq!(8, diff);
    }

    #[test_case("Hello, world!", Equal, "HEllO, wOrld!")]
    #[test_case("11", Less, "12")]
    #[test_case("12", Greater, "11")]
    fn test_string_cmp(lhs: &str, order: Ordering, rhs: &str) {
        assert_eq!(order, evolve_string_cmp(lhs, rhs))
    }
}
