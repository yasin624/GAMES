for(i = 1 ; i < 50 ; i++){
	yy = (((btn_height / 2)+spaceBetweenItem) * i) + scr_scrollable_get_scroll_data(obj_scrollable) ;
	draw_sprite(spr_btn,0,screenWidth/2, yy  );
}

scr_scrollable_set_Last_Item_Position(obj_scrollable , yy + (btn_height / 2) );


