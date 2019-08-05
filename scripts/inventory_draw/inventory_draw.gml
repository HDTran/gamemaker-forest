///@arg x
///@arg y
if (!o_game.paused_) exit; // draw only on pause

var _x = argument0;
var _y = argument1;
var _array_size = array_length_1d(global.inventory);

for (var _i = 0; _i < _array_size; _i++) {
	var _box_x = _x + _i * 32;
	var _box_y = _y;
	draw_sprite(s_inventory_box, 0, _box_x, _box_y);
	
	var _item = global.inventory[_i];
	
	// if item exists due to singleton
	if (instance_exists(_item)) {
		draw_sprite(_item.sprite_, 0, _box_x+16, _box_y+16);
	}
}
