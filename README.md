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

## outer-core
  - set
  - map
  - heap - currently binary_heap b/c min_max_heap requires std
  - regex - performance gains from std
  - bitmap - roaring
  - allocator trait requires std