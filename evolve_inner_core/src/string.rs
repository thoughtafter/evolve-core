use crate::class_ids::STRING_CLASS_ID;
use crate::object::{Object, Ptr};
/**
# String

- should use malloc atomic, but strings do not support custom allocators
- except maybe here: https://doc.rust-lang.org/1.81.0/src/alloc/string.rs.html#2163
- but this means all string functions need to be allocator aware
**/
use core::cmp::Ordering;
use core::str::from_raw_parts;
// use libc_print::libc_println;

mod use_str;
// mod use_cstr;

#[no_mangle]
#[inline(always)]
/// compare bytes in str using memcmp
extern "Rust" fn evolve_string_bytes_cmp(value1: &str, value2: &str) -> i64 {
    value1.cmp(value2) as i64
}

#[no_mangle]
#[inline(always)]
/// compare bytes in str using memcmp
pub extern "Rust" fn evolve_string_bytes_eq(value1: &str, value2: &str) -> bool {
    if value1.len() != value2.len() {
        return false;
    }
    value1.cmp(value2) == Ordering::Equal
}

impl Object {
    #[export_name = "evolve_from_string"]
    #[inline(always)]
    pub const extern "Rust" fn from_string(len: u32, ptr: Ptr) -> Self {
        Self::with_aux(STRING_CLASS_ID, len, ptr)
    }

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

// #[no_mangle]
// pub extern "Rust" fn evolve_string_extract(o: Object) -> &str {
//   from_p o.ptr
// }
