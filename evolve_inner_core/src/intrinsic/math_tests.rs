use crate::intrinsic::math::evolve_intrinsic_zero;
use crate::object::Object;
use alloc::format;

#[test]
fn test_zero() {
    let pos_zero = Object::from(0.0);
    assert_eq!(Object::from(true), evolve_intrinsic_zero(pos_zero));
    assert_eq!("Object { F64: 0.0 }", format!("{:?}", pos_zero));

    let neg_zero = Object::from(-0.0);
    assert_eq!(Object::from(true), evolve_intrinsic_zero(neg_zero));
    assert_eq!("Object { F64: -0.0 }", format!("{:?}", neg_zero));
}
