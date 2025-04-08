#[cfg(test)]
#[path = "closure_tests.rs"]
mod tests;

use crate::class_ids::{CLOSURE_CLASS_ID, EVOLVE_CLOSURE_FUNCTION_POINTER_ID};
use crate::object::{Object, Ptr, evolve_build_ptr};
use crate::tuple::evolve_from_ptr_tuple;
use core::mem::transmute;

type EvolveClosure = fn(Object, Object, Object) -> Object;

// #[unsafe(export_name = "evolve.from.ptr.closure")]
// fn evolve_from_ptr_closure(closure: Ptr) -> Object {
//     evolve_build_ptr(CLOSURE_CLASS_ID, 0, closure)
// }

#[unsafe(export_name = "evolve.from.ptr.closure2")]
#[inline(always)]
/// create closure from data pointer (probably alloca), function_ptr, and param count
fn evolve_from_ptr_closure2(
    closure_data_ptr: Ptr,
    closure_function_ptr: EvolveClosure,
    params: i64,
) -> Object {
    let size = params + 3;
    // libc_println!("New CLOSURE: {:?} {:?} {}", closure_data_ptr, closure_function_ptr, size);
    let object = evolve_build_ptr(CLOSURE_CLASS_ID, size as u32, closure_data_ptr);
    object.tuple_put(
        1,
        evolve_closure_function_pointer(closure_function_ptr as Ptr),
    );
    object.tuple_put(2, size.into());
    object
}

// define fastcc { i64, ptr } @evolve.closure.call({ i64, ptr } %closure, { i64, ptr } %tuple) local_unnamed_addr {
//   %self = tail call fastcc { i64, ptr } @evolve.closure.get.self({ i64, ptr } %closure)
//   %fun = tail call fastcc ptr @evolve.closure.get.fun({ i64, ptr } %closure)
//   %env = tail call fastcc { i64, ptr } @evolve.closure.get.env({ i64, ptr } %closure)
//   %object = tail call fastcc { i64, ptr } %fun({ i64, ptr } %self, { i64, ptr } %tuple, { i64, ptr } %env)
//   ret { i64, ptr } %object
// }
// TODO: write this
// doing nothing should allow compilation with no closures working
// #[unsafe(export_name = "evolve.closure.call")]

/// # Safety
/// calls function blindly
#[inline(always)]
// #[inline(never)]
#[unsafe(export_name = "evolve.closure.call")]
pub unsafe fn evolve_closure_call(closure: Object, tuple: Object) -> Object {
    let closure_caller_self = evolve_closure_get_self(closure);
    let closure_fun = evolve_closure_get_fun(closure);
    let closure_env = evolve_closure_get_env(closure);

    // let closure_caller_self = closure.tuple_get(3);
    // let closure_env_size = closure.tuple_get(2).extract_i64();
    // let closure_env = evolve_from_ptr_tuple(closure_env_size as usize, closure.extract_ptr());
    // let closure_fun = evolve_closure_get_fun(closure);
    // libc_println!("Calling closure with tuple: {:?}", tuple);
    closure_fun(closure_caller_self, tuple, closure_env)
}

// unsafe fn evolve_tuple_get(object: Object, index: u32) -> Object {
//     evolve_mem_load_object(object.extract_ptr(), index as isize)
// }

// ; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none)
// define fastcc { i64, ptr } @evolve.closure.get.self({ i64, ptr } %closure) local_unnamed_addr #7 {
//   %closure.ptr = tail call fastcc ptr @evolve.extract.ptr({ i64, ptr } %closure)
//   %self = tail call fastcc { i64, ptr } @evolve.mem.load.object(ptr nocapture nonnull readonly %closure.ptr, i64 3)
//   ret { i64, ptr } %self
// }
// #[unsafe(export_name = "evolve.closure.get.self")]
#[inline(always)]
pub fn evolve_closure_get_self(closure: Object) -> Object {
    closure.tuple_get(3)
}

// ; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none)
// define fastcc { i64, ptr } @evolve.closure.get.env({ i64, ptr } %closure) local_unnamed_addr #7 {
//   %closure.ptr = tail call fastcc ptr @evolve.extract.ptr({ i64, ptr } %closure)
//   %size.i64 = tail call fastcc i64 @evolve.closure.get.size({ i64, ptr } %closure)
//   %env.tuple = tail call fastcc { i64, ptr } @evolve.from.ptr.tuple(i64 %size.i64, ptr %closure.ptr)
//   ret { i64, ptr } %env.tuple
// }
// #[unsafe(export_name = "evolve.closure.get.env")]
#[inline(always)]
pub fn evolve_closure_get_env(closure: Object) -> Object {
    let size = evolve_closure_get_size(closure);
    evolve_from_ptr_tuple(size as usize, closure.extract_ptr())
}

// ; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none)
// define fastcc i64 @evolve.closure.get.size({ i64, ptr } %closure) local_unnamed_addr #7 {
//   %closure.ptr = tail call fastcc ptr @evolve.extract.ptr({ i64, ptr } %closure)
//   %size = tail call fastcc { i64, ptr } @evolve.mem.load.object(ptr nocapture nonnull readonly %closure.ptr, i64 2)
//   %size.i64 = tail call fastcc i64 @evolve.extract.i64({ i64, ptr } %size)
//   ret i64 %size.i64
// }
// #[unsafe(export_name = "evolve.closure.get.size")]
pub fn evolve_closure_get_size(closure: Object) -> i64 {
    closure.tuple_get(2).extract_i64()
}

// #[unsafe(no_mangle)]
#[inline(always)]
// TODO: when inlined this breaks things
// #[inline(never)]
pub fn evolve_closure_function_pointer(ptr: Ptr) -> Object {
    // libc_println!("Creating closure function pointer from {:?}", ptr);
    // Object::new(EVOLVE_CLOSURE_FUNCTION_POINTER_ID, test_close as Ptr)
    // Object::from_ptr(ptr)
    Object::new(EVOLVE_CLOSURE_FUNCTION_POINTER_ID, ptr)
}

// ; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none)
// define fastcc ptr @evolve.closure.get.fun({ i64, ptr } %closure) local_unnamed_addr #7 {
//   %closure.ptr = tail call fastcc ptr @evolve.extract.ptr({ i64, ptr } %closure)
//   %fun = tail call fastcc { i64, ptr } @evolve.mem.load.object(ptr nocapture nonnull readonly %closure.ptr, i64 1)
//   %fun.ptr = tail call fastcc ptr @evolve.extract.ptr({ i64, ptr } %fun)
//   ret ptr %fun.ptr
// }
/// # Safety
/// calling this function is safe. Calling the return value requires that the correct object
/// was sent
// #[unsafe(export_name = "evolve.closure.get.fun")]
#[inline(always)]
pub fn evolve_closure_get_fun(closure: Object) -> EvolveClosure {
    let fn_ptr = closure.tuple_get(1);

    //.extract_ptr();

    let test: EvolveClosure = unsafe { transmute(fn_ptr.extract_ptr()) };
    // println!("closure: {:?} fun: {:?} test: {:?} fixed: {:?}", closure, fn_ptr, test, test_close as *const ());

    // // fn_ptr as EvolveClosure
    // if fn_ptr.class_id() == EVOLVE_CLOSURE_FUNCTION_POINTER_ID {
    //     //transmute(fn_ptr)
    //     test
    // } else {
    //     test_close
    // }
    test
    // test_close
}

// #[inline(always)]
// #[allow(dead_code)]
// fn test_close(this: Object, tuple: Object, env: Object) -> Object {
//     let index = tuple.tuple_get(1).extract_i64();
//     // if index % 10_000_000 == 0 {
//     //     libc_println!("{}", index);
//     //     libc_println!("I'm a closure");
//     //     libc_println!("I have a self {:?}", this);
//     //     libc_println!("I have env {:?}", env);
//     //     libc_println!("I have tuple {:?}", tuple);
//     // };
//     Object::null()
// }

impl Object {
    pub fn closure_size(&self) -> i64 {
        evolve_closure_get_size(*self)
    }
}
