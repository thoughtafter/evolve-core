use crate::class_ids::EVOLVE_FAILED_INTRINSIC_ID;
use crate::object::Object;

impl Object {
    const fn intrinsic_fail() -> Self {
        Self::static_class(EVOLVE_FAILED_INTRINSIC_ID)
    }

    #[unsafe(export_name = "evolve.core.intrinsic.win?")]
    pub(crate) const fn is_intrinsic_win(self) -> bool {
        self.tag() != EVOLVE_FAILED_INTRINSIC_ID as u64
    }
}

#[unsafe(export_name = "evolve.intrinsic2.class_id")]
pub const fn evolve_intrinsic_class_id(value: Object) -> u64 {
    value.class_id() as u64
}

#[unsafe(export_name = "evolve.intrinsic2.is?")]
pub const fn evolve_intrinsic_is(left: Object, right: Object) -> bool {
    left.is_same(right)
}

#[unsafe(export_name = "evolve.intrinsic2.is_not?")]
pub const fn evolve_intrinsic_is_not(left: Object, right: Object) -> bool {
    !left.is_same(right)
}

#[unsafe(export_name = "evolve.intrinsic2.true?")]
pub const fn evolve_intrinsic_is_true(value: Object) -> bool {
    value.is_true()
}

#[unsafe(export_name = "evolve.intrinsic2.false?")]
pub const fn evolve_intrinsic_is_false(value: Object) -> bool {
    !value.is_true()
}

mod indexable {
    use crate::array::evolve_array_get;
    use crate::class_ids::{ARRAY_CLASS_ID, INT_CLASS_ID, TUPLE_CLASS_ID};
    use crate::object::Object;

    #[unsafe(export_name = "evolve.intrinsic2.get")]
    fn evolve_intrinsic_get(value: Object, index: Object) -> Object {
        if index.tag() != u64::from(INT_CLASS_ID) {
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
    #[unsafe(export_name = "evolve.intrinsic2.call!")]
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
    use crate::class_ids::{FLOAT_CLASS_ID, INT_CLASS_ID};
    use crate::f64::evolve_f64_fptosi_checked;
    use crate::llvm::evolve_llvm_sitofp;
    use crate::object::Object;

    #[unsafe(export_name = "evolve.intrinsic2.to_i")]
    // TODO: const
    pub fn evolve_intrinsic_to_i(value: Object) -> Object {
        let tag = value.tag();
        match tag as u16 {
            INT_CLASS_ID => value,
            FLOAT_CLASS_ID => {
                let fptosi = evolve_f64_fptosi_checked(*value.extract_f64());
                if fptosi.1 {
                    Object::intrinsic_fail()
                } else {
                    Object::from_i64(fptosi.0)
                }
            }
            _ => Object::intrinsic_fail(),
        }
    }

    #[unsafe(export_name = "evolve.intrinsic2.to_f")]
    pub const fn evolve_intrinsic_to_f(value: Object) -> Object {
        let tag = value.tag();
        match tag as u16 {
            INT_CLASS_ID => Object::from_f64(evolve_llvm_sitofp(value.extract_i64())),
            FLOAT_CLASS_ID => value,
            _ => Object::intrinsic_fail(),
        }
    }

    // #[unsafe(export_name = "evolve.intrinsic2.to_s")]
    //     // pub const fn evolve_intrinsic_to_s(value: Object) -> Object {
    //     let tag = value.tag();
    //     match tag as u16 {
    //         STRING_CLASS_ID => value,
    //         _ => Object::intrinsic_fail(),
    //     }
    // }
}

pub mod cmp;
mod loops;
mod math;
