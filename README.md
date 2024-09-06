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

### Missing
- sprintf
    - https://doc.rust-lang.org/std/fmt/ - is macros
    - https://crates.io/crates/dynfmt
    - https://github.com/vitiral/strfmt
- promising: https://github.com/A1-Triard/dyn-fmt
    - https://crates.io/crates/dyn-fmt

extern rust vs c
c destroy ptr for i64