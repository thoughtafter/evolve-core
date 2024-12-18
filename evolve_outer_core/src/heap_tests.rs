use crate::heap::EvolveHeap;
use evolve_inner_core::object::Object;

#[allow(dead_code)]
trait HeapExt {
    fn heap(self) -> &'static EvolveHeap;
    fn heap_mut(&mut self) -> &'static mut EvolveHeap;
}

#[allow(dead_code)]
impl HeapExt for Object {
    fn heap(self) -> &'static EvolveHeap {
        self.to_ref::<EvolveHeap>()
    }

    fn heap_mut(&mut self) -> &'static mut EvolveHeap {
        self.to_mut::<EvolveHeap>()
    }
}
