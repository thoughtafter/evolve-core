use crate::object::{Object, Ptr};

// #[unsafe(no_mangle)]
// #[inline(always)]
// fn evolve_mem_malloc(bytes: usize) -> *mut c_void {
//     unsafe { libc::malloc(bytes) }
// }
//
// #[unsafe(no_mangle)]
// #[inline(always)]
// fn evolve_mem_calloc(nobj: usize, size: usize) -> *mut c_void {
//     unsafe { libc::calloc(nobj, size) }
// }

// use evolve_inner_core::object::Ptr;
//

const fn evolve_mem_gep<T: Copy + Sized>(ptr: Ptr, offset: isize) -> *mut T {
    let ptr = ptr as *mut T;
    // ptr.offset(offset)
    ptr.wrapping_offset(offset)
}

#[unsafe(export_name = "evolve.mem.gep.byte")]
const fn evolve_mem_gep_byte(ptr: Ptr, offset: isize) -> Ptr {
    evolve_mem_gep::<u8>(ptr, offset)
}

#[unsafe(export_name = "evolve.mem.gep.object")]
const fn evolve_mem_gep_object(ptr: Ptr, offset: isize) -> *const Object {
    evolve_mem_gep::<Object>(ptr, offset)
}

// unsafe fn evolve_mem_load<T: ?Copy + Sized>(ptr: Ptr, offset: isize) -> T {
//     evolve_mem_gep::<T>(ptr, offset).read()
// }

/// # Safety
/// caller has to verify this is safe location to read/load from
#[unsafe(export_name = "evolve.mem.load.ptr")]
unsafe fn evolve_mem_load_ptr(ptr: Ptr, offset: isize) -> Ptr {
    unsafe { evolve_mem_gep::<Ptr>(ptr, offset).read() }
}

/// # Safety
/// caller has to verify this is safe location to read/load from
#[unsafe(export_name = "evolve.mem.load.i32")]
unsafe fn evolve_mem_load_i32(ptr: Ptr, offset: isize) -> i32 {
    unsafe { evolve_mem_gep::<i32>(ptr, offset).read() }
}

/// # Safety
/// caller has to verify this is safe location to read/load from
#[unsafe(export_name = "evolve.mem.load.object")]
unsafe fn evolve_mem_load_object(ptr: Ptr, offset: isize) -> Object {
    unsafe { evolve_mem_gep::<Object>(ptr, offset).read() }
}

/// # Safety
/// caller has to verify this is safe location to write/store to
// this was optnone
#[unsafe(export_name = "evolve.mem.store.ptr")]
unsafe fn evolve_mem_store_ptr(ptr: Ptr, value: Ptr, offset: isize) {
    unsafe { evolve_mem_gep::<Ptr>(ptr, offset).write(value) }
}

/// # Safety
/// caller has to verify this is safe location to write/store to
#[unsafe(export_name = "evolve.mem.store.i32")]
unsafe fn evolve_mem_store_i32(ptr: Ptr, value: i32, offset: isize) {
    unsafe { evolve_mem_gep::<i32>(ptr, offset).write(value) }
}

/// # Safety
/// caller has to verify this is safe location to write/store to
#[unsafe(export_name = "evolve.mem.store.object")]
unsafe fn evolve_mem_store_object(ptr: Ptr, value: Object, offset: isize) {
    unsafe { evolve_mem_gep::<Object>(ptr, offset).write(value) }
}
