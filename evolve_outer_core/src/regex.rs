// TODO: needs allocation setup
mod regex {
    use libc_print::libc_println;
    use libc_print::std_name::println;
    // use libc::write;
    use evolve_inner_core::allocates::{copy_to_heap_and_leak, str_to_safe_object};
    use evolve_inner_core::class_ids::REGEX_CLASS_ID;
    use evolve_inner_core::object::{evolve_build_ptr, evolve_core_build_null, Object, Ptr};
    use regex::Regex;
    // use evolve_inner_core::import_export::evolve_extract_i64;
    // use evolve_inner_core::string::evolve_from_string;

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
                libc_println!("created regex from: {} to {}", string, regex_ok);
                let ptr = copy_to_heap_and_leak(regex_ok);
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

        // TODO: deal with dropping
        #[no_mangle]
        extern "Rust" fn evolve_regex_to_s2(self) -> Object {
            let re = self.regex();
            let str = re.as_str();
            // let leak = Box::leak(Box::new(re));
            // let raw = Box::into_raw(Box::new(str));
            // let danger = unsafe { *raw };
            // let raw = copy_to_heap_and_leak(str);
            // let danger = unsafe { *raw }.as_ptr();
            // evolve_from_string(str.len() as u32, danger)
            str_to_safe_object(str)
        }
    }

    #[no_mangle]
    extern "Rust" fn evolve_regex_replace(regex: &Regex, haystack: &str, replacer: &str) -> Object {
        libc_println!(
            "regex replace: regex: {} haystack: {} replacer: {}",
            regex.as_str(),
            haystack,
            replacer
        );
        let x = regex.replace_all(haystack, replacer);
        //let y = copy_to_heap_and_leak(x.as_ref());
        // let y = Box::new(x);
        // let z = Box::leak(y);
        //
        //unsafe { *y }.into()
        let y = x.as_ref();
        str_to_safe_object(y)
    }

    #[cfg(test)]
    mod tests {
        use super::*;
        use alloc::boxed::Box;
        use libc_print::std_name::println;

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
    }

    #[test]
    fn test_regex_contruction() {
        Regex::new(r"\s").expect("should work");
        // assert!(Regex::new(r"\s").is_ok());
        // assert!(Regex::new("\\s").is_ok());
    }
}
