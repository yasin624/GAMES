// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function QuestDBScript(array){
var ds_grid;
 show_debug_message(array);
var array_num_quests = array_length_1d(array);
var array_w = array_length_1d(array[0]);

ds_grid = ds_grid_create(array_w, array_num_quests);
var yy = 0;
repeat(array_num_quests){
	var quest_array = array[yy];
	var xx=0; 
	repeat(array_w){
		ds_grid[# xx,yy] = quest_array[xx]
		xx++
	}
	yy++
}
return ds_grid;
}
