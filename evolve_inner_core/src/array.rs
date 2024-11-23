//! array using VecDeque
//! allocations will be common in this code
//! https://doc.rust-lang.org/std/collections/vec_deque/struct.VecDeque.html

#[cfg(test)]
#[path = "array_tests.rs"]
mod tests;

use crate::leak::leak_heap_ref_mut;
use crate::object::Object;
use alloc::collections::VecDeque;

pub type EvolveArray = VecDeque<Object>;

const MIN_CAPACITY: usize = 8;

#[no_mangle]
#[inline(always)]
/// creates array literal
// does not need to be resized if create uses inbounds_push
pub fn evolve_array_literal(size: usize) -> &'static mut EvolveArray {
    let capacity = size.max(MIN_CAPACITY);
    let array = EvolveArray::with_capacity(capacity);
    leak_heap_ref_mut(array)
}

#[no_mangle]
#[inline(always)]
// extend_one_unchecked is the public function for unchecked addition
// perhaps push_back is fine because the compiler will check the bounds
fn evolve_array_inbounds_push(array: &mut EvolveArray, value: Object) {
    // unsafe { array.extend_one_unchecked(value) }
    array.push_back(value);
}

#[no_mangle]
#[inline(always)]
pub fn evolve_array_get(array: &EvolveArray, index: usize) -> Object {
    let adjusted_index = adjusted_index(index);
    *(array.get(adjusted_index).unwrap_or_default())
}

/// adjust index from 1-index to 0-indexed
/// 0 case is best handled above
/// get: should be fine because it will be out of range and this null
/// put: will be problematic because of resize
// saturating_sub impedes optimization
// return 0 on 0 impedes optimization
pub const fn adjusted_index(index: usize) -> usize {
    index.wrapping_sub(1)
}

impl Object {
    #[allow(dead_code)]
    fn array(self) -> &'static EvolveArray {
        self.to_ref()
    }

    #[allow(dead_code)]
    fn array_mut(mut self) -> &'static mut EvolveArray {
        self.to_mut()
    }

    #[allow(dead_code)]
    pub(crate) fn array_get(self, index: usize) -> Object {
        evolve_array_get(self.array(), index)
    }
}
