use crate::libc_helpers::io::evolve_writev_first_5;

#[unsafe(export_name = "evolve.puts")]
// #[inline(always)]
pub fn evolve_puts(string: &str) -> u64 {
    // evolve_writev2(string, "\n")
    // evolve_writev(&[string, "\n"])
    evolve_writev_first_5(&[string, "\n"])
}

#[unsafe(export_name = "evolve.puts_only")]
pub fn evolve_puts_only(string: &str) -> u64 {
    // evolve_writev1(string)
    evolve_writev_first_5(&[string])
}

#[unsafe(export_name = "evolve.io.puts.i64")]
pub fn evolve_io_puts_i64(value: i64) -> u64 {
    let mut buffer = itoa::Buffer::new();
    let stack_string = buffer.format(value);
    evolve_writev_first_5(&[stack_string, "\n"])
}

#[unsafe(export_name = "evolve.io.puts.f64")]
pub fn evolve_io_puts_f64(value: f64) -> u64 {
    let mut buffer = ryu::Buffer::new();
    let stack_string = buffer.format(value);
    evolve_writev_first_5(&[stack_string, "\n"])
}
