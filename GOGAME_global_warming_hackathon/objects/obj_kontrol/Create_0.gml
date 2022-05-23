/// @description Degiskenler
randomize ();

gpu_set_texfilter(false);

room_speed = 60;

view_x = camera_get_view_x(view_camera[0]);
view_y = camera_get_view_y(view_camera[0]);

size_w = 640;
size_h = 360;

window_size_w = 1280;
window_size_h = 720;
window_set_size (window_size_w, window_size_h);

var monitor_size_w = display_get_width();
var monitor_size_h = display_get_height();

window_set_position(monitor_size_w/2 - window_size_w/2, monitor_size_h/2 - window_size_h/2);


alarm [0] = 2*room_speed;
