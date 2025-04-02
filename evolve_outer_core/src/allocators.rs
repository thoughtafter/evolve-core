#[cfg(feature = "libgc_alloc")]
mod libgc_alloc;

#[cfg(feature = "redirect_malloc")]
mod redirect_malloc;

#[cfg(feature = "libc_alloc")]
mod libc_alloc;

#[cfg(feature = "bdwgc_alloc")]
mod bdwgc_alloc;

mod tests {
    #[allow(unused_imports)]
    use core::alloc::Layout;
    #[allow(unused_imports)]
    use libc_print::libc_println; // tests

    #[test]
    fn test_allocs() {
        #[cfg(feature = "bdwgc_alloc")]
        unsafe {
            bdwgc_alloc::Allocator::initialize();
        }
        // TODO: libgc was slow at >= 64K but not now
        let layout = Layout::from_size_align(1 << 18, 8).unwrap();
        for _n in 1..=100 {
            // libc_println!("allocation {} for {:?}", n, layout);
            let x = unsafe { alloc::alloc::alloc(layout) };
            assert!(!x.is_null());
        }
        libc_println!("DONE test_allocs")
    }
}
