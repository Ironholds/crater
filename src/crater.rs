#![crate_type = "dylib"]


#[no_mangle]
pub extern fn multiply_by_100(val: f64) -> f64 {
  return val* 100.0
}

#[no_mangle]
pub extern fn multiply_by_10(val: i32) -> i32 {
  return val* 10
}

