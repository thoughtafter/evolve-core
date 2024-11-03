use super::*;

#[test]
fn test_get_oob() {
    let a = evolve_array_static_new(1);
    let b = evolve_array_get(a, 100);
    assert_eq!(Object::null(), b);
}

#[test]
fn test_put_get() {
    let mut a = evolve_array_static_new(10);
    evolve_array_inbounds_push(&mut a, Object::from(42));
    let b = evolve_array_get(a, 1);

    assert_eq!(Object::from(42), b);
}
