function scr_envanter_ekleme() {
	var ui = obj_ui;
	var alindi = false;

	for (i=1; i<10; i++)
	{
		if (ui.envanter[i] == object_index)
		{
			if (ui.envanter[i] == obj_turd.object_index)
			{
				global.turdToplandi = 1;
			}
			if (alindi==false)
			{ 
				if(ui.envanter_numara[i] + my_stack < max_stack)
				{
					ui.envanter_numara[i] += my_stack;
					alindi = true;
					instance_destroy();
					break;
				}
			}
		}
	}


	if (alindi == false)
	{
		for (i=1 ; i<10; i++)
		{
			if(ui.envanter[i] == noone)
			{
				ui.envanter[i] = object_index;
				ui.envanter_numara[i] += my_stack;
				alindi = true;
				instance_destroy();
				break;
			}
		}
	}
	
	
	
	
	
	
	
	
	
			


}
