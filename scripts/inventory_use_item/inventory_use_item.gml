///@arg input
///@arg item
var _input = argument0;
var _item = argument1;

if (_input) {
	if (instance_exists(_item)) {
		state = _item.action_;
		image_index = 0;
	}
}