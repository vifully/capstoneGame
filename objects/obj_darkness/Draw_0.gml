var cam = view_camera[0];
var cam_w = camera_get_view_width(cam);
var cam_h = camera_get_view_height(cam);
var cam_x = camera_get_view_x(cam);
var cam_y = camera_get_view_y(cam);

// Create CAMERA-SIZED surface (NOT room-sized)
if (!surface_exists(surface_darkness)) {
    surface_darkness = surface_create(cam_w, cam_h);
}

// Draw darkness
surface_set_target(surface_darkness);
draw_clear_alpha(c_black, 0.90);

// Convert player world → camera coords
var px = obj_player.x - cam_x;
var py = obj_player.y - cam_y;

// Subtractive light
gpu_set_blendmode(bm_subtract);
draw_circle_color(px, py, light_radius, c_white, c_black, false);
gpu_set_blendmode(bm_normal);

surface_reset_target();

// Draw onto screen EXACTLY over the camera
draw_surface(surface_darkness, cam_x, cam_y);
