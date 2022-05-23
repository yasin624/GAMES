/// @description Degiskenler

image_xscale = 3;
image_yscale = 3;
gereken = silah_turu.balta;
hp = 100;
sallanma = false;

if (!place_empty(x,y))
{
	x = irandom_range(x-100, x+100);
	y = irandom_range(y-100, y+100);
}
depth = -y;


