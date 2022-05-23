function scr_silah_secme() {
	var sahip = obj_oyuncu;
	var resim = ceil (sahip.image_index)-1;


	x = sahip.x;
	y = sahip.y;

	switch (sahip.sprite_index)
	{
		case obj_oyuncu.anim_idle:
		if(resim == 0 or resim = 9) {draw_sprite_ext(sprite_index,image_index, sahip.x-14*sahip.image_xscale, sahip.y-14, sahip.image_xscale, sahip.image_yscale,290*sahip.image_xscale, c_white,1);}
		if(resim == 1 or resim = 8) {draw_sprite_ext(sprite_index,image_index, sahip.x-13*sahip.image_xscale, sahip.y-13, sahip.image_xscale, sahip.image_yscale,280*sahip.image_xscale, c_white,1);}
		if(resim == 2 or resim = 7) {draw_sprite_ext(sprite_index,image_index, sahip.x-12*sahip.image_xscale, sahip.y-12, sahip.image_xscale, sahip.image_yscale,270*sahip.image_xscale, c_white,1);}
		if(resim == 3 or resim = 6) {draw_sprite_ext(sprite_index,image_index, sahip.x-11*sahip.image_xscale, sahip.y-11, sahip.image_xscale, sahip.image_yscale,260*sahip.image_xscale, c_white,1);}
		if(resim == 4 or resim = 5) {draw_sprite_ext(sprite_index,image_index, sahip.x-10*sahip.image_xscale, sahip.y-10, sahip.image_xscale, sahip.image_yscale,250*sahip.image_xscale, c_white,1);}
		break;
	
		case obj_oyuncu.anim_kosma:
		if(resim == 0 or resim = 9) {draw_sprite_ext(sprite_index,image_index, sahip.x-14*sahip.image_xscale, sahip.y-14, sahip.image_xscale, sahip.image_yscale,290*sahip.image_xscale, c_white,1);}
		if(resim == 1 or resim = 8) {draw_sprite_ext(sprite_index,image_index, sahip.x-10*sahip.image_xscale, sahip.y-13, sahip.image_xscale, sahip.image_yscale,280*sahip.image_xscale, c_white,1);}
		if(resim == 2 or resim = 7) {draw_sprite_ext(sprite_index,image_index, sahip.x-6*sahip.image_xscale, sahip.y-13, sahip.image_xscale, sahip.image_yscale,270*sahip.image_xscale, c_white,1);}
		if(resim == 3 or resim = 6) {draw_sprite_ext(sprite_index,image_index, sahip.x-2*sahip.image_xscale, sahip.y-14, sahip.image_xscale, sahip.image_yscale,260*sahip.image_xscale, c_white,1);}
		if(resim == 4 or resim = 5) {draw_sprite_ext(sprite_index,image_index, sahip.x+1*sahip.image_xscale, sahip.y-16, sahip.image_xscale, sahip.image_yscale,250*sahip.image_xscale, c_white,1);}
		break;
	
		case obj_oyuncu.anim_hasat:
		if(resim == 0 or resim = 9) {draw_sprite_ext(sprite_index,image_index, sahip.x+1*sahip.image_xscale, sahip.y-24, sahip.image_xscale, sahip.image_yscale,0*sahip.image_xscale, c_white,1);}
		if(resim == 1 or resim = 8) {draw_sprite_ext(sprite_index,image_index, sahip.x+3*sahip.image_xscale, sahip.y-24, sahip.image_xscale, sahip.image_yscale,-10*sahip.image_xscale, c_white,1);}
		if(resim == 2 or resim = 7) {draw_sprite_ext(sprite_index,image_index, sahip.x+4*sahip.image_xscale, sahip.y-23, sahip.image_xscale, sahip.image_yscale,-30*sahip.image_xscale, c_white,1);}
		if(resim == 3 or resim = 6) {draw_sprite_ext(sprite_index,image_index, sahip.x+6*sahip.image_xscale, sahip.y-22, sahip.image_xscale, sahip.image_yscale,-50*sahip.image_xscale, c_white,1);}
		if(resim == 4 or resim = 5) {draw_sprite_ext(sprite_index,image_index, sahip.x+9*sahip.image_xscale, sahip.y-21, sahip.image_xscale, sahip.image_yscale,-70*sahip.image_xscale, c_white,1);}
		break;
	
	
	
	}


}
