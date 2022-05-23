/// @description 
// Messages
messages = ds_list_create();
messageID = 0;

// Current message
messageText = "";
messageChar = 0;
messageSpeed = 0.3;

// Message properties
enum MSG {
	TEXT,
	NAME,
	IMAGE
}

// GUI dimensions
var _guiW = display_get_gui_width();
var _guiH = display_get_gui_height();

// Textbox dimensions
height = floor(_guiH * 0.25);
width = _guiW;

// Position on screen
x = 0;
y = _guiH - height;

// Other properties
padding = 8;