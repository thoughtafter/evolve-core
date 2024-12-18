#[cfg(test)]
#[path = "heap_tests.rs"]
mod tests;

use evolve_inner_core::leak::leak_heap_ref_mut;
use evolve_inner_core::object::Object;
use min_max_heap::MinMaxHeap;

type EvolveHeap = MinMaxHeap<Object>;

const MIN_CAPACITY: usize = 8;

#[no_mangle]
fn evolve_heap_new(capacity: usize) -> &'static mut EvolveHeap {
    let capacity = capacity.max(MIN_CAPACITY);
    let heap = EvolveHeap::with_capacity(capacity);
    leak_heap_ref_mut(heap)
}

#[no_mangle]
fn evolve_heap_size(heap: &EvolveHeap) -> usize {
    heap.len()
}

#[no_mangle]
fn evolve_heap_capacity(heap: &EvolveHeap) -> usize {
    heap.capacity()
}

#[no_mangle]
fn evolve_heap_peek_min(heap: &EvolveHeap) -> Object {
    *heap.peek_min().unwrap_or_default()
}

#[no_mangle]
fn evolve_heap_peek_max(heap: &EvolveHeap) -> Object {
    *heap.peek_max().unwrap_or_default()
}

#[no_mangle]
fn evolve_heap_pop_min(heap: &mut EvolveHeap) -> Object {
    heap.pop_min().unwrap_or_default()
}

#[no_mangle]
fn evolve_heap_pop_max(heap: &mut EvolveHeap) -> Object {
    heap.pop_max().unwrap_or_default()
}

#[no_mangle]
fn evolve_heap_push(heap: &mut EvolveHeap, value: Object) {
    heap.push(value);
}

// #[no_mangle]
// fn evolve_heap_sorted(heap: &EvolveHeap) -> Object  {
//     unsafe { *heap }.into_vec_asc().into()
// }

// impl From<Object> for EvolveHeap {
//     fn from(s: Object) -> Self {
//
//     }
// }

// impl From<EvolveHeap> for Object {
//     fn from(s: EvolveHeap) -> Self {
//         let ptr = copy_to_heap_and_leak(s);
//         Object::with_aux(HEAP_CLASS_ID, 0, ptr as Ptr)
//     }
// }
