#[global_allocator]
pub(crate) static GLOBAL: bdwgc_alloc::Allocator = bdwgc_alloc::Allocator;

// pub fn initialize() {
//     libc_println!("bdwgc_alloc init");
//     unsafe {
//         bdwgc_alloc::Allocator::initialize();
//     }
// }

// #[cfg(test)]
// mod ctor2 {
//     use bdwgc_alloc::Allocator;
//     use ctor::ctor;
//     use libc_print::libc_println;
//
//     #[ctor]
//     fn libgc_init() {
//         libc_println!("bdwgc_alloc init");
//         // let foo =  unsafe { GC_thread_is_registered() };
//         // libc_println!("is_reg: {}", foo);
//         unsafe {
//             Allocator::initialize();
//         }
//     }
// }
