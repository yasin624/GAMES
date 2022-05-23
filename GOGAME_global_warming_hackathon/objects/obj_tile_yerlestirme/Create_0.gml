/// @description Harita

global.zemin_layer = layer_create(-2);
global.zemin_tilemap_cimen = layer_tilemap_create(global.zemin_layer,0,0,ts_cimen,room_width,room_height)

for (i=0; i<80; i++)
{
	for (j=0; j<80; j++)
	{
		var randomize_data = irandom_range(1,1);
		tilemap_set_at_pixel(global.zemin_tilemap_cimen, randomize_data, 0+160*i, 0+90*j);
	}
}