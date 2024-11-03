// no_std to stay lean
#![no_std]
// needed for literal arrays can be pushed to when capacity is known
#![feature(extend_one_unchecked)]
// additional features
#![feature(unbounded_shifts)]
#![feature(str_as_str)]
#![feature(cstr_bytes)]
#![feature(str_from_raw_parts)]
// alloc is needed for array, string, leak
extern crate alloc;

pub mod array;
pub mod class_ids;
pub mod f64;
mod gmp_mpfr;
mod i64;
mod intrinsic;
pub mod leak;
mod llvm;
mod mem;
mod misc;
pub mod object;
mod string;
// for testing optimizations
// mod testing;

pub mod object_from {
    use crate::class_ids::{POINTER_CLASS_ID, STRING_CLASS_ID};
    use crate::object::{Object, Ptr};
    use core::ffi::c_char;

    // TODO: this generates possibly suboptimal code
    // assembly looks good
    // evolve_from_i1:
    // .cfi_startproc
    // movl	%edi, %eax
    // leaq	4(,%rax,2), %rax
    // xorl	%edx, %edx
    // retq
    // #[no_mangle]
    // pub const extern "Rust" fn evolve_from_i1(value: bool) -> Object {
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

    // #[no_mangle]
    // pub const extern "Rust" fn evolve_from_i64(value: i64) -> Object {
    //     Object::new(INT_CLASS_ID, value as Ptr)
    // }

    // #[no_mangle]
    // pub const extern "Rust" fn evolve_from_f64(value: f64) -> Object {
    //     Object::new(FLOAT_CLASS_ID, value.to_bits() as Ptr)
    // }

    #[no_mangle]
    pub const extern "Rust" fn evolve_from_ptr(value: Ptr) -> Object {
        Object::new(POINTER_CLASS_ID, value)
    }

    #[no_mangle]
    pub const extern "Rust" fn evolve_from_string(len: u32, ptr: *const c_char) -> Object {
        Object::with_aux(STRING_CLASS_ID, len, ptr as Ptr)
    }

    // pricey - can't be From in outer, but maybe change to helper function instead
    mod vecs {
        use crate::array::EvolveArray;
        use crate::class_ids::ARRAY_CLASS_ID;
        use crate::leak::leak_heap_ptr;
        use crate::object::{Object, Ptr};
        use alloc::string::String;
        use alloc::vec::Vec;

        impl From<Vec<String>> for Object {
            fn from(value: Vec<String>) -> Self {
                value
                    .into_iter()
                    .map(Object::from)
                    .collect::<Vec<_>>()
                    .into()
            }
        }

        impl From<Vec<&str>> for Object {
            fn from(value: Vec<&str>) -> Self {
                value
                    .into_iter()
                    .map(Object::from)
                    .collect::<Vec<_>>()
                    .into()
            }
        }

        impl From<Vec<Object>> for Object {
            fn from(value: Vec<Object>) -> Self {
                EvolveArray::from(value).into()
            }
        }

        impl From<EvolveArray> for Object {
            fn from(value: EvolveArray) -> Self {
                let ptr = leak_heap_ptr(value);
                Object::new(ARRAY_CLASS_ID, ptr as Ptr)
            }
        }
    }

    #[cfg(test)]
    mod tests {
        use super::*;
        use test_case::test_case;

        #[test_case(i64::MAX)]
        #[test_case(i64::MIN)]
        #[test_case(0)]
        fn test_i64(test_case: i64) {
            assert_eq!(test_case, Object::from(test_case).extract_i64());
            let x: i64 = Object::from(test_case).into();
            assert_eq!(test_case, x);
        }

        #[test_case(f64::MAX)]
        #[test_case(f64::MIN)]
        #[test_case(f64::INFINITY)]
        #[test_case(0.0)]
        fn test_f64(test_case: f64) {
            assert_eq!(test_case, Object::from(test_case).extract_f64());
            assert_eq!(-test_case, Object::from(-test_case).extract_f64());

            let x: f64 = Object::from(test_case).into();
            assert_eq!(test_case, x);

            let x: f64 = Object::from(-test_case).into();
            assert_eq!(-test_case, x);
        }

        #[test]
        fn test_f64_nan() {
            assert!(Object::from(f64::NAN).extract_f64().is_nan());
        }

        #[test]
        fn test_string() {
            // let hello = "Hello World\0";
            // let hello2 = c"Hello World";
            // assert_eq!(hello.bytes(), hello2.bytes());
            // let hello2 = evolve_from_string(hello.len() as u32, hello.as_ptr());
            //
            // // println!("{:?}", hello2);
            // assert_eq!(hello, hello2.evolve_extract_rust_str());
        }
    }
}

mod object_debug {
    use crate::class_ids::{FLOAT_CLASS_ID, INT_CLASS_ID, STRING_CLASS_ID};
    use crate::object::{evolve_build_ptr, EvolveAuxData, EvolveClassId, Object, Ptr};
    use core::fmt::{Debug, Formatter};
    use libc_print::libc_println;

    impl Debug for Object {
        fn fmt(&self, f: &mut Formatter<'_>) -> core::fmt::Result {
            let mut binding = f.debug_struct("Object");
            let common = binding
                .field("class_id", &self.class_id())
                .field("aux", &self.aux())
                .field("ptr", &self.extract_ptr());

            let more = match self.class_id() {
                STRING_CLASS_ID => common.field("string", &self.evolve_extract_rust_cstr()),
                INT_CLASS_ID => common.field("i64", &self.extract_i64()),
                FLOAT_CLASS_ID => common.field("f64", &self.extract_f64()),
                // 7 => {
                //     let rust_str = evolve_regex_to_rust_str(self.regex_ptr());
                //     common.field("regex", &rust_str.to_string())
                // },
                _ => common,
            };
            more.finish()
        }
    }

    #[no_mangle]
    extern "Rust" fn object_debug2(class_id: u64, aux4: u64, data: u64) {
        let object = evolve_build_ptr(
            class_id as EvolveClassId,
            aux4 as EvolveAuxData,
            data as Ptr,
        );
        libc_println!("{:?}", object);
    }
}

mod bool {
    use crate::object::Object;
    // #[no_mangle]
    // unsafe extern "Rust"  fn evolve_build_false2() -> Object {
    //     Object::static_class(FalseClassId as u16)
    // }

    impl Object {
        #[no_mangle]
        pub(crate) extern "Rust" fn evolve_core_is_true(self) -> bool {
            self.class_id() >= Object::build_true().class_id()
        }

        #[no_mangle]
        pub extern "Rust" fn evolve_core_is_false(self) -> bool {
            !self.evolve_core_is_true()
        }

        #[no_mangle]
        extern "Rust" fn evolve_intrinsic_true(self) -> Object {
            self.evolve_core_is_true().into()
        }

        #[no_mangle]
        extern "Rust" fn evolve_intrinsic_false(self) -> Object {
            self.evolve_core_is_false().into()
        }
    }
}

// #[no_mangle]
// extern "Rust" fn test_str() -> &'static str {
//     "This"
// }

// #[cfg(not(test))]
// #[panic_handler]
// fn panic(_info: &core::panic::PanicInfo) -> ! {
//     unsafe { libc::abort(); }
// }

// #[no_mangle]
//  extern "Rust" fn evolve_build_ptr_rust(class_id: u32, aux4: u32, ptr: *const u64) -> (u64, *const u64) {
//     (((class_id as u64) << 32) | aux4 as u64, ptr)
// }

// #[no_mangle]
//  extern "C" fn evolve_build_i64_c(i: usize) -> Object {
//     Object {
//         tag: 4,
//         ptr: i as *const i64,
//     }
// }
// #[no_mangle]
//  extern "C" fn evolve_extract_i64_c(o: Object) -> usize {
//     o.ptr.addr()
// }

// #[no_mangle]
// extern "C" fn call_from_c() {
//     println!("Just called a Rust function from C!");
// }
//
// #[no_mangle]
// extern "Rust" fn call_from_rust() {
//     println!("Just called a Rust function from C!");
// }

mod time {
    use libc::timespec;

    fn timespec_to_f64(ts: timespec) -> f64 {
        ts.tv_sec as f64 + (ts.tv_nsec as f64 * 1e-9)
    }

    #[no_mangle]
    extern "Rust" fn evolve_posix_clock_monotonic() -> f64 {
        let mut x = timespec {
            tv_sec: 0,
            tv_nsec: 0,
        };

        unsafe {
            libc::clock_gettime(libc::CLOCK_MONOTONIC, &mut x);
        }
        timespec_to_f64(x)
    }
}

#[cfg(test)]
mod tests {
    use crate::class_ids::INT_CLASS_ID;
    use crate::object::{EvolveClassId, Object};
    // use test_case;

    #[test]
    #[ignore]
    fn test_evolve_core_class() {
        let i = Object::from(42);
        assert_eq!(INT_CLASS_ID, i.class_id());

        let i_class_x1 = i.class();
        assert_eq!(INT_CLASS_ID - 1, i_class_x1.class_id());

        let i_class_x2 = i_class_x1.class();
        assert_eq!(65534, i_class_x2.class_id());
        assert_eq!(INT_CLASS_ID - 1, i_class_x2.extract_i64() as EvolveClassId);

        let i_class_x3 = i_class_x2.class();
        assert_eq!(65534, i_class_x3.class_id());
        assert_eq!(65534, i_class_x3.extract_i64());

        let i_class_x4 = i_class_x3.class();
        assert_eq!(65534, i_class_x4.class_id());
        assert_eq!(65534, i_class_x4.extract_i64());
    }

    #[test]
    fn test_object_from_str() {
        let str = "HELLO";
        let o = Object::from(str);
        let x: &str = o.into();
        assert_eq!(str, x);
    }

    // #[test]
    // fn test_object_from_string() {
    //     let str = "HELLO";
    //     let string = str.to_owned();
    //     let o = Object::from(string);
    //     assert_eq!(str, o.string_str());
    // }

    // #[test]
    // fn test_object_from_cow_str() {
    //     let str = "HELLO";
    //     let o = Object::from(Cow::from(str));
    //     assert_eq!(str, o.string_str());
    // }
}
