/// @description Insert description here
// You can write your code in this editor
var str ="";

var i=0;

repeat(global.ds_quests_number){
	var stage = global.ds_quests[# 1,i];
	draw_sprite(Ic_Uyarilar,k, 150, i*20);
	if stage != -1 {
		var array =global.ds_quests[# 2,i];
		str += "\n" + string_upper(global.ds_quests[# 0, i])+": " +array[stage];
		str += "\n"
	}
	i++;
}
if k<3{
	z++
	if z%10==0{
		k++;
	}
}

draw_set_font(QuestFont);
draw_text_transformed(300,0,str,.5,.5,0)
