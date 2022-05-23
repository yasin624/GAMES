/// @description Gece Gunduz

x = obj_oyuncu.x;
y = obj_oyuncu.y;

if (gun_degisimi == true)
{
	alpha -= 0.0001;
}

else
{
	alpha += 0.0001;
}

if (alpha >= 1) {gun_degisimi = true;}
else if (alpha <=0) {gun_degisimi = false;}

if (surface_exists(gun_degisimi))
{
	surface_set_target(gun_degisimi);
	draw_clear(c_black);
	with (obj_parent_isik)
	{
		gpu_set_blendmode(bm_src_color);
		draw_sprite_ext(spr_ates_parilti,0,x,y,yogunluk,yogunluk,0,c_white,1);
		gpu_set_blendmode(bm_normal);
	}
	surface_reset_target();
	draw_surface_ext(gun_degisimi,0,0,1,1,0,c_white,alpha);
}
else
{
	gun_degisimi = surface_create(room_width,room_height)
}
