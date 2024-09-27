#![feature(ptr_sub_ptr)]
#![feature(allocator_api)]
#![no_std]
extern crate alloc;

#[cfg(not(any(test, feature = "bdwgc_alloc")))]
#[panic_handler]
fn panic(_info: &core::panic::PanicInfo) -> ! {
    unsafe {
        libc::abort();
    }
}

// #[lang = "eh_personality"]
// extern "C" fn rust_eh_personality() {}

// #[no_mangle]
// extern "C" fn rust_eh_personality() {}

#[cfg(feature = "redirect_malloc")]
mod redirect_malloc {
    use core::alloc::{Layout, LayoutError};
    use libc::size_t;
    use libc_print::libc_println;

    fn get_layout_from_size(bytes: usize) -> Layout {
        if let Ok(layout) = Layout::from_size_align(bytes as usize, 1) {
            layout
        } else {
            panic!("invalid layout")
        }
    }

    #[no_mangle]
    extern "C" fn malloc(bytes: usize) -> *mut u8 {
        // libc_println!("mallocating {} bytes", bytes);
        //let layout = get_layout_from_size(bytes);
        let layout = unsafe { Layout::from_size_align_unchecked(bytes as usize, 1) };
        let ptr = unsafe { alloc::alloc::alloc(layout) };
        libc_println!("> {:?} malloc, {} bytes", ptr, bytes);
        ptr
        // unsafe {
        //     // libc::malloc(bytes)
        //     let layout = Layout::from_size_align(bytes as usize, 1);
        //     let layout = match layout {
        //         Ok(layout) => layout,
        //         Err(err) => {
        //             libc_println!("{}", err);
        //             panic!()
        //         }
        //     };
        //     let ptr = Global.allocate(layout).unwrap().as_ptr() as *mut c_void;
        //     libc_println!("HERE: {:?}", ptr);
        //     ptr
        // }
    }

    #[no_mangle]
    extern "C" fn free(ptr: *mut u8) {
        libc_println!("< {:?} free", ptr);
        let layout = Layout::new::<u8>();
        unsafe {
            alloc::alloc::dealloc(ptr, layout);
        }
        // if let Some(non_null) = NonNull::new(ptr) {
        //     let layout = Layout::new::<u8>();
        //     unsafe {
        //         Global.deallocate(non_null, layout)
        //     }
        // } else {
        // }
    }

    #[no_mangle]
    extern "C" fn realloc(p: *mut u8, bytes: size_t) -> *mut u8 {
        libc_println!("< {:?} realloc, old", p);
        //let layout = Layout::from_size_align(size as usize, 1).expect("realloc layout fail");
        let layout = unsafe { Layout::from_size_align_unchecked(bytes as usize, 1) };

        // // libc::realloc()
        // Global.grow()
        // p
        let ptr = unsafe { alloc::alloc::realloc(p, layout, bytes) };
        libc_println!("> {:?} realloc, new, {} bytes", ptr, bytes);
        ptr
    }

    #[no_mangle]
    extern "C" fn calloc(nobj: size_t, size: size_t) -> *mut u8 {
        // libc::calloc()
        let bytes = nobj * size;
        // libc_println!("callocating {} bytes", bytes);
        // let layout = Layout::from_size_align(bytes as usize, 1).expect("calloc layout fail");
        let layout = unsafe { Layout::from_size_align_unchecked(bytes as usize, 1) };

        let ptr = unsafe { alloc::alloc::alloc_zeroed(layout) };
        libc_println!("> {:?} calloc {} bytes", ptr, bytes);
        ptr
        // unsafe {
        //     // libc::malloc(bytes)
        //     let layout = Layout::from_size_align(bytes as usize, 1);
        //     let layout = match layout {
        //         Ok(layout) => layout,
        //         Err(err) => {
        //             libc_println!("{}", err);
        //             panic!()
        //         }
        //     };
        //     let ptr = Global.allocate_zeroed(layout).unwrap().as_ptr() as *mut c_void;
        //     libc_println!("HERE: {:?}", ptr);
        //     ptr
        // }
    }

    #[cfg(test)]
    mod tests {
        use gmp_mpfr_sys::gmp;

        use core::mem::MaybeUninit;
        use libc_print::libc_println;

        #[test]
        fn test_alloc() {
            // let x = MaybeUninit::<*mut mpz_t>::uninit();
            // let x = unsafe { x.assume_init() };
            // libc_println!("x {:?}", x);
            // unsafe { mpz_init_set_si(x,42) }
            // libc_println!("x {:?}", x);

            unsafe {
                let mut z = {
                    let mut z = MaybeUninit::uninit();
                    gmp::mpz_init(z.as_mut_ptr());
                    z.assume_init()
                };
                gmp::mpz_set_ui(&mut z, 15);
                libc_println!("z {:?}", z);
                let u = gmp::mpz_get_ui(&z);
                assert_eq!(u, 15);
                gmp::mpz_clear(&mut z);
            }
            // assert_eq!(42, unsafe { mpz_get_ui(x) });
            // assert_eq!(42, unsafe { mpz_get_si(x) });
        }
    }
}

#[cfg(feature = "libc_alloc")]
mod libc_allocator {
    use libc_alloc::LibcAlloc;

    #[global_allocator]
    pub(crate) static GLOBAL: LibcAlloc = LibcAlloc;
}

#[cfg(feature = "mimalloc_alloc")]
mod mimalloc_allocator {
    use mimalloc::MiMalloc;

    #[global_allocator]
    static GLOBAL: MiMalloc = MiMalloc;
}

#[cfg(feature = "libgc_alloc")]
mod libgc {
    // https://github.com/ivmai/bdwgc

    use core::ffi::{c_char, c_int, c_uint, c_void};
    use core::mem::MaybeUninit;
    use libc::{pthread_attr_t, pthread_t};

    #[repr(C)]
    pub struct GC_stack_base {
        mem_base: *const c_void,
    }

    // #[link(name = "c", kind = "dylib")]
    // #[allow(dead_code)]
    // extern "C" {
    //     pub fn __pthread_create_2_0(
    //         thread: *mut pthread_t,
    //         attr: *const pthread_attr_t,
    //         start_routine: extern "C" fn(*mut c_void) -> *mut c_void,
    //         arg: *mut c_void,
    //     ) -> c_int;
    // }

    #[link(name = "gc", kind = "dylib")]
    #[allow(dead_code)]
    extern "C" {

        pub fn GC_memalign(align: usize, size: usize) -> *mut u8;
        pub fn GC_posix_memalign(ptr: &*mut u8, align: usize, size: usize) -> c_int;

        pub fn GC_malloc(bytes: usize) -> *mut u8;
        pub fn GC_malloc_ignore_off_page(bytes: usize) -> *mut u8;
        pub fn GC_malloc_atomic(bytes: usize) -> *mut u8;
        pub fn GC_malloc_atomic_ignore_off_page(bytes: usize) -> *mut u8;

        pub fn GC_debug_malloc(bytes: usize, filename: *const c_char, line: c_uint) -> *mut u8;
        pub fn GC_debug_malloc_ignore_off_page(
            bytes: usize,
            filename: *const c_char,
            line: c_uint,
        ) -> *mut u8;
        pub fn GC_debug_malloc_atomic(
            bytes: usize,
            filename: *const c_char,
            line: c_uint,
        ) -> *mut u8;
        pub fn GC_debug_malloc_atomic_ignore_off_page(
            bytes: usize,
            filename: *const c_char,
            line: c_uint,
        ) -> *mut u8;

        pub fn GC_realloc(ptr: *mut u8, bytes: usize) -> *mut u8;
        pub fn GC_debug_realloc(
            ptr: *mut u8,
            bytes: usize,
            filename: *const c_char,
            line: c_uint,
        ) -> *mut u8;

        pub fn GC_free(ptr: *mut u8);
        pub fn GC_debug_free(ptr: *mut u8, filename: *const c_char, line: c_uint);

        pub fn GC_init();
        pub fn GC_deinit();
        pub fn GC_is_init_called() -> c_int;
        pub fn GC_enable_incremental();

        // GC_API void GC_CALL GC_set_handle_fork(int value)
        pub fn GC_set_handle_fork(value: c_int);

        pub fn GC_default_warn_proc(msg: *const c_char, arg: *const c_uint);
        pub fn GC_ignore_warn_proc(msg: *const c_char, arg: *const c_uint);

        /** Return the total memory use (in bytes) by all allocated blocks.      */
        /** The result is equal to GC_get_heap_size() - GC_get_free_bytes().     */
        /** Acquires the allocator lock in the reader mode.                      */
        pub fn GC_get_memory_use() -> usize;

        /** Disable garbage collection.  Even GC_gcollect calls will be          */
        /** ineffective.                                                         */
        pub fn GC_disable();

        /** Return 1 (true) if the garbage collection is disabled (i.e., the     */
        /** value of GC_dont_gc is non-zero), 0 otherwise.  Does not acquire     */
        /** the allocator lock.                                                  */
        pub fn GC_is_disabled() -> bool;

        /** Try to re-enable garbage collection.  GC_disable() and GC_enable()   */
        /** calls nest.  Garbage collection is enabled if the number of calls to */
        /** both functions is equal.                                             */
        pub fn GC_enable();

        // TODO
        // pub fn GC_set_warn_proc(proc: )

        pub fn GC_set_pages_executable(exe: c_int);
        pub fn GC_get_pages_executable() -> c_int;

        pub fn GC_set_min_bytes_allocd(bytes: c_int);
        pub fn GC_get_min_bytes_allocd() -> c_int;

        /** Explicitly enable GC_register_my_thread() invocation.              */
        /** Done implicitly if a GC thread-creation function is called (or     */
        /** implicit thread registration is activated, or the collector is     */
        /** compiled with GC_ALWAYS_MULTITHREADED defined).  Otherwise, it     */
        /** must be called from the main (or any previously registered) thread */
        /** between the collector initialization and the first explicit        */
        /** registering of a thread (it should be called as late as possible). */
        /** Includes a GC_start_mark_threads() call.                           */
        pub fn GC_allow_register_threads();

        /** Return 1 (true) if the calling (current) thread is registered with */
        /** the garbage collector, 0 otherwise.  Acquires the allocator lock   */
        /** in the reader mode.  If the thread is finished (e.g. running in    */
        /** a destructor and not registered manually again), it is considered  */
        /** as not registered.                                                 */
        pub fn GC_thread_is_registered() -> c_int;

        fn GC_get_stack_base(stack_base: *mut GC_stack_base) -> c_int;

        /** Register the current thread, with the indicated stack bottom, as   */
        /** a new thread whose stack(s) should be traced by the GC.  If it     */
        /** is not implicitly called by the GC, this must be called before a   */
        /** thread can allocate garbage collected memory, or assign pointers   */
        /** to the garbage collected heap.  Once registered, a thread will be  */
        /** stopped during garbage collections.                                */
        /** This call must be previously enabled (see above).                  */
        /** This should never be called from the main thread, where it is      */
        /** always done implicitly.  This is normally done implicitly if GC_   */
        /** functions are called to create the thread, e.g. by including gc.h  */
        /** (which redefines some system functions) before calling the system  */
        /** thread creation function.  Nonetheless, thread cleanup routines    */
        /** (e.g., pthread key destructor) typically require manual thread     */
        /** registering (and unregistering) if pointers to GC-allocated        */
        /** objects are manipulated inside.                                    */
        /** It is also always done implicitly on some platforms if             */
        /** GC_use_threads_discovery() is called at start-up.  Except for the  */
        /** latter case, the explicit call is normally required for threads    */
        /** created by third-party libraries.                                  */
        /** A manually registered thread requires manual unregistering.        */
        /** Returns GC_SUCCESS on success, GC_DUPLICATE if already registered. */
        pub fn GC_register_my_thread(stack_base: *const GC_stack_base) -> c_int;

        // GC_API int GC_pthread_create(pthread_t *,
        // GC_PTHREAD_CREATE_CONST pthread_attr_t *,
        // void *(*)(void *), void * /* arg */);

        pub fn GC_pthread_create(
            thread: *mut pthread_t,
            attr: *const pthread_attr_t,
            start_routine: extern "C" fn(*mut c_void) -> *mut c_void,
            arg: *mut c_void,
        ) -> c_int;
        pub fn GC_pthread_join(thread: pthread_t, value_ptr: *mut c_void) -> c_int;
        pub fn GC_pthread_detach(thread: pthread_t) -> c_int;
        pub fn GC_pthread_cancel(thread: pthread_t) -> c_int;
        pub fn GC_pthread_exit(a: *const c_void);
        pub fn GC_pthread_sigmask(
            how: libc::c_int,
            set: *const libc::sigset_t,
            oldset: *mut libc::sigset_t,
        );
        pub fn GC_dlopen(path: *const c_char, mode: c_int);
    }

    pub fn get_stack_base() -> GC_stack_base {
        let mut stack_base = MaybeUninit::<GC_stack_base>::uninit();

        unsafe {
            GC_get_stack_base(stack_base.as_mut_ptr());
        }

        unsafe { stack_base.assume_init() }
    }
}

#[cfg(feature = "bdwgc_alloc")]
mod bdwgc_alloc {
    #[global_allocator]
    pub(crate) static GLOBAL: bdwgc_alloc::Allocator = bdwgc_alloc::Allocator;

    #[cfg(test)]
    mod ctor2 {
        use bdwgc_alloc::Allocator;
        use ctor::ctor;
        use libc_print::libc_println;

        #[ctor]
        fn libgc_init() {
            libc_println!("bdwgc_alloc init");
            // let foo =  unsafe { GC_thread_is_registered() };
            // libc_println!("is_reg: {}", foo);
            unsafe {
                Allocator::initialize();
            }
        }
    }
}

#[cfg(feature = "libgc_alloc")]
mod gc_allocator {
    use crate::libgc::*;
    use alloc::alloc::handle_alloc_error;

    use core::alloc::{GlobalAlloc, Layout};
    use core::ffi::CStr;
    use libc_print::libc_println;
    use libc_print::std_name::println;

    #[global_allocator]
    pub(crate) static GLOBAL: GcAllocator = GcAllocator;

    // static mut THE_INIT_DONE: AtomicBool = AtomicBool::new(false);

    #[cfg(test)]
    mod ctor {
        // use crate::gc_allocator::THE_INIT_DONE;
        use crate::libgc::*;
        // use core::sync::atomic::AtomicBool;
        // use core::sync::atomic::Ordering::Relaxed;
        use ctor::{ctor, dtor};
        use libc_print::libc_println;
        use crate::gc_allocator::GcAllocator;
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

    fn verify_alloc_success(ptr: *mut u8, layout: Layout) -> *mut u8 {
        if ptr.is_null() {
            libc_println!("libgc null pointer allocation");
            handle_alloc_error(layout);
        }
        ptr
    }

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

    unsafe impl GlobalAlloc for GcAllocator {
        unsafe fn alloc(&self, layout: Layout) -> *mut u8 {
            let align = layout.align().max(core::mem::size_of::<usize>());
            let size = layout.size();
            // libc_println!("start alloc: {:?}", layout);
            //verify_thread_registration(layout);
            verify_thread_registration(layout);
            // let bytes = layout.size();
            // let ptr = GC_memalign(align, size);
            let ptr = GC_debug_malloc(size, FILENAME.as_ptr(), line!());

            //let ptr = GC_debug_malloc_ignore_off_page(size, FILENAME.as_ptr(), line!());
            // let ptr = GC_malloc(size);
            // let ptr = GC_debug_malloc(bytes, FILENAME.as_ptr(), line!());
            // libc_println!("finish alloc: {:?}", layout);

            // libc_println!("alloc: {}", win as usize)
            verify_alloc_success(ptr, layout)
        }

        unsafe fn dealloc(&self, ptr: *mut u8, _layout: Layout) {
            // verify_thread_registration_or_fail(layout);
            GC_debug_free(ptr, FILENAME.as_ptr(), line!());
            // GC_free(ptr);
        }

        // usable if alloc is zeroed - which is the case for malloc, but unsure for memalign
        unsafe fn alloc_zeroed(&self, layout: Layout) -> *mut u8 {
            self.alloc(layout)
        }

        unsafe fn realloc(&self, ptr: *mut u8, layout: Layout, new_size: usize) -> *mut u8 {
            verify_thread_registration(layout);
            let ptr = GC_debug_realloc(ptr, new_size, FILENAME.as_ptr(), line!());
            // let ptr = GC_realloc(ptr, new_size);
            verify_alloc_success(ptr, layout)
        }
    }

    impl GcAllocator {
        pub unsafe fn setup() {
            println!("libgc setup");
            GC_init();

            libc_println!("is_reg");

            let foo = unsafe { GC_thread_is_registered() };
            libc_println!("is_reg: {}", foo);

            GC_allow_register_threads();

            let foo = unsafe { GC_thread_is_registered() };
            libc_println!("is_reg: {}", foo);

            GC_disable();
        }
    }

    #[cfg(test)]
    mod tests {
        use super::*;
        use libc_print::std_name::println;

        #[test]
        fn test_big_alloc() {
            unsafe { GcAllocator::setup(); }
            let foo = unsafe { GC_thread_is_registered() };
            println!("is_reg: {}", foo);

            assert_eq!(1, unsafe { GC_is_init_called() }, "GC not initialized");
            assert_eq!(0, unsafe { GC_get_pages_executable() });
            assert_eq!(1, unsafe { GC_get_min_bytes_allocd() });

            // let layout = Layout::from_size_align(u16::MAX as usize * 1000, 8).unwrap();
            let layout = Layout::from_size_align(u16::MAX as usize, 8).unwrap();
            // for n in 1..=10 {
            //     libc_println!("{}", n);
            //     // let x = unsafe { GLOBAL.alloc(layout) };
            //     // assert!(!x.is_null());
            // }

            let x = unsafe { GLOBAL.alloc(layout) };
            assert!(!x.is_null());
            // let x = unsafe { GLOBAL.alloc(Layout::from_size_align(u16::MAX as usize * 100, 8).unwrap()) };
            // assert!(!x.is_null());
            // let x = unsafe { GLOBAL.alloc(layout) };
            // assert!(!x.is_null());
            libc_println!("DONE")
        }
    }
}

mod get_ptr {

    use alloc::boxed::Box;

    pub fn copy_to_heap_and_leak<T>(thing: T) -> *const T {
        Box::into_raw(Box::new(thing))
    }

    // pub fn copy_to_heap_and_leak_mut<T>(thing: T) -> *mut T {
    //     Box::into_raw(Box::new(thing))
    // }

    // #[cfg(feature = "experimental")]
    // pub fn copy_ref_to_heap_and_leak<T>(thing: &T) -> &T {
    //     Box::leak(Box::new(thing.to_owned()))
    // }
    //
    // #[cfg(feature = "experimental")]
    // pub fn copy_to_heap_and_leak_ref<'a, T>(thing: T) -> &'a T {
    //     let leak = Box::leak(Box::new(thing));
    //     leak
    // }
    //
    // #[cfg(feature = "experimental")]
    // pub fn copy_ref_to_heap_and_leak<T>(thing: &T) -> *mut T {
    //     let foo = unsafe { *thing };
    //     Box::into_raw(Box::new())
    // }

    // #[cfg(feature = "experimental")]
    // pub fn xcopy_to_heap_and_leak<T>(thing: &T) -> &'static T {
    //     let leaked = Box::into_raw(Box::new(thing));
    //     let x = unsafe { *leaked };
    //     x
    // }
}

mod string {
    use alloc::borrow::ToOwned;
    use alloc::boxed::Box;
    use evolve_inner_core::object::Object;

    // using box leak
    // does not preserve cstring
    fn str_to_safe_object2(value: &str) -> Object {
        // copy_ref_to_heap_and_leak(&value.to_owned()).as_str().into()
        //
        let owned = value.to_owned();
        let box_string = Box::new(owned);
        // // let leak_string = Box::leak(box_string);
        // // leak_string.as_str().into()
        let leak_string = Box::into_raw(box_string);
        unsafe { &*leak_string }.as_str().into()

        // let heap = String::from(value);
    }

    fn str_to_safe_object(value: &str) -> Object {
        let heap = value.to_owned();

        let leaked: &'static str = Box::leak(heap.into_boxed_str());
        leaked.into()
    }



    // #[allow(dead_code)]
    // #[cfg(feature = "experimental")]
    // fn str_to_safe_object_cstring(value: &str) -> Object {
    //     let cs = CString::new(value).unwrap_or_default();
    //     let len = cs.count_bytes();
    //     let len2 = cs.as_bytes().len();
    //     let raw = cs.into_raw();
    //     evolve_from_string(len as u32, raw as Ptr)
    // }

    #[no_mangle]
    extern "Rust" fn evolve_string_trim_end(value: &str) -> Object {
        let trimmed = value.trim_end(); // slice
        str_to_safe_object(trimmed)
    }

    #[no_mangle]
    extern "Rust" fn evolve_string_trim_start(value: &str) -> Object {
        let trimmed = value.trim_start(); // slice
        str_to_safe_object(trimmed)
    }

    #[cfg(test)]
    mod tests {
        use crate::string::{evolve_string_trim_end, evolve_string_trim_start};
        use alloc::borrow::ToOwned;
        use alloc::boxed::Box;
        use alloc::ffi::CString;
        use alloc::string::ToString;

        #[test]
        fn test_lowlevel() {
            let str = "evolve";
            let x = str;
            assert_eq!(str.as_ptr(), x.as_ptr());

            // cloning the reference
            // let clone = str.clone();
            // assert_eq!(str.as_ptr(), clone.as_ptr());

            // new but dropped
            let string = str.to_string();
            assert_ne!(str.as_ptr(), string.as_str().as_ptr());

            // new but dropped
            let owned = str.to_owned();
            assert_ne!(str.as_ptr(), owned.as_str().as_ptr());

            // boxed, raw, box duplicates reference
            let raw = Box::into_raw(Box::new(str));
            assert_eq!(str.as_ptr(), unsafe { *raw }.as_ptr());

            // to_string + leak
            let string = str.to_string();
            let save = string.as_str().as_ptr();
            assert_ne!(str.as_ptr(), save);
            let box_string = Box::new(string);
            assert_eq!(save, box_string.as_ptr());
            let leak_string = Box::leak(box_string);
            assert_eq!(save, leak_string.as_ptr());
            assert_ne!(str.as_ptr(), leak_string.as_str().as_ptr());

            // to_owned + leak
            let owned = str.to_owned();
            let save = owned.as_str().as_ptr();
            assert_ne!(str.as_ptr(), save);
            let box_string = Box::new(owned);
            assert_eq!(save, box_string.as_ptr());
            let leak_string = Box::leak(box_string);
            assert_eq!(save, leak_string.as_ptr());

            let c_string = CString::new(str).unwrap();
            let _ptr = c_string.as_ptr();
            assert_eq!(str.to_string(), c_string.to_string_lossy());
        }

        #[test]
        fn test_trim_end() {
            // let o = {
            //     let x =
            //     let o = evolve_string_trim_end(x);
            //     x.zeroize();
            //     o
            //  };
            let str = "Hello, world!    ";
            let obj = evolve_string_trim_end(str);
            let extract = obj.evolve_extract_rust_str();
            assert_eq!("Hello, world!", extract);
            assert_ne!(obj.evolve_extract_ptr(), str.as_ptr());
        }

        #[test]
        fn test_trim_start() {
            // let o = {
            //     let x =
            //     let o = evolve_string_trim_end(x);
            //     x.zeroize();
            //     o
            //  };
            let str = "        Hello, world!";
            let obj = evolve_string_trim_start(str);
            let extract = obj.evolve_extract_rust_str();
            assert_eq!("Hello, world!", extract);

            let new_ptr = obj.evolve_extract_ptr();
            let old_ptr = str.as_ptr();
            let diff = unsafe {
                if new_ptr > old_ptr {
                    new_ptr.sub_ptr(old_ptr)
                } else {
                    old_ptr.sub_ptr(new_ptr)
                }
            };
            assert_ne!(8, diff);
            // assert_eq!(8, diff);
        }
    }
}

#[cfg(feature = "stringmap")]
mod stringmap {
    use ahash::RandomState;

    use alloc::boxed::Box;

    use evolve_inner_core::object::Object;
    use indexmap::IndexMap;

    type EvolveStringMap = IndexMap<Box<str>, Object, RandomState>;

    #[allow(dead_code)]
    trait StringMapExt {
        const MIN_CAPACITY: usize = 8;

        extern "Rust" fn evolve_stringmap_new(capacity: usize) -> Object;
        extern "Rust" fn evolve_stringmap_size(self) -> usize;
        extern "Rust" fn evolve_stringmap_capacity(self) -> usize;
        fn string_map(self) -> &'static EvolveStringMap;
        extern "Rust" fn evolve_stringmap_get(self, key: &str) -> Object;
        fn string_map_mut(&mut self) -> &'static mut EvolveStringMap;
        extern "Rust" fn evolve_stringmap_put(self, key: &str, value: Object);
        // TODO: need to compare objects for equality
        extern "Rust" fn evolve_stringmap_eq(self, other: Object) -> bool;
    }

    impl StringMapExt for Object {
        #[no_mangle]
        extern "Rust" fn evolve_stringmap_new(capacity: usize) -> Object {
            let capacity = capacity.max(Self::MIN_CAPACITY);
            let hash_builder = RandomState::with_seed(42);
            let string_map = Box::new(EvolveStringMap::with_capacity_and_hasher(
                capacity,
                hash_builder,
            ));
            let leak = Box::leak(string_map);
            Self::from_ref(18, leak)
            // Self::new(18, )
            // EvolveStringMap { 0: leak }
            // let o = Self.
            // libc_println!("New: {:?}", o);
            //o
        }

        fn string_map(self) -> &'static EvolveStringMap {
            self.to_ref::<EvolveStringMap>()
        }

        fn string_map_mut(&mut self) -> &'static mut EvolveStringMap {
            self.to_mut::<EvolveStringMap>()
        }

        #[no_mangle]
        extern "Rust" fn evolve_stringmap_size(self) -> usize {
            self.string_map().len()
        }

        #[no_mangle]
        extern "Rust" fn evolve_stringmap_capacity(self) -> usize {
            self.string_map().capacity()
        }

        #[no_mangle]
        extern "Rust" fn evolve_stringmap_get(self, key: &str) -> Object {
            let value = self.string_map().get(key).copied().unwrap_or_default();
            value
        }

        #[no_mangle]
        extern "Rust" fn evolve_stringmap_put(mut self, key: &str, value: Object) {
            self.string_map_mut().insert(key.into(), value);
        }

        // TODO: need to compare objects for equality
        #[no_mangle]
        extern "Rust" fn evolve_stringmap_eq(self, _other: Object) -> bool {
            // let lhs = self.regex();
            // let rhs = other.regex();
            // lhs == rhs
            // the_self.iter().eq(the_other.iter())
            // lhs.cmp(rhs).is_eq()
            false
        }
    }

    #[cfg(test)]
    mod tests {
        use super::*;
        use evolve_inner_core::object::evolve_core_null;
        use evolve_inner_core::object_from::evolve_from_i64;

        #[test]
        fn test_create() {
            let string_map = Object::evolve_stringmap_new(100);
            assert_eq!(0, string_map.evolve_stringmap_size());
            assert_eq!(100, string_map.evolve_stringmap_capacity());
        }

        #[test]
        fn test_create_zero() {
            let string_map = Object::evolve_stringmap_new(0);
            assert_eq!(0, string_map.evolve_stringmap_size());
            assert_eq!(8, string_map.evolve_stringmap_capacity());
        }

        #[test]
        fn test_put_get() {
            let string_map = Object::evolve_stringmap_new(0);
            string_map.evolve_stringmap_put("foo", evolve_from_i64(42));
            let get = string_map.evolve_stringmap_get("foo");
            let i = get.evolve_extract_i64();
            assert_eq!(42, i);

            // let map = evolve_stringmap_new(0);

            // evolve_stringmap_put()
        }

        #[test]
        fn test_get_missing_returns_null() {
            let map = Object::evolve_stringmap_new(0);
            map.evolve_stringmap_put("foo", evolve_from_i64(42));
            let get = map.evolve_stringmap_get("bar");
            assert!(evolve_core_null(get));
        }
    }
}

// TODO: needs allocation setup
#[cfg(feature = "regex")]
mod regex {
    use alloc::vec;
    use crate::get_ptr::copy_to_heap_and_leak;

    // use libc::write;
    use evolve_inner_core::object::{evolve_build_ptr, evolve_core_build_null, Object, Ptr};
    use evolve_inner_core::object_from::evolve_from_string;
    use regex::Regex;
    // use evolve_inner_core::import_export::evolve_extract_i64;
    // use evolve_inner_core::string::evolve_from_string;

    #[allow(dead_code)]
    trait RegexExt {
        fn regex(self) -> &'static Regex;
        extern "Rust" fn evolve_regex_has_match(self, string: &str) -> bool;
        extern "Rust" fn evolve_regex_to_s2(self) -> Object;
    }

    // TODO: deal with dropping
    #[no_mangle]
    extern "Rust" fn evolve_regex_from_string(string: &str) -> Object {
        let regex = Regex::new(string);
        match regex {
            Ok(regex_ok) => {
                let ptr = copy_to_heap_and_leak(regex_ok);
                evolve_build_ptr(7, 0, ptr as Ptr)
            }
            Err(_) => evolve_core_build_null(),
        }
    }

    impl RegexExt for Object {
        /// get regex reference from object
        fn regex(self) -> &'static Regex {
            self.to_ref::<Regex>()
        }

        /// see if regex matches string
        #[no_mangle]
        extern "Rust" fn evolve_regex_has_match(self, string: &str) -> bool {
            self.regex().is_match(string)
        }

        // TODO: deal with dropping
        #[no_mangle]
        extern "Rust" fn evolve_regex_to_s2(self) -> Object {
            let re = self.regex();
            let str = re.as_str();
            // let leak = Box::leak(Box::new(re));
            // let raw = Box::into_raw(Box::new(str));
            // let danger = unsafe { *raw };
            let raw = copy_to_heap_and_leak(str);
            let danger = unsafe { *raw }.as_ptr();
            evolve_from_string(str.len() as u32, danger)
        }
    }

    #[no_mangle]
    extern "Rust" fn evolve_regex_replace(regex: &Regex, haystack: &str, replacer: &str) -> Object {
        let x = regex.replace_all(haystack, replacer);
        let y = copy_to_heap_and_leak(x.as_ref());
        // let y = Box::new(x);
        // let z = Box::leak(y);
        //
        unsafe { *y }.into()
    }

    #[no_mangle]
    extern "Rust" fn evolve_test(regex: &Regex, haystack: &str, replacer: &str) -> Object {
        let x = vec![4, 2, 42];
        x[2].into()
    }

    #[no_mangle]
    extern "Rust" fn evolve_test2(regex: &Regex, haystack: &str, replacer: &str) -> Object {
        let x = (4, 2, 42);
        x.2.into()
    }

    #[cfg(test)]
    mod tests {
        use super::*;
        use alloc::boxed::Box;
        use libc_print::std_name::println;

        #[test]
        fn test_lowlevel() {
            let re = Regex::new(r"[aeiou]").unwrap();
            assert_eq!("[aeiou]", re.as_str());

            let boxed = Box::new(re);
            assert_eq!("[aeiou]", boxed.as_str());

            let leaked = Box::leak(boxed);
            assert_eq!("[aeiou]", leaked.as_str());

            let x = &*leaked as *const Regex;
            // assert_eq!("[aeiou]", unsafe {*x}.as_str());

            assert!(!x.is_null())
        }

        #[test]
        fn test_re() {
            let re_str = "[aeiou]";
            let re = evolve_regex_from_string(re_str);
            // assert_eq!(768, unsafe { ALLOCS.load(Relaxed) });
            println!("\n{:?}\n", re);
            assert_eq!(
                re_str,
                // evolve_regex_to_rust_str(re.evolve_extract_ptr() as *const Regex)
                re.regex().as_str()
            );

            let s = re.evolve_regex_to_s2();
            println!("\n{:?}\n", s);
            assert_eq!(re_str, Into::<&str>::into(s))
        }
    }
}

#[cfg(test)]
mod tests {
    use alloc::collections::VecDeque;
    use alloc::vec;
    use core::alloc::{Layout};
    use libc_print::libc_println;

    #[test]
    fn test_allocs() {
        // TODO: libgc was slow at >= 64K but not now
        let layout = Layout::from_size_align(1 << 16, 8).unwrap();
        for n in 1..=10 {
            libc_println!("allocation {} for {:?}", n, layout);
            let x = unsafe { alloc::alloc::alloc(layout) };
            assert!(!x.is_null());
        }
        libc_println!("DONE test_allocs")
    }

    #[test]
    fn test_containers() {
        let x = vec![1, 2, 3];
        assert_eq!(3, x.len());

        let y = VecDeque::from([4, 5, 6]);
        assert_eq!(3, y.len());
    }
}
