// no_std to stay lean
#![no_std]

//! for i64 shifts
//! https://github.com/rust-lang/rust/issues/129375
//! looks like it will be in 1.83 or 1.84
#![feature(unbounded_shifts)]

// alloc is needed for array, string, leak
extern crate alloc;

pub mod array;
pub mod class_ids;
pub mod closure;
pub mod leak;
pub mod mem;
pub mod object;

mod f64;
mod i64;
mod intrinsic;
mod llvm;
pub mod string;
mod tuple;
// for testing optimizations
// mod testing;

pub mod object_from {

    // #[no_mangle]
    // pub const fn evolve_from_i64(value: i64) -> Object {
    //     Object::new(INT_CLASS_ID, value as Ptr)
    // }

    // #[no_mangle]
    // pub const fn evolve_from_f64(value: f64) -> Object {
    //     Object::new(FLOAT_CLASS_ID, value.to_bits() as Ptr)
    // }

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
        // TODO: tests in the wrong place
        // use super::*;
        use crate::object::Object;
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
