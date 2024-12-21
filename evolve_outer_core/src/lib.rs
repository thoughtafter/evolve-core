// #![feature(ptr_sub_ptr)]
// #![feature(allocator_api)]
// #![feature(str_as_str)]
#![no_std]

extern crate alloc;

mod allocators;
mod array;
#[cfg(feature = "binary_heap")]
mod binary_heap;
mod bitmap;
#[cfg(feature = "min_max_heap")]
mod heap;
#[cfg(feature = "regex")]
mod regex;
mod string;
// #[cfg(feature = "stringmap")]
// mod stringmap;
mod gmp_mpfr;
mod libc_helpers;
mod map;
mod misc;
mod set;

#[cfg(not(any(test, feature = "bdwgc_alloc")))]
#[panic_handler]
fn panic(_info: &core::panic::PanicInfo) -> ! {
    unsafe {
        libc::abort();
    }
}

// #[lang = "eh_personality"]
// extern "C" fn rust_eh_personality() {}

// #[no_mangle]
// extern "C" fn rust_eh_personality() {}

#[cfg(test)]
mod tests {
    use alloc::collections::VecDeque;
    use alloc::vec;

    #[test]
    fn test_containers() {
        let x = vec![1, 2, 3];
        assert_eq!(3, x.len());

        let y = VecDeque::from([4, 5, 6]);
        assert_eq!(3, y.len());
    }
}
