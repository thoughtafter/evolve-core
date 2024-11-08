mod bool {
    use crate::class_ids::{FALSE_CLASS_ID, TRUE_CLASS_ID};
    use crate::object::Object;

    impl Object {
        #[export_name = "evolve_build_true"]
        #[inline(always)]
        const fn build_true() -> Self {
            Self::static_class(TRUE_CLASS_ID)
        }

        #[export_name = "evolve_build_false"]
        const fn build_false() -> Self {
            Self::static_class(FALSE_CLASS_ID)
        }

        // TODO: this generates possibly suboptimal code
        // assembly looks good
        // evolve_from_i1:
        // .cfi_startproc
        // movl	%edi, %eax
        // leaq	4(,%rax,2), %rax
        // xorl	%edx, %edx
        // retq
        // #[no_mangle]
        // pub const fn evolve_from_i1(value: bool) -> Object {
        //     if value {
        //         evolve_build_true()
        //     } else {
        //         evolve_build_false()
        //     }
        //
        //     // let class_id = if value {
        //     //     TRUE_CLASS_ID
        //     // } else {
        //     //     FALSE_CLASS_ID
        //     // };
        //     // Object::static_class(class_id)
        // }

        #[export_name = "evolve_from_i1"]
        #[inline(always)]
        pub(crate) const fn from_i1(value: bool) -> Self {
            if value {
                Object::build_true()
            } else {
                Object::build_false()
            }
        }

        #[export_name = "evolve.core.true?"]
        #[inline(always)]
        /// truthy value of object
        /// can use tag because u64 comparison and no falsy value currently uses aux4
        pub(crate) const fn is_true(self) -> bool {
            self.tag() >= Object::build_true().tag()
        }
    }

    impl From<bool> for Object {
        fn from(value: bool) -> Self {
            Object::from_i1(value)
        }
    }

    impl From<Object> for bool {
        fn from(val: Object) -> bool {
            val.is_true()
        }
    }
}

mod ptr {
    use crate::class_ids::POINTER_CLASS_ID;
    use crate::object::{Object, Ptr, PtrMut};

    impl Object {
        #[inline(always)]
        #[export_name = "evolve_from_ptr"]
        pub(crate) const fn from_ptr(value: Ptr) -> Object {
            Object::new(POINTER_CLASS_ID, value)
        }

        /// extract ptr value
        #[export_name = "evolve.extract.ptr"]
        #[inline(always)]
        pub const fn extract_ptr(self) -> Ptr {
            self.ptr
        }

        pub const fn extract_ptr_mut(self) -> PtrMut {
            self.ptr as *mut u8
        }
    }

    impl From<Ptr> for Object {
        fn from(value: Ptr) -> Self {
            Object::from_ptr(value)
        }
    }

    impl From<Object> for Ptr {
        fn from(value: Object) -> Self {
            value.extract_ptr()
        }
    }
}

mod i64 {
    use crate::class_ids::INT_CLASS_ID;
    use crate::object::{Object, Ptr};
    use core::intrinsics::transmute;

    impl Object {
        #[export_name = "evolve_from_i64"]
        #[inline(always)]
        // needed by tuple
        pub const fn from_i64(value: i64) -> Object {
            Object::new(INT_CLASS_ID, value as Ptr)
        }

        #[allow(ptr_to_integer_transmute_in_consts)]
        pub const fn extract_i64(self) -> i64 {
            unsafe { transmute(self.ptr) }
        }
    }

    impl From<i64> for Object {
        fn from(value: i64) -> Self {
            Object::from_i64(value)
        }
    }

    impl From<Object> for i64 {
        /// extract ptr value as i64
        #[export_name = "evolve.extract.i64"]
        #[inline(always)]
        fn from(value: Object) -> i64 {
            value.extract_i64()
        }
    }
}

mod f64 {
    use crate::class_ids::FLOAT_CLASS_ID;
    use crate::object::{Object, Ptr};
    use ordered_float::OrderedFloat;

    impl Object {
        #[export_name = "evolve_from_f64"]
        #[inline(always)]
        pub(crate) const fn from_f64(value: f64) -> Object {
            Object::new(FLOAT_CLASS_ID, value.to_bits() as Ptr)
        }

        pub const fn extract_f64(self) -> f64 {
            f64::from_bits(self.extract_i64() as u64)
        }

        pub const fn extract_o64(self) -> OrderedFloat<f64> {
            OrderedFloat(self.extract_f64())
        }
    }

    impl From<f64> for Object {
        fn from(value: f64) -> Self {
            Object::from_f64(value)
        }
    }

    impl From<Object> for f64 {
        /// extract ptr value as f64
        #[export_name = "evolve.extract.f64"]
        #[inline(always)]
        fn from(value: Object) -> f64 {
            f64::from_bits(value.ptr as u64)
        }
    }
}
