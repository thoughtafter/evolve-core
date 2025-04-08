use evolve_inner_core::object::{Object, Ptr, evolve_build_ptr};

#[unsafe(no_mangle)]
const fn new_gc() -> Object {
    evolve_build_ptr(22, 0, 0 as Ptr)
}
