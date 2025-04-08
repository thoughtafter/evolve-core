use crate::class_ids::{CLOSURE_CLASS_ID, INT_CLASS_ID};
use crate::closure::{evolve_closure_get_env, evolve_closure_get_fun, evolve_closure_get_self};
use crate::object::{Object, Ptr};
use crate::tuple::evolve_from_ptr_tuple;

// ; Function Attrs: alwaysinline nounwind
// define fastcc { i64, ptr } @"evolve.intrinsic2.times!"({ i64, ptr } %self, { i64, ptr } %closure) local_unnamed_addr #8 {
// entry:
//   %one = tail call { i64, ptr } @evolve_from_i64(i64 1)
//   %step = tail call fastcc { i64, ptr } @"evolve.intrinsic2.step!"({ i64, ptr } %one, { i64, ptr } %self, { i64, ptr } %one, { i64, ptr } %closure) #8
//   %null = tail call fastcc i1 @"evolve.core.null?"({ i64, ptr } %step)
//   %ret = tail call fastcc { i64, ptr } @evolve.core.select(i1 %null, { i64, ptr } %step, { i64, ptr } %self)
//   ret { i64, ptr } %ret
// }
#[unsafe(export_name = "evolve.intrinsic2.times!")]
#[inline(always)]
fn evolve_intrinsic2_times(this: Object, tuple: Object) -> Object {
    evolve_intrinsic2_step(1.into(), this, 1.into(), tuple);
    this
}

#[inline(always)]
#[allow(dead_code)]
fn evolve_intrinsic2_times2(this: Object, closure: Object) -> Object {
    if (this.tag(), closure.class_id()) != (INT_CLASS_ID as u64, CLOSURE_CLASS_ID) {
        return Object::intrinsic_fail();
    }

    let times = this.extract_i64();

    let raw_tuple = [Object::null(); 2];

    let obj_tuple = evolve_from_ptr_tuple(2, raw_tuple.as_ptr() as Ptr);
    // let mut tuple = evolve_tuple_alloc(5);
    let closure_caller_self = evolve_closure_get_self(closure);
    let closure_fun = evolve_closure_get_fun(closure);
    let closure_env = evolve_closure_get_env(closure);

    let mut index = 1;
    // this fails on i64 max times due to overflow
    while index <= times {
        obj_tuple.tuple_put(1, Object::from_i64(index));
        closure_fun(closure_caller_self, obj_tuple, closure_env);
        index += 1;
    }
    this
}

// ; Function Attrs: alwaysinline nounwind
// define fastcc { i64, ptr } @"evolve.intrinsic2.upto!"({ i64, ptr } %self, { i64, ptr } %limit, { i64, ptr } %closure) local_unnamed_addr #8 {
// entry:
//   %one = tail call { i64, ptr } @evolve_from_i64(i64 1)
//   %step = tail call fastcc { i64, ptr } @"evolve.intrinsic2.step!"({ i64, ptr } %self, { i64, ptr } %limit, { i64, ptr } %one, { i64, ptr } %closure) #8
//   %null = tail call fastcc i1 @"evolve.core.null?"({ i64, ptr } %step)
//   %ret = tail call fastcc { i64, ptr } @evolve.core.select(i1 %null, { i64, ptr } %step, { i64, ptr } %self)
//   ret { i64, ptr } %ret
// }
#[unsafe(export_name = "evolve.intrinsic2.upto!")]
#[inline(always)]
fn evolve_intrinsic2_upto(this: Object, limit: Object, tuple: Object) -> Object {
    evolve_intrinsic2_step(this, limit, 1.into(), tuple);
    this
}

//
// ; Function Attrs: alwaysinline nounwind
// define fastcc { i64, ptr } @"evolve.intrinsic2.downto!"({ i64, ptr } %self, { i64, ptr } %limit, { i64, ptr } %closure) local_unnamed_addr #8 {
// entry:
//   %neg.one = tail call { i64, ptr } @evolve_from_i64(i64 -1)
//   %step = tail call fastcc { i64, ptr } @"evolve.intrinsic2.step!"({ i64, ptr } %self, { i64, ptr } %limit, { i64, ptr } %neg.one, { i64, ptr } %closure) #8
//   %null = tail call fastcc i1 @"evolve.core.null?"({ i64, ptr } %step)
//   %ret = tail call fastcc { i64, ptr } @evolve.core.select(i1 %null, { i64, ptr } %step, { i64, ptr } %self)
//   ret { i64, ptr } %ret
// }
#[unsafe(export_name = "evolve.intrinsic2.downto!")]
#[inline(always)]
fn evolve_intrinsic2_downto(this: Object, limit: Object, tuple: Object) -> Object {
    evolve_intrinsic2_step(this, limit, Object::from_i64(-1), tuple);
    this
}

// ; Function Attrs: alwaysinline nounwind
// define fastcc { i64, ptr } @"disabled.evolve.intrinsic2.loop!"({ i64, ptr } %self, { i64, ptr } %closure) local_unnamed_addr #8 {
// entry:
//   %one = tail call { i64, ptr } @evolve_from_i64(i64 1)
//   %limit = tail call { i64, ptr } @evolve_from_i64(i64 9223372036854775807)
//   %step = tail call fastcc { i64, ptr } @"evolve.intrinsic2.step!"({ i64, ptr } %one, { i64, ptr } %limit, { i64, ptr } %one, { i64, ptr } %closure) #8
//   ret { i64, ptr } %step
// }
#[unsafe(export_name = "evolve.intrinsic2.loop!")]
#[inline(always)]
fn evolve_intrinsic2_loop(this: Object, tuple: Object) -> Object {
    evolve_intrinsic2_step(1.into(), i64::MAX.into(), 1.into(), tuple);
    // unsafe { assume(this.is_intrinsic_win()); }
    assert!(this.is_intrinsic_win());
    // debug_assert!(this.is_intrinsic_win());
    this
    // Object::null()
}

// handling step_down:
// - could transform to negatives if start > limit, but negatives are not safe so this is many extra checks
// - since step is likely to be known at compile time we can check it
#[unsafe(export_name = "evolve.intrinsic2.step!")]
#[inline(always)]
fn evolve_intrinsic2_step(this: Object, limit: Object, step: Object, closure: Object) -> Object {
    let raw_tuple = [Object::null(); 2];
    if (this.tag(), limit.tag(), step.tag(), closure.class_id())
        != (
            INT_CLASS_ID as u64,
            INT_CLASS_ID as u64,
            INT_CLASS_ID as u64,
            CLOSURE_CLASS_ID,
        )
    {
        return Object::intrinsic_fail();
    }

    let start = this.extract_i64();
    let limit = limit.extract_i64();
    let step = step.extract_i64();

    // let (start, limit, step, factor) = if start <= limit {
    //     (start, limit, step, 1)
    // } else {
    //     (-start, -limit, -step, -1)
    // };

    // TODO: make this all endless loop conditions
    if step == 0 {
        return Object::intrinsic_fail();
    }

    // let closure_self = evolve_closure_get_self(closure);
    // libc_println!("Step from {} to {} by {}", start, limit, step);
    // (start..limit).step_by(step as usize).for_each({|index|
    //     libc_println!("{}", index);
    // });
    let obj_tuple = evolve_from_ptr_tuple(2, raw_tuple.as_ptr() as Ptr);
    // let mut tuple = evolve_tuple_alloc(5);
    let closure_caller_self = evolve_closure_get_self(closure);
    let closure_fun = evolve_closure_get_fun(closure);
    let closure_env = evolve_closure_get_env(closure);

    // for index in (start..=limit).step_by(step as usize) {
    //     // if index % 100_000_000 == 0 {
    //     //     libc_println!("intrinsic step counter: {}", index)
    //     // }
    //     // raw_tuple[1] = Object::from_i64(index);
    //
    //     obj_tuple.tuple_put(1, Object::from_i64(index));
    //
    //     // let b = obj_tuple.tuple_put(1, Object::from_i64(index));
    //     // libc_println!("{}", b);
    //     // evolve_intrinsic_call(closure, obj_tuple);
    //     unsafe {
    //         closure_fun(closure_caller_self, obj_tuple, closure_env);
    //     }
    // }
    let mut internal_index = start;
    loop {
        if (step > 0 && internal_index > limit) || (step < 0 && internal_index < limit) {
            break;
        }
        let external_index = internal_index;
        obj_tuple.tuple_put(1, Object::from_i64(external_index));
        closure_fun(closure_caller_self, obj_tuple, closure_env);
        // evolve_intrinsic_call(closure, obj_tuple);
        let add = internal_index.checked_add(step);
        if let Some(add) = add {
            internal_index = add;
        } else {
            break;
        }
    }
    this
}
