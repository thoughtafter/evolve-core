/**

# Use mimalloc::MiMalloc

**/
use mimalloc::MiMalloc;

#[global_allocator]
static GLOBAL: MiMalloc = MiMalloc;
