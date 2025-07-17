use super::{FLOAT_CLASS_ID, INT_CLASS_ID, Object, STRING_CLASS_ID};
use core::hash::{Hash, Hasher};

impl Hash for Object {
    fn hash<H: Hasher>(&self, state: &mut H) {
        let class_id = self.class_id();
        // libc_println!("Hashing: {}", class_id);
        match class_id {
            STRING_CLASS_ID => {
                self.evolve_extract_rust_cstr().hash(state);
            }
            INT_CLASS_ID => {
                self.extract_i64().hash(state);
            }
            FLOAT_CLASS_ID => {
                self.extract_f64().hash(state);
            }
            _ => {
                // libc_println!("CANNOT HASH THIS TYPE: {}", class_id);
                class_id.hash(state);
            }
        }
        // libc_println!("Done Hashing: {}", class_id);
    }
}
