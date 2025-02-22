#[cfg(test)]
#[path = "llvm_tests.rs"]
mod tests;

/// `%_0 = sitofp i64 %value to double`
/// never poison: https://llvm.org/docs/LangRef.html#sitofp-to-instruction
/// round using default round mode
#[no_mangle]
#[inline(always)]
pub const fn evolve_llvm_sitofp(value: i64) -> f64 {
    value as f64
}

/// `fptosi double %value to i64`
/// may be poison: https://llvm.org/docs/LangRef.html#fptosi-to-instruction
#[no_mangle]
#[inline(always)]
// TODO: const
unsafe fn evolve_llvm_fptosi(value: f64) -> i64 {
    value.to_int_unchecked::<i64>()
}

/// fptosi checked
// i64 will never be poison
// why < instead of <= MAX?
// - conforms with num_traits
// - eliminates problems with positive and negative conversions not matching
// the range is -9223372036854775808 to 9223372036854774784
#[no_mangle]
#[inline(always)]
// TODO: const
pub fn evolve_llvm_fptosi_checked(value: f64) -> (i64, bool) {
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

// # https://llvm.org/docs/LangRef.html#bitwise-binary-operations
// # (i64, i64) -> i64
// # no poison: and or xor

/// bitwise and
/// - `%_0 = and i64 %rhs, %lhs`
/// - https://llvm.org/docs/LangRef.html#and-instruction
#[no_mangle]
#[inline(always)]
const fn evolve_llvm_and(lhs: i64, rhs: i64) -> i64 {
    lhs & rhs
}

/// bitwise or
/// - `%_0 = or i64 %rhs, %lhs`
/// - https://llvm.org/docs/LangRef.html#or-instruction
#[no_mangle]
#[inline(always)]
const fn evolve_llvm_or(lhs: i64, rhs: i64) -> i64 {
    lhs | rhs
}

/// bitwise xor
/// - `%_0 = xor i64 %rhs, %lhs`
/// - https://llvm.org/docs/LangRef.html#xor-instruction
#[no_mangle]
#[inline(always)]
const fn evolve_llvm_xor(lhs: i64, rhs: i64) -> i64 {
    lhs ^ rhs
}

/// add nsw
/// - %_0 = add nsw i64 %rhs, %lhs
#[export_name = "evolve.llvm.add_nsw"]
#[inline(always)]
const unsafe fn evolve_llvm_add_nsw(lhs: i64, rhs: i64) -> i64 {
    lhs.unchecked_add(rhs)
}

/// add
/// add i64 %rhs, %lhs
#[export_name = "evolve.llvm.add"]
#[inline(always)]
const fn evolve_llvm_add(lhs: i64, rhs: i64) -> i64 {
    lhs.wrapping_add(rhs)
}

#[no_mangle]
#[inline(always)]
/// `%_0 = fneg double %value`
const fn evolve_llvm_fneg(value: f64) -> f64 {
    -value
}

#[no_mangle]
#[inline(always)]
/// `%_0 = fadd double %lhs, %rhs`
const fn evolve_llvm_fadd(lhs: f64, rhs: f64) -> f64 {
    lhs + rhs
}

#[no_mangle]
#[inline(always)]
/// `%_0 = fsub double %lhs, %rhs`
const fn evolve_llvm_fsub(lhs: f64, rhs: f64) -> f64 {
    lhs - rhs
}

#[no_mangle]
#[inline(always)]
/// `%_0 = fmul double %lhs, %rhs`
const fn evolve_llvm_fmul(lhs: f64, rhs: f64) -> f64 {
    lhs * rhs
}

#[no_mangle]
#[inline(always)]
/// `%_0 = fdiv double %lhs, %rhs`
const fn evolve_llvm_fdiv(lhs: f64, rhs: f64) -> f64 {
    lhs / rhs
}

#[no_mangle]
#[inline(always)]
/// `%_0 = frem double %lhs, %rhs`
const fn evolve_llvm_frem(lhs: f64, rhs: f64) -> f64 {
    lhs % rhs
}
