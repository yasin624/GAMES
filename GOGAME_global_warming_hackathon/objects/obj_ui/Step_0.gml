
x = obj_oyuncu.x;
y = obj_oyuncu.y;

var xx = device_mouse_x_to_gui(0);
var yy = device_mouse_y_to_gui(0);

// Objet render faraway
var cx = camera_get_view_x(view_camera[0]);
var cy = camera_get_view_y(view_camera[0]);
var cw = camera_get_view_width(view_camera[0]);
var ch = camera_get_view_height(view_camera[0]);
instance_activate_region(cx - 2000, cy - 2000, cx +cw + 3500, cy + ch + 3500, true);


if (keyboard_check_pressed(ord("C")))
{
	switch (crafting_goster)
	{
		case false: 
		{crafting_goster = true;} 
		break;
		
		case true:
		crafting_goster = false;
		silah_crafting_goster = false;
		isik_crafting_goster = false;
		break;
	}
}


if (keyboard_check_pressed(ord("I")))
{
	switch (envanter_goster)
	{
		case false:
		envanter_goster = true;
		obj_oyuncu.durum = oyuncu_durum.envanter;
		break;
		
		
		case true:
		envanter_goster = false;
		envater_secim = noone;
		obj_oyuncu.durum = oyuncu_durum.kontrol;
	}
}

