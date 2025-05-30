use evolve_inner_core::leak::{leak_heap_ptr, leak_heap_ref};
use roaring::RoaringBitmap;

// type EvolveBitmap = RoaringBitmap;

#[unsafe(no_mangle)]
fn evolve_bitmap_static_new_ptr() -> *const RoaringBitmap {
    let bitmap = RoaringBitmap::new();
    // bitmap.extend_reserve(size);
    //let foo = bitmap.contains(1);
    leak_heap_ptr::<RoaringBitmap>(bitmap)
}

#[unsafe(no_mangle)]
fn evolve_bitmap_static_new() -> &'static RoaringBitmap {
    let bitmap = RoaringBitmap::new();
    // bitmap.extend_reserve(size);
    //let foo = bitmap.contains(1);
    //copy_to_heap_and_leak::<RoaringBitmap>(bitmap)
    leak_heap_ref::<RoaringBitmap>(bitmap)
}

#[unsafe(no_mangle)]
fn evolve_bitmap_is_empty(bitmap: &RoaringBitmap) -> bool {
    bitmap.is_empty()
}
