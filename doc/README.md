### What is gained?

- Strings / Unicode
- Regex - good performance
    - https://github.com/BurntSushi/rebar 
    - https://github.com/PCRE2Project/pcre2
    - https://github.com/BurntSushi/rust-pcre2
- gmp-mpfr-sys - gives .a files of up-to-date versions
- sort (https://blog.rust-lang.org/2024/09/05/Rust-1.81.0.html#new-sort-implementations)
- indexmap / indexset
- hashmap / hashset
- hashbrown - https://github.com/rust-lang/hashbrown
- https://github.com/tkaitchuck/aHash
- would need to override allocator
  -  https://doc.rust-lang.org/std/alloc/index.html
- env
- vec vecdeque
- min-max-heap - https://github.com/tov/min-max-heap-rs
- serde / json / yaml

### Maybe

- concurrency / parrelism
- rustix
- dispatch - could be resurrected
  - https://github.com/SSheldon/rust-dispatch
- rayon  https://crates.io/crates/rayon
    - https://github.com/rayon-rs/rayon/blob/main/FAQ.md
- https://blog.yoshuawuyts.com/tree-structured-concurrency/
- https://docs.rs/tokio/latest/tokio/task/struct.JoinSet.html
- https://docs.rs/async-task-group/latest/async_task_group/
- perfect hashing
- libllvm - https://crates.io/crates/llvm-sys
- sqlite - https://github.com/stainless-steel/sqlite
- postgres -https://crates.io/crates/postgres

### Missing
- sprintf - gmp et al still rely on libc, so libc still availabe
    - https://doc.rust-lang.org/std/fmt/ - is macros
    - https://crates.io/crates/dynfmt
    - https://github.com/vitiral/strfmt
- promising: https://github.com/A1-Triard/dyn-fmt
    - https://crates.io/crates/dyn-fmt
- perfect hashing

extern rust vs c
c destroy ptr for i64


https://mcyoung.xyz/2024/04/17/calling-convention/


4 = 4, 4 instane of int
@int = 3, 0 instance of int-class
@int-class = xxx, 3, instance of class-class
@class-class = xxx, xxx ???

### 2 paths
- gmp-mpfr-sys - build static lib .a files - link to those
- no-std rust lib - create interface for use through rust calls

Outer
no-std - 7980803
std -   19969813



bad:
`cargo test --all --features "libgc_alloc"`
`cargo test --all --features "libgc_alloc" -- --test-threads=1"`

`Collecting from unknown thread`
- https://github.com/ivmai/bdwgc/issues/333
- https://github.com/ivmai/bdwgc/issues/561
- no-std has no effect

libc stress:


libgc stress:
`cargo stress --all --features="libgc_alloc"`
`cargo stress -p=evolve_outer_core --features="libgc_alloc" -- --test-threads=1"`
`cargo stress -r -p=evolve_outer_core --features="libgc_alloc" -- --test-threads=1"`

# inner

`cargo test -p=evolve_inner_core"`
`cargo stress -p=evolve_inner_core"`

# outer

`cargo test -p=evolve_outer_core"`
`cargo stress -p=evolve_inner_core"`

good:
`cargo test --all --features "libc_alloc"`


libgc test/stress works in single thread with gc disabled

`cargo test -p evolve_outer_core --features="libgc_alloc" -- --nocapture --test-threads=1`
`cargo stress -p evolve_outer_core --features="libgc_alloc" -- --test-threads=1`

## stress

### mimalloc

`cargo stress --all --features="mimalloc_alloc"`

### libc

`cargo stress --all --features="libc_alloc"`

`cargo stress -r --all --features="libc_alloc"`

### libgc

works when gc disabled

`cargo stress --all --features="libgc_alloc"`


