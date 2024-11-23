use core::fmt::{Debug, Formatter};

use crate::class_ids::*;
use crate::object::Object;

impl Debug for Object {
    fn fmt(&self, f: &mut Formatter<'_>) -> core::fmt::Result {
        let mut common = f.debug_struct("Object");
        //let common = binding;

        let more = match self.class_id() {
            NULL_CLASS_ID => common.field("NULL", &self.extract_ptr()),
            FALSE_CLASS_ID => common.field("FALSE", &self.extract_ptr()),
            TRUE_CLASS_ID => common.field("TRUE", &self.extract_ptr()),
            APP_CLASS_ID => common
                .field("APP", &self.extract_ptr())
                .field("argc", &self.aux()),
            POINTER_CLASS_ID => common.field("POINTER", &self.extract_ptr()),
            STRING_CLASS_ID => common.field("STRING", &self.evolve_extract_rust_cstr()),
            INT_CLASS_ID => common.field("I64", &self.extract_i64()),
            FLOAT_CLASS_ID => common.field("F64", &self.extract_f64()),
            TUPLE_CLASS_ID => common
                .field("TUPLE", &self.extract_ptr())
                .field("size", &self.aux())
                .field("[1]", &self.tuple_get(1))
                .field("[2]", &self.tuple_get(2)),
            CLOSURE_CLASS_ID => common
                .field("CLOSURE", &self.extract_ptr())
                .field("size", &self.closure_size()),
            // 7 => {
            //     let rust_str = evolve_regex_to_rust_str(self.regex_ptr());
            //     common.field("regex", &rust_str.to_string())
            // },
            _ => common
                .field("class_id", &self.class_id())
                .field("aux", &self.aux())
                .field("ptr", &self.extract_ptr()),
        };
        more.finish()
    }
}
