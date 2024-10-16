use ahash::RandomState;
use evolve_inner_core::allocates::leak_heap_ref;
use evolve_inner_core::object::Object;
use indexmap::IndexSet;

type EvolveSet = IndexSet<Object, ahash::RandomState>;

const MIN_CAPACITY: usize = 8;

#[no_mangle]
extern "Rust" fn evolve_set_static_new(capacity: usize) -> &'static EvolveSet {
    let capacity = capacity.max(MIN_CAPACITY);
    let hash_builder = RandomState::with_seed(42);
    let set = EvolveSet::with_capacity_and_hasher(capacity, hash_builder);
    leak_heap_ref(set)
}
