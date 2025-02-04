// #![feature(ptr_sub_ptr)]
// #![feature(allocator_api)]
// #![feature(str_as_str)]
#![no_std]

extern crate alloc;

mod allocators;
mod array;
mod bitmap;
mod gmp_mpfr;
mod heap;
pub mod libc_helpers;
mod map;
mod misc;
mod regex;
mod set;
mod string;

#[cfg(not(any(test, feature = "bdwgc_alloc")))]
#[panic_handler]
fn panic(_info: &core::panic::PanicInfo) -> ! {
    unsafe {
        libc::abort();
    }
}

mod debug {
    use alloc::format;
    // use alloc::format;
    use crate::libc_helpers::puts2_writev;
    use evolve_inner_core::object::{evolve_build_ptr, EvolveAuxData, EvolveClassId, Ptr};
    // use libc_print::libc_println;

    #[no_mangle]
    fn object_debug2(class_id: u64, aux4: u64, data: u64) {
        let object = evolve_build_ptr(
            class_id as EvolveClassId,
            aux4 as EvolveAuxData,
            data as Ptr,
        );
        // libc_println!("{:?}", object);

        let debug = format!("{:?}", object);
        puts2_writev(&debug, "\n");
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
