pub mod io {
    use rustix::io::IoSlice;
    use rustix::stdio::stdout;
    use smallvec::SmallVec;

    #[inline(always)]
    pub fn evolve_writev(strings: &[&str]) -> u64 {
        let iov: SmallVec<[IoSlice; 8]> = strings
            .iter()
            .map(|s| IoSlice::new(s.as_bytes()))
            .collect();
        let stdout = unsafe { stdout() };
        let result = rustix::io::writev(stdout, &iov);
        result.unwrap_or_default() as u64
    }

    #[export_name = "evolve_puts2"]
    pub fn puts2_writev(string: &str, newline: &str) -> u64 {
        let iov = [IoSlice::new(string.as_bytes()), IoSlice::new(newline.as_bytes())];
        let stdout = unsafe { stdout() };
        let result = rustix::io::writev(stdout, &iov);
        result.unwrap_or_default() as u64
    }

    #[export_name = "evolve.puts"]
    // #[inline(always)]
    pub fn evolve_puts(string: &str) -> u64 {
        puts2_writev(string, "\n")
        // writev(&[string, "\n"])
    }
}

mod time {
    use rustix::time::{ClockId, Timespec};

    fn timespec_to_f64(ts: Timespec) -> f64 {
        ts.tv_sec as f64 + (ts.tv_nsec as f64 * 1e-9)
    }

    // #[no_mangle]
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

    #[no_mangle]
    fn evolve_posix_clock_monotonic() -> f64 {
        let timespec = rustix::time::clock_gettime(ClockId::Monotonic);
        timespec_to_f64(timespec)
    }
}
