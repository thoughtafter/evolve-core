// use super::*;

// #[inline(always)]
// #[allow(dead_code)]
// fn test_closure(this: Object, tuple: Object, env: Object) -> Object {
//     let index = tuple.tuple_get(1).extract_i64();
//     // if index % 10_000_000 == 0 {
//     //     libc_println!("{}", index);
//     //     libc_println!("I'm a closure");
//     //     libc_println!("I have a self {:?}", this);
//     //     libc_println!("I have env {:?}", env);
//     //     libc_println!("I have tuple {:?}", tuple);
//     // };
//     Object::null()
// }

#[test]
fn test_build_closure() {
    // let closure_data = [Object; 6];
    // let closure = evolve_from_ptr_closure2(closure_data as Ptr, test_closure, 5);
}
