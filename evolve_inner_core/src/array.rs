/// array using VecDeque
/// allocations will be common in this code
/// https://doc.rust-lang.org/std/collections/vec_deque/struct.VecDeque.html
use alloc::collections::VecDeque;
use core::ops::Index;
use crate::allocates::{leak_heap_ref, leak_heap_ref_mut};
use crate::object::Object;

type EvolveArray = VecDeque<Object>;

const MIN_CAPACITY: usize = 9;

#[no_mangle]
#[inline(always)]
extern "Rust" fn evolve_array_static_new(size: usize) -> &'static mut EvolveArray {
    let size = size + 1;
    let capacity = size.max(MIN_CAPACITY);
    let mut array = EvolveArray::with_capacity(capacity);
    // array.fill(Object::default());
    array.resize(size, Object::default());
    leak_heap_ref_mut(array)
}

#[no_mangle]
#[inline(always)]
extern "Rust" fn evolve_array_size(array: &EvolveArray) -> usize {
    array.len() - 1
}

#[no_mangle]
#[inline(always)]
extern "Rust" fn evolve_array_capacity(array: &EvolveArray) -> usize {
    array.capacity() - 1
}

#[no_mangle]
#[inline(always)]
extern "Rust" fn evolve_array_get(array: &EvolveArray, index: usize) -> Object {
    *(array.get(index).unwrap_or(&Object::null()))
}

#[no_mangle]
#[inline(always)]
/// put inbounds - suitable for initializer
extern "Rust" fn evolve_array_put(array: &mut EvolveArray, index: usize, value: Object) {
    // if index > array.len() {
    //     array.resize(index + 1, Object::default());
    // }
    // array[index] = value;
    if let Some(store) = array.get_mut(index) {
        *store = value;
    } else {
        // array.resize(index + 1, Object::default());
        // array[index] = value;
    }

}

#[no_mangle]
extern "Rust" fn evolve_array_insert(array: &mut EvolveArray, index: usize, value: Object) {
    // if index > array.len() {
    //     array.resize(index + 1, Object::default());
    // }
    array.insert(index, value);
}

#[no_mangle]
#[inline(always)]
extern "Rust" fn evolve_array_push_front(array: &mut EvolveArray, value: Object) {
    array.push_front(value);
}

#[no_mangle]
#[inline(always)]
extern "Rust" fn evolve_array_push_back(array: &mut EvolveArray, value: Object) {
    array.push_back(value);
}

#[cfg(test)]
mod tests {

    use super::*;

    #[test]
    fn test_get_oob()
    {
        let a = evolve_array_static_new(1);
        let b = evolve_array_get(a, 100);
        assert_eq!(Object::null(), b);
    }

    #[test]
    fn test_put_get()
    {
        let mut a = evolve_array_static_new(10);
        evolve_array_put(a, 0, Object::from(42));
        let b = evolve_array_get(a, 0);

        assert_eq!(Object::from(42), b);
    }

    #[test]
    fn test_new()
    {
        let mut a = evolve_array_static_new(10);
        assert_eq!(11, a.capacity());
        assert_eq!(11, a.len());
        assert_eq!(10, evolve_array_capacity(a));
        assert_eq!(10, evolve_array_size(a));

        let mut a = evolve_array_static_new(0);
        assert_eq!(9, a.capacity());
        assert_eq!(1, a.len());
        assert_eq!(8, evolve_array_capacity(a));
        assert_eq!(0, evolve_array_size(a));
    }

}
