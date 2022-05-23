/// @description 
// Get current message data
var _arr = messages[| messageID];

var _name = _arr[MSG.NAME];
var _image = _arr[MSG.IMAGE];

// Set text font
draw_set_font(font0);

// Draw textbox
draw_9slice(x, y, width, height, sTextbox, 0);

// Draw position
var _drawX = x + padding;
var _drawY = y + padding;

// Draw image
if (sprite_exists(_image)) {
	var _imageW = sprite_get_width(_image);
	var _imageH = sprite_get_height(_image);
	
	// Draw
	draw_sprite(_image, 0, _drawX + _imageW / 2, _drawY + _imageH / 2);
	
	// Offset drawing position for text
	_drawX += _imageW + padding;
}

// Text color
draw_set_color(c_black);

// Draw name
draw_text(_drawX, _drawY, _name);

_drawY += string_height(_name) + padding;

// Get maximum width for text
var _maxW = width - (_drawX + padding);

// Draw text
draw_text_ext(_drawX, _drawY, messageText, -1, _maxW);

// Reset
draw_set_color(c_white)