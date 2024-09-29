use crate::class_ids::ARRAY_CLASS_ID;
use crate::copy_to_heap_and_leak;
use crate::object::{Object, Ptr};
use alloc::collections::VecDeque;

type EvolveArray = VecDeque<Object>;

#[no_mangle]
extern "Rust" fn evolve_array_new(capacity: usize) -> Object {
    let array = EvolveArray::with_capacity(capacity);
    array.into()
}

#[no_mangle]
extern "Rust" fn evolve_array_size(array: &EvolveArray) -> usize {
    array.len()
}

#[no_mangle]
extern "Rust" fn evolve_array_capacity(array: &EvolveArray) -> usize {
    array.capacity()
}

#[no_mangle]
extern "Rust" fn evolve_array_get(array: &EvolveArray, index: usize) -> Object {
    *array.get(index).unwrap_or(&Object::null())
}

#[no_mangle]
extern "Rust" fn evolve_array_put(array: &mut EvolveArray, index: usize, value: Object) {
    array[index] = value;
}

// impl From<Object> for EvolveArray {
//     fn from(s: Object) -> Self {
//
//     }
// }

impl From<EvolveArray> for Object {
    fn from(s: EvolveArray) -> Self {
        let ptr = copy_to_heap_and_leak(s);
        Object::with_aux(ARRAY_CLASS_ID, 0, ptr as Ptr)
    }
}
