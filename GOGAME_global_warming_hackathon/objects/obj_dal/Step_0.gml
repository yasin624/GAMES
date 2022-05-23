depth = -y;

if (path_index == -1)
{baslatma = true;}

if (baslatma == true)
{
	if (instance_place(x,y, obj_parent_loot))
	{
		move_outside_all(irandom(360),2);
	}
	
	else
	{
		if (mouse_check_button_pressed(mb_left))
		{
			if(instance_position(mouse_x, mouse_y, self))
			scr_envanter_ekleme();
		}
	}
	
}