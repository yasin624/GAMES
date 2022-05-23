function scr_oyuncu_envanter() {
	var xx=device_mouse_x_to_gui(0);
	var yy=device_mouse_y_to_gui(0);
	var qs = obj_ui;

	if (mouse_check_button_pressed(mb_left))
	{
		if (qs.envanter_secim == noone)
		{
			if (xx>=640/2-35-16 and xx<=640/2-35+16) // SOL TARAFTAKİ SLOTLAR  (X'E GÖRE)
			{
				if (yy>=360-105-35-16 and yy<=360-105-35+16) {qs.envanter_secim = qs.envanter[1];} // En üstteki slot  (Y'YE GÖRE)
				else if (yy>=360-105-16 and yy<=360-105+16) {qs.envanter_secim = qs. envanter[4];} // Ortadaki slot  (Y'YE GÖRE)
				else if (yy>=360-105+35-16 and yy<=360-105+35+16) {qs.envanter_secim = qs.envanter[7];} // Alttaki slot  (Y'YE GÖRE)
			}
			else if (xx>=640/2-16 and xx<=640/2+16) // ORTADAKİ SLOTLAR  (X'E GÖRE)
			{
				if (yy>=360-105-35-16 and yy<=360-105-35+16) {qs.envanter_secim = qs.envanter[2];}// En üstteki slot  (Y'YE GÖRE)
				else if (yy>=360-105-16 and yy <=360-105+16) {qs.envanter_secim = qs.envanter[5];}// Ortadaki slot  (Y'YE GÖRE)
				else if (yy>=360-105+35-16 and yy<=360-105+35+16) {qs.envanter_secim = qs.envanter[8];}// Alttaki slot  (Y'YE GÖRE)
			}
			else if (xx>=640/2+35-16 and xx<=640/2+35+16) //ORTADAKİ SLOTLAR  (X'E GÖRE)
			{
				if (yy>=360-105-35-16 and yy<=360-105-35+16) {qs.envanter_secim = qs.envanter[3];}// En üstteki slot  (Y'YE GÖRE)
				else if (yy>=360-105-16 and yy<=360-105+16) {qs.envanter_secim = qs.envanter[6];}// Ortadaki slot  (Y'YE GÖRE)
				else if (yy>=360-105+35-16 and yy<=360-105+35+16) {qs.envanter_secim = qs.envanter[9];}// Alttaki slot  (Y'YE GÖRE)
			}
		}
		else 
		{
			if (xx>=640/2-35-16 and xx<=640/2-35+16)
			{
				if (yy>=360-105-35-16 and yy<=360-105-35+16) 
				{
					for (i=1;i<10;i+=1)
					{
						if (qs.envanter_secim == qs.envanter[i])
						{
							qs.envanter[i] = qs.envanter[1];
							var num = qs.envanter_numara[i];
							qs.envanter_numara[i] = qs.envanter_numara[1];
							qs.envanter_numara[1] = num;
							break;
					
						}
					}
					qs.envanter[1] = qs.envanter_secim;
					qs.envanter_secim = noone;		
				}
			
			
				else if (yy>=360-105-16 and yy<=360-105+16) 
				{
					for (i=1;i<10;i+=1)
					{
						if (qs.envanter_secim == qs.envanter[i])
						{
							qs.envanter[i] = qs.envanter[4];
							var num = qs.envanter_numara[i];
							qs.envanter_numara[i] = qs.envanter_numara[4];
							qs.envanter_numara[4] = num;
							break;
						}
					}
					qs.envanter[4] = qs.envanter_secim;
					qs.envanter_secim = noone;	
				}
			
			
				else if (yy>=360-105+35-16 and yy<=360-105+35+16) 
				{
					for (i=1;i<10;i+=1)
					{
						if (qs.envanter_secim == qs.envanter[i])
						{
							qs.envanter[i] = qs.envanter[7];
							var num = qs.envanter_numara[i];
							qs.envanter_numara[i] = qs.envanter_numara[7];
							qs.envanter_numara[7] = num;
							break;
						}
					}
					qs.envanter[7] = qs.envanter_secim;
					qs.envanter_secim = noone;	
				}
			}
		
		
			else if (xx>=640/2-16 and xx<=640/2+16)
			{
				if (yy>=360-105-35-16 and yy<=360-105-35+16) 
				{
					for (i=1;i<10;i+=1)
					{
						if (qs.envanter_secim == qs.envanter[i])
						{
							qs.envanter[i] = qs.envanter[2];
							var num = qs.envanter_numara[i];
							qs.envanter_numara[i] = qs.envanter_numara[2];
							qs.envanter_numara[2] = num;
							break;
						}
					}
					qs.envanter[2] = qs.envanter_secim;
					qs.envanter_secim = noone;	
				}
			
			
				else if (yy>=360-105-16 and yy<=360-105+16) 
				{
					for (i=1;i<10;i+=1)
					{
						if (qs.envanter_secim == qs.envanter[i])
						{
							qs.envanter[i] = qs.envanter[5];
							var num = qs.envanter_numara[i];
							qs.envanter_numara[i] = qs.envanter_numara[5];
							qs.envanter_numara[5] = num;
							break;
						}
					}
					qs.envanter[5] = qs.envanter_secim;
					qs.envanter_secim = noone;	
				}
			
			
				else if (yy>=360-105+35-16 and yy<=360-105+35+16) 
				{
					for (i=1;i<10;i+=1)
					{
						if (qs.envanter_secim == qs.envanter[i])
						{
							qs.envanter[i] = qs.envanter[8];
							var num = qs.envanter_numara[i];
							qs.envanter_numara[i] = qs.envanter_numara[8];
							qs.envanter_numara[8] = num;
							break;
						}
					}
					qs.envanter[8] = qs.envanter_secim;
					qs.envanter_secim = noone;	
				}
			}
		
		
			else if (xx>=640/2+35-16 and xx<=640/2+35+16)
			{
				if (yy>=360-105-35-16 and yy<=360-105-35+16) 
				{
					for (i=1;i<10;i+=1)
					{
						if (qs.envanter_secim == qs.envanter[i])
						{
							qs.envanter[i] = qs.envanter[3];
							var num = qs.envanter_numara[i];
							qs.envanter_numara[i] = qs.envanter_numara[3];
							qs.envanter_numara[3] = num;
							break;
						}
					}
					qs.envanter[3] = qs.envanter_secim;
					qs.envanter_secim = noone;
				}
			
			
				else if (yy>=360-105-16 and yy<=360-105+16) 
				{
					for (i=1;i<10;i+=1)
					{
						if (qs.envanter_secim == qs.envanter[i])
						{
							qs.envanter[i] = qs.envanter[6];
							var num = qs.envanter_numara[i];
							qs.envanter_numara[i] = qs.envanter_numara[6];
							qs.envanter_numara[6] = num;
							break;
						}
					}
					qs.envanter[6] = qs.envanter_secim;
					qs.envanter_secim = noone;
				}
			
			
				else if (yy>=360-105+35-16 and yy<=360-105+35+16) 
				{
					for (i=1;i<10;i+=1)
					{
						if (qs.envanter_secim == qs.envanter[i])
						{
							qs.envanter[i] = qs.envanter[9];
							var num = qs.envanter_numara[i];
							qs.envanter_numara[i] = qs.envanter_numara[9];
							qs.envanter_numara[9] = num;
							break;
						}
					}
					qs.envanter[9] = qs.envanter_secim;
					qs.envanter_secim = noone;
				}
			
			}
		
			// HIZLI SEÇİM
			if (yy>=360-32)
				{
					if (xx>=640/2-35*2-16 and xx<=640/2-35*2+16) {qs.slot_1 = qs.envanter_secim;}
					else if (xx>=640/2-35-16 and xx<=640/2-35+16) {qs.slot_2 = qs.envanter_secim;}
					else if (xx>=640/2-16 and xx<=640/2+16) {qs.slot_3 = qs.envanter_secim;}
					else if (xx>=640/2+35-16 and xx<=640/2+35+16) {qs.slot_4 = qs.envanter_secim;}
					else if (xx>=640/2+35*2-16 and xx<=640/2+35*2+16) {qs.slot_5 = qs.envanter_secim;}
				}
			
				// İtemleri yere atma
				if (yy <= 360-32)
				{
					if (xx >=640/2+133/2 or xx <= 640/2-133/2)
					{
						var item = instance_create_layer(mouse_x, mouse_y, "Instances", qs.envanter_secim);
						item.yerde = true;
					
						for ( i=1 ; i <10; i++)
						{
							if ( qs.envanter_secim == qs.envanter[i])
							{
								qs.envanter[i] = noone;
								item.my_stack = qs.envanter_numara[i];
								qs.envanter_numara[i] = 0;
								break;
							}
						}
						qs.envanter_secim = noone;
					}	
				}
		}
	
	}

	else if (mouse_check_button_pressed(mb_right))
	{
		if (qs.envanter_secim==noone)
		{
			if (xx>=640/2-35-16 and xx<=640/2-35+16) // SOLDAKİ SLOTLAR
			{ // Üstteki slot
				if (yy>=360-105-35-16 and yy<=360-105-35+16) 
				{
					if (object_get_parent(qs.envanter[1])==obj_parent_yiyecek) 
					{
						aclik += 5;
						qs.envanter_numara[1] -= 1;
						if (qs.envanter_numara[1] < 1) {qs.envanter[1] = noone;}
					}
				}// Ortadaki slot
				else if (yy>=360-105-16 and yy<=360-105+16) 
				{
					if (object_get_parent(qs.envanter[4])==obj_parent_yiyecek) 
					{
						aclik += 5;
						qs.envanter_numara[4] -= 1;
						if (qs.envanter_numara[4] < 1) {qs.envanter[4] = noone;}
					}
				} //Alttaki slot
				else if (yy>=360-105+35-16 and yy<=360-105+35+16) 
				{
					if (object_get_parent(qs.envanter[7])==obj_parent_yiyecek) 
					{
						aclik += 5;
						qs.envanter_numara[7] -= 1;
						if (qs.envanter_numara[7] < 1) {qs.envanter[7] = noone;}
					}
				} 
			}
		
		
			else if (xx>=640/2-16 and xx<=640/2+16) // ORTADAKİ SLOTLAR
			{
				if (yy>=360-105-35-16 and yy<=360-105-35+16) 
				{
					if (object_get_parent(qs.envanter[2])==obj_parent_yiyecek) 
					{
						aclik += 5;
						qs.envanter_numara[2] -= 1;
						if (qs.envanter_numara[2] < 1) {qs.envanter[2] = noone;}
					}
				}
				else if (yy>=360-105-16 and yy<=360-105+16) 
				{
					if (object_get_parent(qs.envanter[5])==obj_parent_yiyecek) 
					{
						aclik += 5;
						qs.envanter_numara[5] -= 1;
						if (qs.envanter_numara[5] < 1) {qs.envanter[5] = noone;}
					}
				}
				else if (yy>=360-105+35-16 and yy<=360-105+35+16) 
				{
					if (object_get_parent(qs.envanter[8])==obj_parent_yiyecek) 
					{
						aclik += 5;
						qs.envanter_numara[8] -= 1;
						if (qs.envanter_numara[8] < 1) {qs.envanter[8] = noone;}
					}
				}
			}
		
		
			else if (xx>=640/2+35-16 and xx<=640/2+35+16) //SAĞDAKİ SLOTLAR
			{
				if (yy>=360-105-35-16 and yy<=360-105-35+16) 
				{
					if (object_get_parent(qs.envanter[3])==obj_parent_yiyecek) 
					{
						aclik += 5;
						qs.envanter_numara[3] -= 1;
						if (qs.envanter_numara[3] < 1) {qs.envanter[3] = noone;}
					}
				}
				else if (yy>=360-105-16 and yy<=360-105+16) 
				{
					if (object_get_parent(qs.envanter[6])==obj_parent_yiyecek) 
					{
						aclik += 5;
						qs.envanter_numara[6] -= 1;
						if (qs.envanter_numara[6] < 1) {qs.envanter[6] = noone;}
					}
				}
				else if (yy>=360-105+35-16 and yy<=360-105+35+16) 
				{
					if (object_get_parent(qs.envanter[9])==obj_parent_yiyecek) 
					{
						aclik += 5;
						qs.envanter_numara[9] -= 1;
						if (qs.envanter_numara[9] < 1) {qs.envanter[9] = noone;}
					}
				}
			}
		}
	}



}
