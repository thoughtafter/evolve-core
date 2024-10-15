// use crate::libgc::GC_malloc_atomic_ignore_off_page;
// use core::alloc::{AllocError, Allocator, Layout};
// use core::ptr;
// use core::ptr::NonNull;

// #[no_mangle]
// extern "Rust" fn evolve_string_trim_end(value: &str) -> Object {
//     let trimmed = value.trim_end(); // slice
//     // str_to_safe_object(trimmed)
//     //trimmed.to_owned().into()
//     //String::from_iter(trimmed.chars()).into()
//     // let x = trimmed.to_owned().into_boxed_str();
//     let boxxed = Box::new_in(trimmed.to_owned(), AtomicAllocator);
//     boxxed.deref().into()
// }
