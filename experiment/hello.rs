#![no_std]
#![no_main]

#[panic_handler]
fn panic(_info: &core::panic::PanicInfo) -> ! {
    loop {}
}

#[no_mangle]
fn main() -> i32 {
    let mut nyan_cat = nyaa();
    nyan_cat.rainbows[1024 / 2] = 42;
    nyan_cat.rainbows[1024 / 2] as i32
}

#[no_mangle]
struct NyanCat {
    rainbows: [u64; 1024],
}

impl NyanCat {
    pub fn new() -> Self {
        NyanCat { rainbows: [0; 1024] }
    }
}

#[no_mangle]
fn nyaa() -> NyanCat {
    NyanCat::new()
}

// This calls a main function which invokes and assigns from foo a returned struct with an array of 1024 u64s, assigns the middle
// value as 42, pulls it back out, casts it to an i32, and then returns that value.
