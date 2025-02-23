use super::*;

#[test]
fn test_eq_nan() {
    assert_eq!(
        Object::from(true),
        evolve_intrinsic_eq(f64::NAN.into(), f64::NAN.into())
    );
    assert_eq!(
        Object::from(false),
        evolve_intrinsic_ne(f64::NAN.into(), f64::NAN.into())
    );
}

#[test]
fn test_eq_neg_zero() {
    assert_eq!(0.0, -0.0);
    assert_eq!(
        Object::from(true),
        evolve_intrinsic_eq((-0.0).into(), 0.0.into())
    );
}
