#![feature(strict_provenance)]
#![no_std]

use core::cmp::Ordering;
// use ahash::RandomState;
use core::mem;
// pub use gmp_mpfr_sys::gmp;
// pub use gmp_mpfr_sys::C;
// use indexmap::{IndexMap, IndexSet};

// const INT_CLASS_ID: u16 = 11u16;
const INT_CLASS_ID: u16 = 4u16;
//const FLOAT_CLASS_ID: u16 = 13u16;
const FLOAT_CLASS_ID: u16 = 5u16;
//const POINTER_CLASS_ID: u16 = 9u16;
const POINTER_CLASS_ID: u16 = 17u16;

//const TRUE_CLASS_ID: u16 = 6u16;
const TRUE_CLASS_ID: u16 = 2u16;
const FALSE_CLASS_ID: u16 = 1u16;
//const FALSE_CLASS_ID: u16 = 4u16;
// #[no_mangle]
// pub static FALSE_CLASS_ID: u16 = 1;
// #[no_mangle]
// pub static FALSE_CLASS_ID2: u32 = 1;

// extern "C" {
//
//     static FalseClassId: u32;
// }

// extern "C" {
//     static FalseClassID: u32;
// }
type Ptr = *const i64;
type EvolveClassId = u16;
type EvolveAuxData = u32;

//type Object = (u64, Ptr);
// #[repr(C)]
#[repr(C)]
#[derive(Clone, Copy)]
struct Object {
    tag: u64,
    ptr: Ptr,
}

impl Object {
    fn with_aux(class_id: EvolveClassId, aux: EvolveAuxData, ptr: Ptr) -> Self {
        Object {
            tag: evolve_internal_build_tag(class_id, aux),
            ptr,
        }
    }

    fn new(class_id: EvolveClassId, ptr: Ptr) -> Self {
        Self::with_aux(class_id, 0, ptr)
    }

    fn static_class(class_id: EvolveClassId) -> Self {
        Self::new(class_id, 0 as Ptr)
    }

    fn null() -> Self {
        Self::static_class(0)
    }
}

// type EvolveMap = IndexMap<Object, Object, RandomState>;
// type EvolveSet = IndexSet<Object, RandomState>;

#[no_mangle]
// return the class object of the given object
// stateful instances are odd numbers, stateless are even
// class of odd is -1
// class of even if max - 1
// eg:
// 0 = @null
// 1 = non-existent instance of null
// 2 = @error
// 4 = @false
// 6 = @true
// 8 = @i64
// 9 = instance of @i64
extern "Rust" fn evolve_core_class(o: Object) -> Object {
    let class_id = evolve_core_class_id(o);
    if (class_id & 1) == 0 {
        Object::new(u16::MAX - 1, class_id as Ptr)
    } else {
        Object::new(class_id - 1, class_id as Ptr)
    }
}

#[no_mangle]
extern "Rust" fn evolve_core_is(a: Object, b: Object) -> bool {
    (a.tag == b.tag) && (a.ptr == b.ptr)
}

#[no_mangle]
extern "Rust" fn evolve_core_is_not(a: Object, b: Object) -> bool {
    !evolve_core_is(a, b)
}

#[no_mangle]
extern "Rust" fn evolve_core_null(a: Object) -> bool {
    a.tag == 0
}

fn evolve_internal_build_tag(class_id: EvolveClassId, aux: EvolveAuxData) -> u64 {
    let bits = mem::size_of_val(&aux) << 3;
    ((aux as u64) << bits) | (class_id as u64)
}

#[no_mangle]
extern "Rust" fn evolve_core_class_id(o: Object) -> EvolveClassId {
    o.tag as EvolveClassId
}

mod import_export {
    use super::{Object, Ptr, FLOAT_CLASS_ID, INT_CLASS_ID, POINTER_CLASS_ID};

    #[no_mangle]
    pub extern "Rust" fn evolve_extract_ptr(o: Object) -> Ptr {
        o.ptr.addr() as Ptr
    }

    #[no_mangle]
    pub extern "Rust" fn evolve_extract_i64(o: Object) -> i64 {
        evolve_extract_ptr(o) as i64
    }

    #[no_mangle]
    pub extern "Rust" fn evolve_extract_f64(o: Object) -> f64 {
        f64::from_bits(evolve_extract_ptr(o) as u64)
    }

    #[no_mangle]
    pub extern "Rust" fn evolve_from_i64(value: i64) -> Object {
        Object::new(INT_CLASS_ID, value as Ptr)
    }

    #[no_mangle]
    pub extern "Rust" fn evolve_from_f64(value: f64) -> Object {
        Object::new(FLOAT_CLASS_ID, value.to_bits() as Ptr)
    }

    #[no_mangle]
    pub extern "Rust" fn evolve_from_ptr(value: Ptr) -> Object {
        Object::new(POINTER_CLASS_ID, value)
    }

    #[cfg(test)]
    mod tests {
        use super::*;
        use test_case::test_case;

        #[test_case(i64::MAX)]
        #[test_case(i64::MIN)]
        #[test_case(0)]
        fn test_i64(test_case: i64) {
            assert_eq!(test_case, evolve_extract_i64(evolve_from_i64(test_case)));
        }

        #[test_case(f64::MAX)]
        #[test_case(f64::MIN)]
        #[test_case(f64::INFINITY)]
        #[test_case(0.0)]
        fn test_f64(test_case: f64) {
            assert_eq!(test_case, evolve_extract_f64(evolve_from_f64(test_case)));
            assert_eq!(-test_case, evolve_extract_f64(evolve_from_f64(-test_case)));
        }

        #[test]
        fn test_f64_nan() {
            assert!(evolve_extract_f64(evolve_from_f64(f64::NAN)).is_nan());
        }
    }
}

mod bools {
    use super::{evolve_core_class_id, Object, FALSE_CLASS_ID, TRUE_CLASS_ID};

    // TODO: this generates possibly suboptimal code
    // assembly looks good
    // evolve_from_i1:
    // .cfi_startproc
    // movl	%edi, %eax
    // leaq	4(,%rax,2), %rax
    // xorl	%edx, %edx
    // retq
    #[no_mangle]
    extern "Rust" fn evolve_from_i1(value: bool) -> Object {
        if value {
            evolve_build_true()
        } else {
            evolve_build_false()
        }

        // let class_id = if value {
        //     TRUE_CLASS_ID
        // } else {
        //     FALSE_CLASS_ID
        // };
        // Object::static_class(class_id)
    }

    #[no_mangle]
    extern "Rust" fn evolve_build_true() -> Object {
        Object::static_class(TRUE_CLASS_ID)
    }

    #[no_mangle]
    extern "Rust" fn evolve_build_false() -> Object {
        Object::static_class(FALSE_CLASS_ID)
    }

    extern "Rust" fn evolve_core_true(object: Object) -> bool {
        evolve_core_class_id(object) >= evolve_core_class_id(evolve_build_true())
    }

    // #[no_mangle]
    // unsafe extern "Rust"  fn evolve_build_false2() -> Object {
    //     Object::static_class(FalseClassId as u16)
    // }

    #[no_mangle]
    extern "Rust" fn evolve_core_false(object: Object) -> bool {
        !evolve_core_true(object)
    }

    #[no_mangle]
    extern "Rust" fn evolve_intrinsic_true(object: Object) -> Object {
        evolve_from_i1(evolve_core_true(object))
    }

    #[no_mangle]
    extern "Rust" fn evolve_intrinsic_false(object: Object) -> Object {
        evolve_from_i1(evolve_core_false(object))
    }
}

// #[no_mangle]
// extern "Rust" fn test_str() -> &'static str {
//     "This"
// }

#[no_mangle]
extern "Rust" fn evolve_string_cmp(value1: &str, value2: &str) -> i64 {
    value1.cmp(value2) as i64
}

#[no_mangle]
extern "Rust" fn evolve_string_equal_bytes(value1: &str, value2: &str) -> bool {
    value1.cmp(value2) == Ordering::Equal
}

mod build {
    use super::{EvolveAuxData, EvolveClassId, Object, Ptr};

    #[no_mangle]
    extern "Rust" fn evolve_core_build_null() -> Object {
        Object::null()
    }

    #[no_mangle]
    extern "Rust" fn evolve_build_ptr(
        class_id: EvolveClassId,
        aux4: EvolveAuxData,
        ptr: Ptr,
    ) -> Object {
        Object::with_aux(class_id, aux4, ptr)
    }
}

mod math {
    use ordered_float::OrderedFloat;

    #[no_mangle]
    extern "Rust" fn evolve_math_cmp_i64(value1: i64, value2: i64) -> i64 {
        value1.cmp(&value2) as i64
    }

    #[no_mangle]
    extern "Rust" fn evolve_math_f64_fits_i64(value: f64) -> bool {
        (value <= i64::MAX as f64) && (value >= i64::MIN as f64)
    }

    #[no_mangle]
    // https://doc.rust-lang.org/std/primitive.f64.html#method.total_cmp
    extern "Rust" fn evolve_math_cmp_f64(value1: f64, value2: f64) -> i64 {
        // incorrect, but for testing:
        // value1.partial_cmp(&value2).unwrap_or(Ordering::Equal) as i64

        // works but slightly slower
        // value1.total_cmp(&value2) as i64

        // generated bad code
        // unsafe {
        //   NotNan::new_unchecked(value1).cmp(&NotNan::new_unchecked(value2)) as i64
        // }

        // performance seems better than total_cmp
        OrderedFloat(value1).cmp(&OrderedFloat(value2)) as i64
    }
}

mod llvm {
    #[no_mangle]
    extern "Rust" fn evolve_llvm_sitofp(value: i64) -> f64 {
        value as f64
    }

    #[no_mangle]
    extern "Rust" fn evolve_llvm_fptosi(value: f64) -> i64 {
        value as i64
    }

    #[no_mangle]
    extern "Rust" fn evolve_llvm_fneg(value: f64) -> f64 {
        -value
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
    extern "Rust" fn evolve_mpz_odd_p(op: mpz_srcptr) -> bool {
        let odd = unsafe { mpz_odd_p(op) };
        odd != 0
    }

    #[no_mangle]
    extern "Rust" fn evolve_mpz_even_p(op: mpz_srcptr) -> bool {
        let even = unsafe { mpz_even_p(op) };
        even != 0
    }

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
        fn test_mpz(value: i64, even: bool, signum: i64) {
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

// #[no_mangle]
//  extern "Rust" fn evolve_build_ptr_rust(class_id: u32, aux4: u32, ptr: *const u64) -> (u64, *const u64) {
//     (((class_id as u64) << 32) | aux4 as u64, ptr)
// }

// #[no_mangle]
//  extern "C" fn evolve_build_i64_c(i: usize) -> Object {
//     Object {
//         tag: 4,
//         ptr: i as *const i64,
//     }
// }
// #[no_mangle]
//  extern "C" fn evolve_extract_i64_c(o: Object) -> usize {
//     o.ptr.addr()
// }

// #[no_mangle]
// extern "C" fn call_from_c() {
//     println!("Just called a Rust function from C!");
// }
//
// #[no_mangle]
// extern "Rust" fn call_from_rust() {
//     println!("Just called a Rust function from C!");
// }

#[cfg(test)]
mod tests {
    use crate::import_export::{evolve_extract_i64, evolve_from_i64};
    // use test_case;
    use super::*;

    #[test]
    #[ignore]
    fn test_evolve_core_class() {
        let i = evolve_from_i64(42);
        assert_eq!(INT_CLASS_ID, evolve_core_class_id(i));

        let i_class_x1 = evolve_core_class(i);
        assert_eq!(INT_CLASS_ID - 1, evolve_core_class_id(i_class_x1));

        let i_class_x2 = evolve_core_class(i_class_x1);
        assert_eq!(65534, evolve_core_class_id(i_class_x2));
        assert_eq!(
            INT_CLASS_ID - 1,
            evolve_extract_i64(i_class_x2) as EvolveClassId
        );

        let i_class_x3 = evolve_core_class(i_class_x2);
        assert_eq!(65534, evolve_core_class_id(i_class_x3));
        assert_eq!(65534, evolve_extract_i64(i_class_x3));

        let i_class_x4 = evolve_core_class(i_class_x3);
        assert_eq!(65534, evolve_core_class_id(i_class_x4));
        assert_eq!(65534, evolve_extract_i64(i_class_x4));
    }
}
