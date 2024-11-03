//! array using VecDeque
//! allocations will be common in this code
//! https://doc.rust-lang.org/std/collections/vec_deque/struct.VecDeque.html

use crate::leak::leak_heap_ref_mut;
use crate::object::Object;
use alloc::collections::VecDeque;

pub type EvolveArray = VecDeque<Object>;

const MIN_CAPACITY: usize = 9;

#[no_mangle]
#[inline(always)]
/// creates array literal
// does not need to be resized if create uses inbounds_push
extern "Rust" fn evolve_array_static_new(size: usize) -> &'static mut EvolveArray {
    let size = size + 1;
    let capacity = size.max(MIN_CAPACITY);
    let mut array = EvolveArray::with_capacity(capacity);
    // NO: array.resize(size, Object::default());
    // NO: evolve_array_mut_resize(&mut array, size);
    // array.resize_with(size, Default::default);
    // resize(&mut array, size);
    unsafe { array.extend_one_unchecked(Object::default()) }
    leak_heap_ref_mut(array)
}

#[no_mangle]
#[inline(always)]
extern "Rust" fn evolve_array_inbounds_push(array: &mut EvolveArray, value: Object) {
    unsafe { array.extend_one_unchecked(value) }
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
    // let adjusted_index = index.wrapping_sub(1);
    *(array.get(index).unwrap_or_default())
}

#[no_mangle]
#[inline(always)]
/// put inbounds - suitable for initializer
/// returns true if overflow / error
extern "Rust" fn evolve_array_put_inbounds(
    array: &mut EvolveArray,
    index: usize,
    value: Object,
) -> bool {
    // let adjusted_index = index.wrapping_sub(1);
    if let Some(store) = array.get_mut(index) {
        *store = value;
        false
    } else {
        true
    }
}

// #[inline(always)]
// fn resize(array: &mut EvolveArray, index: usize)
// {
//     //array.resize(index + 1, Object::default());
//
// }
#[no_mangle]
#[inline(always)]
/// put with resize
/// returns true if overflow / error - which should not happen
extern "Rust" fn evolve_array_put(array: &mut EvolveArray, index: usize, value: Object) -> bool {
    if array.len() <= index {
        array.resize(index, Object::default());
        //array.resize_with(index + 1, Default::default);
        // resize(array, index);
    }
    evolve_array_put_inbounds(array, index, value)
}

// #[no_mangle]
// #[inline(always)]
// extern "Rust" fn evolve_array_mut_resize(
//     array: &mut EvolveArray,
//     size: usize,
// )  {
//     array.resize_with(size + 1, Default::default);
// }

#[cfg(test)]
mod tests {

    use super::*;

    #[test]
    fn test_get_oob() {
        let a = evolve_array_static_new(1);
        let b = evolve_array_get(a, 100);
        assert_eq!(Object::null(), b);
    }

    #[test]
    fn test_put_get() {
        let mut a = evolve_array_static_new(10);
        evolve_array_put(a, 1, Object::from(42));
        let b = evolve_array_get(a, 1);

        assert_eq!(Object::from(42), b);
    }

    #[test]
    fn test_new() {
        let a = evolve_array_static_new(10);
        assert_eq!(10, a.capacity());
        assert_eq!(0, a.len());
        assert_eq!(10, evolve_array_capacity(a));
        assert_eq!(0, evolve_array_size(a));

        let a = evolve_array_static_new(0);
        assert_eq!(8, a.capacity());
        assert_eq!(0, a.len());
        assert_eq!(8, evolve_array_capacity(a));
        assert_eq!(0, evolve_array_size(a));
    }
}
