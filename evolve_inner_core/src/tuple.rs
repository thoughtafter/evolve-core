#[cfg(test)]
#[path = "tuple_tests.rs"]
mod tests;

use crate::class_ids::TUPLE_CLASS_ID;
use crate::object::{Object, Ptr};
use alloc::alloc::alloc_zeroed;
use alloc::boxed::Box;
use alloc::vec;
use core::alloc::Layout;
use core::slice::{from_raw_parts, from_raw_parts_mut};

// pub type EvolveTupleAsNonNullObjectPtr = NonNull<Object>;

pub type EvolveTuple = &'static [Object];
pub type EvolveTupleMut = &'static mut [Object];

// trait TupleExt {
//     fn get(tuple: EvolveTuple3, index: usize) -> Object;
// }
//
// impl TupleExt for EvolveTuple3 {
//     #[export_name = "evolve.tuple.get"]
//     fn get(tuple: EvolveTuple3, index: usize) -> Object {
//         *(tuple.get(index).unwrap_or_default())
//     }
// }

// #[export_name = "tuple.core.get"]
// #[inline(always)]
// pub unsafe fn evolve_tuple_get(tuple: EvolveTupleAsNonNullObjectPtr, index: usize) -> Object {
//     let adjusted_index = index as isize; // adjusted_index(index) as isize;
//                                          // tuple.offset(adjusted_index).read()
//     evolve_mem_load_object(tuple.as_ptr() as Ptr, adjusted_index)
// }
//
// #[export_name = "tuple.core.put"]
// #[inline(always)]
// pub unsafe fn evolve_tuple_put(tuple: EvolveTupleAsNonNullObjectPtr, index: usize, value: Object) {
//     let adjusted_index = index as isize; // adjusted_index(index) as isize;
//                                          // tuple.offset(adjusted_index).write(value);
//     evolve_mem_store_object(tuple.as_ptr() as Ptr, value, adjusted_index);
// }

pub const EVOLVE_EMPTY_TUPLE: &Object = &Object::from_i64(0);

#[export_name = "test_evolve.from.ptr.tuple"]
pub fn evolve_from_ptr_tuple(size: usize, ptr: Ptr) -> Object {
    if size > 0 {
        Object::with_aux(TUPLE_CLASS_ID, size as u32, ptr)
    } else {
        Object::new(TUPLE_CLASS_ID, EVOLVE_EMPTY_TUPLE as *const Object as Ptr)
    }
}

/// allocate tuple of given size and return object
/// allocated size is currently size + 1
#[export_name = "evolve.alloc.tuple"]
pub fn evolve_tuple_alloc(size: usize) -> Object {
    if size > 0 {
        // let size = size + 1;
        // let layout = Layout::from_size_align((size + 1) * 16, 8).unwrap();
        // let tuple = unsafe { alloc_zeroed(layout) };
        // let tuple = unsafe { libc::calloc(size + 1, 16) };
        // let tuple = unsafe { libc::memalign(8, (size + 1) * 16) };
        let tuple = vec![Object::null(); size + 1].into_boxed_slice();

        // if tuple.is_null() {
        //     return Object::new(TUPLE_CLASS_ID, EVOLVE_EMPTY_TUPLE as *const Object as Ptr)
        // }
        // let tuple = unsafe { libc::malloc(size * 16) } as Ptr;
        evolve_from_ptr_tuple(size, Box::into_raw(tuple) as Ptr)
    } else {
        Object::new(TUPLE_CLASS_ID, EVOLVE_EMPTY_TUPLE as *const Object as Ptr)
    }
}

#[export_name = "evolve_tuple_alloc_test"]
pub fn evolve_tuple_alloc_test(size: usize) -> Result<Object, Object> {
    if size > 0 {
        let layout = Layout::from_size_align((size + 1) * 16, 16).unwrap();
        let tuple = unsafe { alloc_zeroed(layout) };
        if tuple.is_null() {
            return Err(Object::null());
        }
        Ok(evolve_from_ptr_tuple(size, tuple))
    } else {
        Ok(Object::new(
            TUPLE_CLASS_ID,
            EVOLVE_EMPTY_TUPLE as *const Object as Ptr,
        ))
    }
}

// #[export_name = "evolve_tuple_alloc_test_allocator"]
// pub fn evolve_tuple_alloc_test_alloc<A>(size: usize) -> Result<Object, Object> {
//     if size > 0 {
//         let layout = Layout::from_size_align((size + 1) * 16, 16).unwrap();
//         let tuple = unsafe { alloc_zeroed(layout) };
//         if tuple.is_null() {
//             return Err(Object::null());
//         }
//         Ok(evolve_from_ptr_tuple(size, tuple))
//     } else {
//         Ok(Object::new(
//             TUPLE_CLASS_ID,
//             EVOLVE_EMPTY_TUPLE as *const Object as Ptr,
//         ))
//     }
// }

// trait EvolveTupleExt {
//     fn get(self, index: usize) -> Object;
// }
//
// impl EvolveTupleExt for EvolveTuple {
//     #[export_name = "evolve.tuple.get"]
//     #[inline(always)]
//     fn get(self, index: usize) -> Object {
//         *(self.get(index).unwrap_or_default())
//     }
//
// }

impl Object {
    #[export_name = "evolve.tuple.get"]
    #[inline(always)]
    pub fn tuple_get(self, index: usize) -> Object {
        *(self.tuple().get(index).unwrap_or_default())
    }

    #[export_name = "evolve.tuple.put!"]
    #[inline(always)]
    pub fn tuple_put(mut self, index: usize, value: Object) -> bool {
        if index == 0 {
            return true;
        }
        if let Some(store) = self.tuple_mut().get_mut(index) {
            *store = value;
            false
        } else {
            true
        }
    }

    /// convert to Rust typed EvolveTuple
    fn tuple(self) -> EvolveTuple {
        let obj_ref = self.to_ref::<Object>();
        let size = self.aux() as usize + 1;
        unsafe { from_raw_parts(obj_ref, size) }
    }

    /// convert to Rust typed EvolveTupleMut
    fn tuple_mut(&mut self) -> EvolveTupleMut {
        let obj_mut = self.to_mut::<Object>();
        let size = self.aux() as usize + 1;
        unsafe { from_raw_parts_mut(obj_mut, size) }
    }
}
