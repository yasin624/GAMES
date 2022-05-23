/// @description 
// Get current message
var _arr = messages[| messageID];

var _text = _arr[MSG.TEXT];

// Get message string
messageText = string_copy(_text, 1, messageChar);

// String not fully drawn
if (messageChar <= string_length(_text)) messageChar += messageSpeed;

// String fully drawn
else if (mouse_check_button_pressed(mb_left) or mouse_check_button_pressed(mb_right) or keyboard_check_pressed(vk_space)) {
	// Go to next message
	if (messageID < ds_list_size(messages) - 1) {
		messageID++;
		messageChar = 0;
		global.which_img=messageID;
	}
	// Close textbox
	else {
		instance_destroy();
		global.textBoxDone = 1;
	}
}
