use crate::llvm::evolve_llvm_fptosi;
use core::cmp::Ordering;
use ordered_float::OrderedFloat;

#[unsafe(export_name = "evolve_f64_cmp")]
#[inline(always)]
// https://doc.rust-lang.org/std/primitive.f64.html#method.total_cmp
// was evolve_math_cmp_f64
pub fn evolve_f64_cmp(value1: f64, value2: f64) -> Ordering {
    // works but slightly slower
    // value1.total_cmp(&value2) as i64

    // performance seems better than total_cmp
    OrderedFloat(value1).cmp(&OrderedFloat(value2))
}

#[unsafe(no_mangle)]
/// ordered equality - faster than cmp
pub fn evolve_f64_eq(value1: f64, value2: f64) -> bool {
    OrderedFloat(value1).eq(&OrderedFloat(value2))
    // evolve_f64_cmp(value1, value2) == Ordering::Equal
}

pub const fn evolve_f64_is_divisible(lhs: f64, rhs: f64) -> bool {
    (lhs % rhs) == 0.0
}

// #[unsafe(no_mangle)]
// fn evolve_f64_signum(value: f64) -> i64 {
//     // value.signum() as i64
//     OrderedFloat(value).cmp(&OrderedFloat(0.0)) as i64
// }

// not needed with saturated fptosi
// #[unsafe(no_mangle)]
// fn evolve_f64_fits_i64(value: f64) -> bool {
//     (value <= i64::MAX as f64) && (value >= i64::MIN as f64)
// }

/// fptosi checked
/// this is in the spirit of LLVM intrinsics
// i64 will never be poison
// why < instead of <= MAX?
// - conforms with num_traits
// - eliminates problems with positive and negative conversions not matching
// the range is -9223372036854775808 to 9223372036854774784
#[unsafe(export_name = "evolve.f64.fptosi.checked")]
#[inline(always)]
// TODO: const
pub fn evolve_f64_fptosi_checked(value: f64) -> (i64, bool) {
    if value >= i64::MIN as f64 && value < i64::MAX as f64 {
        // SAFETY:
        // above conditions mean this will never be poison
        let safe_f64 = unsafe { evolve_llvm_fptosi(value) };
        (safe_f64, false)
        // (value as i64, false) // saturated
    } else {
        (0, true)
    }
}

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
        assert!(Object::from(f64::NAN).extract_raw_f64().is_nan());
    }
}
