use alloc::collections::BinaryHeap;
use alloc::vec::Vec;
use core::cmp::Reverse;
use evolve_inner_core::leak::leak_heap_ref;
use evolve_inner_core::object::Object;

type EvolveHeap = BinaryHeap<Object>;

#[unsafe(no_mangle)]
fn evolve_heap_static_new(capacity: usize) -> &'static EvolveHeap {
    let heap = EvolveHeap::with_capacity(capacity);
    leak_heap_ref(heap)
}

#[unsafe(no_mangle)]
fn evolve_heap_size(heap: &EvolveHeap) -> usize {
    heap.len()
}

#[unsafe(no_mangle)]
fn evolve_heap_capacity(heap: &EvolveHeap) -> usize {
    heap.capacity()
}

fn reverse_heap(heap: &EvolveHeap) -> BinaryHeap<Reverse<Object>> {
    let x = heap.iter().map(|o| Reverse(*o)).collect::<Vec<_>>();
    BinaryHeap::from(x)
}

#[unsafe(no_mangle)]
/// pricey
fn evolve_heap_peek_min(heap: &EvolveHeap) -> Object {
    // *(heap.clone().into_vec().iter().min().unwrap_or_default())
    // reverse_heap(heap)
    //     .peek()
    //     .unwrap_or(&Reverse(Object::null()))
    //     .0
    *heap.iter().min().unwrap_or_default()
}

#[unsafe(no_mangle)]
fn evolve_heap_peek_max(heap: &EvolveHeap) -> Object {
    *heap.peek().unwrap_or_default()
}

#[unsafe(no_mangle)]
/// pricey
fn evolve_heap_pop_min(heap: &mut EvolveHeap) -> Object {
    reverse_heap(heap).pop().unwrap_or_default().0
}

#[unsafe(no_mangle)]
fn evolve_heap_pop_max(heap: &mut EvolveHeap) -> Object {
    heap.pop().unwrap_or_default()
}

// #[unsafe(no_mangle)]
// fn evolve_heap_push(heap: &mut EvolveHeap, value: Object)  {
//     heap.push(value);
// }

// #[unsafe(no_mangle)]
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
