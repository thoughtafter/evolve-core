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

use evolve_inner_core::object::Object;

#[no_mangle]
extern "Rust" fn evolve_string_trim_end(value: &str) -> Object {
    let trimmed = value.trim_end(); // slice
    trimmed.into()
}

#[no_mangle]
extern "Rust" fn evolve_string_trim_start(value: &str) -> Object {
    let trimmed = value.trim_start(); // slice
    trimmed.into()
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
const extern "Rust" fn evolve_string_is_ascii(value: &str) -> bool {
    value.is_ascii()
}

#[no_mangle]
extern "Rust" fn evolve_string_is_blank(value: &str) -> bool {
    value.trim().is_empty()
}

#[cfg(test)]
mod tests {
    use super::*;

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
        let extract = obj.evolve_extract_rust_cstr();
        assert_eq!(c"Hello, world!", extract);
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
        let extract = obj.evolve_extract_rust_cstr();
        assert_eq!(c"Hello, world!", extract);

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
}
