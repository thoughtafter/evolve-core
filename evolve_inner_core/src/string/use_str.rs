use crate::object::Object;
use crate::object_from::evolve_from_string;
use alloc::borrow::Cow;
use alloc::string::{String, ToString};
use core::str::from_raw_parts;

#[no_mangle]
extern "Rust" fn new_string(value: &str) -> Object {
    value.into()
}

// #[no_mangle]
// pub const fn evolve_extract_rust_str<'a>(self) -> &'a str {
//     let len = self.evolve_core_aux();
//     let ptr = self.evolve_extract_ptr();
//     unsafe { from_raw_parts(ptr, len as usize) }
//     // unsafe { core::slice::from_raw_parts(ptr, len as usize)  }
// }

impl From<Object> for &str {
    fn from(value: Object) -> &'static str {
        let len = value.aux();
        let ptr = value.extract_ptr();
        unsafe { from_raw_parts(ptr, len as usize) }
    }
}

/// create object from &str
impl From<&str> for Object {
    fn from(value: &str) -> Self {
        // let bytes = s.as_bytes();
        // slice_from_raw_parts(bytes.as_ptr(), bytes.len());
        // evolve_from_string(s.len() as u32, s.as_ptr() as *const _)
        // let leaked = value.to_owned().leak().as_str();
        // evolve_from_string(leaked.len() as u32, leaked.as_ptr() as *const _)
        value.to_string().into()
    }
}

impl From<String> for Object {
    fn from(s: String) -> Self {
        let leaked = s.leak();
        // leaked.deref().into()
        evolve_from_string(leaked.len() as u32, leaked.as_ptr() as _)
    }
}

impl From<Object> for String {
    fn from(value: Object) -> Self {
        let x: &str = value.into();
        x.into()
    }
}

impl From<Cow<'_, str>> for Object {
    fn from(value: Cow<'_, str>) -> Self {
        value.to_string().into()
        // let x = value.as_str()
        // let result = CString::new(value);
        // value.as_str().into()
    }
}
