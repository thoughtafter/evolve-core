use core::ops::Div;

#[no_mangle]
#[inline(always)]
extern "Rust" fn evolve_llvm_sitofp(value: i64) -> f64 {
    value as f64
}

// creates "fptosi double %value to i64"
#[no_mangle]
#[inline(always)]
extern "Rust" fn evolve_llvm_fptosi(value: f64) -> i64 {
    unsafe { value.to_int_unchecked::<i64>() }
}

// #[no_mangle]
// #[inline(always)]
// extern "Rust" fn evolve_llvm_sdiv(lhs: i64, rhs: i64) -> i64 {
//     lhs.unchec
// }

// # https://llvm.org/docs/LangRef.html#bitwise-binary-operations
// # (i64, i64) -> i64
// # no poison: and or xor

/// bitwise and
// https://llvm.org/docs/LangRef.html#and-instruction
#[no_mangle]
#[inline(always)]
extern "Rust" fn evolve_llvm_and(lhs: i64, rhs: i64) -> i64 {
    lhs & rhs
}

/// bitwise or
// https://llvm.org/docs/LangRef.html#or-instruction
#[no_mangle]
#[inline(always)]
extern "Rust" fn evolve_llvm_or(lhs: i64, rhs: i64) -> i64 {
    lhs | rhs
}

/// bitwise xor
// https://llvm.org/docs/LangRef.html#xor-instruction
#[no_mangle]
#[inline(always)]
extern "Rust" fn evolve_llvm_xor(lhs: i64, rhs: i64) -> i64 {
    lhs ^ rhs
}

#[no_mangle]
#[inline(always)]
extern "Rust" fn evolve_llvm_fneg(value: f64) -> f64 {
    -value
}

#[no_mangle]
#[inline(always)]
extern "Rust" fn evolve_llvm_fadd(lhs: f64, rhs: f64) -> f64 {
    lhs + rhs
}

#[no_mangle]
#[inline(always)]
extern "Rust" fn evolve_llvm_fsub(lhs: f64, rhs: f64) -> f64 {
    lhs - rhs
}

#[no_mangle]
#[inline(always)]
extern "Rust" fn evolve_llvm_fmul(lhs: f64, rhs: f64) -> f64 {
    lhs * rhs
}

#[no_mangle]
#[inline(always)]
extern "Rust" fn evolve_llvm_fdiv(lhs: f64, rhs: f64) -> f64 {
    lhs / rhs
}

#[no_mangle]
#[inline(always)]
extern "Rust" fn evolve_llvm_frem(lhs: f64, rhs: f64) -> f64 {
    lhs % rhs
}
