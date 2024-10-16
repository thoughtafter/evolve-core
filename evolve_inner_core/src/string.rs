/**
# String

- should use malloc atomic, but strings do not support custom allocators
- except maybe here: https://doc.rust-lang.org/1.81.0/src/alloc/string.rs.html#2163
- but this means all string functions need to be allocator aware
**/
use alloc::borrow::ToOwned;
use core::cmp::Ordering;
use core::str::FromStr;

use crate::object::Object;
// use libc_print::libc_println;

#[no_mangle]
extern "Rust" fn evolve_string_cmp(value1: &str, value2: &str) -> i64 {
    value1.cmp(value2) as i64
}

#[no_mangle]
extern "Rust" fn evolve_string_equal_bytes(value1: &str, value2: &str) -> bool {
    value1.cmp(value2) == Ordering::Equal
}

// #[allow(dead_code)]
// #[cfg(feature = "experimental")]
// fn str_to_safe_object_cstring(value: &str) -> Object {
//     let cs = CString::new(value).unwrap_or_default();
//     let len = cs.count_bytes();
//     let len2 = cs.as_bytes().len();
//     let raw = cs.into_raw();
//     evolve_from_string(len as u32, raw as Ptr)
// }

#[no_mangle]
extern "Rust" fn evolve_string_trim_end(value: &str) -> Object {
    let trimmed = value.trim_end(); // slice
                                    // str_to_safe_object(trimmed)
    trimmed.to_owned().into()
}

#[no_mangle]
extern "Rust" fn evolve_string_trim_start(value: &str) -> Object {
    let trimmed = value.trim_start(); // slice
                                      // str_to_safe_object(trimmed)
    trimmed.to_owned().into()
}

#[no_mangle]
extern "Rust" fn evolve_string_is_blank(value: &str) -> bool {
    value.trim().is_empty()
}

#[no_mangle]
const extern "Rust" fn evolve_string_is_ascii(value: &str) -> bool {
    value.is_ascii()
}

#[no_mangle]
extern "Rust" fn new_string(value: &str) -> Object {
    value.into()
}

#[no_mangle]
extern "Rust" fn new_string_repeat(value: &str, times: usize) -> Object {
    value.repeat(times).into()
}

#[no_mangle]
/// return f64 from string, replace strtod
/// could use nan to signal error
/// or success bool to match similar calls
/// better than strtod needing to check errno
extern "Rust" fn evolve_string_parse_f64(value: &str) -> (f64, bool) {
    // let parsed = value.parse::<f64>();
    let parsed = f64::from_str(value);
    match parsed {
        Ok(f64::INFINITY) | Ok(f64::NEG_INFINITY) | Err(_) => (0.0, true),
        Ok(value) => (value, false),
    }
}

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
        crate::string::auto_radix(value)
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

// #[no_mangle]
// pub extern "Rust" fn evolve_string_extract(o: Object) -> &str {
//   from_p o.ptr
// }

#[cfg(test)]
mod tests {
    extern crate alloc;

    use super::*;

    use crate::string::{evolve_string_trim_end, evolve_string_trim_start};
    use alloc::borrow::ToOwned;
    use alloc::boxed::Box;
    use alloc::ffi::CString;
    use alloc::string::ToString;

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
        let extract = obj.evolve_extract_rust_str();
        assert_eq!("Hello, world!", extract);
        assert_ne!(obj.evolve_extract_ptr(), str.as_ptr());
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
        let extract = obj.evolve_extract_rust_str();
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

    #[test]
    fn test_i64_radix() {
        assert_eq!(i64::from_str_radix("A", 16), Ok(10));
        // assert_eq!(i64::from_str_radix("-0xa", 16), Ok(10));
    }

    #[test]
    fn test_evolve_string_parse_i64_hex() {
        assert_eq!((255, false), evolve_string_parse_i64("0xff", 0));

        assert_eq!((255, false), evolve_string_parse_i64("ff", 16));
        assert_eq!((-255, false), evolve_string_parse_i64("-ff", 16));
        assert_eq!((255, false), evolve_string_parse_i64("+ff", 16));

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
