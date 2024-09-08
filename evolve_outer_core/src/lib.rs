#![no_std]
extern crate alloc;

use crate::gc_allcator::GcAllocator;
// use crate::libc_allocator::LibcAllocator;

mod libc_allocator {
    use core::alloc::{GlobalAlloc, Layout};
    use libc::c_void;

    pub struct LibcAllocator;

    unsafe impl GlobalAlloc for LibcAllocator {
        unsafe fn alloc(&self, layout: Layout) -> *mut u8 {
            libc::malloc(layout.size()) as *mut u8
        }

        unsafe fn dealloc(&self, ptr: *mut u8, _layout: Layout) {
            libc::free(ptr as *mut c_void);
            // GC_free(ptr);
            // System.dealloc(ptr, layout)
            // let foo =b"Look at me deallocate!\n\0";
            // write(1, foo.as_ptr() as *const c_void, foo.len() - 1);
        }

        unsafe fn alloc_zeroed(&self, layout: Layout) -> *mut u8 {
            libc::calloc(1, layout.size()) as *mut u8
        }

        unsafe fn realloc(&self, ptr: *mut u8, _layout: Layout, new_size: usize) -> *mut u8 {
            libc::realloc(ptr as *mut c_void, new_size) as *mut u8
        }
    }
}

mod libgc {
    // https://github.com/ivmai/bdwgc

    use core::ffi::{c_char, c_int, c_uint};
    use libc::uintptr_t;

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

        pub fn GC_default_warn_proc(msg: *const c_char, arg: uintptr_t);
        pub fn GC_ignore_warn_proc(msg: *const c_char, arg: uintptr_t);

        // TODO
        // pub fn GC_set_warn_proc(proc: )

        pub fn GC_set_pages_executable(exe: c_int);
    }
}
mod gc_allcator {
    use crate::libgc::*;

    use core::alloc::{GlobalAlloc, Layout};
    use core::ffi::CStr;

    use ctor::ctor;

    // extern "C" fn warn_proc(msg: *const c_char, p: c_int) {
    //
    // }

    #[ctor]
    fn libgc_init() {
        unsafe {
            GC_init();
            GC_set_pages_executable(0);
        }
    }

    pub struct GcAllocator;

    // static mut ALLOCS: AtomicU64 = AtomicU64::new(0);

    // static mut GUARD: Mutex<i8>  = Mutex::new(0);

    static FILENAME: &CStr = c"GcAllocator";

    unsafe impl GlobalAlloc for GcAllocator {
        unsafe fn alloc(&self, layout: Layout) -> *mut u8 {
            let bytes = layout.size();
            // GC_debug_malloc(bytes, FILENAME.as_ptr(), line!())
            GC_debug_malloc_ignore_off_page(bytes, FILENAME.as_ptr(), line!())
        }

        unsafe fn dealloc(&self, ptr: *mut u8, _layout: Layout) {
            GC_debug_free(ptr, FILENAME.as_ptr(), line!());
        }

        unsafe fn alloc_zeroed(&self, layout: Layout) -> *mut u8 {
            self.alloc(layout)
        }

        unsafe fn realloc(&self, ptr: *mut u8, _layout: Layout, new_size: usize) -> *mut u8 {
            GC_debug_realloc(ptr, new_size, FILENAME.as_ptr(), line!())
        }
    }

    #[cfg(test)]
    mod tests {
        use super::*;
        use crate::GLOBAL;
        use libc_print::libc_println;

        #[test]
        fn test_big_alloc() {
            let layout = Layout::from_size_align(u16::MAX as usize, 8).unwrap();
            let x = unsafe { GLOBAL.alloc(layout) };
            assert!(!x.is_null());
        }
    }
}

#[global_allocator]
// static GLOBAL: LibcAllocator = LibcAllocator;
static GLOBAL: GcAllocator = GcAllocator;

#[cfg(not(test))]
#[panic_handler]
fn panic(_info: &core::panic::PanicInfo) -> ! {
    unsafe {
        libc::abort();
    }
}

mod get_ptr {
    use alloc::boxed::Box;

    pub fn copy_to_heap_and_leak<T>(thing: T) -> *mut T {
        Box::into_raw(Box::new(thing))
    }

    // pub fn copy_ref_to_heap_and_leak<T>(thing: &T) -> *mut T {
    //     let foo = unsafe { *thing };
    //     Box::into_raw(Box::new())
    // }

    // pub fn xcopy_to_heap_and_leak<T>(thing: &T) -> &'static T {
    //     let leaked = Box::into_raw(Box::new(thing));
    //     let x = unsafe { *leaked };
    //     x
    // }
}

mod string {
    use crate::get_ptr::copy_to_heap_and_leak;
    use evolve_inner_core::Object;

    #[no_mangle]
    extern "Rust" fn evolve_string_trim_end(value: &str) -> Object {
        let binding = value.trim_end(); // slice
        let trimmed = copy_to_heap_and_leak(binding);
        unsafe { *trimmed }.into()
    }
}

// TODO: needs allocation setup
mod regex {
    use crate::get_ptr::copy_to_heap_and_leak;
    use core::ffi::c_void;
    use evolve_inner_core::build::{evolve_build_ptr, evolve_core_build_null};
    use evolve_inner_core::import_export::evolve_extract_ptr;
    use evolve_inner_core::string::evolve_from_string;
    use evolve_inner_core::*;
    use libc::write;
    use regex::Regex;
    // use evolve_inner_core::import_export::evolve_extract_i64;
    // use evolve_inner_core::string::evolve_from_string;

    #[allow(dead_code)]
    fn regex_ptr(o: Object) -> *const Regex {
        evolve_extract_ptr(o) as *const Regex
    }

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

    fn unpack_regex<'a>(regex: *const Regex) -> Option<&'a Regex> {
        unsafe { regex.as_ref() }
    }

    #[allow(dead_code)]
    pub fn evolve_regex_to_rust_str<'a>(regex: *const Regex) -> &'a str {
        if let Some(re) = unpack_regex(regex) {
            re.as_str()
        } else {
            ""
        }
    }

    // TODO: deal with dropping
    #[no_mangle]
    extern "Rust" fn evolve_regex_to_s2(regex: *const Regex) -> Object {
        if let Some(re) = unpack_regex(regex) {
            let str = re.as_str();
            // let leak = Box::leak(Box::new(re));
            // let raw = Box::into_raw(Box::new(str));
            // let danger = unsafe { *raw };
            let raw = copy_to_heap_and_leak(str);
            let danger = unsafe { *raw }.as_ptr();
            evolve_from_string(str.len() as u32, danger)
        } else {
            evolve_core_build_null()
        }
    }

    #[no_mangle]
    extern "Rust" fn evolve_regex_has_match(regex: *const Regex, string: &str) -> bool {
        let has_match_str = b"evolve_regex_has_match\n\0";
        unsafe {
            write(
                1,
                has_match_str.as_ptr() as *const c_void,
                has_match_str.len() - 1,
            );
            write(1, string.as_ptr() as *const c_void, string.len());
        }

        // unsafe { &*regex }.is_match(string)
        let the_ref = unpack_regex(regex);
        if let Some(val_back) = the_ref {
            val_back.is_match(string)
        } else {
            false
        }
    }

    #[cfg(test)]
    mod tests {
        // use core::sync::atomic::Ordering::{Relaxed, SeqCst};
        use super::*;
        use evolve_inner_core::import_export::evolve_extract_ptr;
        use libc_print::std_name::println;

        #[test]
        fn test_re() {
            let re_str = "[aeiou]";
            let re = evolve_regex_from_string(re_str);
            // assert_eq!(768, unsafe { ALLOCS.load(Relaxed) });
            println!("\n{:?}\n", re);
            assert_eq!(
                re_str,
                evolve_regex_to_rust_str(evolve_extract_ptr(re) as *const Regex)
            );

            let s = evolve_regex_to_s2(regex_ptr(re));
            println!("\n{:?}\n", s);
            assert_eq!(re_str, evolve_extract_rust_str(&s))
        }
    }
}

#[cfg(test)]
mod tests {
    // use test_case;
    // use super::*;
}
