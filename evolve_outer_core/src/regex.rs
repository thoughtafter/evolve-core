use alloc::vec::Vec;
use evolve_inner_core::class_ids::REGEX_CLASS_ID;
use evolve_inner_core::leak::leak_heap_ptr;
use evolve_inner_core::object::{evolve_build_ptr, evolve_core_build_null, Object, Ptr};
use libc_print::libc_println;
use regex::Regex;

#[allow(dead_code)]
trait RegexExt {
    fn regex(self) -> &'static Regex;
    extern "Rust" fn evolve_regex_has_match(self, string: &str) -> bool;
    extern "Rust" fn evolve_regex_to_s2(self) -> Object;
}

// TODO: deal with dropping
#[no_mangle]
extern "Rust" fn evolve_regex_from_string(string: &str) -> Object {
    let regex = Regex::new(string);
    match regex {
        Ok(regex_ok) => {
            // libc_println!("created regex from: {} to {}", string, regex_ok);
            let ptr = leak_heap_ptr(regex_ok);
            evolve_build_ptr(REGEX_CLASS_ID, 0, ptr as Ptr)
        }
        Err(e) => {
            libc_println!("regex fail: {} {}", string, e);

            evolve_core_build_null()
        }
    }
}

impl RegexExt for Object {
    /// get regex reference from object
    fn regex(self) -> &'static Regex {
        self.to_ref::<Regex>()
    }

    /// see if regex matches string
    #[no_mangle]
    extern "Rust" fn evolve_regex_has_match(self, string: &str) -> bool {
        self.regex().is_match(string)
    }

    #[no_mangle]
    extern "Rust" fn evolve_regex_to_s2(self) -> Object {
        let re = self.regex();
        let str = re.as_str();
        str.into()
    }
}

fn evolve_regex_match_raw<'a>(regex: &Regex, string: &'a str) -> Vec<&'a str> {
    // let vec = regex
    //     .find_iter(string)
    //     .map(|re| Object::from(re.as_str()))
    //     .collect::<Vec<_>>();
    // vec.into()

    let captures = regex.captures(string);

    if let Some(captures) = captures {
        let matches = captures.iter().flatten().collect::<Vec<_>>();
        let strs = matches.iter().map(|c| c.as_str()).collect::<Vec<_>>();
        strs
    } else {
        [].into()
    }
}

// fn match_objects(regex: &Regex, string: &str) -> Vec<Object> {
//     evolve_regex_match_raw(regex, string)
//         .iter()
//         .map({ |s| Object::from(*s) })
//         .collect()
// }

#[no_mangle]
extern "Rust" fn evolve_regex_match(regex: &Regex, string: &str) -> Object {
    evolve_regex_match_raw(regex, string).into()
}

#[no_mangle]
extern "Rust" fn evolve_regex_replace(regex: &Regex, haystack: &str, replacer: &str) -> Object {
    let replaced = regex.replace_all(haystack, replacer);
    replaced.into()
}

#[cfg(test)]
mod tests {
    use super::*;
    use alloc::boxed::Box;
    use alloc::string::String;
    use alloc::vec;
    use libc_print::std_name::println;
    use test_case::test_case;

    #[test]
    fn test_lowlevel() {
        let re = Regex::new(r"[aeiou]").unwrap();
        assert_eq!("[aeiou]", re.as_str());

        let boxed = Box::new(re);
        assert_eq!("[aeiou]", boxed.as_str());

        let leaked = Box::leak(boxed);
        assert_eq!("[aeiou]", leaked.as_str());

        let x = &*leaked as *const Regex;
        // assert_eq!("[aeiou]", unsafe {*x}.as_str());

        assert!(!x.is_null())
    }

    #[test]
    fn test_re() {
        let re_str = "[aeiou]";
        let re = evolve_regex_from_string(re_str);
        // assert_eq!(768, unsafe { ALLOCS.load(Relaxed) });
        println!("\n{:?}\n", re);
        assert_eq!(
            re_str,
            // evolve_regex_to_rust_str(re.evolve_extract_ptr() as *const Regex)
            re.regex().as_str()
        );

        let s = re.evolve_regex_to_s2();
        println!("\n{:?}\n", s);
        assert_eq!(re_str, Into::<&str>::into(s))
    }
    #[test]
    fn test_regex_construction() {
        Regex::new(r"\s").expect("should work");
        // assert!(Regex::new(r"\s").is_ok());
        // assert!(Regex::new("\\s").is_ok());
    }

    // #[test]
    // fn test_regex_match_objects() {
    //     // let re_str = "[aeiou]";
    //     //let re = evolve_regex_from_string(re_str);
    //     //let matches = re.evolve_regex_match("Hello World");
    //     let re = Regex::new(r"[aeiou]").expect("should work");
    //     let matches = match_objects(&re, "Hello World");
    //     println!("\n{:?}\n", matches);
    //     assert_eq!(matches.len(), 3);
    //     assert_eq!(c"e", matches[0].evolve_extract_rust_cstr());
    //     assert_eq!(c"o", matches[1].evolve_extract_rust_cstr());
    //     assert_eq!(c"o", matches[2].evolve_extract_rust_cstr());
    //     // assert_eq!(matches, vec!["Hello World"].into());
    // }

    //    let matches = evolve_regex_match(&re, "Hello World");

    #[test]
    fn test_regex_captures() {
        let re_str = r"(.)(.)(\d+)(\d)";
        let re = Regex::new(re_str).expect("should work");
        let result = re.captures("THX1138.");
        assert!(result.is_some());
        let result = result.unwrap();
        assert_eq!(5, result.len());
        let strs: Vec<_> = result.iter().flatten().map({ |a| a.as_str() }).collect();
        assert_eq!(vec!["HX1138", "H", "X", "113", "8"], strs);

        // assert_equal!(["HX1138", "H", "X", "113", "8"], :r"(.)(.)(\d+)(\d)".match("THX1138."))
    }

    #[test_case(
        r"(.)(.)(\d+)(\d)",
        "THX1138."
        => vec!["HX1138", "H", "X", "113", "8"];
        "test 1"
    )]
    fn test_regex_match_raw<'a>(re_str: &str, haystack: &'a str) -> Vec<&'a str> {
        let re = Regex::new(re_str).expect("should work");
        evolve_regex_match_raw(&re, haystack)
    }
}
