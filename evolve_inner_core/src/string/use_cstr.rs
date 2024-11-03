use alloc::borrow::Cow;
use alloc::ffi::CString;
use alloc::string::String;
use core::ffi::CStr;
use core::ops::Deref;
use crate::leak::leak_heap_ref;
use crate::object::Object;
use crate::object_from::evolve_from_string;

#[no_mangle]
extern "Rust" fn new_string(value: &CStr) -> Object {
    value.into()
}

/// create object from &str - assumed to be already leaked
impl From<&str> for Object {
    fn from(s: &str) -> Self {
        // let bytes = s.as_bytes();
        // slice_from_raw_parts(bytes.as_ptr(), bytes.len());
        // evolve_from_string(s.len() as u32, s.as_ptr() as *const _)
        let c_string = CString::new(s);
        match c_string {
            Ok(ok) => ok.into(),
            Err(_) => Object::default(),
        }
    }
}

impl From<Cow<'_, str>> for Object {
    fn from(value: Cow<'_, str>) -> Self {
        // value.to_string().into()
        // let x = value.as_str()
        // let result = CString::new(value);
        value.as_str().into()
    }
}

impl From<&CStr> for Object {
    fn from(s: &CStr) -> Self {
        evolve_from_string(s.count_bytes() as u32, s.as_ptr())
    }
}

impl From<CString> for Object {
    fn from(s: CString) -> Object {
        let x = leak_heap_ref(s);
        x.as_c_str().into()
    }
}

impl From<String> for Object {
    fn from(s: String) -> Object {
        let leaked = s.leak();
        leaked.deref().into()
        // evolve_from_string(leaked.len() as u32, leaked.as_ptr() as _)
    }
}

impl From<Object> for &str {
    fn from(val: Object) -> &'static str {
        val.evolve_extract_rust_cstr().to_str().unwrap()
    }
}

#[cfg(test)]
mod tests {
    #[test]
    fn test_from_cstr() {
        let hello = c"Hello World";
        assert_eq!(11, hello.count_bytes());
        assert_eq!(11, unsafe { libc::strlen(hello.as_ptr()) });

        let hello2 = Object::from(hello);

        // println!("{:?}", hello2);
        assert_eq!(hello, hello2.evolve_extract_rust_cstr());
    }
}