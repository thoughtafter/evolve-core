use ahash::RandomState;

use evolve_inner_core::array::EvolveArray;
use evolve_inner_core::class_ids::MAP_CLASS_ID;
use evolve_inner_core::leak::leak_heap_ref;
use evolve_inner_core::object::Object;
use indexmap::IndexMap;

type EvolveMap = IndexMap<Object, Object, RandomState>;

const MIN_CAPACITY: usize = 8;

#[allow(dead_code)]
trait StringMapExt {
    fn evolve_map_new(capacity: usize) -> Object;
    fn map(self) -> &'static EvolveMap;
    fn map_mut(&mut self) -> &'static mut EvolveMap;
    fn map_size(self) -> usize;
    fn map_capacity(self) -> usize;
    fn map_get(self, key: Object) -> Object;
    fn map_put(self, key: Object, value: Object);
    fn map_get_str(self, key: &str) -> Object;
    fn map_put_str(self, key: &str, value: Object);
}

impl StringMapExt for Object {
    #[no_mangle]
    fn evolve_map_new(capacity: usize) -> Object {
        let map = evolve_map_new_raw(capacity);
        Self::from_ref(MAP_CLASS_ID, map)
    }

    fn map_size(self) -> usize {
        evolve_map_size(self.map())
    }

    fn map_capacity(self) -> usize {
        evolve_map_capacity(self.map())
    }

    fn map(self) -> &'static EvolveMap {
        self.to_ref::<EvolveMap>()
    }

    fn map_mut(&mut self) -> &'static mut EvolveMap {
        self.to_mut::<EvolveMap>()
    }

    fn map_get(self, key: Object) -> Object {
        evolve_map_get(self.map(), key)
    }

    fn map_put(mut self, key: Object, value: Object) {
        evolve_map_put(self.map_mut(), key, value)
    }

    fn map_get_str(self, key: &str) -> Object {
        self.map_get(key.into())
    }

    #[allow(unused_mut)]
    fn map_put_str(mut self, key: &str, value: Object) {
        self.map_put(key.into(), value)
    }
}

#[no_mangle]
fn evolve_map_new_raw(capacity: usize) -> &'static EvolveMap {
    let capacity = capacity.max(MIN_CAPACITY);
    let hash_builder = RandomState::with_seed(42);
    let map = EvolveMap::with_capacity_and_hasher(capacity, hash_builder);
    leak_heap_ref(map)
}

#[no_mangle]
fn evolve_map_get(map: &EvolveMap, key: Object) -> Object {
    map.get(&key).copied().unwrap_or_default()
}

#[no_mangle]
#[inline]
fn evolve_map_size(map: &EvolveMap) -> usize {
    map.len()
}

#[no_mangle]
fn evolve_map_capacity(map: &EvolveMap) -> usize {
    map.capacity()
}

#[no_mangle]
fn evolve_map_put(map: &mut EvolveMap, key: Object, value: Object) {
    map.insert(key, value);
}

#[no_mangle]
fn evolve_map_eq(lhs: &EvolveMap, rhs: &EvolveMap) -> bool {
    lhs == rhs
}

#[no_mangle]
fn evolve_map_keys(map: &EvolveMap) -> Object {
    EvolveArray::from_iter(map.keys().copied()).into()
}

#[no_mangle]
fn evolve_map_values(map: &EvolveMap) -> Object {
    EvolveArray::from_iter(map.values().copied()).into()
}

#[cfg(test)]
mod tests {
    use super::*;
    use alloc::collections::VecDeque;
    use alloc::vec;

    pub trait ArrayExt {
        fn array(self) -> &'static EvolveArray;
    }

    impl ArrayExt for Object {
        fn array(self) -> &'static EvolveArray {
            self.to_ref::<EvolveArray>()
        }

        // fn map_mut(&mut self) -> &'static mut crate::map::EvolveMap {
        //     self.to_mut::<crate::map::EvolveMap>()
        // }
    }

    #[test]
    fn test_create() {
        let string_map = Object::evolve_map_new(100);
        assert_eq!(0, string_map.map_size());
        assert_eq!(100, string_map.map_capacity());
    }

    #[test]
    fn test_create_zero() {
        let string_map = Object::evolve_map_new(0);
        assert_eq!(0, string_map.map_size());
        assert_eq!(8, string_map.map_capacity());
    }

    #[test]
    fn test_size_after_put() {
        let string_map = Object::evolve_map_new(0);
        string_map.map_put_str("foo", 42.into());
        assert_eq!(1, string_map.map_size());
        assert_eq!(8, string_map.map_capacity());
    }

    #[test]
    fn test_put_get() {
        let string_map = Object::evolve_map_new(0);
        string_map.map_put_str("foo", 42.into());
        // libc_println!("{:#?}", string_map.map());
        let get = string_map.map_get_str("foo");
        let i = get.extract_i64();
        assert_eq!(42, i);

        // let map = evolve_map_new(0);

        // evolve_map_put()
    }

    #[test]
    fn test_put_get_int() {
        let string_map = Object::evolve_map_new(0);
        string_map.map_put(1.into(), 42.into());
        // libc_println!("{:#?}", string_map.map());
        let get = string_map.map_get(1.into());
        let i = get.extract_i64();
        assert_eq!(42, i);

        // let map = evolve_map_new(0);

        // evolve_map_put()
    }

    #[test]
    fn test_get_missing_returns_null() {
        let map = Object::evolve_map_new(0);
        map.map_put_str("foo", 42.into());
        // libc_println!("{:#?}", map.map());
        let get = map.map_get_str("bar");
        assert!(get.is_null());
    }

    #[test]
    fn test_values() {
        let map = Object::evolve_map_new(0);
        map.map_put_str("foo", 42.into());
        let a = &EvolveArray::from(vec![42.into()]);
        let b = evolve_map_values(&map.map()).array();
        assert_eq!(a, b);
        let c = &EvolveArray::from(vec!["foo".into()]);
        let d = evolve_map_keys(&map.map()).array();
        assert_eq!(c, d);
        assert_ne!(vec![Object::from(1)], vec![Object::from(2)]);
        assert_eq!(
            VecDeque::from(vec![Object::from(1)]),
            VecDeque::from(vec![Object::from(1)])
        );
    }
}
