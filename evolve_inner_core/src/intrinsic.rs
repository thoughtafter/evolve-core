use crate::class_ids::*;
use crate::object::Object;
use core::ops::Add;

const LOCAL_INT_CLASS_ID: u64 = INT_CLASS_ID as u64;
const LOCAL_FLOAT_CLASS_ID: u64 = FLOAT_CLASS_ID as u64;

#[no_mangle]
#[inline(always)]
extern "Rust" fn evolve_intrinsic_add(left: Object, right: Object) -> Object {
    if left.evolve_core_tag() == LOCAL_INT_CLASS_ID && right.evolve_core_tag() == LOCAL_INT_CLASS_ID
    {
        let add = left
            .evolve_extract_i64()
            .checked_add(right.evolve_extract_i64());
        if let Some(int) = add {
            return int.into();
        }
    }

    if left.evolve_core_tag() == LOCAL_FLOAT_CLASS_ID
        && right.evolve_core_tag() == LOCAL_FLOAT_CLASS_ID
    {
        let add = left.evolve_extract_f64().add(right.evolve_extract_f64());
        if !add.is_infinite() {
            return add.into();
        }
    }

    Object::default()
}

#[no_mangle]
#[inline(always)]
extern "Rust" fn evolve_intrinsic_add2(left: Object, right: Object) -> Object {
    match (left.evolve_core_tag(), right.evolve_core_tag()) {
        (LOCAL_INT_CLASS_ID, LOCAL_INT_CLASS_ID) => {
            let add = left
                .evolve_extract_i64()
                .checked_add(right.evolve_extract_i64());
            if let Some(int) = add {
                return int.into();
            }
        }
        (LOCAL_FLOAT_CLASS_ID, LOCAL_FLOAT_CLASS_ID) => {
            let add = left.evolve_extract_f64().add(right.evolve_extract_f64());
            if !add.is_infinite() {
                return add.into();
            }
        }
        (_, _) => {}
    }
    Object::default()
}
