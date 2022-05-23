/// @description Quickslotting


var xx = device_mouse_x_to_gui(0);
var yy = device_mouse_y_to_gui(0);


switch(envanter_goster)
{
	case true: 
	draw_sprite(spr_envanter,0,640/2,360-105); 
	
	if (envanter_secim != noone)
	{
		draw_sprite_ext(object_get_sprite(envanter_secim),0,xx,yy,1,1,0,c_white,0.5);
	}
	
	if (envanter[1]!=noone) 
	{
		draw_sprite(object_get_sprite(envanter[1]),0,640/2-35,360-105-35);
		draw_set_halign(fa_center);
		draw_text(640/2-35,360-105-35-2,envanter_numara[1]);
	}
	if (envanter[2]!=noone) 
	{
		draw_sprite(object_get_sprite(envanter[2]),0,640/2,360-105-35);
		draw_set_halign(fa_center);
		draw_text(640/2,360-105-35-2,envanter_numara[2]);
	}
	if (envanter[3]!=noone) 
	{
		draw_sprite(object_get_sprite(envanter[3]),0,640/2+35,360-105-35);
		draw_set_halign(fa_center);
		draw_text(640/2+35,360-105-35-2,envanter_numara[3]);
	}
	if (envanter[4]!=noone) 
	{
		draw_sprite(object_get_sprite(envanter[4]),0,640/2-35,360-105);
		draw_set_halign(fa_center);
		draw_text(640/2-35,360-105-2,envanter_numara[4]);
	}
	if (envanter[5]!=noone) 
	{
		draw_sprite(object_get_sprite(envanter[5]),0,640/2,360-105);
		draw_set_halign(fa_center);
		draw_text(640/2,360-105-2,envanter_numara[5]);
	}
	if (envanter[6]!=noone) 
	{
		draw_sprite(object_get_sprite(envanter[6]),0,640/2+35,360-105);
		draw_set_halign(fa_center);
		draw_text(640/2+35,360-105-2,envanter_numara[6]);
	}
	if (envanter[7]!=noone) 
	{
		draw_sprite(object_get_sprite(envanter[7]),0,640/2-35,360-105+35);
		draw_set_halign(fa_center);
		draw_text(640/2-35,360-105+35-2,envanter_numara[7]);
	}
	if (envanter[8]!=noone) 
	{
		draw_sprite(object_get_sprite(envanter[8]),0,640/2,360-105+35);
		draw_set_halign(fa_center);
		draw_text(640/2,360-105+35-2,envanter_numara[8]);
	}
	if (envanter[9]!=noone) 
	{
		draw_sprite(object_get_sprite(envanter[9]),0,640/2+35,360-105+35);
		draw_set_halign(fa_center);
		draw_text(640/2+35,360-105+35-2,envanter_numara[9]);
	}
	break;
}
