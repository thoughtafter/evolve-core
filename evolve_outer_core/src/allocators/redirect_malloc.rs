use core::alloc::Layout;
use libc::size_t;

#[allow(dead_code)]
fn get_layout_from_size(bytes: usize) -> Layout {
    if let Ok(layout) = Layout::from_size_align(bytes as usize, 1) {
        layout
    } else {
        panic!("invalid layout")
    }
}

#[no_mangle]
extern "C" fn malloc(bytes: usize) -> *mut u8 {
    // libc_println!("mallocating {} bytes", bytes);
    //let layout = get_layout_from_size(bytes);
    let layout = unsafe { Layout::from_size_align_unchecked(bytes as usize, 1) };
    let ptr = unsafe { alloc::alloc::alloc(layout) };
    // libc_println!("> {:?} malloc, {} bytes", ptr, bytes);
    ptr
    // unsafe {
    //     // libc::malloc(bytes)
    //     let layout = Layout::from_size_align(bytes as usize, 1);
    //     let layout = match layout {
    //         Ok(layout) => layout,
    //         Err(err) => {
    //             libc_println!("{}", err);
    //             panic!()
    //         }
    //     };
    //     let ptr = Global.allocate(layout).unwrap().as_ptr() as *mut c_void;
    //     libc_println!("HERE: {:?}", ptr);
    //     ptr
    // }
}

#[no_mangle]
extern "C" fn free(ptr: *mut u8) {
    // libc_println!("< {:?} free", ptr);
    let layout = Layout::new::<u8>();
    unsafe {
        alloc::alloc::dealloc(ptr, layout);
    }
    // if let Some(non_null) = NonNull::new(ptr) {
    //     let layout = Layout::new::<u8>();
    //     unsafe {
    //         Global.deallocate(non_null, layout)
    //     }
    // } else {
    // }
}

#[no_mangle]
extern "C" fn realloc(p: *mut u8, bytes: size_t) -> *mut u8 {
    // libc_println!("< {:?} realloc, old", p);
    //let layout = Layout::from_size_align(size as usize, 1).expect("realloc layout fail");
    let layout = unsafe { Layout::from_size_align_unchecked(bytes as usize, 1) };

    // // libc::realloc()
    // Global.grow()
    // p
    let ptr = unsafe { alloc::alloc::realloc(p, layout, bytes) };
    // libc_println!("> {:?} realloc, new, {} bytes", ptr, bytes);
    ptr
}

#[no_mangle]
extern "C" fn calloc(nobj: size_t, size: size_t) -> *mut u8 {
    // libc::calloc()
    let bytes = nobj * size;
    // libc_println!("callocating {} bytes", bytes);
    // let layout = Layout::from_size_align(bytes as usize, 1).expect("calloc layout fail");
    let layout = unsafe { Layout::from_size_align_unchecked(bytes as usize, 1) };

    let ptr = unsafe { alloc::alloc::alloc_zeroed(layout) };
    // libc_println!("> {:?} calloc {} bytes", ptr, bytes);
    ptr
    // unsafe {
    //     // libc::malloc(bytes)
    //     let layout = Layout::from_size_align(bytes as usize, 1);
    //     let layout = match layout {
    //         Ok(layout) => layout,
    //         Err(err) => {
    //             libc_println!("{}", err);
    //             panic!()
    //         }
    //     };
    //     let ptr = Global.allocate_zeroed(layout).unwrap().as_ptr() as *mut c_void;
    //     libc_println!("HERE: {:?}", ptr);
    //     ptr
    // }
}

#[cfg(test)]
mod tests {
    use gmp_mpfr_sys::gmp;

    use core::mem::MaybeUninit;
    use libc_print::libc_println; // tests

    #[test]
    fn test_alloc() {
        // let x = MaybeUninit::<*mut mpz_t>::uninit();
        // let x = unsafe { x.assume_init() };
        // libc_println!("x {:?}", x);
        // unsafe { mpz_init_set_si(x,42) }
        // libc_println!("x {:?}", x);

        unsafe {
            let mut z = {
                let mut z = MaybeUninit::uninit();
                gmp::mpz_init(z.as_mut_ptr());
                z.assume_init()
            };
            gmp::mpz_set_ui(&mut z, 15);
            libc_println!("z {:?}", z);
            let u = gmp::mpz_get_ui(&z);
            assert_eq!(u, 15);
            gmp::mpz_clear(&mut z);
        }
        // assert_eq!(42, unsafe { mpz_get_ui(x) });
        // assert_eq!(42, unsafe { mpz_get_si(x) });
    }
}
