var target_x = obj_player.x - view_w * 0.5;
var target_y = obj_player.y - view_h * 0.5;

var smooth = 0.1;

var new_x = camera_get_view_x(cam) + (target_x - camera_get_view_x(cam)) * smooth;
var new_y = camera_get_view_y(cam) + (target_y - camera_get_view_y(cam)) * smooth;

camera_set_view_pos(cam, new_x, new_y);
