const std = @import("std");

const c = @cImport({
    @cInclude("foo.h");
});

pub fn main() !void {
    const x = 5;
    const y = 3;
    var sum = c.foo_add(x, y);
    std.debug.print("the sum of x and y is: {d}\n", .{sum});
}
