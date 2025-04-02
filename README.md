# evolve-core

## Data Structures

### Atoms

- i64
- f64
- string
- null / true / false
- enums
- regex

### Collections / Containers

- tuple
- array
- heap
- hashmap
- hashset

### Consideration

- btreemap
- btreeset
- rope
- scc

## Important implementations

- uuid
- crypto
- threads / pools / concurrency
- os interfacing - rustix / relibc / libc

## inner-core

- nostd
- should be kept small
- data structures
  - tuple
  - array - vecdeque - requires alloc
  - string (some)
  - gmp / mpfr / mpc - because external linking
- ll file ~ 106K
  - 68K for object and some string
  - 14K for array/vecdeque
  - 20K for strings
- bc file ~ 40K
  - 27K for object and some string
  - 5K for array/vecdeque
- rejected
  - 17K bc for binary heap
- up to 210k
- w/o allocations - 152K - so 60K for allocations
    - 72s-77s for test2 
    - 155K - add "allocates" mod and vec create
    - 54K bc
    - ~4K bc for gmp_set_mem - because pulls in various rust allocs
    - trivial: vec allocate
    - trivial: From<string>
    - 1K: new_string_repeat
    - ~6K for string trim
    - 6K for is_blank
    - 1K for evolve_string_is_ascii
    - 2K CString
    - 

## outer-core
  - set
  - map
  - heap - currently binary_heap b/c min_max_heap requires std
  - regex - performance gains from std
  - bitmap - roaring
  - allocator trait requires std