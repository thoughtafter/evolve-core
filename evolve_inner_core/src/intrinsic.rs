use crate::class_ids::EVOLVE_FAILED_INTRINSIC_ID;
use crate::object::Object;

impl Object {
    const fn intrinsic_fail() -> Self {
        Self::static_class(EVOLVE_FAILED_INTRINSIC_ID)
    }

    #[inline(always)]
    #[export_name = "evolve.core.intrinsic.win?"]
    pub(crate) const fn is_intrinsic_win(self) -> bool {
        self.tag() != EVOLVE_FAILED_INTRINSIC_ID as u64
    }
}

#[inline(always)]
#[export_name = "evolve.intrinsic2.class_id"]
pub const fn evolve_intrinsic_class_id(value: Object) -> u64 {
    value.class_id() as u64
}

#[inline(always)]
#[export_name = "evolve.intrinsic2.is?"]
pub const fn evolve_intrinsic_is(left: Object, right: Object) -> bool {
    left.is_same(right)
}

#[inline(always)]
#[export_name = "evolve.intrinsic2.is_not?"]
pub const fn evolve_intrinsic_is_not(left: Object, right: Object) -> bool {
    !left.is_same(right)
}

#[inline(always)]
#[export_name = "evolve.intrinsic2.true?"]
pub const fn evolve_intrinsic_is_true(value: Object) -> bool {
    value.is_true()
}

#[inline(always)]
#[export_name = "evolve.intrinsic2.false?"]
pub const fn evolve_intrinsic_is_false(value: Object) -> bool {
    !value.is_true()
}

mod indexable {
    use crate::array::evolve_array_get;
    use crate::class_ids::{ARRAY_CLASS_ID, INT_CLASS_ID, TUPLE_CLASS_ID};
    use crate::object::Object;

    #[inline(always)]
    #[export_name = "evolve.intrinsic2.get"]
    fn evolve_intrinsic_get(value: Object, index: Object) -> Object {
        if index.tag() != INT_CLASS_ID as u64 {
            return Object::intrinsic_fail();
        }

        match value.class_id() {
            TUPLE_CLASS_ID => value.tuple_get(index.extract_i64() as usize),
            ARRAY_CLASS_ID => evolve_array_get(value.to_ref(), index.extract_i64() as usize),
            _ => Object::intrinsic_fail(),
        }
    }
}

mod closure {
    use crate::class_ids::CLOSURE_CLASS_ID;
    use crate::closure::evolve_closure_call;
    use crate::object::Object;

    // define fastcc { i64, ptr } @"evolve.intrinsic2.call!"({ i64, ptr } %self, { i64, ptr } %tuple) local_unnamed_addr {
    // entry:
    //   %class_id = load i32, ptr @blockClassId, align 4
    //   %closure = tail call fastcc i1 @evolve.core.is_class(i32 %class_id, { i64, ptr } %self)
    //   br i1 %closure, label %closurefoo, label %common.ret
    //
    // closurefoo:                                       ; preds = %entry
    //   %object = tail call fastcc { i64, ptr } @evolve.closure.call({ i64, ptr } %self, { i64, ptr } %tuple)
    //   br label %common.ret
    //
    // common.ret:                                       ; preds = %closurefoo, %entry
    //   %common.ret.op = phi { i64, ptr } [ %object, %closurefoo ], [ zeroinitializer, %entry ]
    //   ret { i64, ptr } %common.ret.op
    // }
    #[export_name = "evolve.intrinsic2.call!"]
    #[inline(always)]
    pub fn evolve_intrinsic_call(s: Object, tuple: Object) -> Object {
        let tag = s.tag();
        if tag as u16 == CLOSURE_CLASS_ID {
            unsafe { evolve_closure_call(s, tuple) }
        } else {
            Object::intrinsic_fail()
        }
    }
}

mod convert {
    use crate::class_ids::*;
    use crate::llvm::evolve_llvm_fptosi_checked;
    use crate::llvm::evolve_llvm_sitofp;
    use crate::object::Object;

    #[export_name = "evolve.intrinsic2.to_i"]
    #[inline(always)]
    // TODO: const
    pub fn evolve_intrinsic_to_i(value: Object) -> Object {
        let tag = value.tag();
        match tag as u16 {
            INT_CLASS_ID => value,
            FLOAT_CLASS_ID => {
                let fptosi = evolve_llvm_fptosi_checked(value.extract_f64());
                if !fptosi.1 {
                    Object::from_i64(fptosi.0)
                } else {
                    Object::intrinsic_fail()
                }
            }
            _ => Object::intrinsic_fail(),
        }
    }

    #[inline(always)]
    #[export_name = "evolve.intrinsic2.to_f"]
    pub const fn evolve_intrinsic_to_f(value: Object) -> Object {
        let tag = value.tag();
        match tag as u16 {
            INT_CLASS_ID => Object::from_f64(evolve_llvm_sitofp(value.extract_i64())),
            FLOAT_CLASS_ID => value,
            _ => Object::intrinsic_fail(),
        }
    }

    // #[export_name = "evolve.intrinsic2.to_s"]
    // #[inline(always)]
    // pub const fn evolve_intrinsic_to_s(value: Object) -> Object {
    //     let tag = value.tag();
    //     match tag as u16 {
    //         STRING_CLASS_ID => value,
    //         _ => Object::intrinsic_fail(),
    //     }
    // }
}

pub mod cmp {
    use crate::class_ids::{FLOAT_CLASS_ID, INT_CLASS_ID};
    use crate::object::Object;
    use ordered_float::OrderedFloat;

    fn evolve_eq(lhs: Object, rhs: Object) -> Option<bool> {
        let lhs_tag = lhs.tag();
        let rhs_tag = rhs.tag();
        if lhs_tag != rhs_tag {
            return None;
        }

        match lhs_tag as u16 {
            INT_CLASS_ID => Some(lhs.extract_i64() == rhs.extract_i64()),
            FLOAT_CLASS_ID => {
                Some(OrderedFloat(lhs.extract_f64()) == OrderedFloat(rhs.extract_f64()))
            }
            _ => {
                if lhs.extract_i64() == rhs.extract_i64() {
                    Some(true)
                } else {
                    None
                }
            }
        }
    }

    /// partial_cmp is slower than necessary for floats
    #[inline(always)]
    #[export_name = "evolve.intrinsic2.eq?"]
    pub fn evolve_intrinsic_eq(left: Object, right: Object) -> Object {
        // let cmp = left.partial_cmp(&right);
        // match cmp {
        //     None => Object::intrinsic_fail(),
        //     Some(cmp) => Object::from(cmp == Ordering::Equal),
        // }
        // if evolve_intrinsic_is(left, right) {
        //     return true.into();
        // }
        // cmp_helper(left, right, i64::eq, OrderedFloat::eq)
        if let Some(value) = evolve_eq(left, right) {
            value.into()
        } else {
            Object::intrinsic_fail()
        }
    }

    #[inline(always)]
    #[export_name = "evolve.intrinsic2.ne?"]
    fn evolve_intrinsic_ne(left: Object, right: Object) -> Object {
        // let cmp = left.partial_cmp(&right);
        // match cmp {
        //     None => Object::intrinsic_fail(),
        //     Some(cmp) => Object::from(cmp != Ordering::Equal),
        // }
        // if evolve_intrinsic_is(left, right) {
        //     return false.into();
        // }
        // cmp_helper(left, right, i64::ne, OrderedFloat::ne)
        if let Some(value) = evolve_eq(left, right) {
            (!value).into()
        } else {
            Object::intrinsic_fail()
        }
    }

    #[inline(always)]
    fn cmp_helper<I, F>(lhs: Object, rhs: Object, int_fn: I, float_fn: F) -> Object
    where
        I: FnOnce(&i64, &i64) -> bool,
        F: FnOnce(&OrderedFloat<f64>, &OrderedFloat<f64>) -> bool,
    {
        let lhs_tag = lhs.tag();
        let rhs_tag = rhs.tag();
        if lhs_tag != rhs_tag {
            return Object::intrinsic_fail();
        }

        match lhs_tag as u16 {
            INT_CLASS_ID => int_fn(&lhs.extract_i64(), &rhs.extract_i64()).into(),
            FLOAT_CLASS_ID => float_fn(
                &OrderedFloat(lhs.extract_f64()),
                &OrderedFloat(rhs.extract_f64()),
            )
            .into(),
            _ => Object::intrinsic_fail(),
        }
    }

    #[inline(always)]
    #[export_name = "evolve.intrinsic2.lt?"]
    fn evolve_intrinsic_lt(left: Object, right: Object) -> Object {
        cmp_helper(left, right, i64::lt, OrderedFloat::lt)
    }

    #[inline(always)]
    #[export_name = "evolve.intrinsic2.ge?"]
    fn evolve_intrinsic_ge(left: Object, right: Object) -> Object {
        cmp_helper(left, right, i64::ge, OrderedFloat::ge)
    }

    #[inline(always)]
    #[export_name = "evolve.intrinsic2.gt?"]
    fn evolve_intrinsic_gt(left: Object, right: Object) -> Object {
        cmp_helper(left, right, i64::gt, OrderedFloat::gt)
    }

    #[inline(always)]
    #[export_name = "evolve.intrinsic2.le?"]
    fn evolve_intrinsic_le(left: Object, right: Object) -> Object {
        cmp_helper(left, right, i64::le, OrderedFloat::le)
    }

    #[inline(always)]
    #[export_name = "evolve.intrinsic2.in?"]
    fn evolve_intrinsic_in(lhs: Object, rhs: Object) -> Object {
        evolve_intrinsic_eq(lhs, rhs)
    }

    // #[inline(always)]
    // #[export_name = "evolve.intrinsic2.cmp"]
    // pub fn evolve_intrinsic_cmp(lhs: Object, rhs: Object) -> Object {
    //     let lhs_tag = lhs.tag();
    //     let rhs_tag = rhs.tag();
    //     if lhs_tag != rhs_tag {
    //         return Object::intrinsic_fail();
    //     }
    //
    //     match lhs_tag as u16 {
    //         INT_CLASS_ID => lhs.extract_i64().cmp(&rhs.extract_i64()).into(),
    //         // FLOAT_CLASS_ID => OrderedFloat(lhs.extract_f64()).cmp(&OrderedFloat(rhs.extract_f64()),
    //         _ => Object::intrinsic_fail(),
    //     }
    // }
}

mod math {
    use crate::class_ids::{FLOAT_CLASS_ID, INT_CLASS_ID};
    use crate::object::Object;
    use core::ops::{Add, Div, Mul, Rem, Sub};
    // use num_traits::Zero;
    // use crate::intrinsic::closure::evolve_intrinsic_call;
    // use crate::intrinsic::convert::evolve_intrinsic_to_f;
    #[allow(unused_imports)]
    use ordered_float::FloatCore;
    // const LOCAL_INT_CLASS_ID: u64 = INT_CLASS_ID as u64;
    // const LOCAL_FLOAT_CLASS_ID: u64 = FLOAT_CLASS_ID as u64;
    //
    // #[no_mangle]
    // #[inline(always)]
    // fn evolve_intrinsic_add2(left: Object, right: Object) -> Object {
    //     if left.tag() == LOCAL_INT_CLASS_ID && right.tag() == LOCAL_INT_CLASS_ID {
    //         let add = left.extract_i64().checked_add(right.extract_i64());
    //         if let Some(int) = add {
    //             return int.into();
    //         }
    //     }
    //
    //     if left.tag() == LOCAL_FLOAT_CLASS_ID && right.tag() == LOCAL_FLOAT_CLASS_ID {
    //         let add = left.extract_f64().add(right.extract_f64());
    //         if !add.is_infinite() {
    //             return add.into();
    //         }
    //     }
    //
    //     Object::default()
    // }
    //
    // #[inline(always)]
    // fn evolve_intrinsic_add3(left: Object, right: Object) -> Object {
    //     match (left.tag(), right.tag()) {
    //         (LOCAL_INT_CLASS_ID, LOCAL_INT_CLASS_ID) => {
    //             let math = left.extract_i64().checked_add(right.extract_i64());
    //             if let Some(int) = math {
    //                 return int.into();
    //             }
    //         }
    //         (LOCAL_FLOAT_CLASS_ID, LOCAL_FLOAT_CLASS_ID) => {
    //             let math = left.extract_f64().add(right.extract_f64());
    //             if !math.is_infinite() {
    //                 return math.into();
    //             }
    //         }
    //         (_, _) => {}
    //     }
    //     Object::default()
    // }

    #[inline(always)]
    fn math_helper(
        left: Object,
        right: Object,
        int_fn: fn(i64, i64) -> Option<i64>,
        float_fn: fn(f64, f64) -> f64,
    ) -> Object
// where
    //     I: Fn(i64, i64) -> Option<i64>,
    //     F: Fn(f64, f64) -> f64,
    {
        let lhs_tag = left.tag();
        let rhs_tag = right.tag();
        if lhs_tag != rhs_tag {
            return Object::intrinsic_fail();
            // let lhs_float = evolve_intrinsic_to_f(left);
            // let rhs_float = evolve_intrinsic_to_f(right);
            // return math_helper(lhs_float, rhs_float, int_fn, float_fn)
        }

        match lhs_tag as u16 {
            INT_CLASS_ID => {
                let math = int_fn(left.extract_i64(), right.extract_i64());
                if let Some(int) = math {
                    return Object::from_i64(int);
                }
            }
            FLOAT_CLASS_ID => {
                let math = float_fn(left.extract_f64(), right.extract_f64());
                if !math.is_infinite() & !math.is_subnormal() {
                    return Object::from_f64(math);
                }
            }
            _ => {}
        }
        Object::intrinsic_fail()
    }

    #[export_name = "evolve.intrinsic2.add"]
    #[inline(always)]
    fn evolve_intrinsic_add(left: Object, right: Object) -> Object {
        math_helper(left, right, i64::checked_add, f64::add)
    }

    #[export_name = "evolve.intrinsic2.sub"]
    #[inline(always)]
    fn evolve_intrinsic_sub(left: Object, right: Object) -> Object {
        math_helper(left, right, i64::checked_sub, f64::sub)
    }

    #[export_name = "evolve.intrinsic2.mul"]
    #[inline(always)]
    fn evolve_intrinsic_mul(left: Object, right: Object) -> Object {
        math_helper(left, right, i64::checked_mul, f64::mul)
    }

    #[export_name = "evolve.intrinsic2.rem"]
    #[inline(always)]
    fn evolve_intrinsic_rem(left: Object, right: Object) -> Object {
        math_helper(left, right, i64::checked_rem, f64::rem)
    }

    #[inline(always)]
    fn evolve_div_exact(lhs: i64, rhs: i64) -> Option<i64> {
        let math = lhs.checked_rem(rhs);
        match math {
            Some(0) => Some(lhs / rhs),
            _ => None,
        }
    }

    #[export_name = "evolve.intrinsic2.div"]
    #[inline(always)]
    fn evolve_intrinsic_div(left: Object, right: Object) -> Object {
        math_helper(left, right, evolve_div_exact, f64::div)
    }

    fn f64_tdiv(lhs: f64, rhs: f64) -> f64 {
        (lhs / rhs).trunc()
    }

    #[export_name = "evolve.intrinsic2.tdiv"]
    #[inline(always)]
    fn evolve_intrinsic_tdiv(left: Object, right: Object) -> Object {
        math_helper(left, right, i64::checked_div, f64_tdiv)
    }

    #[export_name = "evolve.intrinsic2.div?"]
    #[inline(always)]
    fn evolve_intrinsic_divided_by(left: Object, right: Object) -> Object {
        evolve_intrinsic_zero(evolve_intrinsic_rem(left, right))
        // let lhs_tag = left.tag();
        // let rhs_tag = right.tag();
        // if lhs_tag != rhs_tag {
        //     return Object::null();
        // }
        //
        // match lhs_tag as u16 {
        //     INT_CLASS_ID => {
        //         // if right.extract_i64().is_zero() {
        //         //     return left.extract_i64().is_zero().into();
        //         // }
        //         let math = left.extract_i64().checked_rem(right.extract_i64());
        //         if let Some(int) = math {
        //             return Object::from_i1(int == 0);
        //         }
        //     }
        //     FLOAT_CLASS_ID => {
        //         // if right.extract_f64().is_zero() {
        //         //     return left.extract_i64().is_zero().into();
        //         // }
        //
        //         let math = left.extract_f64() % right.extract_f64();
        //         if !math.is_infinite() {
        //             return Object::from_i1(math == 0.0);
        //         }
        //     }
        //     _ => return Object::null(),
        // }
        // Object::null()
    }

    #[export_name = "evolve.intrinsic2.zero?"]
    #[inline(always)]
    const fn evolve_intrinsic_zero(value: Object) -> Object {
        let tag = value.tag();
        match tag as u16 {
            INT_CLASS_ID => Object::from_i1(value.extract_i64() == 0),
            FLOAT_CLASS_ID => Object::from_i1(value.extract_f64() == 0.0),
            _ => Object::intrinsic_fail(),
        }
    }

    // fn match_helper(lhs: Object, rhs: Object) -> EvolveClassId {
    //     let lhs_class_id = lhs.class_id();
    //     let rhs_class_id = rhs.class_id();
    //     if lhs_class_id == rhs_class_id {
    //         lhs_class_id
    //     } else {
    //         0
    //     }
    // }

    // #[no_mangle]
    // #[inline(always)]
    // pub fn evolve_intrinsic_eq(left: Object, right: Object) -> Object {
    //     match (left.class_id(), right.class_id()) {
    //         (INT_CLASS_ID, INT_CLASS_ID) => {
    //             let x = left.extract_i64() == right.extract_i64();
    //             x.into()
    //         }
    //         (FLOAT_CLASS_ID, FLOAT_CLASS_ID) => {
    //             let x = evolve_f64_eq(left.extract_f64(), right.extract_f64());
    //             x.into()
    //         }
    //         (STRING_CLASS_ID, STRING_CLASS_ID) => {
    //             let x = evolve_string_bytes_eq(left.extract_str(), right.extract_str());
    //             x.into()
    //         }
    //         (_, _) => Object::null(),
    //     }
    // }
}

mod loops {
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
    #[export_name = "evolve.intrinsic2.times!"]
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
    #[export_name = "evolve.intrinsic2.upto!"]
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
    #[export_name = "evolve.intrinsic2.downto!"]
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
    #[export_name = "evolve.intrinsic2.loop!"]
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
    #[export_name = "evolve.intrinsic2.step!"]
    #[inline(always)]
    fn evolve_intrinsic2_step(
        this: Object,
        limit: Object,
        step: Object,
        closure: Object,
    ) -> Object {
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
}
