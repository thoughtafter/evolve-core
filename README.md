## inner-core

- nostd
- should be kept small
- data structures
  - tuple
  - array - vecdeque - requires alloc
  - string (some)
  - gmp / mpfr / mpc - because external linking
- ll file ~ 85K
  - 68K for object and some string
  - 14K for array/vecdeque
- bc file ~ 34K
  - 27K for object and some string
  - 5K for array/vecdeque
- rejected
  - 17K bc for binary heap

## outer-core
  - set
  - map
  - heap
  - string (some)
  - regex