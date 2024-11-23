use super::*;

#[test]
fn test_stack_tuple() {
    const SIZE: usize = 10;
    let tuple_mem = [Object::null(); SIZE + 1];
    let tuple = evolve_from_ptr_tuple(SIZE, tuple_mem.as_ptr() as Ptr);
    helper(tuple, SIZE);
}

#[test]
fn test_heap_tuple() {
    const SIZE: usize = 10;
    let tuple = evolve_tuple_alloc(SIZE);
    helper(tuple, SIZE);
}

fn helper(tuple: Object, size: usize) {
    assert_eq!(size, tuple.aux() as usize);
    assert_eq!(size + 1, tuple.tuple().len());

    for i in 0..=(size + 1) {
        assert_eq!(Object::null(), tuple.tuple_get(i));
    }

    // can put 1 to size
    assert!(!tuple.tuple_put(size, 42.into()));
    assert_eq!(42, tuple.tuple_get(size).extract_i64());

    assert!(!tuple.tuple_put(1, 24.into()));
    assert_eq!(24, tuple.tuple_get(1).extract_i64());

    // putting into size + 1 will fail
    assert!(tuple.tuple_put(size + 1, 42.into()));

    // putting into 0 will fail
    assert!(tuple.tuple_put(0, 42.into()));
}
