pub mod io {
    use arrayvec::ArrayVec;
    use rustix::io::IoSlice;
    use rustix::stdio::stdout;
    use smallvec::SmallVec;

    #[inline(always)]
    #[allow(dead_code)]
    fn evolve_writev_upto_any(strings: &[&str]) -> u64 {
        let iov: SmallVec<[IoSlice; 8]> =
            strings.iter().map(|s| IoSlice::new(s.as_bytes())).collect();
        let stdout = unsafe { stdout() };
        let result = rustix::io::writev(stdout, &iov);
        result.unwrap_or_default() as u64
    }

    const WRITEV_LIMIT: usize = 5;
    #[inline(always)]
    pub fn evolve_writev_first_5(strings: &[&str]) -> u64 {
        let iov: ArrayVec<IoSlice, WRITEV_LIMIT> = strings
            .iter()
            .take(WRITEV_LIMIT)
            .map(|s| IoSlice::new(s.as_bytes()))
            .collect();
        let stdout = unsafe { stdout() };
        let result = rustix::io::writev(stdout, &iov);
        result.unwrap_or_default() as u64
    }

    /// optimized writev for 1 string
    #[allow(dead_code)]
    fn evolve_writev1(string: &str) -> u64 {
        let iov = [IoSlice::new(string.as_bytes())];
        let stdout = unsafe { stdout() };
        let result = rustix::io::writev(stdout, &iov);
        result.unwrap_or_default() as u64
    }

    /// optimized writev for 2 strings
    /// useful for puts where string2 is newline
    #[allow(dead_code)]
    fn evolve_writev2(string1: &str, string2: &str) -> u64 {
        let iov = [
            IoSlice::new(string1.as_bytes()),
            IoSlice::new(string2.as_bytes()),
        ];
        let stdout = unsafe { stdout() };
        let result = rustix::io::writev(stdout, &iov);
        result.unwrap_or_default() as u64
    }

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
}

mod time {
    use rustix::time::{ClockId, Timespec};

    fn timespec_to_f64(ts: Timespec) -> f64 {
        ts.tv_sec as f64 + (ts.tv_nsec as f64 * 1e-9)
    }

    // #[unsafe(no_mangle)]
    // fn evolve_posix_clock_monotonic() -> f64 {
    //     let mut x = timespec {
    //         tv_sec: 0,
    //         tv_nsec: 0,
    //     };
    //
    //     unsafe {
    //         libc::clock_gettime(libc::CLOCK_MONOTONIC, &mut x);
    //     }
    //     timespec_to_f64(x)
    // }

    #[unsafe(no_mangle)]
    fn evolve_posix_clock_monotonic() -> f64 {
        let timespec = rustix::time::clock_gettime(ClockId::Monotonic);
        timespec_to_f64(timespec)
    }
}
