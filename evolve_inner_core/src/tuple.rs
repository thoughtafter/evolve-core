use crate::array::adjusted_index;
use crate::class_ids::TUPLE_CLASS_ID;
use crate::object::{Object, Ptr};
use core::ptr::NonNull;

pub type EvolveTuple = NonNull<Object>;

#[export_name = "tuple.core.get"]
#[inline(always)]
pub unsafe extern "Rust" fn evolve_tuple_get(tuple: EvolveTuple, index: usize) -> Object {
    let adjusted_index = adjusted_index(index) as isize;
    tuple.offset(adjusted_index).read()
}

pub const EVOLVE_EMPTY_TUPLE: &Object = &Object::from_i64(0);

#[export_name = "test_evolve.from.ptr.tuple"]
pub extern "Rust" fn evolve_from_ptr_tuple(size: usize, ptr: Ptr) -> Object {
    if size > 0 {
        Object::with_aux(TUPLE_CLASS_ID, size as u32, ptr)
    } else {
        Object::with_aux(
            TUPLE_CLASS_ID,
            size as u32,
            EVOLVE_EMPTY_TUPLE as *const Object as Ptr,
        )
    }
}
