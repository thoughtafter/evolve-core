/**

# Use libc_alloc::LibcAlloc

**/
use libc_alloc::LibcAlloc;

#[global_allocator]
pub(crate) static GLOBAL: LibcAlloc = LibcAlloc;
