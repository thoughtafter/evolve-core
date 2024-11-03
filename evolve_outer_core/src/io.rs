// use alloc::ffi::CString;
use core::mem;
use libc::{timeval, FILE, RUSAGE_SELF};
use libc_print::{libc_print, libc_println};

// TODO: allocators-less, probably using writev and iovec
// libc_print! may not allocate?
#[no_mangle]
extern "Rust" fn evolve_puts2(string: &str, newline: &str) -> u64 {
    // let ptr = string.as_ptr() as *const c_void;
    // unsafe { libc::write(STDOUT_FILENO, ptr, string.len()); }
    libc_print!("{}{}", string, newline);
    0
    //let output = format!("{}{}", string, newline);
    //fwrite(file, )
    // let iov = libc::iovec { iov_base: string.as_ptr() as *mut c_void, iov_len: string.len() };
    //
    // let count = unsafe {
    //     libc::writev(libc::STDOUT_FILENO, &iov, 1)
    // };
    //
    // count as u64
}

#[no_mangle]
extern "Rust" fn evolve_stdout() -> *mut FILE {
    let mode = c"w";
    unsafe { libc::fdopen(libc::STDOUT_FILENO, mode.as_ptr()) }
}

#[no_mangle]
extern "Rust" fn evolve_stderr() -> *mut FILE {
    let mode = c"w";
    unsafe { libc::fdopen(libc::STDERR_FILENO, mode.as_ptr()) }
}

#[no_mangle]
extern "Rust" fn evolve_stdin() -> *mut FILE {
    let mode = c"r";
    unsafe { libc::fdopen(libc::STDIN_FILENO, mode.as_ptr()) }
}

const fn calc(tv: timeval) -> f64 {
    ((tv.tv_sec as f64 * 1_000_000.0) + tv.tv_usec as f64) / 1_000_000.0
}

#[no_mangle]
extern "Rust" fn evolve_write_resource_usage() {
    let mut usage: libc::rusage = unsafe { mem::zeroed() };
    unsafe {
        libc::getrusage(RUSAGE_SELF, &mut usage);
    }
    let utime = calc(usage.ru_utime);
    let stime = calc(usage.ru_stime);
    libc_println!("user: {} kernel: {}", utime, stime);
}
