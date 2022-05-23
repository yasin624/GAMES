/// @description Orman

x = obj_oyuncu.x;
y = obj_oyuncu.y;

if (mouse_check_button_pressed(mb_middle))
{
	var orman_boyut_g = irandom_range(5,30);
	var orman_boyut_y = irandom_range(5,30);
	var agac_num = orman_boyut_g + orman_boyut_y*4;
	var xx = mouse_x;
	var yy = mouse_y;
	
	for (i=0; i<orman_boyut_g; i++)
	{
		for (j=0; j<orman_boyut_y; j++)
		{
			var ran_data = irandom_range(1,1);
			tilemap_set_at_pixel(global.zemin_layer_tilemap_orman, ran_data, xx+160*i, yy+90*j);
		}
	}
	
	for (k=0; k < agac_num; k++)
	{
		var pos_x = irandom(orman_boyut_g);
		var pos_y = irandom(orman_boyut_y);
		instance_create_layer(xx+160*pos_x, yy+90*pos_y, "Instances", obj_agac);
	}
}