use evolve_inner_core::array::EvolveArray;
use evolve_inner_core::object::Object;

#[no_mangle]
extern "Rust" fn evolve_array_mut_reserve(array: &mut EvolveArray, capacity: usize) {
    array.reserve(capacity + 1);
}

#[no_mangle]
extern "Rust" fn evolve_array_mut_insert(array: &mut EvolveArray, index: usize, value: Object) {
    // if index > array.len() {
    //     array.resize(index + 1, Object::default());
    // }
    array.insert(index, value);
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
    array.make_contiguous()[1..].reverse()
}

#[no_mangle]
extern "Rust" fn evolve_array_copy(array: &EvolveArray) -> Object {
    array.clone().into()
}
