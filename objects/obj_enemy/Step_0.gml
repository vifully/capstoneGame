var detection_radius = 120;

// If too far, don't move or shoot
if (point_distance(x, y, obj_player.x, obj_player.y) > detection_radius) {
    exit; 
}

var spd = .8;
var dir = point_direction(x, y, obj_player.x, obj_player.y);

if (!place_meeting(x + lengthdir_x(spd, dir), y, obj_wall)) {
    x += lengthdir_x(spd, dir);
}

if (!place_meeting(x, y + lengthdir_y(spd, dir), obj_wall)) {
    y += lengthdir_y(spd, dir);
}
