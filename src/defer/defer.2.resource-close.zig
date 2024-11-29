const std = @import("std");

const Player = struct { x: i32, y: i32, health: i32 };

pub fn main() !void {
    var arena = std.heap.ArenaAllocator.init(std.heap.page_allocator);
    const allocator = arena.allocator();
    defer arena.deinit();

    const ptr_player = try allocator.create(Player);
    ptr_player.x = 15;
    ptr_player.y = 25;
    ptr_player.health = 100;

    std.debug.print("Player Health: {d}\n", .{ptr_player.health});
}
