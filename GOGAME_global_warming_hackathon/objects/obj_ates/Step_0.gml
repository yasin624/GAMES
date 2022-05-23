/// @description Isık yoğunluğu

if (mouse_check_button_pressed(mb_right))
{
	if(instance_position(mouse_x,mouse_y,self))
	{
		var qs = obj_ui;
		
		for (i=0 ; i<10; i++)
		{
			if(qs.envanter[i] == obj_odun)
			{
				if (qs.envanter_numara[i] >=1)
				{
					qs.envanter_numara[i] -= 1;
					if(yogunluk < 1.5)
					{
						yogunluk += 0.5;
						if(yogunluk > 1.5) 
						{ yogunluk = 1.5;}
					}
					if (qs.envanter_numara[i] <1)
					{
						qs.envanter[i] = noone;
						qs.envanter_numara[i] = 0;
					}
				}
			}
		}
	}
}

if (yogunluk > 0)
{ yogunluk -= 0.0001;}
	