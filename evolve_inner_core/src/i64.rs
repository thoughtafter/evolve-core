// // inclusive between with ordered params
// #[no_mangle]
// extern "Rust" fn evolve_i64_is_between_ordered(value: i64, min: i64, max: i64) -> bool {
//     value >= min && value <= max
// }
//
// // inclusive between with unordered params
// #[no_mangle]
// extern "Rust" fn evolve_i64_is_between_unordered(value: i64, min: i64, max: i64) -> bool {
//     (value >= min && value <= max) | (value >= max && value <= min)
// }

use crate::class_ids::INT_CLASS_ID;
use crate::object::{Object, Ptr};

#[no_mangle]
extern "Rust" fn evolve_i64_cmp(value1: i64, value2: i64) -> i64 {
    value1.cmp(&value2) as i64
}

// no need for signum when cmp(0) i sufficiently fast
// #[no_mangle]
// extern "Rust" fn evolve_i64_signum(value: i64) -> i64 {
//     value.signum()
// }

/// return dividend and error/overflow
/// - use checked_div which handles this
/// - cannot use overflowing_div because of panic on divide by zero
#[no_mangle]
const extern "Rust" fn evolve_i64_checked_div(lhs: i64, rhs: i64) -> (i64, bool) {
    if let Some(dividend) = lhs.checked_div(rhs) {
        (dividend, false)
    } else {
        (0, true)
    }
}

#[no_mangle]
const extern "Rust" fn evolve_i64_checked_rem(lhs: i64, rhs: i64) -> (i64, bool) {
    if let Some(rem) = lhs.checked_rem(rhs) {
        (rem, false)
    } else {
        (0, true)
    }
}

/// safe rem - no checking needed
/// min / -1 = 0, though overflow there is no remainder
/// x / 0 = x, can be checked or used
#[no_mangle]
#[allow(unused)]
const extern "Rust" fn evolve_i64_safe_rem(lhs: i64, rhs: i64) -> i64 {
    match rhs {
        0 => lhs,
        -1 => 0,
        _ => lhs % rhs,
    }
}

#[no_mangle]
const extern "Rust" fn evolve_i64_checked_div_rem(lhs: i64, rhs: i64) -> (i64, i64) {
    let div = lhs.checked_div(rhs);
    let rem = lhs.checked_rem(rhs);

    match (div, rem) {
        (Some(div), Some(rem)) => (div, rem),
        _ => (-1, -1),
    }
}

#[no_mangle]
const extern "Rust" fn evolve_i64_overflowing_abs(value: i64) -> (i64, bool) {
    value.overflowing_abs()
}

#[no_mangle]
const extern "Rust" fn evolve_i64_overflowing_neg(value: i64) -> (i64, bool) {
    value.overflowing_neg()
}

#[no_mangle]
const extern "Rust" fn evolve_i64_nabs(value: i64) -> i64 {
    if value > 0 {
        -value
    } else {
        value
    }
}

#[no_mangle]
extern "Rust" fn evolve_i64_ashr(lhs: i64, rhs: u32) -> i64 {
    lhs.unbounded_shr(rhs)
}

#[no_mangle]
extern "Rust" fn evolve_i64_ashr2(lhs: i64, rhs: u32) -> i64 {
    lhs.checked_shr(rhs).unwrap_or_default()
}

#[no_mangle]
extern "Rust" fn evolve_i64_lshr(lhs: u64, rhs: u32) -> u64 {
    lhs.unbounded_shr(rhs)
}

#[no_mangle]
extern "Rust" fn evolve_i64_lshr2(lhs: u64, rhs: u32) -> u64 {
    lhs.checked_shr(rhs).unwrap_or_default()
}

// overflowing_shl - checks for overflow of bits, not result
#[no_mangle]
extern "Rust" fn evolve_i64_overflowing_shl(lhs: i64, rhs: u32) -> (i64, bool) {
    let shl = lhs.unbounded_shl(rhs);
    let shr = shl.unbounded_shr(rhs);
    (shl, lhs != shr)
}

#[no_mangle]
extern "Rust" fn evolve_i64_unbounded_shl(lhs: i64, rhs: u32) -> i64 {
    lhs.unbounded_shl(rhs)
}

impl From<i64> for Object {
    #[export_name = "evolve_from_i64"]
    fn from(value: i64) -> Self {
        Object::new(INT_CLASS_ID, value as Ptr)
    }
}

impl From<Object> for i64 {
    #[export_name = "evolve_extract_i64"]
    fn from(value: Object) -> i64 {
        value.extract_ptr() as i64
    }
}

mod tests {
    #[allow(unused_imports)]
    use crate::i64::*;

    #[test]
    fn test_unbounded_shl() {
        assert_eq!(i64::MAX << 1, -2);
        assert_eq!(i64::MIN << 1, 0);

        assert_eq!(evolve_i64_unbounded_shl(i64::MAX, 0), i64::MAX);
        assert_eq!(evolve_i64_unbounded_shl(i64::MAX, 1), -2);

        assert_eq!(evolve_i64_unbounded_shl(i64::MIN, 0), i64::MIN);
        assert_eq!(evolve_i64_unbounded_shl(i64::MIN, 1), 0);

        assert_eq!(evolve_i64_unbounded_shl(1, 1), 2);
        assert_eq!(evolve_i64_unbounded_shl(-1, 1), -2);
    }

    #[test]
    fn test_overflowing_shl() {
        assert_eq!(evolve_i64_overflowing_shl(i64::MAX, 0), (i64::MAX, false));
        assert_eq!(evolve_i64_overflowing_shl(i64::MAX, 1), (-2, true));

        assert_eq!(evolve_i64_overflowing_shl(i64::MIN, 0), (i64::MIN, false));
        assert_eq!(evolve_i64_overflowing_shl(i64::MIN, 1), (0, true));

        assert_eq!(evolve_i64_overflowing_shl(1, 1), (2, false));
        assert_eq!(evolve_i64_overflowing_shl(-1, 1), (-2, false));
    }

    #[test]
    fn test_evolve_i64_checked_div_rem() {
        assert_eq!((2, 1), evolve_i64_checked_div_rem(5, 2));
        assert_eq!((-2, -1), evolve_i64_checked_div_rem(-5, 2));
        assert_eq!((-2, 1), evolve_i64_checked_div_rem(5, -2));
        assert_eq!((2, -1), evolve_i64_checked_div_rem(-5, -2));

        assert_eq!((-i64::MAX, 0), evolve_i64_checked_div_rem(i64::MAX, -1));
        assert_eq!((-1, -1), evolve_i64_checked_div_rem(i64::MIN, -1));
    }
}
