use crate::class_ids::STRING_CLASS_ID;
use crate::object::{Object, Ptr};
/**
# String

- should use malloc atomic, but strings do not support custom allocators
- except maybe here: https://doc.rust-lang.org/1.81.0/src/alloc/string.rs.html#2163
- but this means all string functions need to be allocator aware
**/
use core::cmp::Ordering;
use core::slice::from_raw_parts;
use core::str::from_utf8_unchecked;
// use core::str::from_raw_parts;
// use libc_print::libc_println;

mod use_str;
// mod use_cstr;

#[unsafe(no_mangle)]
/// compare bytes in str using memcmp
fn evolve_string_bytes_cmp(value1: &str, value2: &str) -> i64 {
    value1.cmp(value2) as i64
}

#[unsafe(no_mangle)]
/// compare bytes in str using memcmp
pub fn evolve_string_bytes_eq(value1: &str, value2: &str) -> bool {
    if value1.len() != value2.len() {
        return false;
    }
    value1.cmp(value2) == Ordering::Equal
}

impl Object {
    #[unsafe(export_name = "evolve_from_string")]
    pub const fn from_string(len: u32, ptr: Ptr) -> Self {
        Self::with_aux(STRING_CLASS_ID, len, ptr)
    }

    #[inline(always)]
    pub const fn from_str(value: &str) -> Self {
        Self::from_string(value.len() as u32, value.as_ptr().cast::<Object>())
    }

    // https://users.rust-lang.org/t/string-from-raw-parts/50578
    pub const fn extract_str(self) -> &'static str {
        let len = self.aux() as usize;
        let ptr = self.extract_ptr_u8();
        // unsafe { from_raw_parts(ptr, len as usize) }
        // unsafe { core::slice::from_raw_parts(ptr, len as usize)  }
        unsafe {
            let slice = from_raw_parts(ptr, len);
            from_utf8_unchecked(slice)
        }
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

// #[unsafe(no_mangle)]
// fn evolve_string_trim_end(value: &str) -> Object {
//     let trimmed = value.trim_end(); // slice
//                                     // str_to_safe_object(trimmed)
//     trimmed.to_owned().into()
// }
//
// #[unsafe(no_mangle)]
// fn evolve_string_trim_start(value: &str) -> Object {
//     let trimmed = value.trim_start(); // slice
//                                       // str_to_safe_object(trimmed)
//     trimmed.to_owned().into()
// }

// #[unsafe(no_mangle)]
// fn new_string_repeat(value: &str, times: usize) -> Object {
//     value.repeat(times).into()
// }

// #[unsafe(no_mangle)]
// pub fn evolve_string_extract(o: Object) -> &str {
//   from_p o.ptr
// }
