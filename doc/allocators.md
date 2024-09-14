# Allocators

## libc_alloc

- good for testing
- high performance
- leaks all memory
- limited stats

## libgc bases

- has worked well thus far
- weird bugs in development / testing

### Rc / Arc

- seems impossible to track via general allocator

### arena, per call heaps