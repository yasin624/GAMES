function scr_oyuncu_quickslotting() {
	var xx=device_mouse_x_to_gui(0);
	var yy=device_mouse_y_to_gui(0);
	var ui = obj_ui;

	if (sprite_index!=anim_idle)
	{
		sprite_index=anim_idle;
		image_index=0;
	} 

	if (mouse_check_button_pressed(mb_right))
	{
		if (ui.secilmis_slot == noone)
		{
			if (yy >= 360-32)
			{
				if (xx >=640/2-35*2-16 and xx<= 640/2-35*2+16) {ui.slot_1 = noone;}
				else if (xx >=640/2-35-16 and xx<= 640/2-35+16) {ui.slot_2 = noone;}
				else if (xx >=640/2-16 and xx<= 640/2+16) {ui.slot_3 = noone;}
				else if (xx >=640/2+35-16 and xx<= 640/2+35+16) {ui.slot_4 = noone;}
				else if (xx >=640/2+35*2-16 and xx<= 640/2+35*2+16) {ui.slot_5 = noone;}
			}
		}
	}

	else if (mouse_check_button_pressed(mb_left))
	{
		if (ui.secilmis_slot==noone)
			{
				if (yy >=360-32)
				{
					if (ui.envanter_secim = noone)
					{
						if (xx>=640/2-35*2-16 and xx<=640/2-35*2+16) 
						{
							ui.slot_1_secilmis=true;
							ui.secilmis_slot=ui.slot_1;
						}
						else if (xx>=640/2-35-16 and xx<=640/2-35+16) 
						{
							ui.slot_2_secilmis=true;
							ui.secilmis_slot=ui.slot_2;
						}
						else if (xx>=640/2-16 and xx<=640/2+16) 
						{
							ui.slot_3_secilmis=true;
							ui.secilmis_slot=ui.slot_3;
						}
						else if (xx>=640/2+35-16 and xx<=640/2+35+16) 
						{
							ui.slot_4_secilmis=true;
							ui.secilmis_slot=ui.slot_4;
						}
						else if (xx>=640/2+35*2-16 and xx<=640/2+35*2+16) 
						{
							ui.slot_5_secilmis=true;
							ui.secilmis_slot=ui.slot_5;
						}
					}
					ui.envanter_secim = noone;
				}
			}
		else
		{
			if (xx>=640/2-35*2-16 and xx<=640/2-35*2+16) 
			{
				if (ui.slot_1_secilmis==true)
				{
					ui.slot_1_secilmis=false;
				}
				else if (ui.slot_2_secilmis==true)
				{
					ui.slot_2=ui.slot_1;
					ui.slot_1=ui.secilmis_slot;
				}
				else if (ui.slot_3_secilmis==true)
				{
					ui.slot_3=ui.slot_1;
					ui.slot_1=ui.secilmis_slot;
				}
				else if (ui.slot_4_secilmis==true)
				{
					ui.slot_4=ui.slot_1;
					ui.slot_1=ui.secilmis_slot;
				}
				else if (ui.slot_5_secilmis==true)
				{
					ui.slot_5=ui.slot_1;
					ui.slot_1=ui.secilmis_slot;
				}
				ui.slot_1_secilmis=false;
				ui.slot_2_secilmis=false;
				ui.slot_3_secilmis=false;
				ui.slot_4_secilmis=false;
				ui.slot_5_secilmis=false;
				ui.secilmis_slot=noone;
			}
			else if (xx>=640/2-35-16 and xx<=640/2-35+16) 
			{
				if (ui.slot_1_secilmis==true)
				{
					ui.slot_1=ui.slot_2;
					ui.slot_2=ui.secilmis_slot;
				}
				else if (ui.slot_2_secilmis==true)
				{
					ui.slot_2_secilmis=false;
				}
				else if (ui.slot_3_secilmis==true)
				{
					ui.slot_3=ui.slot_2;
					ui.slot_2=ui.secilmis_slot;
				}
				else if (ui.slot_4_secilmis==true)
				{
					ui.slot_4=ui.slot_2;
					ui.slot_2=ui.secilmis_slot;
				}
				else if (ui.slot_5_secilmis==true)
				{
					ui.slot_5=ui.slot_2;
					ui.slot_2=ui.secilmis_slot;
				}
				ui.slot_1_secilmis=false;
				ui.slot_2_secilmis=false;
				ui.slot_3_secilmis=false;
				ui.slot_4_secilmis=false;
				ui.slot_5_secilmis=false;
				ui.secilmis_slot=noone;
			}
			else if (xx>=640/2-16 and xx<=640/2+16) 
			{
				if (ui.slot_1_secilmis==true)
				{
					ui.slot_1=ui.slot_3;
					ui.slot_3=ui.secilmis_slot;
				}
				else if (ui.slot_2_secilmis==true)
				{
					ui.slot_2=ui.slot_3;
					ui.slot_3=ui.secilmis_slot;
				}
				else if (ui.slot_3_secilmis==true)
				{
					ui.slot_3_secilmis=false;
				}
				else if (ui.slot_4_secilmis==true)
				{
					ui.slot_4=ui.slot_3;
					ui.slot_3=ui.secilmis_slot;
				}
				else if (ui.slot_5_secilmis==true)
				{
					ui.slot_5=ui.slot_3;
					ui.slot_3=ui.secilmis_slot;
				}
				ui.slot_1_secilmis=false;
				ui.slot_2_secilmis=false;
				ui.slot_3_secilmis=false;
				ui.slot_4_secilmis=false;
				ui.slot_5_secilmis=false;
				ui.secilmis_slot=noone;
			}
			else if (xx>=640/2+35-16 and xx<=640/2+35+16) 
			{
				if (ui.slot_1_secilmis==true)
				{
					ui.slot_1=ui.slot_4;
					ui.slot_4=ui.secilmis_slot;
				}
				else if (ui.slot_2_secilmis==true)
				{
					ui.slot_2=ui.slot_4;
					ui.slot_4=ui.secilmis_slot;
				}
				else if (ui.slot_3_secilmis==true)
				{
					ui.slot_3=ui.slot_4;
					ui.slot_4=ui.secilmis_slot;
				}
				else if (ui.slot_4_secilmis==true)
				{
					ui.slot_4_secilmis=false;
				}
				else if (ui.slot_5_secilmis==true)
				{
					ui.slot_5=ui.slot_4;
					ui.slot_4=ui.secilmis_slot;
				}
				ui.slot_1_secilmis=false;
				ui.slot_2_secilmis=false;
				ui.slot_3_secilmis=false;
				ui.slot_4_secilmis=false;
				ui.slot_5_secilmis=false;
				ui.secilmis_slot=noone;
			}
			else if (xx>=640/2+35*2-16 and xx<=640/2+35*2+16) 
			{
				if (ui.slot_1_secilmis==true)
				{
					ui.slot_1=ui.slot_5;
					ui.slot_5=ui.secilmis_slot;
				}
				else if (ui.slot_2_secilmis==true)
				{
					ui.slot_2=ui.slot_5;
					ui.slot_5=ui.secilmis_slot;
				}
				else if (ui.slot_3_secilmis==true)
				{
					ui.slot_3=ui.slot_5;
					ui.slot_5=ui.secilmis_slot;
				}
				else if (ui.slot_4_secilmis==true)
				{
					ui.slot_4=ui.slot_5;
					ui.slot_5=ui.secilmis_slot;
				}
				else if (ui.slot_5_secilmis==true)
				{
					ui.slot_5_secilmis=false;
				}
				ui.slot_1_secilmis=false;
				ui.slot_2_secilmis=false;
				ui.slot_3_secilmis=false;
				ui.slot_4_secilmis=false;
				ui.slot_5_secilmis=false;
				ui.secilmis_slot=noone;
			}	
		}

	}

	if(ui.envanter_goster == false)
	{
		if (yy < 360-32)
		{
			if (ui.secilmis_slot==noone) 
			{
				obj_oyuncu.durum = oyuncu_durum.kontrol;
			}
		}
	}


}
