extern crate alloc;

use crate::object::Object;
use alloc::collections::VecDeque;
use alloc::vec;

#[no_mangle]
fn evolve_test1() -> i64 {
    vec![1, 2, 3, 42][3]
}

#[no_mangle]
fn evolve_test2() -> Object {
    let x = vec![4, 2, 42];
    x[2].into()
}

#[no_mangle]
fn evolve_test3() -> Object {
    let x = (4, 2, 42);
    x.2.into()
}

#[no_mangle]
fn evolve_test4() -> Object {
    let deq = VecDeque::from([-1, 0, 1, 42]);
    deq[3].into()
}

// not opt
#[no_mangle]
fn evolve_test5() -> Object {
    let mut deq = VecDeque::from([-1, 0, 1, 42]);
    deq.push_back(-1);
    deq[3].into()
}

// not opt
#[no_mangle]
fn evolve_test6() -> Object {
    let mut deq = VecDeque::from([-1, 0, 1, 42]);
    deq.push_back(42);
    deq[4].into()
}

// not opt
#[no_mangle]
fn evolve_test7() -> Object {
    let mut x = vec![4, 2, 42];
    x.push(42);
    x[2].into()
}


// #[no_mangle]
// fn test_str() -> &'static str {
//     "This"
// }

// #[cfg(not(test))]
// #[panic_handler]
// fn panic(_info: &core::panic::PanicInfo) -> ! {
//     unsafe { libc::abort(); }
// }

// #[no_mangle]
//  fn evolve_build_ptr_rust(class_id: u32, aux4: u32, ptr: *const u64) -> (u64, *const u64) {
//     (((class_id as u64) << 32) | aux4 as u64, ptr)
// }

// #[no_mangle]
//  extern "C" fn evolve_build_i64_c(i: usize) -> Object {
//     Object {
//         tag: 4,
//         ptr: i as *const i64,
//     }
// }
// #[no_mangle]
//  extern "C" fn evolve_extract_i64_c(o: Object) -> usize {
//     o.ptr.addr()
// }

// #[no_mangle]
// extern "C" fn call_from_c() {
//     println!("Just called a Rust function from C!");
// }
//
// #[no_mangle]
// fn call_from_rust() {
//     println!("Just called a Rust function from C!");
// }