/// array using VecDeque
/// allocations will be common in this code
/// https://doc.rust-lang.org/std/collections/vec_deque/struct.VecDeque.html
use alloc::collections::VecDeque;

use crate::allocates::leak_heap_ref;
use crate::object::Object;

type EvolveArray = VecDeque<Object>;

#[no_mangle]
#[inline(always)]
extern "Rust" fn evolve_array_static_new(capacity: usize) -> &'static EvolveArray {
    let array = EvolveArray::with_capacity(capacity);
    leak_heap_ref(array)
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
#[inline(always)]
extern "Rust" fn evolve_array_get(array: &EvolveArray, index: usize) -> Object {
    *(array.get(index).unwrap_or(&Object::null()))
}

#[no_mangle]
#[inline(always)]
extern "Rust" fn evolve_array_put(array: &mut EvolveArray, index: usize, value: Object) {
    array[index] = value;
}

mod tests {}
