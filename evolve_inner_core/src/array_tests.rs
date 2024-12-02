use super::*;

#[test]
fn test_new() {
    let a = evolve_array_literal(10);
    assert_eq!(10, a.capacity());
    assert_eq!(0, a.len());
    assert_eq!(10, evolve_array_capacity(a));
    assert_eq!(0, evolve_array_size(a));

    let a = evolve_array_literal(0);
    assert_eq!(8, a.capacity());
    assert_eq!(0, a.len());
    assert_eq!(8, evolve_array_capacity(a));
    assert_eq!(0, evolve_array_size(a));
}

#[test]
fn test_get_oob() {
    let a = evolve_array_literal(1);
    let b = evolve_array_get(a, 100);
    assert_eq!(Object::null(), b);
}

#[test]
fn test_put_get() {
    let mut a = evolve_array_literal(10);
    evolve_array_inbounds_push(&mut a, Object::from(42));
    let b = evolve_array_get(a, 1);

    assert_eq!(Object::from(42), b);
}
