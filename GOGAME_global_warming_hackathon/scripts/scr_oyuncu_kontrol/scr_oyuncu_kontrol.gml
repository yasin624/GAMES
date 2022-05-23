function scr_oyuncu_kontrol() {
	if (mouse_check_button(mb_left) and global.uiOpen=0)

	{
		if (instance_position(mouse_x, mouse_y, obj_house))
		{
			global.houseDialog = 1;
		}else if (instance_position(mouse_x, mouse_y, obj_fire))
		{
			global.fireSondur = 1;
		}
		else if (instance_position(mouse_x, mouse_y, sign_skull_mushroom))
		{
			global.mushroomDialog = 1;
		}
		else if (instance_position(mouse_x, mouse_y, sign_way_biogas))
		{
			global.biogasDialog = 1;
		}
		else if (instance_position(mouse_x, mouse_y, sign_way_control_panel))
		{
			global.controlpanelDialog = 1;
		}
		else if (instance_position(mouse_x, mouse_y, sign_way_forest_entry))
		{
			global.forestDialog = 1;
		}
		else if (instance_position(mouse_x, mouse_y, sign_way_green_portal))
		{
			global.greenportalDialog = 1;
		}
		else if (instance_position(mouse_x, mouse_y, sign_way_observatory))
		{
			global.obeservatoryDialog = 1;
		}else if (instance_position(mouse_x, mouse_y, sign_way_purple_portal))
		{
			global.purpleportalDialog = 1;
		}else if (instance_position(mouse_x, mouse_y, sign_way_recycler))
		{
			global.recyclerDialog = 1;
		}else if (instance_position(mouse_x, mouse_y, sign_way_red_portal))
		{
			global.redportalDialog = 1;
		}else if (instance_position(mouse_x, mouse_y, sign_way_solar))
		{
			global.solarDialog = 1;
		}else if (instance_position(mouse_x, mouse_y, sign_way_yellow_portal))
		{
			global.yellowportalDialog = 1;
		}
		else if (instance_position(mouse_x, mouse_y, sign_way_tavuk))
		{
			global.tavukinekDialog = 1;
		}
		else if(instance_position(mouse_x,mouse_y,obj_crate)){
			var ui = obj_ui;

			for (i=1; i<10; i++)
			{
				if (ui.envanter[i] == obj_turd.object_index)
				{
					global.energyPnt+= ui.envanter_numara[i]
					ui.envanter_numara[i] =0
					global.energyProduced=1;
				}
			}
		}else if (instance_position(mouse_x, mouse_y, obj_parent_kaynaklar))
		{
			
		
			if (giyildi != noone)
			{
				var kaynaklar = instance_position(mouse_x, mouse_y, obj_parent_kaynaklar);
				if (giyildi.tur == kaynaklar.gereken)
				{
					if (sprite_index != anim_kosma)
					{
						sprite_index = anim_kosma;
						image_index = 0;
					}
					if (kaynaklar.x >= x)
					{
						image_xscale =1;
						mp_linear_step(kaynaklar.x-50, kaynaklar.y, hiz, false);
						if (x == kaynaklar.x-50 and y == kaynaklar.y) 
						{durum = oyuncu_durum.hasat;}
					}
					else
					{	
						image_xscale = -1;
						mp_linear_step(kaynaklar.x+50, kaynaklar.y, hiz, false);
						if (x == kaynaklar.x+50 and y == kaynaklar.y) 
						{durum = oyuncu_durum.hasat;}
					}
				}
			}
		}
			
		else 
		{
			global.houseDialog = 0;
			global.mushroomDialog = 0;
			global.biogasDialog = 0;
			global.controlpanelDialog = 0;
			global.forestDialog = 0;
			global.greenportalDialog = 0;
			global.obeservatoryDialog = 0;
			global.purpleportalDialog = 0;
			global.recyclerDialog = 0;
			global.redportalDialog = 0;
			global.solarDialog = 0;
			global.yellowportalDialog = 0;
			global.tavukinekDialog = 0;
			if(sprite_index != anim_kosma)
			{
				sprite_index = anim_kosma;
				image_index = 0;
			}
			
			if (mouse_x >= x)
			{image_xscale = 1;}
			else { image_xscale = -1;}
			if !audio_is_playing(footstep_grass_sound){
				audio_play_sound(footstep_grass_sound, 1, false);
			}
			var lay_id = layer_get_id("ts_grass");
			var map_id = layer_tilemap_get_id(lay_id);
			var q = sprite_index, t;
			var qx = sprite_get_xoffset(q);
			var qy = sprite_get_yoffset(q);
			my_bbox_left =  x + (sprite_get_bbox_left(q) - qx) * image_xscale;
			my_bbox_right = x + (sprite_get_bbox_right(q) - qx) * image_xscale;
			my_bbox_top =  (y + (sprite_get_bbox_top(q) - qy) * image_yscale)-10;
			my_bbox_bottom = (y + (sprite_get_bbox_bottom(q) - qy) * image_yscale)+10;
			if(mouse_x<=x and ( tilemap_get_at_pixel(map_id, my_bbox_left-hiz, bbox_bottom) and tilemap_get_at_pixel(map_id, my_bbox_left-hiz, bbox_top)) != 0 and x>=0)
			{
				mp_linear_step(mouse_x,mouse_y, hiz/2, false);
			}else if(mouse_x<=x and ( tilemap_get_at_pixel(map_id, my_bbox_left-1, bbox_bottom) and tilemap_get_at_pixel(map_id, my_bbox_left-1, bbox_top)) != 0 and x>=0)
			{
				mp_linear_step(mouse_x,mouse_y, hiz/2, false);
			}else if(mouse_x>x  and (tilemap_get_at_pixel(map_id, my_bbox_right+hiz, bbox_bottom) and tilemap_get_at_pixel(map_id, my_bbox_right+hiz, bbox_top)) != 0  and x<=room_width)
			{
				mp_linear_step(mouse_x,mouse_y, hiz/2, false);
			}else if(mouse_x>x  and (tilemap_get_at_pixel(map_id, my_bbox_right+1, bbox_bottom) and tilemap_get_at_pixel(map_id, my_bbox_right+1, bbox_top)) != 0  and x<=room_width)
			{
				mp_linear_step(mouse_x,mouse_y, hiz/2, false);
			}
			if(mouse_y<=y and(tilemap_get_at_pixel(map_id, my_bbox_left, my_bbox_top-hiz) and tilemap_get_at_pixel(map_id, my_bbox_right, my_bbox_top-hiz)) != 0 and y>=0 )
			{
				mp_linear_step(mouse_x,mouse_y, hiz/2, false);
			}else if(mouse_y<=y and(tilemap_get_at_pixel(map_id, my_bbox_left, my_bbox_top-1) and tilemap_get_at_pixel(map_id, my_bbox_right, my_bbox_top-1)) != 0 and y>=0 )
			{
				mp_linear_step(mouse_x,mouse_y, hiz/2, false);
			}
			else if(mouse_y>y and (tilemap_get_at_pixel(map_id, my_bbox_left, my_bbox_bottom+hiz) and tilemap_get_at_pixel(map_id, my_bbox_right, my_bbox_bottom+hiz)) != 0 and y<= room_height)
			{
				mp_linear_step(mouse_x,mouse_y, hiz/2, false);
	
			}else if(mouse_y>y and (tilemap_get_at_pixel(map_id, my_bbox_left, my_bbox_bottom+1) and tilemap_get_at_pixel(map_id, my_bbox_right, my_bbox_bottom+1)) != 0 and y<= room_height)
			{
				mp_linear_step(mouse_x,mouse_y, hiz/2, false);
	
			}
		}
	}
	else
	{
		{
			if(sprite_index != anim_idle)
			{
				sprite_index = anim_idle;
				image_index = 0;
			}
		}
	}
		
		
	


}
