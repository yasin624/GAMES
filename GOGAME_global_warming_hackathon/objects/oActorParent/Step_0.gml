/// @description
// Movement
var hsp = lengthdir_x(spd, dir);
var vsp = lengthdir_y(spd, dir);

x += hsp;
y += vsp;

// Sprites
if (spd){
	sprite_index = sprWalk;
	
	//Flip
	image_xscale = sign(hsp);
	if (image_xscale==0) image_xscale = 1;
}
else{
	sprite_index = sprIdle;
}
