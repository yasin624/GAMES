function scr_oyuncu_hasat() {
	if (mouse_check_button(mb_left))
	{
		var kaynaklar = instance_position(mouse_x, mouse_y, obj_parent_kaynaklar);
		if (instance_exists(kaynaklar))
		{
			if (sprite_index != anim_hasat)
			{
				sprite_index = anim_hasat;
				image_index = 0;
			}
			if (image_index >= image_number-1)
			{
				kaynaklar.hp -=10;
				if (kaynaklar.sallanma != true) 
				{kaynaklar.sallanma = true;}
			}
		}
		else
		{
			if (sprite_index != anim_idle)
			{
				sprite_index = anim_idle;
				image_index=0;
			}
			with (obj_parent_kaynaklar)
			{ sallanma = false;}
			durum = oyuncu_durum.kontrol;
		}
	}
	else
	{
		if (sprite_index != anim_idle)
			{
				sprite_index = anim_idle;
				image_index=0;
			}
			with (obj_parent_kaynaklar)
			{ sallanma = false;}
			durum = oyuncu_durum.kontrol;
	}


}
