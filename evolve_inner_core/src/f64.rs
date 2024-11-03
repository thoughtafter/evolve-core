use crate::class_ids::FLOAT_CLASS_ID;
use crate::object::{Object, Ptr};
use ordered_float::OrderedFloat;

#[no_mangle]
// https://doc.rust-lang.org/std/primitive.f64.html#method.total_cmp
// was evolve_math_cmp_f64
extern "Rust" fn evolve_f64_cmp(value1: f64, value2: f64) -> i64 {
    // works but slightly slower
    // value1.total_cmp(&value2) as i64

    // performance seems better than total_cmp
    OrderedFloat(value1).cmp(&OrderedFloat(value2)) as i64
}

#[no_mangle]
pub extern "Rust" fn evolve_f64_eq(value1: f64, value2: f64) -> bool {
    OrderedFloat(value1).eq(&OrderedFloat(value2))
}

// #[no_mangle]
// extern "Rust" fn evolve_f64_signum(value: f64) -> i64 {
//     // value.signum() as i64
//     OrderedFloat(value).cmp(&OrderedFloat(0.0)) as i64
// }

// not needed with saturated fptosi
// #[no_mangle]
// extern "Rust" fn evolve_f64_fits_i64(value: f64) -> bool {
//     (value <= i64::MAX as f64) && (value >= i64::MIN as f64)
// }

impl From<f64> for Object {
    #[export_name = "evolve_from_f64"]
    fn from(value: f64) -> Self {
        Object::new(FLOAT_CLASS_ID, value.to_bits() as Ptr)
    }
}

impl From<Object> for f64 {
    #[export_name = "evolve_extract_f64"]
    /// extract ptr value as f64, cannot be const
    fn from(value: Object) -> f64 {
        f64::from_bits(value.extract_ptr() as u64)
    }
}
