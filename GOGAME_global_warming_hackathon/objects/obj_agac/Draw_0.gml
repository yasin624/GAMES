/// @description Golge & Sallanma

draw_set_alpha(0.3);
draw_ellipse_color(x-sprite_width/2,y-5, x+sprite_width/2, y+3, c_black, c_black, false);
draw_set_alpha(1);

if (sallanma == true)
{
	var ran_x = irandom_range(-2,2);
	var ran_y = irandom_range(-2,2);
	draw_sprite_ext(sprite_index,image_index, x+ran_x, y+ran_y, image_xscale, image_yscale, 0, c_white,1);
}
else
{draw_self();}

if (hp <1) 
{
	var ran_loot = irandom(10);
	
	for (i=0 ; i < ran_loot; i++)
	{
		instance_create_layer(x,y, "Instances", obj_odun);
	}
	
	
	instance_destroy();
}