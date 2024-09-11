#![feature(ptr_sub_ptr)]
#![no_std]
extern crate alloc;

#[cfg(feature = "libgc_alloc")]
use crate::gc_allcator::GcAllocator;
#[cfg(feature = "libc_alloc")]
use crate::libc_allocator::LibcAllocator;

#[global_allocator]
#[cfg(feature = "libc_alloc")]
static GLOBAL: LibcAllocator = LibcAllocator;

#[cfg(feature = "libgc_alloc")]
#[global_allocator]
static GLOBAL: GcAllocator = GcAllocator;

#[cfg(feature = "libc_alloc")]
#[cfg(not(test))]
#[panic_handler]
fn panic(_info: &core::panic::PanicInfo) -> ! {
    unsafe {
        libc::abort();
    }
}

#[cfg(feature = "libgc_alloc")]
#[cfg(not(test))]
#[panic_handler]
fn panic(_info: &core::panic::PanicInfo) -> ! {
    loop {}
}

#[cfg(feature = "libc_alloc")]
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

#[cfg(feature = "libgc_alloc")]
mod libgc {
    // https://github.com/ivmai/bdwgc

    use core::ffi::{c_char, c_int, c_uint};

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

        pub fn GC_default_warn_proc(msg: *const c_char, arg: *const c_uint);
        pub fn GC_ignore_warn_proc(msg: *const c_char, arg: *const c_uint);

        // TODO
        // pub fn GC_set_warn_proc(proc: )

        pub fn GC_set_pages_executable(exe: c_int);
        pub fn GC_get_pages_executable() -> c_int;

        pub fn GC_set_min_bytes_allocd(bytes: c_int);
        pub fn GC_get_min_bytes_allocd() -> c_int;
    }
}

#[cfg(feature = "libgc_alloc")]
mod gc_allcator {
    use crate::libgc::*;
    use alloc::alloc::handle_alloc_error;

    use core::alloc::{GlobalAlloc, Layout};
    use core::ffi::CStr;

    #[cfg(test)]
    mod ctor {
        use crate::libgc::{GC_deinit, GC_init, GC_set_min_bytes_allocd};
        use ctor::{ctor, dtor};

        #[ctor]
        fn libgc_init() {
            unsafe {
                GC_init();
                GC_set_min_bytes_allocd(16);
            }
        }

        #[dtor]
        fn libgc_deinit() {
            unsafe {
                GC_deinit();
            }
        }
    }

    pub struct GcAllocator;

    // static mut ALLOCS: AtomicU64 = AtomicU64::new(0);

    // static mut GUARD: Mutex<i8>  = Mutex::new(0);

    static FILENAME: &CStr = c"GcAllocator";

    fn handle_error(ptr: *mut u8, layout: Layout) -> *mut u8 {
        if ptr.is_null() {
            handle_alloc_error(layout);
        }
        ptr
    }

    unsafe impl GlobalAlloc for GcAllocator {
        unsafe fn alloc(&self, layout: Layout) -> *mut u8 {
            let bytes = layout.size();
            // GC_debug_malloc(bytes, FILENAME.as_ptr(), line!())
            let ptr = GC_debug_malloc_ignore_off_page(bytes, FILENAME.as_ptr(), line!());
            handle_error(ptr, layout)
        }

        unsafe fn dealloc(&self, ptr: *mut u8, _layout: Layout) {
            GC_debug_free(ptr, FILENAME.as_ptr(), line!());
        }

        unsafe fn alloc_zeroed(&self, layout: Layout) -> *mut u8 {
            self.alloc(layout)
        }

        unsafe fn realloc(&self, ptr: *mut u8, layout: Layout, new_size: usize) -> *mut u8 {
            let ptr = GC_debug_realloc(ptr, new_size, FILENAME.as_ptr(), line!());
            handle_error(ptr, layout)
        }
    }

    #[cfg(test)]
    mod tests {
        use super::*;
        use crate::GLOBAL;
        use libc_print::libc_println;

        #[test]
        fn test_big_alloc() {
            assert_eq!(1, unsafe { GC_is_init_called() }, "GC not initialized");
            assert_eq!(0, unsafe { GC_get_pages_executable() });
            assert_eq!(16, unsafe { GC_get_min_bytes_allocd() });

            let layout = Layout::from_size_align(u16::MAX as usize * 1000, 8).unwrap();
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
        }
    }
}

mod get_ptr {
    use alloc::borrow::ToOwned;
    use alloc::boxed::Box;

    pub fn copy_to_heap_and_leak<T>(thing: T) -> *const T {
        Box::into_raw(Box::new(thing))
    }

    pub fn copy_to_heap_and_leak_mut<T>(thing: T) -> *mut T {
        Box::into_raw(Box::new(thing))
    }

    #[cfg(feature = "experimental")]
    pub fn copy_ref_to_heap_and_leak<T>(thing: &T) -> &T {
        Box::leak(Box::new(thing.to_owned()))
    }

    #[cfg(feature = "experimental")]
    pub fn copy_to_heap_and_leak_ref<'a, T>(thing: T) -> &'a T {
        let leak = Box::leak(Box::new(thing));
        leak
    }

    #[cfg(feature = "experimental")]
    pub fn copy_ref_to_heap_and_leak<T>(thing: &T) -> *mut T {
        let foo = unsafe { *thing };
        Box::into_raw(Box::new())
    }

    #[cfg(feature = "experimental")]
    pub fn xcopy_to_heap_and_leak<T>(thing: &T) -> &'static T {
        let leaked = Box::into_raw(Box::new(thing));
        let x = unsafe { *leaked };
        x
    }
}

mod string {
    use crate::get_ptr::copy_to_heap_and_leak;
    use alloc::borrow::ToOwned;
    use alloc::boxed::Box;
    use alloc::ffi::CString;
    use alloc::string::ToString;
    use core::ops::Deref;
    use evolve_inner_core::string::evolve_from_string;
    use evolve_inner_core::{Object, Ptr};

    // using box leak
    // does not preserve cstring
    fn str_to_safe_object(value: &str) -> Object {
        // copy_ref_to_heap_and_leak(&value.to_owned()).as_str().into()

        let owned = value.to_owned();
        let box_string = Box::new(owned);
        let leak_string = Box::leak(box_string);
        leak_string.as_str().into()
    }

    #[allow(dead_code)]
    #[cfg(feature = "experimental")]
    fn str_to_safe_object_cstring(value: &str) -> Object {
        let cs = CString::new(value).unwrap_or_default();
        let len = cs.count_bytes();
        let len2 = cs.as_bytes().len();
        let raw = cs.into_raw();
        evolve_from_string(len as u32, raw as Ptr)
    }

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
        use alloc::string::{String, ToString};
        use evolve_inner_core::evolve_extract_rust_str;
        use evolve_inner_core::import_export::evolve_extract_ptr;
        use libc_print::libc_print;

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
            let extract = evolve_extract_rust_str(&obj);
            assert_eq!("Hello, world!", extract);
            assert_ne!(evolve_extract_ptr(obj), str.as_ptr());
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
            let extract = evolve_extract_rust_str(&obj);
            assert_eq!("Hello, world!", extract);

            let new_ptr = evolve_extract_ptr(obj);
            let old_ptr = str.as_ptr();
            let diff = unsafe { new_ptr.sub_ptr(old_ptr) };
            assert_ne!(8, diff);
            // assert_eq!(8, diff);
        }
    }
}

#[cfg(feature = "stringmap")]
mod stringmap {
    use crate::get_ptr::{copy_to_heap_and_leak, copy_to_heap_and_leak_mut};
    use ahash::RandomState;
    use alloc::borrow::ToOwned;
    use alloc::boxed::Box;
    use evolve_inner_core::build::evolve_build_ptr;
    use evolve_inner_core::import_export::evolve_extract_ptr;
    use evolve_inner_core::{Object, Ptr};
    use indexmap::IndexMap;
    use libc_print::libc_println;

    type EvolveStringMapType = IndexMap<Box<str>, Object, RandomState>;

    // impl Into<Object> for EvolveStringMap {
    //     fn into(self) -> Object {
    //         evolve_build_ptr(unsafe { hashmapClassId } as u16, 0, (&self).as_ptr() as Ptr)
    //     }
    // }

    #[derive(Clone, Copy)]
    struct EvolveStringMap<'a> {
        map : &'a EvolveStringMapType
        // map: *mut EvolveStringMapType,
    }


    impl EvolveStringMap<'_> {

        // can be 0, but seems reasonable to allocate some
        // only issue would me something like `map == {}` instead of `empty?`
        const MIN_CAPACITY: usize = 8;

        // fn the_ref<'a>(self) -> &'a EvolveStringMapType {
        //     let foo = unsafe { &*self.map };
        //     foo
        // }

        fn new(capacity: usize) -> Self {
            let capacity = capacity.max(Self::MIN_CAPACITY);
            let hash_builder = RandomState::with_seed(42);
            let string_map = Box::new(EvolveStringMapType::with_capacity_and_hasher(capacity, hash_builder));

            // let leak = Box::into_raw(string_map);
            // libc_println!("heap ptr: {:?}", leak);
            // EvolveStringMap { map: leak }
            let leak = Box::leak(string_map);
            libc_println!("heap ptr: {:?}", leak);
            EvolveStringMap { map: leak }
        }

        #[no_mangle]
        pub extern "Rust" fn evolve_stringmap_new(capacity: usize) -> Object {
            let o = Self::new(capacity).into();
            libc_println!("New: {:?}", o);
            o
        }

        #[no_mangle]
        extern "Rust" fn evolve_stringmap_size(self) -> usize {
            // let ptr = self.ptr;
            // libc_println!("Size: {:?}", ptr);
            // let a_ref = unsafe { &*self.ptr };
            // let len = a_ref.len();
            // len

            // self.the_ref().len()

            self.map.len()
        }

        #[no_mangle]
        extern "Rust" fn evolve_stringmap_capacity(self) -> usize {
            // let ptr = self.ptr;
            // libc_println!("Size: {:?}", ptr);
            // let a_ref = unsafe { &*self.ptr };
            // let len = a_ref.capacity();
            // len

            // self.the_ref().capacity()

            self.map.capacity()
        }
    }

    impl Into<Object> for EvolveStringMap<'_> {
        fn into(self) -> Object {
            let ptr = self.map as *const _ as Ptr;
            evolve_build_ptr(unsafe { hashmapClassId } as u16, 0, ptr)
        }
    }

    impl From<Object> for EvolveStringMap<'_> {
        // unsafe - where it should be, if object is not a string map this goes bad
        fn from(value: Object) -> Self {
            let ptr = evolve_extract_ptr(value) as *mut EvolveStringMapType;
            let a_ref =   unsafe { &mut *ptr };
            EvolveStringMap { map: a_ref }
        }
    }

    // extern "C" {
    //     static hashmapClassId: u32;
    // }

    static hashmapClassId: u16 = 18;
    // #[no_mangle]
    // extern "Rust" fn evolve_stringmap_new(size: usize) -> Object {
    //
    //     let hash_builder = RandomState::with_seed(42);
    //     let indexmap: EvolveStringMap = IndexMap::with_capacity_and_hasher(size, hash_builder);
    //     let copy = copy_to_heap_and_leak(indexmap);
    //     evolve_build_ptr(unsafe { hashmapClassId } as u16, 0, copy as Ptr)
    // }

    #[no_mangle]
    extern "Rust" fn evolve_stringmap_get(the_self: &EvolveStringMapType, key: &str) -> Object {
        let value = the_self.get(key).copied().unwrap_or_default();
        value
    }

    // #[no_mangle]
    // extern "Rust" fn evolve_stringmap_put(the_self: &mut &EvolveStringMap, key: &str, value: Object) {
    //     the_self.insert(key.into(), value);
    // }

    // TODO: need to compare objects for equality
    #[no_mangle]
    extern "Rust" fn evolve_stringmap_eq(
        the_self: &EvolveStringMapType,
        the_other: &EvolveStringMapType,
    ) -> bool {
        // the_self.iter().eq(the_other.iter())
        false
    }

    #[cfg(test)]
    mod tests {
        use super::*;
        use evolve_inner_core::import_export::evolve_extract_ptr;

        #[test]
        fn test_create() {
            let x = EvolveStringMap::evolve_stringmap_new(100);
            let thing = EvolveStringMap::from(x);
            assert_eq!(0, thing.evolve_stringmap_size());
            assert_eq!(100, thing.evolve_stringmap_capacity());
        }

        #[test]
        fn test_create_zero() {
            let x = EvolveStringMap::evolve_stringmap_new(0);
            let thing = EvolveStringMap::from(x);
            assert_eq!(0, thing.evolve_stringmap_size());
            assert_eq!(8, thing.evolve_stringmap_capacity());
        }

        #[test]
        fn test_put_get() {
            // let map = evolve_stringmap_new(0);

            // evolve_stringmap_put()
        }
    }
}

// TODO: needs allocation setup
#[cfg(feature = "regex")]
mod regex {
    use crate::get_ptr::copy_to_heap_and_leak;
    use alloc::borrow::ToOwned;
    use alloc::boxed::Box;
    use core::ffi::c_void;
    use evolve_inner_core::build::{evolve_build_ptr, evolve_core_build_null};
    use evolve_inner_core::import_export::evolve_extract_ptr;
    use evolve_inner_core::string::evolve_from_string;
    use evolve_inner_core::*;
    // use libc::write;
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
    extern "Rust" fn evolve_regex_has_match(regex: &Regex, string: &str) -> bool {
        // let has_match_str = b"evolve_regex_has_match\n\0";
        // unsafe {
        //     write(
        //         1,
        //         has_match_str.as_ptr() as *const c_void,
        //         has_match_str.len() - 1,
        //     );
        //     write(1, string.as_ptr() as *const c_void, string.len());
        // }

        // unsafe { &*regex }.is_match(string)
        // let the_ref = unpack_regex(regex);
        // if let Some(val_back) = the_ref {
        //     val_back.is_match(string)
        // } else {
        //     false
        // }
        regex.is_match(string)
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

    #[cfg(test)]
    mod tests {
        use alloc::boxed::Box;
        // use core::sync::atomic::Ordering::{Relaxed, SeqCst};
        use super::*;
        use evolve_inner_core::import_export::evolve_extract_ptr;
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
    use super::*;

    use core::alloc::{GlobalAlloc, Layout};
    use libc_print::libc_println;

    #[test]
    fn test_allocs() {
        let layout = Layout::from_size_align(u16::MAX as usize * 1000, 8).unwrap();
        for n in 1..=10 {
            libc_println!("{}", n);
            let x = unsafe { GLOBAL.alloc(layout) };
            assert!(!x.is_null());
        }
    }
}
