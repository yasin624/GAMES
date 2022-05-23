scrollY += dragData;
dragData *= 0.9;


if(scrollY > scrollTop){
	scrollY = lerp(scrollY, scrollTop, 0.1);
}
else if(scrollY < -scrollBottom){
	scrollY = lerp(scrollY, -scrollBottom, 0.1);
}