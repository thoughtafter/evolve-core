#[cfg(test)]
#[path = "math_tests.rs"]
mod tests;

use crate::class_ids::{FLOAT_CLASS_ID, INT_CLASS_ID};
use crate::f64::evolve_f64_is_divisible;
use crate::i64::{
    evolve_i64_div_exact, evolve_i64_divisible_by, evolve_i64_safe_mod_option,
    evolve_i64_safe_rem_option,
};
use crate::object::Object;
use core::num::FpCategory;
use core::ops::{Add, Div, Mul, Rem, Sub};
use num_traits::Euclid;

// for trunc()
// clippy gets confused with trunc in std
#[allow(unused_imports)]
use ordered_float::FloatCore;

const fn valid_f64_return(value: f64) -> bool {
    !(value.is_infinite() | value.is_subnormal())
}

// more instructions for some reason
#[allow(dead_code)]
const fn valid_f64_return2(value: f64) -> bool {
    // let classify = value.classify();
    // match classify {
    //     FpCategory::Infinite | FpCategory::Subnormal => false,
    //     _ => true,
    // }
    !matches!(
        value.classify(),
        FpCategory::Infinite | FpCategory::Subnormal
    )
}

#[inline(always)]
// const fn math_helper(left: Object, right: Object, int_fn: (const fn)(i64, i64) -> Option<i64>, float_fn: fn(f64, f64) -> f64) -> Object
fn math_helper<I, F>(left: Object, right: Object, int_fn: I, float_fn: F) -> Object
where
    I: FnOnce(i64, i64) -> Option<i64>,
    F: FnOnce(f64, f64) -> f64,
{
    let lhs_tag = left.tag();
    let rhs_tag = right.tag();
    if lhs_tag != rhs_tag {
        return Object::intrinsic_fail();
    }

    match lhs_tag as u16 {
        INT_CLASS_ID => {
            let math = int_fn(left.extract_i64(), right.extract_i64());
            if let Some(int) = math {
                return Object::from_i64(int);
            }
        }
        FLOAT_CLASS_ID => {
            let math = float_fn(left.extract_raw_f64(), right.extract_raw_f64());
            if valid_f64_return(math) {
                return Object::from_f64(math);
            }
        }
        _ => {}
    }
    Object::intrinsic_fail()
}

#[unsafe(export_name = "evolve.intrinsic2.add")]
#[inline(always)]
fn evolve_intrinsic_add(left: Object, right: Object) -> Object {
    math_helper(left, right, i64::checked_add, f64::add)
}

#[unsafe(export_name = "evolve.intrinsic2.sub")]
#[inline(always)]
fn evolve_intrinsic_sub(left: Object, right: Object) -> Object {
    math_helper(left, right, i64::checked_sub, f64::sub)
}

#[unsafe(export_name = "evolve.intrinsic2.mul")]
#[inline(always)]
fn evolve_intrinsic_mul(left: Object, right: Object) -> Object {
    math_helper(left, right, i64::checked_mul, f64::mul)
}

// #[allow(dead_code)]
// const fn i64_safe_rem1(lhs: i64, rhs: i64) -> Option<i64> {
//     match rhs {
//         0 => Some(lhs),
//         -1 => Some(0),
//         _ => Some(lhs % rhs),
//     }
// }
//
// #[allow(dead_code)]
// const fn i64_safe_rem2(lhs: i64, rhs: i64) -> Option<i64> {
//     match rhs {
//         -1 => Some(0),
//         _ => lhs.checked_rem(rhs),
//     }
// }
// #[allow(dead_code)]
// const fn i64_safe_rem3(lhs: i64, rhs: i64) -> Option<i64> {
//     match rhs {
//         -1 => Some(0),
//         _ => Some(lhs % rhs),
//     }
// }

#[unsafe(export_name = "evolve.intrinsic2.trem")]
#[inline(always)]
/// truncated remainder
fn evolve_intrinsic_trem(left: Object, right: Object) -> Object {
    if right.extract_raw_f64() == 0.0 {
        return Object::intrinsic_fail();
    }
    math_helper(left, right, evolve_i64_safe_rem_option, f64::rem)
    // math_helper(left, right, i64::checked_rem, f64::rem)
}

#[unsafe(export_name = "evolve.intrinsic2.rem")]
#[inline(always)]
/// euclidean remainder, aka mod
/// uses num_traits because rem_euclid requires std
fn evolve_intrinsic_rem(left: Object, right: Object) -> Object {
    if right.extract_raw_f64() == 0.0 {
        return Object::intrinsic_fail();
    }
    // if right.extract_i64() == 0 {
    //     return Object::intrinsic_fail();
    // }
    let f64_fun = |a, b| Euclid::rem_euclid(&a, &b);
    math_helper(left, right, evolve_i64_safe_mod_option, f64_fun)
    // math_helper(left, right, i64::checked_rem_euclid, f64_fun)
    // let i64_fun = |a, b| num_traits::ops::euclid::CheckedEuclid::checked_rem_euclid(&a, &b);
    // math_helper(left, right, i64_fun, f64_fun)
}
// #[inline(always)]
// #[allow(dead_code)]
// const fn evolve_div_exact(lhs: i64, rhs: i64) -> Option<i64> {
//     let math = lhs.checked_rem(rhs);
//     match math {
//         Some(0) => Some(lhs / rhs),
//         _ => None,
//     }
// }

// #[inline(always)]
// fn evolve_div_exact2(lhs: i64, rhs: i64) -> Option<i64> {
//     let math = i64::checked_div_rem_euclid(&lhs, &rhs);
//     match math {
//         Some((dividend, 0)) => Some(dividend),
//         _ => None,
//     }
// }

#[unsafe(export_name = "evolve.intrinsic2.div")]
#[inline(always)]
/// division
/// f64 - exact, as expected
/// i64 - exact and falling back to create rationals
fn evolve_intrinsic_div(left: Object, right: Object) -> Object {
    if right.extract_raw_f64() == 0.0 {
        return Object::intrinsic_fail();
    }
    math_helper(left, right, evolve_i64_div_exact, f64::div)
}

#[inline(always)]
// alternative implementations:
// f64::trunc(lhs / rhs)
// *OrderedFloat(lhs / rhs).trunc()
fn f64_tdiv(lhs: f64, rhs: f64) -> f64 {
    (lhs / rhs).trunc()
}

#[unsafe(export_name = "evolve.intrinsic2.tdiv")]
#[inline(always)]
fn evolve_intrinsic_tdiv(left: Object, right: Object) -> Object {
    if right.extract_raw_f64() == 0.0 {
        return Object::intrinsic_fail();
    }
    math_helper(left, right, i64::checked_div, f64_tdiv)
}

#[inline(always)]
#[allow(dead_code)]
fn evolve_intrinsic_divided_by(left: Object, right: Object) -> Object {
    evolve_intrinsic_zero(evolve_intrinsic_rem(left, right))
}

#[unsafe(export_name = "evolve.intrinsic2.div?")]
#[inline(always)]
const fn evolve_intrinsic_is_div(left: Object, right: Object) -> Object {
    let lhs_tag = left.tag();
    let rhs_tag = right.tag();
    if lhs_tag != rhs_tag {
        return Object::intrinsic_fail();
    }

    let is_div = match lhs_tag as u16 {
        INT_CLASS_ID => {
            // let div = i64::checked_div(left.extract_i64(), right.extract_i64());
            // match div {
            //     Some(0) => Some(true),
            //     Some(_) => Some(false),
            //     None => None,
            // }
            let div = evolve_i64_divisible_by(left.extract_i64(), right.extract_i64());
            Some(div)
        }
        FLOAT_CLASS_ID => {
            let div = evolve_f64_is_divisible(left.extract_raw_f64(), right.extract_raw_f64());
            Some(div)
        }
        _ => None,
    };

    match is_div {
        Some(is_div) => Object::from_i1(is_div),
        None => Object::intrinsic_fail(),
    }
}

#[unsafe(export_name = "evolve.intrinsic2.zero?")]
#[inline(always)]
const fn evolve_intrinsic_zero(value: Object) -> Object {
    let tag = value.tag();
    match tag as u16 {
        INT_CLASS_ID => Object::from_i1(value.extract_i64() == 0),
        // extract raw to keep const
        FLOAT_CLASS_ID => Object::from_i1(value.extract_raw_f64() == 0.0),
        _ => Object::intrinsic_fail(),
    }
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

// #[unsafe(no_mangle)]
// #[inline(always)]
// pub fn evolve_intrinsic_eq(left: Object, right: Object) -> Object {
//     match (left.class_id(), right.class_id()) {
//         (INT_CLASS_ID, INT_CLASS_ID) => {
//             let x = left.extract_i64() == right.extract_i64();
//             x.into()
//         }
//         (FLOAT_CLASS_ID, FLOAT_CLASS_ID) => {
//             let x = evolve_f64_eq(left.extract_f64(), right.extract_f64());
//             x.into()
//         }
//         (STRING_CLASS_ID, STRING_CLASS_ID) => {
//             let x = evolve_string_bytes_eq(left.extract_str(), right.extract_str());
//             x.into()
//         }
//         (_, _) => Object::null(),
//     }
// }
