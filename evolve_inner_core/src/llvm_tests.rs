// use super::*;
use crate::f64::evolve_f64_fptosi_checked;
use pretty_assertions::assert_eq;
use test_case::test_case;

#[test_case((0, false), -0.0)]
#[test_case((0, true), i128::MIN as f64)]
#[test_case((0, true), i128::MAX as f64)]
#[test_case((i64::MIN, false), i64::MIN as f64)]
#[test_case((0, true), (i128::from(i64::MIN) - 1025) as f64)]
#[test_case((i64::MIN, false), (i128::from(i64::MIN) - 1024) as f64)]
#[test_case((0, true), i64::MAX as f64)]
#[test_case((0, true), (i64::MAX - 511) as f64)]
#[test_case((9223372036854774784, false), (i64::MAX - 512) as f64)]
#[test_case((-9223372036854774784, false), (i64::MIN + 513) as f64)]
#[test_case((-9223372036854775808, false), (i64::MIN + 512) as f64)]

// #[test_case((i64::MAX, false), ((i64::MAX as i128) + 1025) as f64)]
// #[test_case((0, true), ((i64::MAX as i128) + 1026) as f64)]
fn test_evolve_llvm_fptosi_checked(expected_value: (i64, bool), test_value: f64) {
    assert_eq!(expected_value, evolve_f64_fptosi_checked(test_value));
}

#[test]
fn test_constants() {
    assert_eq!(-9223372036854775295, i64::MIN + 513);
    assert_eq!(-9223372036854775296, i64::MIN + 512);

    assert_eq!(9223372036854775295, i64::MAX - 512);
    assert_eq!(9223372036854775296, i64::MAX - 511);
}

// #[test]
// fn test_loop()
// {
//     let start = ((i64::MAX - 16) as i128);
//     let end = ((i64::MAX as i128) + 256);
//     for i in start..end {
//         let f = i as f64;
//         let a = evolve_llvm_fptosi_checked(f);
//         let b = evolve_llvm_fptosi_checked(-f);
//         assert_eq!(-a.0, b.0);
//     }
// }
