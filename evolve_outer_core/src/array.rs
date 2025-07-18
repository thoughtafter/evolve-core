use evolve_inner_core::array::{EvolveArray, adjusted_index};
use evolve_inner_core::object::Object;

#[unsafe(no_mangle)]
fn evolve_array_mut_reserve(array: &mut EvolveArray, capacity: usize) {
    array.reserve(capacity);
}

// TODO: handle overflow, also, should 0 be 1 in this case?
#[unsafe(no_mangle)]
fn evolve_array_mut_insert(array: &mut EvolveArray, index: usize, value: Object) {
    // if index > array.len() {
    //     array.resize(index + 1, Object::default());
    // }
    let adjusted_index = if index == 0 { 0 } else { adjusted_index(index) };
    array.insert(adjusted_index, value);
}

#[unsafe(no_mangle)]
fn evolve_array_mut_remove(array: &mut EvolveArray, index: usize) -> Object {
    let adjusted_index = adjusted_index(index);
    array.remove(adjusted_index).unwrap_or_default()
}

// #[unsafe(no_mangle)]
// // fn evolve_array_mut_push_front(array: &mut EvolveArray, value: Object) {
//     array.push_front(value);
// }
//
// #[unsafe(no_mangle)]
// // fn evolve_array_mut_push_back(array: &mut EvolveArray, value: Object) {
//     array.push_back(value);
// }
//
// #[unsafe(no_mangle)]
// // fn evolve_array_mut_pop_front(array: &mut EvolveArray) -> Object {
//     array.pop_front().unwrap_or_default()
// }
//
// #[unsafe(no_mangle)]
// // fn evolve_array_mut_pop_back(array: &mut EvolveArray) -> Object {
//     array.pop_back().unwrap_or_default()
// }

#[unsafe(no_mangle)]
/// reverse this array
fn evolve_array_mut_reverse(array: &mut EvolveArray) {
    // let slice = array.make_contiguous();
    // let skip: &mut[Object] = slice.iter().skip(1).into();
    // skip.reverse()
    // array.make_contiguous()[1..].reverse()
    array.make_contiguous().reverse();
}

#[unsafe(no_mangle)]
fn evolve_array_copy(array: &EvolveArray) -> Object {
    array.clone().into()
}

#[unsafe(no_mangle)]
/// put inbounds - suitable for initializer
/// returns true if overflow / error
fn evolve_array_put_inbounds(array: &mut EvolveArray, index: usize, value: Object) -> bool {
    let adjusted_index = adjusted_index(index);
    if let Some(store) = array.get_mut(adjusted_index) {
        *store = value;
        false
    } else {
        true
    }
}

// // fn resize(array: &mut EvolveArray, index: usize)
// {
//     //array.resize(index + 1, Object::default());
//
// }
#[unsafe(no_mangle)]
/// put with resize
/// returns true if overflow / error - which should not happen
fn evolve_array_put(array: &mut EvolveArray, index: usize, value: Object) -> bool {
    if array.len() <= index {
        array.resize(index, Object::default());
        //array.resize_with(index + 1, Default::default);
        // resize(array, index);
    }
    evolve_array_put_inbounds(array, index, value)
}

// #[unsafe(no_mangle)]
// // fn evolve_array_mut_resize(
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
        let a = evolve_array_literal(10);
        evolve_array_put(a, 1, Object::from(42));
        let b = evolve_array_get(a, 1);

        assert_eq!(Object::from(42), b);
    }
}
