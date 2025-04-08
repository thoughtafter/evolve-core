use super::*;
use test_case::test_case;

use Ordering::*;
use alloc::borrow::ToOwned;
use alloc::boxed::Box;
use alloc::ffi::CString;
use alloc::string::{String, ToString};

#[test]
fn test_lowlevel() {
    let str = "evolve";
    let x = str;
    assert_eq!(str.as_ptr(), x.as_ptr());

    // cloning the reference
    // let clone = str.clone();
    // assert_eq!(str.as_ptr(), clone.as_ptr());

    // new but dropped
    let string = str.to_string();
    assert_ne!(str.as_ptr(), string.as_str().as_ptr());

    // new but dropped
    let owned = str.to_owned();
    assert_ne!(str.as_ptr(), owned.as_str().as_ptr());

    // boxed, raw, box duplicates reference
    let raw = Box::into_raw(Box::new(str));
    assert_eq!(str.as_ptr(), unsafe { *raw }.as_ptr());

    // to_string + leak
    let string = str.to_string();
    let save = string.as_str().as_ptr();
    assert_ne!(str.as_ptr(), save);
    let box_string = Box::new(string);
    assert_eq!(save, box_string.as_ptr());
    let leak_string = Box::leak(box_string);
    assert_eq!(save, leak_string.as_ptr());
    assert_ne!(str.as_ptr(), leak_string.as_str().as_ptr());

    // to_owned + leak
    let owned = str.to_owned();
    let save = owned.as_str().as_ptr();
    assert_ne!(str.as_ptr(), save);
    let box_string = Box::new(owned);
    assert_eq!(save, box_string.as_ptr());
    let leak_string = Box::leak(box_string);
    assert_eq!(save, leak_string.as_ptr());

    let c_string = CString::new(str).unwrap();
    let _ptr = c_string.as_ptr();
    assert_eq!(str.to_string(), c_string.to_string_lossy());
}

#[test]
fn test_trim_end() {
    // let o = {
    //     let x =
    //     let o = evolve_string_trim_end(x);
    //     x.zeroize();
    //     o
    //  };
    let str = "Hello, world!    ";
    let obj = evolve_string_trim_end(str);
    // let extract = obj.evolve_extract_rust_cstr();
    // assert_eq!(c"Hello, world!", extract);
    let extract = String::from(obj);
    assert_eq!("Hello, world!", extract);
    assert_ne!(obj.extract_ptr(), str.as_ptr());
}

#[test]
fn test_trim_start() {
    // let o = {
    //     let x =
    //     let o = evolve_string_trim_end(x);
    //     x.zeroize();
    //     o
    //  };
    let str = "        Hello, world!";
    let obj = evolve_string_trim_start(str);
    let extract = String::from(obj);
    assert_eq!("Hello, world!", extract);

    // let new_ptr = obj.evolve_extract_ptr();
    // let old_ptr = str.as_ptr();
    // let diff = unsafe {
    //     if new_ptr > old_ptr {
    //         new_ptr.sub_ptr(old_ptr)
    //     } else {
    //         old_ptr.sub_ptr(new_ptr)
    //     }
    // };
    // assert_ne!(8, diff);
    // assert_eq!(8, diff);
}

#[test_case("Hello, world!", Equal, "HEllO, wOrld!")]
#[test_case("11", Less, "12")]
#[test_case("12", Greater, "11")]
fn test_string_cmp(lhs: &str, order: Ordering, rhs: &str) {
    assert_eq!(order, evolve_string_cmp(lhs, rhs))
}

mod parse_f64 {
    use super::super::parse_f64::*;
    use libc_print::libc_println; // tests
    use ordered_float::OrderedFloat;
    use test_case::test_case;

    #[test_case("0", (0.0, false))]
    #[test_case("-0", (-0.0, false); "Negative zero")]
    #[test_case("+1.7976931348623157e+308", (f64::MAX, false))]
    #[test_case("-1.7976931348623157e+308", (f64::MIN, false))]
    #[test_case("+2.2250738585072014e-308", (f64::MIN_POSITIVE, false))]
    fn test_parse_f64_common(value: &str, expected: (f64, bool)) {
        let parsed = string_parse_f64_core(value);
        let strtod_parsed = string_parse_f64_strtod(value);
        let lexical_parsed = string_parse_f64_lexical(value);

        let expected = (OrderedFloat(expected.0), expected.1);

        assert_eq!(expected, strtod_parsed, "strtod");
        assert_eq!(expected, parsed, "native");
        assert_eq!(expected, lexical_parsed, "lexical");
    }

    // This should be true
    #[test_case("word", (0.0, false))]
    // correct, these words are correctly parsed so no overflow or error
    #[test_case("+inf", (f64::INFINITY, false); "pos inf")]
    #[test_case("inf", (f64::INFINITY, false); "inf")]
    #[test_case("-inf", (f64::NEG_INFINITY, false); "neg inf")]
    #[test_case("+infinity", (f64::INFINITY, false); "pos infinity")]
    #[test_case("infinity", (f64::INFINITY, false); "infinity")]
    #[test_case("-infinity", (f64::NEG_INFINITY, false); "neg infinity")]
    #[test_case("+nan", (f64::NAN, false); "pos nan")]
    #[test_case("nan", (f64::NAN, false); "nan")]
    #[test_case("-nan", (f64::NAN, false); "neg nan")]
    // correct pos/neg overflow
    #[test_case("+1e+500", (f64::INFINITY, true); "pos 1e pos 500")]
    #[test_case("1e+500", (f64::INFINITY, true); "1e pos 500")]
    #[test_case("-1e+500", (f64::NEG_INFINITY, true); "neg 1e pos 500")]
    // correct pos/neg underflow
    #[test_case("+1e-500", (0.0, true); "pos 1e neg 500")]
    #[test_case("1e-500", (0.0, true); "1e neg 500")]
    #[test_case("-1e-500", (0.0, true); "neg 1e neg 500")]
    #[test_case("123.123e-567", (0.0, true))]
    fn test_parse_f64_strtod(value: &str, expected: (f64, bool)) {
        let strtod_parsed = string_parse_f64_strtod(value);
        let expected = (OrderedFloat(expected.0), expected.1);
        assert_eq!(expected, strtod_parsed, "strtod");
    }

    #[test_case("word", (f64::NAN, true))]
    #[test_case("+inf", (f64::INFINITY, true); "pos inf")]
    #[test_case("inf", (f64::INFINITY, true); "inf")]
    #[test_case("-inf", (f64::NEG_INFINITY, true); "neg inf")]
    #[test_case("+infinity", (f64::INFINITY, true); "pos infinity")]
    #[test_case("infinity", (f64::INFINITY, true); "infinity")]
    #[test_case("-infinity", (f64::NEG_INFINITY, true); "neg infinity")]
    #[test_case("+nan", (f64::NAN, false); "pos nan")]
    #[test_case("nan", (f64::NAN, false); "nan")]
    #[test_case("-nan", (f64::NAN, false); "neg nan")]
    #[test_case("+1e+500", (f64::INFINITY, true); "pos 1e pos 500")]
    #[test_case("1e+500", (f64::INFINITY, true); "1e pos 500")]
    #[test_case("-1e+500", (f64::NEG_INFINITY, true); "neg 1e pos 500")]
    // Fail at underflow
    #[test_case("+1e-500", (0.0, false); "pos 1e neg 500")]
    #[test_case("1e-500", (0.0, false); "1e neg 500")]
    #[test_case("-1e-500", (0.0, false); "neg 1e neg 500")]
    #[test_case("123.123e-567", (0.0, false))]
    fn test_parse_f64_core_lexical(value: &str, expected: (f64, bool)) {
        let native_parsed = string_parse_f64_core(value);
        let lexical_parsed = string_parse_f64_lexical(value);
        let expected = (OrderedFloat(expected.0), expected.1);
        assert_eq!(expected, native_parsed, "native");
        assert_eq!(expected, lexical_parsed, "lexical");
    }

    #[test]
    fn test_parse_f64_nan() {
        let parsed = string_parse_f64_core("NaN");
        libc_println!("{:?}", parsed);
        assert!(parsed.0.is_nan());
        assert_eq!(parsed.1, false);
    }
}

mod parse_i64 {
    use super::super::parse_i64::*;
    use test_case::test_case;

    #[test]
    fn test_i64_radix() {
        assert_eq!(i64::from_str_radix("A", 16), Ok(10));
        // assert_eq!(i64::from_str_radix("-0xa", 16), Ok(10));
    }

    #[test]
    fn test_evolve_string_parse_i64_hex() {
        assert_eq!((255, false), string_parse_i64_core("0xff", 0));
        assert_eq!((255, false), string_parse_i64_core("+0xff", 0));
        // TODO: assert_eq!((-255, false), evolve_string_parse_i64("-0xff", 0));

        assert_eq!((255, false), string_parse_i64_core("ff", 16));
        assert_eq!((255, false), string_parse_i64_core("+ff", 16));
        assert_eq!((-255, false), string_parse_i64_core("-ff", 16));

        // TODO:
        // assert_eq!((255, false), evolve_string_parse_i64("0xff", 16));
    }

    #[test]
    fn test_evolve_string_parse_i64_bin() {
        assert_eq!((7, false), string_parse_i64_core("111", 2));
        assert_eq!((7, false), string_parse_i64_core("+111", 2));
        assert_eq!((-7, false), string_parse_i64_core("-111", 2));

        // TODO:
        // assert_eq!((7, false), evolve_string_parse_i64("0b111", 0));
        // assert_eq!((7, false), evolve_string_parse_i64("0b111", 2));
    }

    #[test_case((111, false), "111", 10)]
    #[test_case((0, false), "0", 10)]
    #[test_case((0, false), "-0", 10; "neg zero")]
    #[test_case((255, false), "0xff", 0)]
    fn test_parse_i64(expected: (i64, bool), text: &str, radix: u32) {
        // assert_eq!(expected, string_parse_i64_lexical(text, radix), "lexical");
        assert_eq!(expected, string_parse_i64_core(text, radix));
    }
}
