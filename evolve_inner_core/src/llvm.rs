/// `%_0 = sitofp i64 %value to double`
/// never poison: https://llvm.org/docs/LangRef.html#sitofp-to-instruction
/// round using default round mode
#[no_mangle]
#[inline(always)]
extern "Rust" fn evolve_llvm_sitofp(value: i64) -> f64 {
    value as f64
}

/// `fptosi double %value to i64`
/// may be poison: https://llvm.org/docs/LangRef.html#fptosi-to-instruction
#[no_mangle]
#[inline(always)]
extern "Rust" fn evolve_llvm_fptosi(value: f64) -> i64 {
    unsafe { value.to_int_unchecked::<i64>() }
}

// # https://llvm.org/docs/LangRef.html#bitwise-binary-operations
// # (i64, i64) -> i64
// # no poison: and or xor

/// bitwise and
/// - `%_0 = and i64 %rhs, %lhs`
/// - https://llvm.org/docs/LangRef.html#and-instruction
#[no_mangle]
#[inline(always)]
extern "Rust" fn evolve_llvm_and(lhs: i64, rhs: i64) -> i64 {
    lhs & rhs
}

/// bitwise or
/// - `%_0 = or i64 %rhs, %lhs`
/// - https://llvm.org/docs/LangRef.html#or-instruction
#[no_mangle]
#[inline(always)]
extern "Rust" fn evolve_llvm_or(lhs: i64, rhs: i64) -> i64 {
    lhs | rhs
}

/// bitwise xor
/// - `%_0 = xor i64 %rhs, %lhs`
/// - https://llvm.org/docs/LangRef.html#xor-instruction
#[no_mangle]
#[inline(always)]
extern "Rust" fn evolve_llvm_xor(lhs: i64, rhs: i64) -> i64 {
    lhs ^ rhs
}

#[no_mangle]
#[inline(always)]
/// `%_0 = fneg double %value`
extern "Rust" fn evolve_llvm_fneg(value: f64) -> f64 {
    -value
}

#[no_mangle]
#[inline(always)]
/// `%_0 = fadd double %lhs, %rhs`
extern "Rust" fn evolve_llvm_fadd(lhs: f64, rhs: f64) -> f64 {
    lhs + rhs
}

#[no_mangle]
#[inline(always)]
/// `%_0 = fsub double %lhs, %rhs`
extern "Rust" fn evolve_llvm_fsub(lhs: f64, rhs: f64) -> f64 {
    lhs - rhs
}

#[no_mangle]
#[inline(always)]
/// `%_0 = fmul double %lhs, %rhs`
extern "Rust" fn evolve_llvm_fmul(lhs: f64, rhs: f64) -> f64 {
    lhs * rhs
}

#[no_mangle]
#[inline(always)]
/// `%_0 = fdiv double %lhs, %rhs`
extern "Rust" fn evolve_llvm_fdiv(lhs: f64, rhs: f64) -> f64 {
    lhs / rhs
}

#[no_mangle]
#[inline(always)]
/// `%_0 = frem double %lhs, %rhs`
extern "Rust" fn evolve_llvm_frem(lhs: f64, rhs: f64) -> f64 {
    lhs % rhs
}
