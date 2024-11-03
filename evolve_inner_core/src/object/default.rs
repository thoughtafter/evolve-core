use super::Object;

const EVOLVE_STATIC_NULL: &Object = &Object::null();

impl Default for Object {
    fn default() -> Self {
        // Self::null()
        *EVOLVE_STATIC_NULL
    }
}

impl Default for &Object {
    fn default() -> Self {
        EVOLVE_STATIC_NULL
    }
}
