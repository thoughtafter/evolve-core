use libc::{
    CLOCK_MONOTONIC, RUSAGE_SELF, STDOUT_FILENO, clock_gettime, getrusage, iovec, timespec,
    timeval, writev,
};
// #[unsafe(export_name = "evolve_puts2")]
// /// puts 2 &str using writev
// /// this is very efficient, assuming writev is efficient
// /// writev is atomic
// /// currently no error checking - will return -1 on error
// /// writes to stdout
// // #[inline(always)]
// pub fn puts2_writev(string: &str, newline: &str) -> u64 {
//     writev(&[string, newline])
//     // let iov = [
//     //     libc::iovec {
//     //         iov_base: string.as_ptr() as *mut c_void,
//     //         iov_len: string.len(),
//     //     },
//     //     libc::iovec {
//     //         iov_base: newline.as_ptr() as *mut c_void,
//     //         iov_len: newline.len(),
//     //     },
//     // ];
//     //
//     // let count = unsafe { libc::writev(libc::STDOUT_FILENO, &iov as *const libc::iovec, 2) };
//     //
//     // count as u64
// }

// #[unsafe(export_name = "evolve.puts")]
// // #[inline(always)]
// fn evolve_puts(string: &str) -> u64 {
//     // puts2_writev(string, "\n")
//     writev(&[string, "\n"])
// }

// fn writev(strings: &[&str]) -> u64 {
//     let iov = strings.iter().map(|s| {
//         libc::iovec {
//             iov_base: s.as_ptr() as *mut c_void,
//             iov_len: s.len(),
//         }
//     }).collect::<[libc::iovec]>();
//     let iovcnt = iov.len() as libc::c_int;
//     let iov = iov.as_ptr();
//     let count = unsafe { libc::writev(libc::STDOUT_FILENO, iov, iovcnt) };
//     count as u64
// }

// #[inline(always)]
// // using smallvec, which overflows if too many
// pub fn evolve_writev_first_8(strings: &[&str]) -> u64 {
//     let iov: SmallVec<[libc::iovec; 8]> = strings
//         .iter()
//         .take(8)
//         .map(|s| libc::iovec {
//             iov_base: s.as_ptr() as *mut c_void,
//             iov_len: s.len(),
//         })
//         .collect();
//     let iovcnt = iov.len() as libc::c_int;
//     let iov = iov.as_ptr();
//     let count = unsafe { libc::writev(libc::STDOUT_FILENO, iov, iovcnt) };
//     count as u64
// }

pub mod io {
    use super::{STDOUT_FILENO, iovec, writev};
    use arrayvec::ArrayVec;
    use core::ffi::{c_int, c_void};

    const WRITEV_LIMIT: usize = 5;

    #[inline(always)]
    /// using arrayvec
    /// # Panics
    /// will panic if WRITEV_LIMIT does not fit into i32
    pub fn evolve_writev_first_5(strings: &[&str]) -> u64 {
        if strings.is_empty() {
            return 0;
        }

        let iov: ArrayVec<iovec, WRITEV_LIMIT> = strings
            .iter()
            .take(WRITEV_LIMIT)
            .map(|s| iovec {
                iov_base: s.as_ptr() as *mut c_void,
                iov_len: s.len(),
            })
            .collect();
        let iovcnt = i32::try_from(iov.len()).unwrap_or(WRITEV_LIMIT.try_into().unwrap()) as c_int;
        let iov = iov.as_ptr();
        let count = unsafe { writev(STDOUT_FILENO, iov, iovcnt) };
        count as u64
    }
}
// #[unsafe(no_mangle)]
// fn evolve_stdout() -> *mut FILE {
//     let mode = c"w".as_ptr();
//     unsafe { libc::fdopen(libc::STDOUT_FILENO, mode) }
// }
//
// #[unsafe(no_mangle)]
// fn evolve_stderr() -> *mut FILE {
//     let mode = c"w".as_ptr();
//     unsafe { libc::fdopen(libc::STDERR_FILENO, mode) }
// }
//
// #[unsafe(no_mangle)]
// fn evolve_stdin() -> *mut FILE {
//     let mode = c"r".as_ptr();
//     unsafe { libc::fdopen(libc::STDIN_FILENO, mode) }
// }

mod rusage {
    use super::{RUSAGE_SELF, getrusage, timeval};
    use crate::libc_helpers::io::evolve_writev_first_5;
    use core::mem;
    use ryu::Buffer;

    const fn calc(tv: timeval) -> f64 {
        ((tv.tv_sec as f64 * 1_000_000.0) + tv.tv_usec as f64) / 1_000_000.0
    }

    #[unsafe(no_mangle)]
    fn evolve_write_resource_usage() {
        let mut usage: libc::rusage = unsafe { mem::zeroed() };
        unsafe {
            getrusage(RUSAGE_SELF, &raw mut usage);
        }
        let utime = calc(usage.ru_utime);
        let stime = calc(usage.ru_stime);
        // let x = format!("user: {} kernel: {}", utime, stime);
        let mut buffer = Buffer::new();
        let utime = buffer.format(utime);
        let mut buffer = Buffer::new();
        let stime = buffer.format(stime);

        let strings = ["user: ", utime, " kernel: ", stime, "\n"];

        evolve_writev_first_5(&strings);

        // puts2_writev(&x, "\n");
    }
}

pub mod time {
    use super::{CLOCK_MONOTONIC, clock_gettime, timespec};

    fn timespec_to_f64(ts: timespec) -> f64 {
        ts.tv_sec as f64 + (ts.tv_nsec as f64 * 1e-9)
    }

    #[unsafe(no_mangle)]
    fn evolve_posix_clock_monotonic() -> f64 {
        let mut x = timespec {
            tv_sec: 0,
            tv_nsec: 0,
        };

        unsafe {
            clock_gettime(CLOCK_MONOTONIC, &raw mut x);
        }
        timespec_to_f64(x)
    }
}

// #[unsafe(no_mangle)]
// pub unsafe extern "C" fn __fprintf_chk(
//     _file: *mut FILE,
//     _flag: c_int,
//     _format: *const c_char,
// ) -> c_int {
//     0
// }
//
// #[unsafe(no_mangle)]
// pub extern "C" fn abort() -> ! {
//     std::process::abort()
// }
//
// #[unsafe(no_mangle)]
// pub static mut stdin: *mut FILE = ptr::null_mut();
// #[unsafe(no_mangle)]
// pub static mut stdout: *mut FILE = ptr::null_mut();
// #[unsafe(no_mangle)]
// pub static mut stderr: *mut FILE = ptr::null_mut();
