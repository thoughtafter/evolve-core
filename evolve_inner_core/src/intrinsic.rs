use crate::class_ids::*;
use crate::f64::evolve_f64_eq;
use crate::object::Object;
use crate::string::evolve_string_bytes_eq;
use core::ops::Add;

const LOCAL_INT_CLASS_ID: u64 = INT_CLASS_ID as u64;
const LOCAL_FLOAT_CLASS_ID: u64 = FLOAT_CLASS_ID as u64;

#[no_mangle]
#[inline(always)]
extern "Rust" fn evolve_intrinsic_add2(left: Object, right: Object) -> Object {
    if left.tag() == LOCAL_INT_CLASS_ID && right.tag() == LOCAL_INT_CLASS_ID {
        let add = left.extract_i64().checked_add(right.extract_i64());
        if let Some(int) = add {
            return int.into();
        }
    }

    if left.tag() == LOCAL_FLOAT_CLASS_ID && right.tag() == LOCAL_FLOAT_CLASS_ID {
        let add = left.extract_f64().add(right.extract_f64());
        if !add.is_infinite() {
            return add.into();
        }
    }

    Object::default()
}

#[no_mangle]
#[inline(always)]
extern "Rust" fn evolve_intrinsic_add(left: Object, right: Object) -> Object {
    match (left.tag(), right.tag()) {
        (LOCAL_INT_CLASS_ID, LOCAL_INT_CLASS_ID) => {
            let add = left.extract_i64().checked_add(right.extract_i64());
            if let Some(int) = add {
                return int.into();
            }
        }
        (LOCAL_FLOAT_CLASS_ID, LOCAL_FLOAT_CLASS_ID) => {
            let add = left.extract_f64().add(right.extract_f64());
            if !add.is_infinite() {
                return add.into();
            }
        }
        (_, _) => {}
    }
    Object::default()
}

// fn match_helper(lhs: Object, rhs: Object) -> EvolveClassId {
//     let lhs_class_id = lhs.class_id();
//     let rhs_class_id = rhs.class_id();
//     if lhs_class_id == rhs_class_id {
//         lhs_class_id
//     } else {
//         0
//     }
// }

#[no_mangle]
#[inline(always)]
pub extern "Rust" fn evolve_intrinsic_eq(left: Object, right: Object) -> Object {
    match (left.class_id(), right.class_id()) {
        (INT_CLASS_ID, INT_CLASS_ID) => {
            let x = left.extract_i64() == right.extract_i64();
            x.into()
        }
        (FLOAT_CLASS_ID, FLOAT_CLASS_ID) => {
            let x = evolve_f64_eq(left.extract_f64(), right.extract_f64());
            x.into()
        }
        (STRING_CLASS_ID, STRING_CLASS_ID) => {
            let x = evolve_string_bytes_eq(left.extract_str(), right.extract_str());
            x.into()
        }
        (_, _) => Object::null(),
    }
}
