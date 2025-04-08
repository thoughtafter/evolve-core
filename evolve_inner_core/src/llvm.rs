#[cfg(test)]
#[path = "llvm_tests.rs"]
mod tests;

/// `%_0 = sitofp i64 %value to double`
/// never poison: https://llvm.org/docs/LangRef.html#sitofp-to-instruction
/// round using default round mode
#[unsafe(no_mangle)]
#[inline(always)]
pub const fn evolve_llvm_sitofp(value: i64) -> f64 {
    value as f64
}

/// `fptosi double %value to i64`
/// may be poison: https://llvm.org/docs/LangRef.html#fptosi-to-instruction
#[unsafe(no_mangle)]
#[inline(always)]
// TODO: const
pub unsafe fn evolve_llvm_fptosi(value: f64) -> i64 {
    unsafe { value.to_int_unchecked::<i64>() }
}

// # https://llvm.org/docs/LangRef.html#bitwise-binary-operations
// # (i64, i64) -> i64
// # no poison: and or xor

/// bitwise and
/// - `%_0 = and i64 %rhs, %lhs`
/// - https://llvm.org/docs/LangRef.html#and-instruction
#[unsafe(no_mangle)]
#[inline(always)]
const fn evolve_llvm_and(lhs: i64, rhs: i64) -> i64 {
    lhs & rhs
}

/// bitwise or
/// - `%_0 = or i64 %rhs, %lhs`
/// - https://llvm.org/docs/LangRef.html#or-instruction
#[unsafe(no_mangle)]
#[inline(always)]
const fn evolve_llvm_or(lhs: i64, rhs: i64) -> i64 {
    lhs | rhs
}

/// bitwise xor
/// - `%_0 = xor i64 %rhs, %lhs`
/// - https://llvm.org/docs/LangRef.html#xor-instruction
#[unsafe(no_mangle)]
#[inline(always)]
const fn evolve_llvm_xor(lhs: i64, rhs: i64) -> i64 {
    lhs ^ rhs
}

/// add nsw
/// - %_0 = add nsw i64 %rhs, %lhs
// #[unsafe(export_name = "evolve.llvm.add_nsw")]
#[inline(always)]
#[allow(dead_code)]
const unsafe fn evolve_llvm_add_nsw(lhs: i64, rhs: i64) -> i64 {
    unsafe { lhs.unchecked_add(rhs) }
}

/// add
/// add i64 %rhs, %lhs
// #[unsafe(export_name = "evolve.llvm.add")]
#[inline(always)]
#[allow(dead_code)]
const fn evolve_llvm_add(lhs: i64, rhs: i64) -> i64 {
    lhs.wrapping_add(rhs)
}

#[unsafe(no_mangle)]
#[inline(always)]
/// `%_0 = fneg double %value`
const fn evolve_llvm_fneg(value: f64) -> f64 {
    -value
}

#[unsafe(no_mangle)]
#[inline(always)]
/// `%_0 = fadd double %lhs, %rhs`
const fn evolve_llvm_fadd(lhs: f64, rhs: f64) -> f64 {
    lhs + rhs
}

#[unsafe(no_mangle)]
#[inline(always)]
/// `%_0 = fsub double %lhs, %rhs`
const fn evolve_llvm_fsub(lhs: f64, rhs: f64) -> f64 {
    lhs - rhs
}

#[unsafe(no_mangle)]
#[inline(always)]
/// `%_0 = fmul double %lhs, %rhs`
const fn evolve_llvm_fmul(lhs: f64, rhs: f64) -> f64 {
    lhs * rhs
}

#[unsafe(no_mangle)]
#[inline(always)]
/// `%_0 = fdiv double %lhs, %rhs`
const fn evolve_llvm_fdiv(lhs: f64, rhs: f64) -> f64 {
    lhs / rhs
}

#[unsafe(no_mangle)]
#[inline(always)]
/// `%_0 = frem double %lhs, %rhs`
const fn evolve_llvm_frem(lhs: f64, rhs: f64) -> f64 {
    lhs % rhs
}
