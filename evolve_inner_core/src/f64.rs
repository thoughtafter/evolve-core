use core::cmp::Ordering;
use ordered_float::OrderedFloat;

#[export_name = "evolve_f64_cmp"]
#[inline(always)]
// https://doc.rust-lang.org/std/primitive.f64.html#method.total_cmp
// was evolve_math_cmp_f64
pub fn evolve_f64_cmp(value1: f64, value2: f64) -> Ordering {
    // works but slightly slower
    // value1.total_cmp(&value2) as i64

    // performance seems better than total_cmp
    OrderedFloat(value1).cmp(&OrderedFloat(value2))
}

#[no_mangle]
/// ordered equality - faster than cmp
pub fn evolve_f64_eq(value1: f64, value2: f64) -> bool {
    OrderedFloat(value1).eq(&OrderedFloat(value2))
    // evolve_f64_cmp(value1, value2) == Ordering::Equal
}

// #[no_mangle]
// fn evolve_f64_signum(value: f64) -> i64 {
//     // value.signum() as i64
//     OrderedFloat(value).cmp(&OrderedFloat(0.0)) as i64
// }

// not needed with saturated fptosi
// #[no_mangle]
// fn evolve_f64_fits_i64(value: f64) -> bool {
//     (value <= i64::MAX as f64) && (value >= i64::MIN as f64)
// }

#[cfg(test)]
mod tests {
    use super::*;
    use test_case::test_case;

    use crate::object::Object;
    use core::cmp::Ordering;
    use core::cmp::Ordering::*;

    #[test_case(0.0, Equal, -0.0; "0 == neg 0")]
    #[test_case(-0.0, Equal, 0.0; "neg 0 == 0")]
    #[test_case(0.0, Equal, 0.0; "0 == 0")]
    #[test_case(-0.0, Equal, -0.0; "neg 0 == neg 0")]
    #[test_case(f64::NAN, Equal, f64::NAN; "NAN == NAN")]
    #[test_case(f64::NAN, Greater, f64::INFINITY; "NAN > INF")]
    fn test_evolve_f64_cmp(lhs: f64, order: Ordering, rhs: f64) {
        let cmp = evolve_f64_cmp(lhs, rhs);
        assert_eq!(order, cmp);
    }

    #[test]
    fn test_f64_nan() {
        assert!(Object::from(f64::NAN).extract_f64().is_nan());
    }
}
