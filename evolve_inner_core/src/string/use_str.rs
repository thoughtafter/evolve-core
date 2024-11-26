use crate::object::Object;
use alloc::string::String;
// use core::str::from_raw_parts;

#[no_mangle]
fn new_string(value: &str) -> Object {
    // value.into()
    Object::from_str(value)
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
        value.extract_str()
    }
}

/// create object from &str
/// allocates
// impl From<&str> for Object {
//     fn from(value: &str) -> Self {
//         // let bytes = s.as_bytes();
//         // slice_from_raw_parts(bytes.as_ptr(), bytes.len());
//         // evolve_from_string(s.len() as u32, s.as_ptr() as *const _)
//         // let leaked = value.to_owned().leak().as_str();
//         // evolve_from_string(leaked.len() as u32, leaked.as_ptr() as *const _)
//         // value.to_string().into()
//         // Object::from_string(value.len() as u32, value.as_ptr())
//         value.to_owned().into()
//     }
// }

/// create object from &mut str
/// has already been leaked
impl From<&mut str> for Object {
    #[export_name = "from_mut_str_to_object"]
    fn from(value: &mut str) -> Self {
        Object::from_str(value)
    }
}

impl From<String> for Object {
    #[export_name = "from_string_to_object"]
    fn from(s: String) -> Self {
        let leaked = s.leak();
        // leaked.deref().into()
        //Object::from_string(leaked.len() as u32, leaked.as_ptr() as _)
        leaked.into()
    }
}

impl From<Object> for String {
    fn from(value: Object) -> Self {
        let x: &str = value.into();
        x.into()
    }
}

// mod cow {
//     use super::*;
//
//     use alloc::borrow::Cow;
//
//     impl From<Cow<'_, str>> for Object {
//         fn from(value: Cow<'_, str>) -> Self {
//             match value {
//                 Cow::Borrowed(s) => s.to_owned().into(),
//                 Cow::Owned(s) => s.into(),
//             }
//             //value.to_string().into()
//             // let x = value.as_str()
//             // let result = CString::new(value);
//             // value.as_str().into()
//         }
//     }
// }
