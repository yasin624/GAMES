/// @description Insert description here
// You can write your code in this editor
if first {
global.missionsObj=instance_create_layer(x-15, y-25, "Apps", QuestDBObj);
first =0
}else{
	instance_destroy(QuestDBObj)
	first=1
}
