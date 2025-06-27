#[cfg(test)]
#[path = "cmp_tests.rs"]
mod tests;

use crate::class_ids::{FLOAT_CLASS_ID, INT_CLASS_ID};
use crate::object::Object;
use ordered_float::OrderedFloat;

#[inline(always)]
/// template for cmp functions
/// always inline probably unneccessary
fn cmp_helper<I, F>(lhs: Object, rhs: Object, int_fn: I, float_fn: F) -> Object
where
    I: FnOnce(&i64, &i64) -> bool,
    F: FnOnce(&OrderedFloat<f64>, &OrderedFloat<f64>) -> bool,
{
    let lhs_tag = lhs.tag();
    let rhs_tag = rhs.tag();
    if lhs_tag != rhs_tag {
        return Object::intrinsic_fail();
    }

    match lhs_tag as u16 {
        INT_CLASS_ID => int_fn(&lhs.extract_i64(), &rhs.extract_i64()).into(),
        FLOAT_CLASS_ID => float_fn(&lhs.extract_f64(), &rhs.extract_f64()).into(),
        _ => Object::intrinsic_fail(),
    }
}

#[allow(dead_code)]
fn evolve_eq(lhs: Object, rhs: Object) -> Option<bool> {
    let lhs_tag = lhs.tag();
    let rhs_tag = rhs.tag();
    if lhs_tag != rhs_tag {
        return None;
    }

    match lhs_tag as u16 {
        INT_CLASS_ID => Some(lhs.extract_i64() == rhs.extract_i64()),
        FLOAT_CLASS_ID => Some(lhs.extract_f64() == rhs.extract_f64()),
        _ => {
            if lhs.extract_i64() == rhs.extract_i64() {
                Some(true)
            } else {
                None
            }
        }
    }
}

/// partial_cmp is slower than necessary for floats
#[unsafe(export_name = "evolve.intrinsic2.eq?")]
pub fn evolve_intrinsic_eq(left: Object, right: Object) -> Object {
    // let cmp = left.partial_cmp(&right);
    // match cmp {
    //     None => Object::intrinsic_fail(),
    //     Some(cmp) => Object::from(cmp == Ordering::Equal),
    // }
    // if evolve_intrinsic_is(left, right) {
    //     return true.into();
    // }
    cmp_helper(left, right, i64::eq, OrderedFloat::eq)
    // if let Some(value) = evolve_eq(left, right) {
    //     value.into()
    // } else {
    //     Object::intrinsic_fail()
    // }
}

#[unsafe(export_name = "evolve.intrinsic2.ne?")]
fn evolve_intrinsic_ne(left: Object, right: Object) -> Object {
    // let cmp = left.partial_cmp(&right);
    // match cmp {
    //     None => Object::intrinsic_fail(),
    //     Some(cmp) => Object::from(cmp != Ordering::Equal),
    // }
    // if evolve_intrinsic_is(left, right) {
    //     return false.into();
    // }
    cmp_helper(left, right, i64::ne, OrderedFloat::ne)
    // if let Some(value) = evolve_eq(left, right) {
    //     (!value).into()
    // } else {
    //     Object::intrinsic_fail()
    // }
}

#[unsafe(export_name = "evolve.intrinsic2.lt?")]
fn evolve_intrinsic_lt(left: Object, right: Object) -> Object {
    cmp_helper(left, right, i64::lt, OrderedFloat::lt)
}

#[unsafe(export_name = "evolve.intrinsic2.ge?")]
fn evolve_intrinsic_ge(left: Object, right: Object) -> Object {
    cmp_helper(left, right, i64::ge, OrderedFloat::ge)
}

#[unsafe(export_name = "evolve.intrinsic2.gt?")]
fn evolve_intrinsic_gt(left: Object, right: Object) -> Object {
    cmp_helper(left, right, i64::gt, OrderedFloat::gt)
}

#[unsafe(export_name = "evolve.intrinsic2.le?")]
fn evolve_intrinsic_le(left: Object, right: Object) -> Object {
    cmp_helper(left, right, i64::le, OrderedFloat::le)
}

#[unsafe(export_name = "evolve.intrinsic2.in?")]
// useful for case statements
fn evolve_intrinsic_in(lhs: Object, rhs: Object) -> Object {
    evolve_intrinsic_eq(lhs, rhs)
}

// // #[unsafe(export_name = "evolve.intrinsic2.cmp")]
// pub fn evolve_intrinsic_cmp(lhs: Object, rhs: Object) -> Object {
//     let lhs_tag = lhs.tag();
//     let rhs_tag = rhs.tag();
//     if lhs_tag != rhs_tag {
//         return Object::intrinsic_fail();
//     }
//
//     match lhs_tag as u16 {
//         INT_CLASS_ID => lhs.extract_i64().cmp(&rhs.extract_i64()).into(),
//         // FLOAT_CLASS_ID => OrderedFloat(lhs.extract_f64()).cmp(&OrderedFloat(rhs.extract_f64()),
//         _ => Object::intrinsic_fail(),
//     }
// }
