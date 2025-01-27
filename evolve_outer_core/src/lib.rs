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

mod debug {
    use evolve_inner_core::object::{evolve_build_ptr, EvolveAuxData, EvolveClassId, Ptr};
    use libc_print::libc_println;

    #[no_mangle]
    fn object_debug2(class_id: u64, aux4: u64, data: u64) {
        let object = evolve_build_ptr(
            class_id as EvolveClassId,
            aux4 as EvolveAuxData,
            data as Ptr,
        );
        libc_println!("{:?}", object);
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
