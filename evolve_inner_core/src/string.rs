use crate::object::Object;
/**
# String

- should use malloc atomic, but strings do not support custom allocators
- except maybe here: https://doc.rust-lang.org/1.81.0/src/alloc/string.rs.html#2163
- but this means all string functions need to be allocator aware
**/
use core::cmp::Ordering;
use core::str::{from_raw_parts, FromStr};
// use libc_print::libc_println;

mod use_str;
// mod use_cstr;

#[no_mangle]
extern "Rust" fn evolve_string_cmp(value1: &str, value2: &str) -> i64 {
    value1.cmp(value2) as i64
}

#[no_mangle]
pub extern "Rust" fn evolve_string_equal_bytes(value1: &str, value2: &str) -> bool {
    value1.cmp(value2) == Ordering::Equal
}

impl Object {
    pub const fn extract_str(self) -> &'static str {
        let len = self.aux();
        let ptr = self.extract_ptr();
        unsafe { from_raw_parts(ptr, len as usize) }
        // unsafe { core::slice::from_raw_parts(ptr, len as usize)  }
    }

    // pub fn as_cstr(self) -> &'static CStr {
    //     CString::new::<&str>(self.into()).unwrap().as_c_str()
    // }
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

// #[no_mangle]
// extern "Rust" fn evolve_string_trim_end(value: &str) -> Object {
//     let trimmed = value.trim_end(); // slice
//                                     // str_to_safe_object(trimmed)
//     trimmed.to_owned().into()
// }
//
// #[no_mangle]
// extern "Rust" fn evolve_string_trim_start(value: &str) -> Object {
//     let trimmed = value.trim_start(); // slice
//                                       // str_to_safe_object(trimmed)
//     trimmed.to_owned().into()
// }

// #[no_mangle]
// extern "Rust" fn new_string_repeat(value: &str, times: usize) -> Object {
//     value.repeat(times).into()
// }

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
    use super::*;

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
