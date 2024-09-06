#![feature(strict_provenance)]

pub use gmp_mpfr_sys::gmp;
pub use gmp_mpfr_sys::C;


#[repr(C)]
    struct Object {
        tag: u64,
        ptr: *const i64,
    }

    #[no_mangle]
    extern "Rust" fn evolve_extract_i64_rust(o: Object) -> usize {
        o.ptr.addr()
    }

#[no_mangle]
 extern "C" fn evolve_extract_i64_c(o: Object) -> usize {
    o.ptr.addr()
}

// #[no_mangle]
// pub extern "Rust" fn evolve_build_i64_rust(i: usize) -> Object {
//     Object {
//         tag: 4,
//         ptr: i as *const i64,
//     }
// }

// #[no_mangle]
// pub extern "Rust" fn evolve_build_ptr_rust(class_id: u32, aux4: u32, ptr: *const i64) -> Object {
//     Object {
//         tag: ((class_id as u64) << 32) | aux4 as u64,
//         ptr,
//     }
// }

#[no_mangle]
 extern "Rust" fn evolve_build_ptr_rust(class_id: u32, aux4: u32, ptr: *const u64) -> (u64, *const u64) {
    (((class_id as u64) << 32) | aux4 as u64, ptr)
}

#[no_mangle]
 extern "C" fn evolve_build_i64_c(i: usize) -> Object {
    Object {
        tag: 4,
        ptr: i as *const i64,
    }
}

#[no_mangle]
 extern "C" fn call_from_c() {
    println!("Just called a Rust function from C!");
}

#[no_mangle]
 extern "Rust" fn call_from_rust() {
    println!("Just called a Rust function from C!");
}

