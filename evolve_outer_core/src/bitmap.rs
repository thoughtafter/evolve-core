use evolve_inner_core::allocates::copy_to_heap_and_leak;
use roaring::RoaringBitmap;

// type EvolveBitmap = RoaringBitmap;

#[no_mangle]
extern "Rust" fn evolve_bitmap_static_new() -> *const RoaringBitmap {
    let bitmap = RoaringBitmap::new();
    // bitmap.extend_reserve(size);
    //let foo = bitmap.contains(1);
    let ptr = copy_to_heap_and_leak::<RoaringBitmap>(bitmap);
    ptr
}

trait RoaringBitmapExt {
    fn evolve_bitmap_is_empty(&self) -> bool;
}

impl RoaringBitmapExt for RoaringBitmap {
    #[no_mangle]
    extern "Rust" fn evolve_bitmap_is_empty(&self) -> bool {
        self.is_empty()
    }
}
