    use ahash::RandomState;

    use alloc::boxed::Box;

    use evolve_inner_core::object::Object;
    use indexmap::IndexMap;

    type EvolveStringMap = IndexMap<Box<str>, Object, RandomState>;

    #[allow(dead_code)]
    trait StringMapExt {
        const MIN_CAPACITY: usize = 8;

        fn evolve_stringmap_new(capacity: usize) -> Object;
        fn evolve_stringmap_size(self) -> usize;
        fn evolve_stringmap_capacity(self) -> usize;
        fn string_map(self) -> &'static EvolveStringMap;
        fn evolve_stringmap_get(self, key: &str) -> Object;
        fn string_map_mut(&mut self) -> &'static mut EvolveStringMap;
        fn evolve_stringmap_put(self, key: &str, value: Object);
        // TODO: need to compare objects for equality
        fn evolve_stringmap_eq(self, other: Object) -> bool;
    }

    impl StringMapExt for Object {
        #[no_mangle]
        fn evolve_stringmap_new(capacity: usize) -> Object {
            let capacity = capacity.max(Self::MIN_CAPACITY);
            let hash_builder = RandomState::with_seed(42);
            let string_map = Box::new(EvolveStringMap::with_capacity_and_hasher(
                capacity,
                hash_builder,
            ));
            let leak = Box::leak(string_map);
            Self::from_ref(18, leak)
            // Self::new(18, )
            // EvolveStringMap { 0: leak }
            // let o = Self.
            // libc_println!("New: {:?}", o);
            //o
        }

        fn string_map(self) -> &'static EvolveStringMap {
            self.to_ref::<EvolveStringMap>()
        }

        fn string_map_mut(&mut self) -> &'static mut EvolveStringMap {
            self.to_mut::<EvolveStringMap>()
        }

        #[no_mangle]
        fn evolve_stringmap_size(self) -> usize {
            self.string_map().len()
        }

        #[no_mangle]
        fn evolve_stringmap_capacity(self) -> usize {
            self.string_map().capacity()
        }

        #[no_mangle]
        fn evolve_stringmap_get(self, key: &str) -> Object {
            let value = self.string_map().get(key).copied().unwrap_or_default();
            value
        }

        #[no_mangle]
        fn evolve_stringmap_put(mut self, key: &str, value: Object) {
            self.string_map_mut().insert(key.into(), value);
        }

        // TODO: need to compare objects for equality
        #[no_mangle]
        fn evolve_stringmap_eq(self, _other: Object) -> bool {
            // let lhs = self.regex();
            // let rhs = other.regex();
            // lhs == rhs
            // the_self.iter().eq(the_other.iter())
            // lhs.cmp(rhs).is_eq()
            false
        }
    }

    #[cfg(test)]
    mod tests {
        use super::*;
        use evolve_inner_core::object::evolve_core_null;
        use evolve_inner_core::object_from::evolve_from_i64;

        #[test]
        fn test_create() {
            let string_map = Object::evolve_stringmap_new(100);
            assert_eq!(0, string_map.evolve_stringmap_size());
            assert_eq!(100, string_map.evolve_stringmap_capacity());
        }

        #[test]
        fn test_create_zero() {
            let string_map = Object::evolve_stringmap_new(0);
            assert_eq!(0, string_map.evolve_stringmap_size());
            assert_eq!(8, string_map.evolve_stringmap_capacity());
        }

        #[test]
        fn test_put_get() {
            let string_map = Object::evolve_stringmap_new(0);
            string_map.evolve_stringmap_put("foo", evolve_from_i64(42));
            let get = string_map.evolve_stringmap_get("foo");
            let i = get.evolve_extract_i64();
            assert_eq!(42, i);

            // let map = evolve_stringmap_new(0);

            // evolve_stringmap_put()
        }

        #[test]
        fn test_get_missing_returns_null() {
            let map = Object::evolve_stringmap_new(0);
            map.evolve_stringmap_put("foo", evolve_from_i64(42));
            let get = map.evolve_stringmap_get("bar");
            assert!(evolve_core_null(get));
        }
    }
