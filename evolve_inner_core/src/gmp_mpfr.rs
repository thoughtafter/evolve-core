mod mem {
    use core::alloc::Layout;
    use core::ffi::c_void;

    //extern "C" fn(alloc_size: usize) -> *mut c_void
    //     extern "Rust" {
    //       fn evolve_gmp_allocate(alloc_size: usize) -> *mut c_void;
    //       fn evolve_gmp_reallocate(alloc_size: usize) -> *mut c_void;
    //     }

    extern "C" fn evolve_gmp_allocate(alloc_size: usize) -> *mut c_void {
        // unsafe { libc::malloc(alloc_size) }
        let layout = Layout::from_size_align(alloc_size, 8).unwrap();
        let ptr = unsafe { alloc::alloc::alloc(layout) };
        ptr as *mut c_void
    }

    extern "C" fn evolve_gmp_reallocate(
        ptr: *mut c_void,
        old_size: usize,
        new_size: usize,
    ) -> *mut c_void {
        // unsafe { libc::realloc(ptr, new_size) }
        // should this be old_size or new_size? ie, same layout as initial or new?
        let layout = Layout::from_size_align(old_size, 8).unwrap();
        let ptr = unsafe { alloc::alloc::realloc(ptr as *mut u8, layout, new_size) };
        ptr as *mut c_void
    }

    extern "C" fn evolve_gmp_free(_ptr: *mut c_void, size: usize) {
        let layout = Layout::from_size_align(size, 8).unwrap();
        unsafe { alloc::alloc::dealloc(_ptr as *mut u8, layout) };
    }

    #[no_mangle]
    extern "Rust" fn evolve_gmp_set_mem_func() {
        unsafe {
            gmp_mpfr_sys::gmp::set_memory_functions(
                Some(evolve_gmp_allocate),
                Some(evolve_gmp_reallocate),
                Some(evolve_gmp_free),
            );
        }
    }
}

mod mpz {

    use gmp_mpfr_sys::gmp::{mpz_even_p, mpz_odd_p, mpz_sgn, mpz_srcptr};

    #[no_mangle]
    extern "Rust" fn evolve_mpz_sgn(op: mpz_srcptr) -> i64 {
        let signum = unsafe { mpz_sgn(op) };
        signum as i64
    }

    #[no_mangle]
    const extern "Rust" fn evolve_mpz_odd_p(op: mpz_srcptr) -> bool {
        let odd = unsafe { mpz_odd_p(op) };
        odd != 0
    }

    #[no_mangle]
    extern "Rust" fn evolve_mpz_even_p(op: mpz_srcptr) -> bool {
        let even = unsafe { mpz_even_p(op) };
        even != 0
    }

    // #[no_mangle]
    // extern "Rust" fn evolve_mpz_zero_p(op: mpz_srcptr) -> bool {
    //     let zero = unsafe { gmp::mpz_cmp_si(op, 0) };
    //     zero != 0
    // }

    #[cfg(test)]
    mod tests {
        use super::*;
        use gmp_mpfr_sys::gmp::mpz_get_ui;
        use rug::Integer;
        use test_case::test_case;

        #[test_case(0, true, 0)]
        #[test_case(1, false, 1)]
        #[test_case(2, true, 1)]
        #[test_case(3, false, 1)]
        fn test_mpz_sgn_even_odd(value: i64, even: bool, signum: i64) {
            let raw = &Integer::from(value).into_raw();
            let neg = &Integer::from(-value).into_raw();

            assert_eq!(value, unsafe { mpz_get_ui(raw) } as i64);
            assert_eq!(value, unsafe { mpz_get_ui(raw) } as i64);

            assert_eq!(even, evolve_mpz_even_p(raw));
            assert_eq!(even, !evolve_mpz_odd_p(raw));

            assert_eq!(even, evolve_mpz_even_p(neg));
            assert_eq!(even, !evolve_mpz_odd_p(neg));

            assert_eq!(signum, evolve_mpz_sgn(raw));
            assert_eq!(-signum, evolve_mpz_sgn(neg));
        }
    }
}

mod mpq {
    use crate::class_ids::BIGINT_CLASS_ID;
    use crate::object::{Object, Ptr};
    use gmp_mpfr_sys::gmp::{mpq_denref_const, mpq_numref_const, mpq_srcptr};

    #[no_mangle]
    const extern "Rust" fn evolve_mpq_numref(op: mpq_srcptr) -> Object {
        let num = unsafe { mpq_numref_const(op) };
        //evolve_big_int_from_srcptr(num)
        Object::with_aux(BIGINT_CLASS_ID, 16, num as Ptr)
    }

    #[no_mangle]
    const extern "Rust" fn evolve_mpq_denref(op: mpq_srcptr) -> Object {
        let den = unsafe { mpq_denref_const(op) };
        //evolve_big_int_from_srcptr(den)
        Object::with_aux(BIGINT_CLASS_ID, 16, den as Ptr)
    }
}
