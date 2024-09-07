#![feature(strict_provenance)]
#![no_std]

use core::cmp::Ordering;
use core::mem;
use ahash::RandomState;
pub use gmp_mpfr_sys::gmp;
pub use gmp_mpfr_sys::C;
use indexmap::{IndexMap, IndexSet};

const IntClassId: u16 = 11u16;
const FloatClassId: u16 = 13u16;


type Ptr = *const i64;
type EvolveClassId = u16;
type EvolveAuxData = u32;


//type Object = (u64, Ptr);
// #[repr(C)]
//#[repr(C)]
#[derive(Clone, Copy)]
struct Object {
    tag: u64,
    ptr: Ptr,
}

impl Object {
    fn new(class_id : EvolveClassId, aux: EvolveAuxData, ptr: Ptr) -> Self {
        Object { tag: evolve_internal_build_tag(class_id, aux), ptr: ptr, }
    }

    fn static_class(class_id: EvolveClassId) -> Self {
        Self::new(class_id, 0, 0 as Ptr)
    }

    fn null() -> Self {
        Self::static_class(0)
    }
}

type EvolveMap = IndexMap<Object, Object, RandomState>;
type EvolveSet = IndexSet<Object, RandomState>;

#[no_mangle]
extern "Rust" fn evolve_extract_i64(o: Object) -> u64 {
    o.ptr.addr() as u64
}

#[no_mangle]
extern "Rust" fn evolve_build_i64(value: u64) -> Object {
    evolve_build_ptr(IntClassId, 0, value as Ptr)
}
#[no_mangle]
extern "Rust" fn evolve_build_f64(value: f64) -> Object {
    evolve_build_ptr(FloatClassId, 0, value.to_bits() as Ptr)
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
extern "Rust" fn evolve_core_build_null() -> Object {
    Object::null()
}

#[no_mangle]
extern "Rust" fn evolve_build_true() -> Object {
    Object::static_class(6)
}

#[no_mangle]
extern "Rust" fn evolve_build_false() -> Object {
    Object::static_class(4)
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
extern "Rust" fn evolve_build_ptr(class_id: EvolveClassId, aux4: EvolveAuxData, ptr: Ptr) -> Object {
    Object {
        tag: evolve_internal_build_tag(class_id, aux4),
        ptr,
    }
}

fn evolve_internal_build_tag(class_id: EvolveClassId, aux: EvolveAuxData) -> u64
{
    let bits = mem::size_of_val(&aux) << 3;
    ((aux as u64) << bits) | (class_id as u64)
}

#[no_mangle]
extern "Rust" fn evolve_core_class_id(o: Object) -> u64 {
    o.tag & (u16::MAX as u64)
}

#[no_mangle]
extern "Rust" fn evolve_cmp_i64(value1: i64, value2: i64) -> i64 {
    value1.cmp(&value2) as i64
}

#[no_mangle]
// https://doc.rust-lang.org/std/primitive.f64.html#method.total_cmp
extern "Rust" fn evolve_cmp_f64(value1: f64, value2: f64) -> i64 {
    value1.total_cmp(&value2) as i64
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
        let i = evolve_build_i64(42);
        assert_eq!(IntClassId as u64, evolve_core_class_id(i));

        let i_class_x1 = evolve_core_class(i);
        assert_eq!((IntClassId - 1) as u64, evolve_core_class_id(i_class_x1));

        let i_class_x2 = evolve_core_class(i_class_x1);
        assert_eq!(65534, evolve_core_class_id(i_class_x2));
        assert_eq!((IntClassId - 1) as u64, evolve_extract_i64(i_class_x2));

        let i_class_x3 = evolve_core_class(i_class_x2);
        assert_eq!(65534, evolve_core_class_id(i_class_x3));
        assert_eq!(65534, evolve_extract_i64(i_class_x3));

        let i_class_x4 = evolve_core_class(i_class_x3);
        assert_eq!(65534, evolve_core_class_id(i_class_x4));
        assert_eq!(65534, evolve_extract_i64(i_class_x4));
    }

}