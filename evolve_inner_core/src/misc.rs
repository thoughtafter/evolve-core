use crate::object::{evolve_build_ptr, Object, Ptr};

#[no_mangle]
const extern "Rust" fn new_gc() -> Object {
    evolve_build_ptr(22, 0, 0 as Ptr)
}
