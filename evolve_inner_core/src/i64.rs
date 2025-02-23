use core::cmp::Ordering;

// // inclusive between with ordered params
// #[no_mangle]
// fn evolve_i64_is_between_ordered(value: i64, min: i64, max: i64) -> bool {
//     value >= min && value <= max
// }
//
// // inclusive between with unordered params
// #[no_mangle]
// fn evolve_i64_is_between_unordered(value: i64, min: i64, max: i64) -> bool {
//     (value >= min && value <= max) | (value >= max && value <= min)
// }

#[export_name = "evolve_i64_cmp"]
#[inline(always)]
/// cmp for ints, will be optimized for other specific operations
pub fn evolve_i64_cmp(value1: i64, value2: i64) -> Ordering {
    value1.cmp(&value2)
}

// no need for signum when cmp(0) is sufficiently fast
// #[no_mangle]
// fn evolve_i64_signum(value: i64) -> i64 {
//     value.signum()
// }

/// return dividend and error/overflow
/// - use checked_div which handles this
/// - cannot use overflowing_div because of panic on divide by zero
#[no_mangle]
const fn evolve_i64_checked_div(lhs: i64, rhs: i64) -> (i64, bool) {
    if let Some(dividend) = lhs.checked_div(rhs) {
        (dividend, false)
    } else {
        (0, true)
    }
}

#[no_mangle]
const fn evolve_i64_checked_rem(lhs: i64, rhs: i64) -> (i64, bool) {
    if let Some(rem) = evolve_i64_safe_rem_option(lhs, rhs) {
        (rem, false)
    } else {
        (0, true)
    }
}

/// safe rem - no checking needed
/// min / -1 = 0, though overflow there is no remainder
/// x / 0 = x, can be checked or used
#[no_mangle]
#[allow(dead_code)]
const fn evolve_i64_safe_rem(lhs: i64, rhs: i64) -> i64 {
    match rhs {
        0 => lhs,
        -1 => 0,
        _ => lhs % rhs,
    }
}

/// since checked div already checks for this, this seems
/// to perform better and is more inclusive
pub const fn evolve_i64_safe_rem_option(lhs: i64, rhs: i64) -> Option<i64> {
    // match rhs {
    //     -1 => Some(0),
    //     _ => lhs.checked_rem(rhs),
    // }
    Some(evolve_i64_safe_rem(lhs, rhs))
}

#[no_mangle]
const fn evolve_i64_checked_div_rem(lhs: i64, rhs: i64) -> (i64, i64) {
    let div = lhs.checked_div(rhs);
    let rem = lhs.checked_rem(rhs);

    match (div, rem) {
        (Some(div), Some(rem)) => (div, rem),
        _ => (-1, -1),
    }
}

pub const fn evolve_i64_divisible_by(lhs: i64, rhs: i64) -> bool {
    match rhs {
        -1 => true,
        0 => lhs == 0,
        // _ => (lhs % rhs) == 0,
        _ => matches!(lhs.checked_rem(rhs), Some(0)),
    }
}

#[inline(always)]
pub const fn evolve_i64_div_exact(lhs: i64, rhs: i64) -> Option<i64> {
    let rem = lhs.checked_rem(rhs);
    let div = lhs.checked_div(rhs);
    match rem {
        Some(0) => div,
        _ => None,
    }
}

#[no_mangle]
const fn evolve_i64_overflowing_abs(value: i64) -> (i64, bool) {
    value.overflowing_abs()
}

#[no_mangle]
const fn evolve_i64_overflowing_neg(value: i64) -> (i64, bool) {
    value.overflowing_neg()
}

#[no_mangle]
const fn evolve_i64_nabs(value: i64) -> i64 {
    if value > 0 {
        -value
    } else {
        value
    }
}

/// signed shift right - llvm ashr
/// - https://llvm.org/docs/LangRef.html#ashr-instruction
// lhs.unbounded_shr(rhs)
// ; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none)
// define noundef i64 @evolve_i64_ashr(i64 noundef %lhs, i32 noundef %rhs) unnamed_addr #10 {
// start:
//   %narrow = tail call i32 @llvm.umin.i32(i32 %rhs, i32 63)
//   %.pn = zext nneg i32 %narrow to i64
//   %_0.sroa.0.0 = ashr i64 %lhs, %.pn
//   ret i64 %_0.sroa.0.0
// }
// current
// ; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none)
// define noundef i64 @evolve.i64.signed-shift-right(i64 noundef %lhs, i32 noundef %rhs) unnamed_addr #10 personality ptr @rust_eh_personality {
// start:
//   %_0.sroa.0.0.sroa.speculated.i = tail call noundef i32 @llvm.umin.i32(i32 %rhs, i32 63)
//   %0 = zext nneg i32 %_0.sroa.0.0.sroa.speculated.i to i64
//   %_0 = ashr i64 %lhs, %0
//   ret i64 %_0
// }
#[export_name = "evolve.i64.signed-shift-right"]
fn evolve_i64_ashr(lhs: i64, rhs: u32) -> i64 {
    // if stabilized:
    // lhs.unbounded_shr(rhs)

    let rhs = rhs.min(63);
    lhs.checked_shr(rhs).unwrap_or_default()
}

/// unsigned shift right - llvm lshr - note lhs is u64, but accepts i64
/// - https://llvm.org/docs/LangRef.html#lshr-instruction
// lhs.unbounded_shr(rhs)
// ; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none)
// define noundef i64 @evolve_i64_lshr(i64 noundef %lhs, i32 noundef %rhs) unnamed_addr #10 {
// start:
//   %_3 = icmp ult i32 %rhs, 64
//   %0 = zext nneg i32 %rhs to i64
//   %1 = lshr i64 %lhs, %0
//   %_0.sroa.0.0 = select i1 %_3, i64 %1, i64 0
//   ret i64 %_0.sroa.0.0
// }
// current:
// ; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none)
// define noundef i64 @evolve.i64.unsigned-shift-right(i64 noundef %lhs, i32 noundef %rhs) unnamed_addr #10 personality ptr @rust_eh_personality {
// start:
//   %_0.sroa.0.0.sroa.speculated.i = tail call noundef i32 @llvm.umin.i32(i32 %rhs, i32 63)
//   %0 = zext nneg i32 %_0.sroa.0.0.sroa.speculated.i to i64
//   %_6 = lshr i64 %lhs, %0
//   ret i64 %_6
// }
#[export_name = "evolve.i64.unsigned-shift-right"]
fn evolve_i64_lshr(lhs: u64, rhs: u32) -> u64 {
    // if stabilized:
    // lhs.unbounded_shr(rhs)

    let rhs = rhs.min(63);
    lhs.checked_shr(rhs).unwrap_or_default()
}

// overflowing_shl - checks for overflow of bits, not result
// was:
// ; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none)
// define { i64, i1 } @evolve_i64_overflowing_shl(i64 noundef %lhs, i32 noundef %rhs) unnamed_addr #10 {
// start:
//   %_9 = icmp ult i32 %rhs, 64
//   %0 = zext nneg i32 %rhs to i64
//   %1 = shl i64 %lhs, %0
//   %shl.sroa.0.0 = select i1 %_9, i64 %1, i64 0
//   %.pn = select i1 %_9, i64 %0, i64 63
//   %shr.sroa.0.0 = ashr i64 %shl.sroa.0.0, %.pn
//   %_7 = icmp ne i64 %shr.sroa.0.0, %lhs
//   %2 = insertvalue { i64, i1 } poison, i64 %shl.sroa.0.0, 0
//   %3 = insertvalue { i64, i1 } %2, i1 %_7, 1
//   ret { i64, i1 } %3
// }
// current:
// ; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none)
// define { i64, i1 } @evolve_i64_overflowing_shl(i64 noundef %lhs, i32 noundef %rhs) unnamed_addr #10 personality ptr @rust_eh_personality {
// start:
//   %_0.sroa.0.0.sroa.speculated.i = tail call noundef i32 @llvm.umin.i32(i32 %rhs, i32 63)
//   %0 = zext nneg i32 %_0.sroa.0.0.sroa.speculated.i to i64
//   %shl = shl i64 %lhs, %0
//   %lhs2 = ashr exact i64 %shl, %0
//   %_6 = icmp ne i64 %lhs2, %lhs
//   %1 = insertvalue { i64, i1 } poison, i64 %shl, 0
//   %2 = insertvalue { i64, i1 } %1, i1 %_6, 1
//   ret { i64, i1 } %2
// }
#[no_mangle]
fn evolve_i64_overflowing_shl(lhs: i64, rhs: u32) -> (i64, bool) {
    // let rhs = rhs.min(63);
    // let shl = lhs.checked_shl(rhs).unwrap_or_default();
    // let lhs2 = shl.checked_shr(rhs).unwrap_or_default();
    // (shl, lhs != lhs2)

    // let shr = shl.unbounded_shr(rhs);
    // (shl, lhs != shr)

    // if rhs == 0 {
    //     return (lhs, false)
    // }
    //
    // let abs = lhs.checked_abs();
    // if let Some(pos) = abs {
    //     let zeroes = pos.leading_zeros();
    //     // (lhs.checked_shl(rhs).unwrap_or_default(), rhs >= zeroes)
    //     if rhs <= zeroes {
    //         (lhs << rhs, false)
    //     } else {
    //         (0, true)
    //     }
    // } else {
    //     (lhs, rhs != 0)
    // }

    // let shl = lhs.unbounded_shl(rhs);
    // let shr = shl.unbounded_shr(rhs);
    // (shl, lhs != shr)

    // shift of 0 never overflows
    if rhs == 0 {
        return (lhs, false);
    }

    // if not 0, any shift of > 63 overflows
    // -1 << 63 is valid
    if rhs > 63 {
        return (0, true);
    }

    let shl = lhs << rhs;
    let shr = shl >> rhs;
    (shl, lhs != shr)
}

// lhs.unbounded_shl(rhs)
// ; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none)
// define noundef i64 @evolve_i64_unbounded_shl(i64 noundef %lhs, i32 noundef %rhs) unnamed_addr #10 {
// start:
//   %_3 = icmp ult i32 %rhs, 64
//   %0 = zext nneg i32 %rhs to i64
//   %1 = shl i64 %lhs, %0
//   %_0.sroa.0.0 = select i1 %_3, i64 %1, i64 0
//   ret i64 %_0.sroa.0.0
// }
// current:
// ; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none)
// define noundef i64 @evolve_i64_unbounded_shl(i64 noundef %lhs, i32 noundef %rhs) unnamed_addr #10 personality ptr @rust_eh_personality {
// start:
//   %_0.sroa.0.0.sroa.speculated.i = tail call noundef i32 @llvm.umin.i32(i32 %rhs, i32 63)
//   %0 = zext nneg i32 %_0.sroa.0.0.sroa.speculated.i to i64
//   %_6 = shl i64 %lhs, %0
//   ret i64 %_6
// }
#[no_mangle]
fn evolve_i64_unbounded_shl(lhs: i64, rhs: u32) -> i64 {
    // lhs.unbounded_shl(rhs)
    let rhs = rhs.min(63);
    lhs.checked_shl(rhs).unwrap_or_default()
}

#[no_mangle]
fn evolve_i64_unbounded_shr(lhs: i64, rhs: u32) -> i64 {
    // lhs.unbounded_shl(rhs)
    let rhs = rhs.min(63);
    lhs.checked_shr(rhs).unwrap_or_default()
}

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn test_unbounded_shl() {
        assert_eq!(-2, i64::MAX << 1);
        assert_eq!(0, i64::MIN << 1);

        assert_eq!(i64::MAX, evolve_i64_unbounded_shl(i64::MAX, 0));
        assert_eq!(-2, evolve_i64_unbounded_shl(i64::MAX, 1));

        assert_eq!(i64::MIN, evolve_i64_unbounded_shl(i64::MIN, 0));
        assert_eq!(0, evolve_i64_unbounded_shl(i64::MIN, 1));

        assert_eq!(2, evolve_i64_unbounded_shl(1, 1));
        assert_eq!(-2, evolve_i64_unbounded_shl(-1, 1));
    }

    #[test]
    fn test_shr() {
        assert_eq!(-1, -1 >> 1);

        assert_eq!(-1, -1i64 >> 63);
        assert_eq!(-1, i64::MIN >> 63);
        assert_eq!(0, i64::MAX >> 63);

        // checked_shr + unwrap_or_default does not work for negatives
        assert_eq!(0, (-1i8).checked_shr(500).unwrap_or_default())
    }

    #[test]
    fn test_overflowing_shl() {
        assert_eq!(evolve_i64_overflowing_shl(i64::MAX, 0), (i64::MAX, false));
        assert_eq!(evolve_i64_overflowing_shl(i64::MAX, 1), (-2, true));

        assert_eq!(evolve_i64_overflowing_shl(i64::MIN, 0), (i64::MIN, false));
        assert_eq!(evolve_i64_overflowing_shl(i64::MIN, 1), (0, true));

        assert_eq!(evolve_i64_overflowing_shl(1, 1), (2, false));
        assert_eq!(evolve_i64_overflowing_shl(-1, 1), (-2, false));
        assert_eq!(
            evolve_i64_overflowing_shl(-1, 63),
            (-9223372036854775808, false)
        );
        assert_eq!(evolve_i64_overflowing_shl(-1, 64), (0, true));
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

    #[test]
    fn test_bit_rotate() {
        assert_eq!(0x5555555555555555, 0x5555555555555555_i64.rotate_right(2));
        assert_eq!(0x5555555555555555, 0x5555555555555555_i64.rotate_left(2));

        assert_eq!(-6148914691236517206, 0x5555555555555555_i64.rotate_right(1));
        assert_eq!(-6148914691236517206, 0x5555555555555555_i64.rotate_left(1));

        assert_eq!(-6148914691236517206, 0x5555555555555555_i64.rotate_right(3));
        assert_eq!(-6148914691236517206, 0x5555555555555555_i64.rotate_left(3));

        assert_eq!(-0x5555555555555554, -3074457345618258602_i64.rotate_left(1));
        assert_eq!(0x5555555555555555, 0xaaaaaaaaaaaaaaaa_u64.rotate_right(1))
    }
}
