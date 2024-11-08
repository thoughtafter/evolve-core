use crate::object::{Object, Ptr};

// #[no_mangle]
// #[inline(always)]
// extern "Rust" fn evolve_mem_malloc(bytes: usize) -> *mut c_void {
//     unsafe { libc::malloc(bytes) }
// }
//
// #[no_mangle]
// #[inline(always)]
// extern "Rust" fn evolve_mem_calloc(nobj: usize, size: usize) -> *mut c_void {
//     unsafe { libc::calloc(nobj, size) }
// }

// use evolve_inner_core::object::Ptr;
//

const unsafe fn evolve_mem_gep<T: Copy + Sized>(ptr: Ptr, offset: isize) -> *mut T {
    let ptr = ptr as *mut T;
    ptr.offset(offset)
}

#[export_name = "evolve.mem.gep.byte"]
const unsafe extern "Rust" fn evolve_mem_gep_byte(ptr: Ptr, offset: isize) -> Ptr {
    evolve_mem_gep::<u8>(ptr, offset)
}

#[export_name = "evolve.mem.gep.object"]
const unsafe extern "Rust" fn evolve_mem_gep_object(ptr: Ptr, offset: isize) -> *const Object {
    evolve_mem_gep::<Object>(ptr, offset)
}

// unsafe fn evolve_mem_load<T: ?Copy + Sized>(ptr: Ptr, offset: isize) -> T {
//     evolve_mem_gep::<T>(ptr, offset).read()
// }

#[export_name = "evolve.mem.load.ptr"]
unsafe extern "Rust" fn evolve_mem_load_ptr(ptr: Ptr, offset: isize) -> Ptr {
    evolve_mem_gep::<Ptr>(ptr, offset).read()
}

#[export_name = "evolve.mem.load.i32"]
unsafe extern "Rust" fn evolve_mem_load_i32(ptr: Ptr, offset: isize) -> i32 {
    evolve_mem_gep::<i32>(ptr, offset).read()
}

#[export_name = "evolve.mem.load.object"]
#[inline(always)]
unsafe extern "Rust" fn evolve_mem_load_object(ptr: Ptr, offset: isize) -> Object {
    evolve_mem_gep::<Object>(ptr, offset).read()
}

// this was optnone
#[export_name = "evolve.mem.store.ptr"]
unsafe extern "Rust" fn evolve_mem_store_ptr(ptr: Ptr, value: Ptr, offset: isize) {
    evolve_mem_gep::<Ptr>(ptr, offset).write(value)
}

#[export_name = "evolve.mem.store.i32"]
unsafe extern "Rust" fn evolve_mem_store_i32(ptr: Ptr, value: i32, offset: isize) {
    evolve_mem_gep::<i32>(ptr, offset).write(value)
}

// #[export_name = "evolve.mem.store.object"]
// unsafe extern "Rust" fn evolve_mem_store_object(ptr: Ptr, value: Object, offset: isize) {
//     evolve_mem_gep::<Object>(ptr, offset).write(value)
// }
