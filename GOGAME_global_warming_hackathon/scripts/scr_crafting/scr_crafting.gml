function scr_crafting() {
	var xx=device_mouse_x_to_gui(0);
	var yy=device_mouse_y_to_gui(0);
	var qs = obj_ui;

	if (mouse_check_button_pressed(mb_left)) 
	{
		if (qs.crafting_goster == true) // Craft menüsü açıldıysa
		{
			if (xx>=0 and xx<=64) 
			{
				if (yy>=40 and yy<=40+64) 
				{
					switch (qs.silah_crafting_goster) 
					{
						case false: {qs.silah_crafting_goster = true;} break;
						case true: {qs.silah_crafting_goster = false;} break;
					}
				}
				else if (yy >= 110 and yy <= 110+64)
				{
					switch (qs.isik_crafting_goster)
					{
						case false: {qs.isik_crafting_goster = true;} break;
						case true: {qs.isik_crafting_goster = false;} break;
					}
				}
			}
		}
		if (qs.silah_crafting_goster==true) //Eğer silahları görebiliyosak
		{
			if (yy>=40 and yy<=40+52) 
			{
				if (xx>=70 and xx<=70+52)
				{
					//Craft Balta
					var malzeme_1 = false; //Balta elde etmek için gerekli malzemeler
					var malzeme_2 = false; //Balta elde etmek için gerekli malzemeler
				
					for (i=1;i<10;i+=1) // Yeterli odun var mı ?
					{
						if (qs.envanter[i] = obj_odun)
						{
							if (qs.envanter_numara[i] >= 3) // Eğer 3 ve 3'ten fazla odun varsa malzeme_1 hazır.
							{
								malzeme_1=true; 
								break;
							}
						}
					}
					for (j=1;j<10;j+=1)
					{
						if (qs.envanter[j] = obj_tas) //Eğer 3 ve 3'ten fazla taş varsa malzeme_2 hazır.
						{
							if (qs.envanter_numara[j]>=3)
							{
								malzeme_2=true;
								break;
							}
						}
					}
					if (malzeme_1==true and malzeme_2==true) // Gerekli tüm malzemelere sahipsek.
					{
						for (k=1;k<10;k+=1) // Envanter yer kontrolü
						{
							if (qs.envanter[k]==noone) // Eğer yer varsa.
							{
								qs.envanter[k] = obj_balta;  // Boş alanı balta için seç.
								qs.envanter_numara[k] += 1;		// Stack değerini 1 arttırıyoruz.
								qs.envanter_numara[i] -= 3;  // Odun stack'ini 3 azalt.
								qs.envanter_numara[j] -= 3; // Taş stack'ini 3 azalt.
														
								if (qs.envanter_numara[i]<1)  // Eğer 1 den az baltamız varsa
								{
							
									qs.envanter[i]=noone; // Envanterde odun olan kısmı boşalt
									qs.envanter_numara[i]=0; 
								}
								if (qs.envanter_numara[j]<1) 
								{
									qs.envanter[j]=noone; // Envanterde taş olan kısmı boşalt
									qs.envanter_numara[j]=0;
								}
								break;
							}
						}
				
					}
				}
				else if (xx>=70+55 and xx<=70+55+52)
				{
					//Craft Hancer - ÖDEV
				}
				else if (xx>=70+55*2 and xx<=70+55*2+52)
				{
					//Craft Pala - ÖDEV
				}
			}
		}
	
		if (qs.isik_crafting_goster == true)
			{
				if (yy >= 110 and yy <= 110+52)
				{
					if (xx >= 70 and xx <= 70+52)
					{
							//Craft Ateş
							var malzeme_1 = false; // Gerekli malzeme
						
							for(i =1 ; i<10; i++) // envanterimizdeki odunları kontrol etme
							{
								if (qs.envanter[i] = obj_odun)
								{
									if (qs.envanter_numara[i] >= 3) // Eğer 3 veya daha fazla odun varsa
									{
										malzeme_1 = true;
										break;
									}
								}
							}
					
							if (malzeme_1 == true) // Eğer gerekli malzemeyi hazırladıysak
							{
								for (k=1 ; k<10; k++) // Envanterde boş yer olup olmadığının kontrolü
								{
									if (qs.envanter[k] = noone) //Eğer envanterde yeterli yer varsa
									{
										qs.envanter[k] = obj_ates; // Boş slotu obj_ates için hazırla.
										qs.envanter_numara[k] +=1; // Ateş için 1 stack daha ekle 
										qs.envanter_numara[i] -=3; //Odun için 3 stack azalt.
								
										if(qs.envanter_numara[i] <1) // Eğer odun 1'den az kaldıysa yani bittiyse stack'i
										{
											qs.envanter[i] = noone; // odunun olduğu slotu noone'a eşitle. yani odunu yok et.
											qs.envanter_numara[i] = 0;
										}
										break;
									}
								}
							}
					}
				}
						
	
			}
		
	}



}
