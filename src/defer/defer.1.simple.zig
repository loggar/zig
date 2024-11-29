const std = @import("std");

pub fn main() void {
    const i: i32 = 10;
    const j: i32 = 20;
    var sum: i32 = 0;
    defer std.debug.print("{d}\n", .{sum});
    defer sum = i + j;
    std.debug.print("{d}\n", .{sum});
}
