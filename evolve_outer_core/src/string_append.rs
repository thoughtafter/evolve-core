// #[export_name = "evolve_string_new_append2"]

use alloc::string::{String, ToString};
use evolve_inner_core::object::Object;

#[allow(dead_code)]
// extra allocations
fn evolve_string_new_append_string_push(string1: &str, string2: &str) -> Object {
    // let mut appended = string1.to_string();
    // appended.push_str(string2);
    // // libc_println!("\"{}\" + \"{}\" == \"{}\"", string1, string2, appended);
    // appended.into()

    // format!("{}{}", string1, string2).into()

    let mut buffer = String::with_capacity(string1.len() + string2.len());
    buffer.push_str(string1);
    buffer.push_str(string2);
    buffer.into()
}

#[allow(dead_code)]
// extra allocations
fn evolve_string_append_format(string1: &str, string2: &str) -> Object {
    use alloc::format;

    format!("{}{}", string1, string2).into()
}

#[allow(dead_code)]
// extra allocations
fn evolve_string_append_concat(string1: &str, string2: &str) -> Object {
    [string1, string2].concat().into()
}

#[allow(dead_code)]
// extra allocations
fn evolve_string_append_plus(string1: &str, string2: &str) -> Object {
    (string1.to_string() + string2).into()
}

#[allow(dead_code)]
// extra allocations
fn evolve_string_append_bytes(string1: &str, string2: &str) -> Object {
    let b1 = string1.as_bytes();
    let b2 = string2.as_bytes();
    let c = [b1, b2].concat();
    unsafe { String::from_utf8_unchecked(c) }.into()
}

#[no_mangle]
fn evolve_string_new_append3(string1: &str, string2: &str, string3: &str) -> Object {
    let capacity = string1.len() + string2.len() + string3.len();
    let mut buffer = String::with_capacity(capacity);
    buffer.push_str(string1);
    buffer.push_str(string2);
    buffer.push_str(string3);
    buffer.into()
}