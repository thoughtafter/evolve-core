use evolve_inner_core::array::{adjusted_index, EvolveArray};
use evolve_inner_core::object::Object;

#[no_mangle]
extern "Rust" fn evolve_array_mut_reserve(array: &mut EvolveArray, capacity: usize) {
    array.reserve(capacity);
}

// TODO: handle overflow, also, should 0 be 1 in this case?
#[no_mangle]
extern "Rust" fn evolve_array_mut_insert(array: &mut EvolveArray, index: usize, value: Object) {
    // if index > array.len() {
    //     array.resize(index + 1, Object::default());
    // }
    let adjusted_index = if index == 0 { 0 } else { adjusted_index(index) };
    array.insert(adjusted_index, value);
}

// #[no_mangle]
// #[inline(always)]
// extern "Rust" fn evolve_array_mut_push_front(array: &mut EvolveArray, value: Object) {
//     array.push_front(value);
// }
//
// #[no_mangle]
// #[inline(always)]
// extern "Rust" fn evolve_array_mut_push_back(array: &mut EvolveArray, value: Object) {
//     array.push_back(value);
// }
//
#[no_mangle]
#[inline(always)]
extern "Rust" fn evolve_array_mut_pop_front(array: &mut EvolveArray) -> Object {
    array.pop_front().unwrap_or_default()
}

#[no_mangle]
#[inline(always)]
extern "Rust" fn evolve_array_mut_pop_back(array: &mut EvolveArray) -> Object {
    array.pop_back().unwrap_or_default()
}

#[no_mangle]
/// reverse this array
extern "Rust" fn evolve_array_mut_reverse(array: &mut EvolveArray) {
    // let slice = array.make_contiguous();
    // let skip: &mut[Object] = slice.iter().skip(1).into();
    // skip.reverse()
    // array.make_contiguous()[1..].reverse()
    array.make_contiguous().reverse()
}

#[no_mangle]
extern "Rust" fn evolve_array_copy(array: &EvolveArray) -> Object {
    array.clone().into()
}

#[no_mangle]
#[inline(always)]
extern "Rust" fn evolve_array_size(array: &EvolveArray) -> usize {
    array.len()
}

#[no_mangle]
#[inline(always)]
extern "Rust" fn evolve_array_capacity(array: &EvolveArray) -> usize {
    array.capacity()
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
    let adjusted_index = adjusted_index(index);
    if let Some(store) = array.get_mut(adjusted_index) {
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
    use evolve_inner_core::array::*;

    #[test]
    fn test_put_get() {
        let mut a = evolve_array_static_new(10);
        evolve_array_put(&mut a, 1, Object::from(42));
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
