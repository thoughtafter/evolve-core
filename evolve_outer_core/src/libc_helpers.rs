use crate::rustix::io::evolve_writev_first_5;
use core::mem;
use libc::{timeval, RUSAGE_SELF};
use ryu::Buffer;
// #[export_name = "evolve_puts2"]
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

// #[export_name = "evolve.puts"]
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
// fn writev(strings: &[&str]) -> u64 {
//     let iov: SmallVec<[libc::iovec; 8]> = strings
//         .iter()
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

// #[no_mangle]
// fn evolve_stdout() -> *mut FILE {
//     let mode = c"w".as_ptr();
//     unsafe { libc::fdopen(libc::STDOUT_FILENO, mode) }
// }
//
// #[no_mangle]
// fn evolve_stderr() -> *mut FILE {
//     let mode = c"w".as_ptr();
//     unsafe { libc::fdopen(libc::STDERR_FILENO, mode) }
// }
//
// #[no_mangle]
// fn evolve_stdin() -> *mut FILE {
//     let mode = c"r".as_ptr();
//     unsafe { libc::fdopen(libc::STDIN_FILENO, mode) }
// }

const fn calc(tv: timeval) -> f64 {
    ((tv.tv_sec as f64 * 1_000_000.0) + tv.tv_usec as f64) / 1_000_000.0
}

#[no_mangle]
fn evolve_write_resource_usage() {
    let mut usage: libc::rusage = unsafe { mem::zeroed() };
    unsafe {
        libc::getrusage(RUSAGE_SELF, &mut usage);
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

// mod time {
//     use libc::timespec;
//
//     fn timespec_to_f64(ts: timespec) -> f64 {
//         ts.tv_sec as f64 + (ts.tv_nsec as f64 * 1e-9)
//     }
//
//     #[no_mangle]
//     fn evolve_posix_clock_monotonic() -> f64 {
//         let mut x = timespec {
//             tv_sec: 0,
//             tv_nsec: 0,
//         };
//
//         unsafe {
//             libc::clock_gettime(libc::CLOCK_MONOTONIC, &mut x);
//         }
//         timespec_to_f64(x)
//     }
// }
