const std = @import("std");
const time = std.time;
const io = std.io;

pub fn count_to_billion() u64 {
    var i: u64 = 0;
    while (i < 1_000_000_000) {
        i += 1;
    }
    return i;
}

pub fn main() !void {
    var timer = try time.Timer.start();

    const count = count_to_billion();

    const duration = timer.read();

    var buf: [128]u8 = undefined;
    var writer = std.fs.File.stdout().writer(&buf);
    try writer.interface.print("Looping {d} times in zig took: {d}\n", .{ count, @as(f64, @floatFromInt(duration)) / @as(f64, @floatFromInt(time.us_per_s)) });
    try writer.interface.flush();
}
