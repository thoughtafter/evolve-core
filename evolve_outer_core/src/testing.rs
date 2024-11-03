extern crate alloc;

use crate::object::Object;
use alloc::collections::VecDeque;
use alloc::vec;

#[no_mangle]
extern "Rust" fn evolve_test1() -> i64 {
    vec![1, 2, 3, 42][3]
}

#[no_mangle]
extern "Rust" fn evolve_test2() -> Object {
    let x = vec![4, 2, 42];
    x[2].into()
}

#[no_mangle]
extern "Rust" fn evolve_test3() -> Object {
    let x = (4, 2, 42);
    x.2.into()
}

#[no_mangle]
extern "Rust" fn evolve_test4() -> Object {
    let deq = VecDeque::from([-1, 0, 1, 42]);
    deq[3].into()
}

// not opt
#[no_mangle]
extern "Rust" fn evolve_test5() -> Object {
    let mut deq = VecDeque::from([-1, 0, 1, 42]);
    deq.push_back(-1);
    deq[3].into()
}

// not opt
#[no_mangle]
extern "Rust" fn evolve_test6() -> Object {
    let mut deq = VecDeque::from([-1, 0, 1, 42]);
    deq.push_back(42);
    deq[4].into()
}

// not opt
#[no_mangle]
extern "Rust" fn evolve_test7() -> Object {
    let mut x = vec![4, 2, 42];
    x.push(42);
    x[2].into()
}
