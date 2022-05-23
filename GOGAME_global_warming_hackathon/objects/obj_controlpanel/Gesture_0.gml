/// @description Insert description here
// You can write your code in this editor
x_a=camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0]);
y_a=camera_get_view_y(view_camera[0])+camera_get_view_height(view_camera[0]);
global.uiOpen=1;
objExit = instance_create_layer(x_a-820, y_a-500, "Apps", QuitUpObj);
ObjGorev = instance_create_layer(x_a-220, y_a-500, "Apps", ControlUi);
ObjAddBTN = instance_create_layer(x_a-300, y_a-400, "Ui", obj_addAdam);
ObjAddBTN = instance_create_layer(x_a-300, y_a-300, "Ui", obj_addFiltre);

objExit.image_xscale=2
objExit.image_yscale=2
ObjGorev.image_xscale=2
ObjGorev.image_yscale=2
