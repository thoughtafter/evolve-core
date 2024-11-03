// https://github.com/ivmai/bdwgc

use alloc::format;
use core::ffi::{c_char, c_int, c_uint, c_void};
use core::mem::MaybeUninit;
use evolve_inner_core::object::Object;
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
    pub fn GC_debug_malloc_atomic(bytes: usize, filename: *const c_char, line: c_uint) -> *mut u8;
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

    fn GC_get_heap_usage_safe(
        heap_size: *mut usize,
        free_bytes: *mut usize,
        unmapped_bytes: *mut usize,
        btes_since_gc: *mut usize,
        total_bytes: *mut usize,
    );
}

#[derive(Default)]
struct HeapUsage {
    pub heap_size: usize,
    pub free_bytes: usize,
    pub unmapped_bytes: usize,
    pub bytes_since_gc: usize,
    pub total_bytes: usize,
}

/// convert to MB rounding up
/// eg 1MB + 1 byte = 2MB
fn to_mb(bytes: usize) -> usize {
    (bytes + 1048575) >> 20
}

fn get_heap_usages() -> HeapUsage {
    let mut heap_usage = HeapUsage::default();
    unsafe {
        GC_get_heap_usage_safe(
            &mut heap_usage.heap_size,
            &mut heap_usage.free_bytes,
            &mut heap_usage.unmapped_bytes,
            &mut heap_usage.bytes_since_gc,
            &mut heap_usage.total_bytes,
        );
    }
    heap_usage
}

#[allow(dead_code)]
pub fn get_stack_base() -> GC_stack_base {
    let mut stack_base = MaybeUninit::<GC_stack_base>::uninit();

    unsafe {
        GC_get_stack_base(stack_base.as_mut_ptr());
    }

    unsafe { stack_base.assume_init() }
}

#[no_mangle]
extern "Rust" fn evolve_gc_summary() -> Object {
    let heap_usage = get_heap_usages();
    let summary = format!(
        "total = {}MB, since_gc = {}MB, heap = {}MB, unmapped = {}MB, free = {}MB",
        to_mb(heap_usage.total_bytes),
        to_mb(heap_usage.bytes_since_gc),
        to_mb(heap_usage.heap_size),
        to_mb(heap_usage.unmapped_bytes),
        to_mb(heap_usage.free_bytes)
    );
    // libc_println!("{}", summary);
    // CString::new(summary).unwrap().into()
    summary.into()
}
