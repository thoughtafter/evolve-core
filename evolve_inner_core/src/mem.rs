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
