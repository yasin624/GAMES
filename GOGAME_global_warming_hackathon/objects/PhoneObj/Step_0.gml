/// @description Insert description here
// You can write your code in this editor
/// @description Insert description here
// You can write your code in this editor
var grid = global.ds_quests;
var i =0;
repeat(global.ds_quests_number){
switch(i){
	case quests.elektrik_uret:
	switch(grid[# 1,i]){
		case -1:
		break;
		case 0:
			if global.turdToplandi == 1{
			grid[# 1,i]+=1;
			turdmesaj=1;
			alarm[5] = 5*room_speed;
			}
			//with(obj_oyuncu){
			//	var inst=instance_place(x,y,obj_ates);
			//	if(inst!=noone){with(inst){
			//		grid[# 1,i]+=1;
			//		}
			//	}
			//}
		case 1:
			if global.energyProduced==1{
				grid[# 1,i]+=1;
				biomesaj=1;
				alarm[6] = 5*room_speed;
			}
		break;
	}
	break;
	case quests.yangin_sondur:
	switch(grid[# 1,i]){
		case -1:
		break;
		case 0:
			if global.fireSondur ==1{
				grid[# 1,i]+=1;
				global.uiOpen=1;
				deathmessage=1;
					global.fireSondur =0
						alarm[0] = 5*room_speed;
						
					}
			break;
		case 1:
			if global.adamTopla==1{
				grid[# 1,i]+=1;
				manPowerMessage =1;
				alarm[1] = 5*room_speed;
				
			}
		break;
		case 2:
			if global.fireSondur ==1{
				grid[# 1,i]+=1
				layer_destroy(layer_get_id("obj_cimen_usutndeki_her_sey") )
				winMessage=1;
				alarm[2] = 5*room_speed;
				
			}
		break;
	}
	break;
	case quests.filtre_tak:
	switch(grid[# 1,i]){
		case -1:
		break;
		case 0:
			if global.Filtre == 1{
			grid[# 1,i]+=1;
			filterMessage=1;
			alarm[3] = 5*room_speed;
			}
		case 1:
			if global.bacaTakildi==1{
				
				grid[# 1,i]+=1;
				endMessage=1;
				alarm[4] = 5*room_speed;
			}
		break;
	}
	break;
}
i++;
}
///
x=camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])-110;
y=camera_get_view_y(view_camera[0])+camera_get_view_height(view_camera[0])-115;
global.inst.x=x+15
global.inst.y=y+25
global.questButton.x=x+60
global.questButton.y=y+25
if deathmessage ==1{
	if dialogOn ==0{
		d=0;
		dd=0;
		dialogOn =1;
	}
	if (!instance_exists(oTextbox)) {
		// Create
		var _tb = instance_create_layer(0, 0, "Instances", oTextbox);
	
		// Add messages to textbox's list
		var _list = _tb.messages;
	
		for (var i=0; i<array_length_1d(msgFireDie); i++) {
			var _arr = msgFireDie[i];
		
			ds_list_add(_list, _arr);
		}
	}
	
	if d<5{
		dd++
		if dd%5==0{
			d++;
		}
	}
}else if global.filtretak ==1{
	if dialogOn ==0{
		d=0;
		dd=0;
		dialogOn =1;
	}
	if (!instance_exists(oTextbox)) {
		// Create
		var _tb = instance_create_layer(0, 0, "Instances", oTextbox);
	
		// Add messages to textbox's list
		var _list = _tb.messages;
	
		for (var i=0; i<array_length_1d(msgFiltretak); i++) {
			var _arr = msgFiltretak[i];
		
			ds_list_add(_list, _arr);
		}
	}
	
	if d<5{
		dd++
		if dd%5==0{
			d++;
		}
	}
}else if turdmesaj ==1{
	if dialogOn ==0{
		d=0;
		dd=0;
		dialogOn =1;
	}
	if (!instance_exists(oTextbox)) {
		// Create
		var _tb = instance_create_layer(0, 0, "Instances", oTextbox);
	
		// Add messages to textbox's list
		var _list = _tb.messages;
	
		for (var i=0; i<array_length_1d(msgTurdTopla); i++) {
			var _arr = msgTurdTopla[i];
		
			ds_list_add(_list, _arr);
		}
	}
	
	if d<5{
		dd++
		if dd%5==0{
			d++;
		}
	}
}else if biomesaj ==1{
	if dialogOn ==0{
		d=0;
		dd=0;
		dialogOn =1;
	}
	if (!instance_exists(oTextbox)) {
		// Create
		var _tb = instance_create_layer(0, 0, "Instances", oTextbox);
	
		// Add messages to textbox's list
		var _list = _tb.messages;
	
		for (var i=0; i<array_length_1d(msgBioGas); i++) {
			var _arr = msgBioGas[i];
		
			ds_list_add(_list, _arr);
		}
	}
	
	if d<5{
		dd++
		if dd%5==0{
			d++;
		}
	}
}else if filterMessage ==1{
	if dialogOn ==0{
		d=0;
		dd=0;
		dialogOn =1;
	}
	if (!instance_exists(oTextbox)) {
		// Create
		var _tb = instance_create_layer(0, 0, "Instances", oTextbox);
	
		// Add messages to textbox's list
		var _list = _tb.messages;
	
		for (var i=0; i<array_length_1d(msgFiltre); i++) {
			var _arr = msgFiltre[i];
		
			ds_list_add(_list, _arr);
		}
	}
	
	if d<5{
		dd++
		if dd%5==0{
			d++;
		}
	}
}else if endMessage ==1{
	if dialogOn ==0{
		d=0;
		dd=0;
		dialogOn =1;
	}
	if (!instance_exists(oTextbox)) {
		// Create
		var _tb = instance_create_layer(0, 0, "Instances", oTextbox);
	
		// Add messages to textbox's list
		var _list = _tb.messages;
	
		for (var i=0; i<array_length_1d(msgEndGame); i++) {
			var _arr = msgEndGame[i];
		
			ds_list_add(_list, _arr);
		}
	}
	
	if d<5{
		dd++
		if dd%5==0{
			d++;
		}
	}
}else if manPowerMessage ==1{
	if dialogOn ==0{
		d=0;
		dd=0;
		dialogOn =1;
	}
	if (!instance_exists(oTextbox)) {
		// Create
		var _tb = instance_create_layer(0, 0, "Instances", oTextbox);
	
		// Add messages to textbox's list
		var _list = _tb.messages;
	
		for (var i=0; i<array_length_1d(msgAdamTopla); i++) {
			var _arr = msgAdamTopla[i];
		
			ds_list_add(_list, _arr);
		}
	}
	
	
	if d<5{
		dd++
		if dd%5==0{
			d++;
		}
	}
}else if winMessage ==1{
	if dialogOn ==0{
		d=0;
		dd=0;
		dialogOn =1;
	}
	if (!instance_exists(oTextbox)) {
		// Create
		var _tb = instance_create_layer(0, 0, "Instances", oTextbox);
	
		// Add messages to textbox's list
		var _list = _tb.messages;
	
		for (var i=0; i<array_length_1d(msgWin); i++) {
			var _arr = msgWin[i];
		
			ds_list_add(_list, _arr);
		}
	}
	
	
	if d<5{
		dd++
		if dd%5==0{
			d++;
		}
	}
}else if global.houseDialog ==1{
	if dialogOn ==0{
		d=0;
		dd=0;
		dialogOn =1;
	}
	if (!instance_exists(oTextbox)) {
		// Create
		var _tb = instance_create_layer(0, 0, "Instances", oTextbox);
	
		// Add messages to textbox's list
		var _list = _tb.messages;
	
		for (var i=0; i<array_length_1d(msgHouse); i++) {
			var _arr = msgHouse[i];
		
			ds_list_add(_list, _arr);
		}
	}
	if d<5{
		dd++
		if dd%5==0{
			d++;
		}
	}
}else if global.mushroomDialog ==1{
	if dialogOn ==0{
		d=0;
		dd=0;
		dialogOn =1;
	}
	if (!instance_exists(oTextbox)) {
		// Create
		var _tb = instance_create_layer(0, 0, "Instances", oTextbox);
	
		// Add messages to textbox's list
		var _list = _tb.messages;
	
		for (var i=0; i<array_length_1d(msgMushroom); i++) {
			var _arr = msgMushroom[i];
		
			ds_list_add(_list, _arr);
		}
	}
	if d<5{
		dd++
		if dd%5==0{
			d++;
		}
	}
}else if global.biogasDialog ==1{
	if dialogOn ==0{
		d=0;
		dd=0;
		dialogOn =1;
	}
	if (!instance_exists(oTextbox)) {
		// Create
		var _tb = instance_create_layer(0, 0, "Instances", oTextbox);
	
		// Add messages to textbox's list
		var _list = _tb.messages;
	
		for (var i=0; i<array_length_1d(msgBiogas); i++) {
			var _arr = msgBiogas[i];
		
			ds_list_add(_list, _arr);
		}
	}
	if d<5{
		dd++
		if dd%5==0{
			d++;
		}
	}
}else if global.controlpanelDialog ==1{
	if dialogOn ==0{
		d=0;
		dd=0;
		dialogOn =1;
	}
	if (!instance_exists(oTextbox)) {
		// Create
		var _tb = instance_create_layer(0, 0, "Instances", oTextbox);
	
		// Add messages to textbox's list
		var _list = _tb.messages;
	
		for (var i=0; i<array_length_1d(msgControlpanel); i++) {
			var _arr = msgControlpanel[i];
		
			ds_list_add(_list, _arr);
		}
	}
	if d<5{
		dd++
		if dd%5==0{
			d++;
		}
	}
}else if global.forestDialog ==1{
	if dialogOn ==0{
		d=0;
		dd=0;
		dialogOn =1;
	}
	if (!instance_exists(oTextbox)) {
		// Create
		var _tb = instance_create_layer(0, 0, "Instances", oTextbox);
	
		// Add messages to textbox's list
		var _list = _tb.messages;
	
		for (var i=0; i<array_length_1d(msgForestentry); i++) {
			var _arr = msgForestentry[i];
		
			ds_list_add(_list, _arr);
		}
	}
	if d<5{
		dd++
		if dd%5==0{
			d++;
		}
	}
}else if global.greenportalDialog ==1{
	if dialogOn ==0{
		d=0;
		dd=0;
		dialogOn =1;
	}
	if (!instance_exists(oTextbox)) {
		// Create
		var _tb = instance_create_layer(0, 0, "Instances", oTextbox);
	
		// Add messages to textbox's list
		var _list = _tb.messages;
	
		for (var i=0; i<array_length_1d(msgGreenportal); i++) {
			var _arr = msgGreenportal[i];
		
			ds_list_add(_list, _arr);
		}
	}
	if d<5{
		dd++
		if dd%5==0{
			d++;
		}
	}
}else if global.obeservatoryDialog ==1{
	if dialogOn ==0{
		d=0;
		dd=0;
		dialogOn =1;
	}
	if (!instance_exists(oTextbox)) {
		// Create
		var _tb = instance_create_layer(0, 0, "Instances", oTextbox);
	
		// Add messages to textbox's list
		var _list = _tb.messages;
	
		for (var i=0; i<array_length_1d(msgObservatory); i++) {
			var _arr = msgObservatory[i];
		
			ds_list_add(_list, _arr);
		}
	}
	if d<5{
		dd++
		if dd%5==0{
			d++;
		}
	}
}else if global.purpleportalDialog ==1{
	if dialogOn ==0{
		d=0;
		dd=0;
		dialogOn =1;
	}
	if (!instance_exists(oTextbox)) {
		// Create
		var _tb = instance_create_layer(0, 0, "Instances", oTextbox);
	
		// Add messages to textbox's list
		var _list = _tb.messages;
	
		for (var i=0; i<array_length_1d(msgPurpleportal); i++) {
			var _arr = msgPurpleportal[i];
		
			ds_list_add(_list, _arr);
		}
	}
	if d<5{
		dd++
		if dd%5==0{
			d++;
		}
	}
}else if global.recyclerDialog ==1{
	if dialogOn ==0{
		d=0;
		dd=0;
		dialogOn =1;
	}
	if (!instance_exists(oTextbox)) {
		// Create
		var _tb = instance_create_layer(0, 0, "Instances", oTextbox);
	
		// Add messages to textbox's list
		var _list = _tb.messages;
	
		for (var i=0; i<array_length_1d(msgRecycler); i++) {
			var _arr = msgRecycler[i];
		
			ds_list_add(_list, _arr);
		}
	}
	if d<5{
		dd++
		if dd%5==0{
			d++;
		}
	}
}else if global.redportalDialog ==1{
	if dialogOn ==0{
		d=0;
		dd=0;
		dialogOn =1;
	}
	if (!instance_exists(oTextbox)) {
		// Create
		var _tb = instance_create_layer(0, 0, "Instances", oTextbox);
	
		// Add messages to textbox's list
		var _list = _tb.messages;
	
		for (var i=0; i<array_length_1d(msgRedportal); i++) {
			var _arr = msgRedportal[i];
		
			ds_list_add(_list, _arr);
		}
	}
	if d<5{
		dd++
		if dd%5==0{
			d++;
		}
	}
}else if global.solarDialog ==1{
	if dialogOn ==0{
		d=0;
		dd=0;
		dialogOn =1;
	}
	if (!instance_exists(oTextbox)) {
		// Create
		var _tb = instance_create_layer(0, 0, "Instances", oTextbox);
	
		// Add messages to textbox's list
		var _list = _tb.messages;
	
		for (var i=0; i<array_length_1d(msgSolar); i++) {
			var _arr = msgSolar[i];
		
			ds_list_add(_list, _arr);
		}
	}
	if d<5{
		dd++
		if dd%5==0{
			d++;
		}
	}
}else if global.yellowportalDialog ==1{
	if dialogOn ==0{
		d=0;
		dd=0;
		dialogOn =1;
	}
	if (!instance_exists(oTextbox)) {
		// Create
		var _tb = instance_create_layer(0, 0, "Instances", oTextbox);
	
		// Add messages to textbox's list
		var _list = _tb.messages;
	
		for (var i=0; i<array_length_1d(msgYellowportal); i++) {
			var _arr = msgYellowportal[i];
		
			ds_list_add(_list, _arr);
		}
	}
	if d<5{
		dd++
		if dd%5==0{
			d++;
		}
	}
}else if global.tavukinekDialog ==1{
	if dialogOn ==0{
		d=0;
		dd=0;
		dialogOn =1;
	}
	if (!instance_exists(oTextbox)) {
		// Create
		var _tb = instance_create_layer(0, 0, "Instances", oTextbox);
	
		// Add messages to textbox's list
		var _list = _tb.messages;
	
		for (var i=0; i<array_length_1d(msgInekTavuk); i++) {
			var _arr = msgInekTavuk[i];
		
			ds_list_add(_list, _arr);
		}
	}
	if d<5{
		dd++
		if dd%5==0{
			d++;
		}
	}
}else{
	instance_destroy(oTextbox)
	dialogOn =0
}


