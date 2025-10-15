use std::time;

#[no_mangle]
fn count_to_billion() -> u64 {
    let mut count: u64 = 0;
    
    while (count < 1_000_000_000) {
        count += 1
    }

    return count
}

fn main() {
    // let now = time::Instant::now();

    let count = count_to_billion();
    
    // let duration = time::Instant::elapsed(&now);
    // println!("Looping {} times in rust took: {}", count, duration.as_secs_f64())
}
