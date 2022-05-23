/// @description Insert description here
// You can write your code in this editor
if global.uiOpen==1{
	//draw_sprite(SprUpUi,0,960/2,540/2)
	draw_set_colour(c_white);
	draw_set_font(font0)
	draw_text(960/8, 540/8, "Adam Gucu\n 5 Enerji");
	draw_text_colour(960/3, 540/8,global.ManPower, c_lime, c_lime, c_green, c_green, 1);
	draw_text(960/8, 540/4, "Filtre\n 10 Enerji");
	draw_text_colour(960/3, 540/4,global.Filtre, c_lime, c_lime, c_green, c_green, 1);

}
