///@arg input
///@arg item
var _input = argument0;
var _item = argument1;

if (_input) {
	if (instance_exists(_item) && global.player_stamina >= _item.cost_) {
		state = _item.action_;
		global.player_stamina = max(0, global.player_stamina-_item.cost_); // return larger of the two so stamina doesn't go below 0
		alarm[1] = global.one_second; // set the alarm to recharge stamina
		image_index = 0;
	}
}