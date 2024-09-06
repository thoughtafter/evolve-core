#![feature(strict_provenance)]
#![no_std]

use ahash::RandomState;
pub use gmp_mpfr_sys::gmp;
pub use gmp_mpfr_sys::C;
use indexmap::{IndexMap, IndexSet};

type Ptr = *const i64;
//type Object = (u64, Ptr);
// #[repr(C)]
//#[repr(C)]
#[derive(Clone, Copy)]
struct Object {
    tag: u64,
    ptr: Ptr,
}

type EvolveMap = IndexMap<Object, Object, RandomState>;
type EvolveSet = IndexSet<Object, RandomState>;

#[no_mangle]
extern "Rust" fn evolve_extract_i64_rust(o: Object) -> usize {
    o.ptr.addr()
}

#[no_mangle]
extern "Rust" fn evolve_build_i64_rust(i: usize) -> Object {
    Object {
        tag: 5,
        ptr: i as Ptr,
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

#[no_mangle]
extern "Rust" fn evolve_core_make_null() -> Object {
    Object {
        tag: 0,
        ptr: 0 as Ptr,
    }
}

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
        Object {
            tag: (u16::MAX - 1) as u64,
            ptr: class_id as Ptr,
        }
    } else {
        Object {
            tag: class_id - 1,
            ptr: 0 as Ptr,
        }
    }
}

#[no_mangle]
extern "Rust" fn evolve_build_ptr_rust(class_id: u32, aux4: u32, ptr: Ptr) -> Object {
    Object {
        tag: ((class_id as u64) << 32) | (aux4 as u64),
        ptr,
    }
}

#[no_mangle]
extern "Rust" fn evolve_core_class_id(o: Object) -> u64 {
    o.tag & (u16::MAX as u64)
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
    // use test_case;
    use super::*;

    #[test]
    fn test_evolve_core_class() {
        let i = evolve_build_i64_rust(42);
        assert_eq!(5, evolve_core_class_id(i));

        let i_class_x1 = evolve_core_class(i);
        assert_eq!(4, evolve_core_class_id(i_class_x1));

        let i_class_x2 = evolve_core_class(i_class_x1);
        assert_eq!(65534, evolve_core_class_id(i_class_x2));
        assert_eq!(4, evolve_extract_i64_rust(i_class_x2));

        let i_class_x3 = evolve_core_class(i_class_x2);
        assert_eq!(65534, evolve_core_class_id(i_class_x3));
        assert_eq!(65534, evolve_extract_i64_rust(i_class_x3));

        let i_class_x4 = evolve_core_class(i_class_x3);
        assert_eq!(65534, evolve_core_class_id(i_class_x4));
        assert_eq!(65534, evolve_extract_i64_rust(i_class_x4));
    }

}