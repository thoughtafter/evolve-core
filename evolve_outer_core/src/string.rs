#[cfg(test)]
#[path = "string_tests.rs"]
mod tests;

// use crate::libgc::GC_malloc_atomic_ignore_off_page;
// use core::alloc::{AllocError, Allocator, Layout};
// use core::ptr;
// use core::ptr::NonNull;

// #[unsafe(no_mangle)]
// fn evolve_string_trim_end(value: &str) -> Object {
//     let trimmed = value.trim_end(); // slice
//     // str_to_safe_object(trimmed)
//     //trimmed.to_owned().into()
//     //String::from_iter(trimmed.chars()).into()
//     // let x = trimmed.to_owned().into_boxed_str();
//     let boxxed = Box::new_in(trimmed.to_owned(), AtomicAllocator);
//     boxxed.deref().into()
// }

use alloc::string::ToString;
use core::cmp::Ordering;
use evolve_inner_core::object::Object;
use unicase::UniCase;

pub mod parse_f64 {
    use alloc::ffi::CString;
    use core::ptr::null;
    use core::str::FromStr;
    use libc::c_char;
    use ordered_float::OrderedFloat;

    fn handle_errors(_original_str: &str, value: f64) -> (OrderedFloat<f64>, bool) {
        match value {
            f64::INFINITY | f64::NEG_INFINITY => (OrderedFloat(value), true),
            _ if value.is_nan() => (OrderedFloat(value), false),
            _ => (OrderedFloat(value), false),
        }
    }

    /// return f64 from string, replace strtod
    /// could use nan to signal error
    /// or success bool to match similar calls
    /// better than strtod needing to check errno
    #[unsafe(export_name = "evolve_string_parse_f64")]
    pub fn string_parse_f64_core(text: &str) -> (OrderedFloat<f64>, bool) {
        // let parsed = value.parse::<f64>();
        let parsed = f64::from_str(text);
        match parsed {
            Ok(result) => handle_errors(text, result),
            Err(_) => (OrderedFloat(f64::NAN), true),
        }
    }

    // errno set when out of range
    #[allow(dead_code)]
    pub fn string_parse_f64_strtod(value: &str) -> (OrderedFloat<f64>, bool) {
        let nul_terminated = CString::new(value);

        match nul_terminated {
            Ok(nul_terminated) => {
                let result = unsafe {
                    libc::strtod(
                        nul_terminated.into_raw(),
                        null::<c_char>() as *mut *mut c_char,
                    )
                };
                let errno = unsafe { *libc::__errno_location() };
                let flag = errno != 0;
                (OrderedFloat(result), flag)
            }
            Err(_) => (OrderedFloat(f64::NAN), true),
        }
    }

    #[allow(dead_code)]
    pub fn string_parse_f64_lexical(text: &str) -> (OrderedFloat<f64>, bool) {
        let parsed = lexical::parse::<f64, _>(text.as_bytes());
        match parsed {
            Ok(result) => handle_errors(text, result),
            Err(_) => (OrderedFloat(f64::NAN), true),
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
        }

        // need + removed
        (trimmed, 10)
    }

    /// return i64 from string
    /// replace strtoll, no errno
    ///
    #[unsafe(export_name = "evolve_string_parse_i64")]
    pub fn string_parse_i64_core(value: &str, radix: u32) -> (i64, bool) {
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

    #[allow(dead_code)]
    pub fn string_parse_i64_lexical(text: &str, _radix: u32) -> (i64, bool) {
        // const FORMAT: u128 = NumberFormatBuilder::from_radix(radix);
        // let parsed = lexical::parse_with_options<i64, _>(text, );
        let parsed = lexical::parse::<i64, _>(text.as_bytes());

        match parsed {
            Ok(result) => (result, false),
            Err(_) => (0, true),
        }
    }
}

#[unsafe(no_mangle)]
fn evolve_string_trim_end(value: &str) -> Object {
    let trimmed = value.trim_end(); // slice
    trimmed.to_string().into()
}

#[unsafe(no_mangle)]
fn evolve_string_trim_start(value: &str) -> Object {
    let trimmed = value.trim_start(); // slice
    trimmed.to_string().into()
}

#[unsafe(no_mangle)]
fn new_string_repeat(value: &str, times: usize) -> Object {
    // let bytes = value.as_bytes();
    // let repeat = bytes.repeat(times);
    // unsafe { CString::from_vec_unchecked(repeat).into() }
    // let mut repeat = bytes.repeat(times);
    // repeat.push(0);
    // unsafe { CString::from_vec_with_nul_unchecked(repeat) }.into()
    value.repeat(times).into()
}

#[unsafe(no_mangle)]
const fn evolve_string_is_ascii(value: &str) -> bool {
    value.is_ascii()
}

#[unsafe(no_mangle)]
fn evolve_string_is_blank(value: &str) -> bool {
    value.trim().is_empty()
}

#[unsafe(no_mangle)]
fn evolve_string_cmp(lhs: &str, rhs: &str) -> Ordering {
    let a = UniCase::new(lhs);
    let b = UniCase::new(rhs);
    a.cmp(&b)
}

#[unsafe(export_name = "evolve.string.begins?")]
fn evolve_string_starts_with(lhs: &str, rhs: &str) -> bool {
    lhs.starts_with(rhs)
}

#[unsafe(export_name = "evolve.string.ends?")]
fn evolve_string_ends_with(lhs: &str, rhs: &str) -> bool {
    lhs.ends_with(rhs)
}

#[unsafe(export_name = "evolve.string.valid?")]
fn evolve_string_valid(lhs: &str) -> bool {
    core::str::from_utf8(lhs.as_bytes()).is_ok()
}

#[unsafe(export_name = "evolve.string.chars")]
fn evolve_string_chars(lhs: &str) -> usize {
    lhs.chars().count()
}

mod i64 {
    use alloc::borrow::ToOwned;
    use alloc::string::ToString;
    use evolve_inner_core::object::Object;
    use itoa::Buffer;

    #[allow(dead_code)]
    // extra allocations
    fn string_from_i64_core(value: i64) -> Object {
        let string = value.to_string();
        string.into()
    }

    #[allow(dead_code)]
    fn evolve_string_from_i64_itoa(value: i64) -> Object {
        let mut buffer = Buffer::new();
        let printed = buffer.format(value);
        printed.to_owned().into()
    }

    #[allow(dead_code)]
    #[unsafe(export_name = "evolve.string.from.i64")]
    fn string_from_i64_lexical(value: i64) -> Object {
        lexical::to_string(value).into()
    }
}

pub mod f64 {
    use alloc::borrow::ToOwned;
    use alloc::string::ToString;
    use evolve_inner_core::object::Object;
    use ryu::Buffer;

    #[allow(dead_code)]
    fn string_from_f64_core(value: f64) -> Object {
        let string = value.to_string();
        string.into()
    }

    #[allow(dead_code)]
    fn string_from_f64_ryu(value: f64) -> Object {
        let mut buffer = Buffer::new();
        let printed = buffer.format(value);
        printed.to_owned().into()
    }

    #[allow(dead_code)]
    #[unsafe(export_name = "evolve.string.from.f64")]
    fn string_from_f64_lexical(value: f64) -> Object {
        lexical::to_string(value).into()
    }
}
