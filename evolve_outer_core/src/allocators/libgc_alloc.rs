mod libgc;

use alloc::alloc::handle_alloc_error;

use core::alloc::{GlobalAlloc, Layout};
use core::ffi::CStr;
use core::sync::atomic::AtomicU64;
use core::sync::atomic::Ordering::Relaxed;
use libc_print::libc_println;
use libc_print::std_name::println;
use libgc::*;

#[global_allocator]
pub(crate) static GLOBAL: GcAllocator = GcAllocator;

// static mut THE_INIT_DONE: AtomicBool = AtomicBool::new(false);

#[cfg(test)]
mod ctor {
    // use core::sync::atomic::AtomicBool;
    // use core::sync::atomic::Ordering::Relaxed;
    use crate::allocators::libgc_alloc::GcAllocator;
    use ctor::{ctor, dtor};
    use libc_print::libc_println;
    // use libc_print::std_name::println;

    #[ctor]
    fn libgc_init() {
        libc_println!("libgc_init");
        // let foo =  unsafe { GC_thread_is_registered() };
        // libc_println!("is_reg: {}", foo);
        unsafe {
            GcAllocator::setup();
            // GC_set_handle_fork(0);
            // GC_allow_register_threads();
            // GC_allow_register_threads();
            // GC_init(); // creates pthreads?
            // GC_enable_incremental(); // calls INIT
            // THE_INIT_DONE.store(true, Relaxed);
            // libc_println!("set_min");
            // GC_set_min_bytes_allocd(16);
            // let stack_base = get_stack_base();

            // GC_register_my_thread(&stack_base);
            // libc_println!("disable");
            // GC_disable();
            // GC_enable();
        }
    }

    #[dtor]
    fn libgc_deinit() {
        libc_println!("GC_deinit");
        // unsafe {
        //     GC_deinit();
        // }
    }
}

// // #[export_name = "pthread_create"]
// #[no_mangle]
//  pub unsafe extern "C" fn pthread_create(
//     pt: *mut pthread_t,
//     pta: *const pthread_attr_t,
//     f: extern "C" fn(*mut c_void) -> *mut c_void,
//     b: *mut c_void,
// ) -> c_int {
//     libc_println!("pthread_create");
//     let i = unsafe { GC_is_init_called() };
//     libc_println!("pthread_create init: {}", i);
//     if THE_INIT_DONE.load(Relaxed) {
//         libc_println!("calling GC_pthread_create");
//         unsafe { GC_pthread_create(pt, pta, f, b) }
//     } else {
//         // libc_println!("nada");
//         // -1
//         libc_println!("BEFORE DONE: calling GC_pthread_create");
//         // unsafe { GC_pthread_create(pt, pta, f, b) }
//
//         unsafe { __pthread_create_2_1(pt, pta, f, b) }
//     }
// }
//
// #[no_mangle]
// #[export_name = "pthread_join"]
// pub extern "C" fn pthread_join(
//     thread: pthread_t,
//     value_ptr: *mut c_void,
// ) -> c_int {
//     libc_println!("pthread_join");
//     unsafe { GC_pthread_join(thread, value_ptr) }
// }
//
// #[no_mangle]
// #[export_name = "pthread_detach"]
// pub extern "C" fn pthread_detach(
//     thread: pthread_t,
// ) -> c_int {
//     libc_println!("pthread_detach");
//     unsafe { GC_pthread_detach(thread) }
// }
//
// #[no_mangle]
// #[export_name = "pthread_cancel"]
// pub extern "C" fn pthread_cancel(
//     thread: pthread_t,
// ) -> c_int {
//     libc_println!("pthread_cancel");
//     unsafe { GC_pthread_cancel(thread) }
// }
//
// #[no_mangle]
// #[export_name = "pthread_exit"]
// pub extern "C" fn pthread_exit(
//     a:
//     *const c_void,
// )  {
//     libc_println!("pthread_exit");
//     unsafe { GC_pthread_exit(a) }
// }
//
// // #[no_mangle]
// // // #[export_name = "pthread_sigmask"]
// // pub extern "C" fn pthread_sigmask(
// //     how: c_int,
// //     set: *const libc::sigset_t,
// //     oldset: *mut libc::sigset_t
// // )  {
// //     libc_println!("pthread_sigmask");
// //     unsafe { GC_pthread_sigmask(how, set, oldset) }
// // }
//
// #[no_mangle]
// #[export_name = "dlopen"]
// pub extern "C" fn dlopen(
//     path: *const c_char, mode: c_int)
//   {
//     libc_println!("dlopen");
//     unsafe { GC_dlopen(path, mode) }
// }

pub struct GcAllocator;

// static mut ALLOCS: AtomicU64 = AtomicU64::new(0);

// static mut GUARD: Mutex<i8>  = Mutex::new(0);

static FILENAME: &CStr = c"GcAllocator";

// const depends on const handle_alloc_error
// const will require removing atomic
fn verify_alloc_success(ptr: *mut u8, layout: Layout) -> *mut u8 {
    if ptr.is_null() {
        libc_println!("libgc null pointer allocation");
        handle_alloc_error(layout);
    }
    ALLOCS.fetch_add(1, Relaxed);
    ptr
}

#[allow(dead_code)]
fn verify_thread_registration(layout: Layout) {
    let is_registered = unsafe { GC_thread_is_registered() == 1 };
    if !is_registered {
        libc_println!("libgc unregistered thread");
        unsafe {
            libc_println!("GC_allow_register_threads");
            // GC_allow_register_threads();
            libc_println!("get_stack_base");
            let stack_base = get_stack_base();
            libc_println!("GC_register_my_thread");
            GC_register_my_thread(&stack_base);
        }

        let is_registered = unsafe { GC_thread_is_registered() == 1 };
        if !is_registered {
            libc_println!("failed to enable registration");
            handle_alloc_error(layout);
        };
    }
}

#[allow(dead_code)]
fn verify_thread_registration_or_fail(layout: Layout) {
    let is_registered = unsafe { GC_thread_is_registered() == 1 };
    if !is_registered {
        libc_println!("libgc unregistered thread: unrecoverable");
        handle_alloc_error(layout);
    }
}

#[no_mangle]
extern "Rust" fn evolve_mem_malloc(bytes: usize) -> *mut u8 {
    let layout = Layout::from_size_align(bytes, 8).unwrap();
    unsafe { GcAllocator.alloc(layout) }
}

#[no_mangle]
extern "Rust" fn evolve_mem_calloc(size: usize, num: usize) -> *mut u8 {
    let bytes = size.checked_mul(num).unwrap();
    let layout = Layout::from_size_align(bytes, 8).unwrap();
    unsafe { GcAllocator.alloc_zeroed(layout) }
}

#[no_mangle]
extern "Rust" fn evolve_mem_malloc_atomic(bytes: usize) -> *mut u8 {
    let layout = Layout::from_size_align(bytes, 8).unwrap();
    unsafe { GcAllocator.alloc(layout) }
}

static ALLOCS: AtomicU64 = AtomicU64::new(0);

#[no_mangle]
extern "Rust" fn evolve_mem_allocs() -> u64 {
    ALLOCS.load(Relaxed)
}

unsafe impl GlobalAlloc for GcAllocator {
    unsafe fn alloc(&self, layout: Layout) -> *mut u8 {
        // let align = layout.align().max(core::mem::size_of::<usize>());
        let size = layout.size();
        // libc_println!("start allocators: {:?}", layout);
        //verify_thread_registration(layout);
        // #[cfg(test)]
        // {
        //     verify_thread_registration(layout);
        // }
        // let bytes = layout.size();
        // let ptr = GC_memalign(align, size);
        // let ptr = GC_debug_malloc(size, FILENAME.as_ptr(), line!());

        let ptr = GC_debug_malloc_ignore_off_page(size, FILENAME.as_ptr(), line!());
        // let ptr = GC_malloc(size);
        // let ptr = GC_debug_malloc(bytes, FILENAME.as_ptr(), line!());
        // libc_println!("finish allocators: {:?}", layout);

        // libc_println!("allocators: {}", win as usize)
        verify_alloc_success(ptr, layout)
    }

    unsafe fn dealloc(&self, ptr: *mut u8, _layout: Layout) {
        // verify_thread_registration_or_fail(layout);
        GC_debug_free(ptr, FILENAME.as_ptr(), line!());
        // GC_free(ptr);
    }

    // usable if allocators is zeroed - which is the case for malloc, but unsure for memalign
    unsafe fn alloc_zeroed(&self, layout: Layout) -> *mut u8 {
        self.alloc(layout)
    }

    unsafe fn realloc(&self, ptr: *mut u8, layout: Layout, new_size: usize) -> *mut u8 {
        // #[cfg(test)]
        // {
        //     // verify_thread_registration(layout);
        // }
        let ptr = GC_debug_realloc(ptr, new_size, FILENAME.as_ptr(), line!());
        // let ptr = GC_realloc(ptr, new_size);
        verify_alloc_success(ptr, layout)
    }
}

impl GcAllocator {
    #[allow(dead_code)]
    pub unsafe fn setup() {
        println!("libgc setup");
        GC_init();

        libc_println!("is_reg");

        let reg = unsafe { GC_thread_is_registered() };
        libc_println!("is_reg: {}", reg);

        GC_allow_register_threads();

        let reg = unsafe { GC_thread_is_registered() };
        libc_println!("is_reg: {}", reg);

        GC_disable();
    }
}

#[cfg(test)]
mod tests {
    use super::*;
    use libc_print::std_name::println;

    #[test]
    fn test_big_alloc() {
        unsafe {
            GcAllocator::setup();
        }
        let foo = unsafe { GC_thread_is_registered() };
        println!("is_reg: {}", foo);

        assert_eq!(1, unsafe { GC_is_init_called() }, "GC not initialized");
        assert_eq!(0, unsafe { GC_get_pages_executable() });
        assert_eq!(1, unsafe { GC_get_min_bytes_allocd() });

        // let layout = Layout::from_size_align(u16::MAX as usize * 1000, 8).unwrap();
        let layout = Layout::from_size_align(u16::MAX as usize, 8).unwrap();
        // for n in 1..=10 {
        //     libc_println!("{}", n);
        //     // let x = unsafe { GLOBAL.allocators(layout) };
        //     // assert!(!x.is_null());
        // }

        let x = unsafe { GLOBAL.alloc(layout) };
        assert!(!x.is_null());
        // let x = unsafe { GLOBAL.allocators(Layout::from_size_align(u16::MAX as usize * 100, 8).unwrap()) };
        // assert!(!x.is_null());
        // let x = unsafe { GLOBAL.allocators(layout) };
        // assert!(!x.is_null());
        libc_println!("DONE")
    }
}

// mod atomic {
//     use crate::allocators::libgc_alloc::libgc::GC_malloc_atomic_ignore_off_page;
//     use core::alloc::{AllocError, Allocator, Layout};
//     use core::ptr;
//     use core::ptr::NonNull;
//
//     struct AtomicAllocator;
//
//     unsafe impl Allocator for AtomicAllocator {
//         fn allocate(&self, layout: Layout) -> Result<NonNull<[u8]>, AllocError> {
//             let bytes = layout.size();
//             let ptr = unsafe { GC_malloc_atomic_ignore_off_page(bytes) };
//             let slice = ptr::slice_from_raw_parts_mut(ptr, bytes);
//             let x = NonNull::new(slice);
//             x.ok_or(AllocError)
//         }
//
//         unsafe fn deallocate(&self, _ptr: NonNull<u8>, _layout: Layout) {}
//     }
// }
