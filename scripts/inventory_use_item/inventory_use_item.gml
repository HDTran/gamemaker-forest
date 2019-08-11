///@arg input
///@arg item
///@arg action
var _input = argument0;
var _item = argument1;
var _action = argument2;

if (_input) {
	// interactables
	var _target_x = x + lengthdir_x(8, direction_facing*90);
	var _target_y = y + lengthdir_y(8, direction_facing*90);
	var _interactable = instance_place(_target_x, _target_y, o_interactable);
	if (_interactable && _interactable.activatable_) {
		// with runs it within interactable and not player
		with _interactable {
			event_user(interactable.activate);	// using it kind of like a function
		}
	} else if (instance_exists(_item) && global.player_stamina >= _item.cost_) {
		// normal logic
		action_ = _action;
		state = _item.action_;
		global.player_stamina = max(0, global.player_stamina-_item.cost_); // return larger of the two so stamina doesn't go below 0
		alarm[1] = global.one_second; // set the alarm to recharge stamina
		image_index = 0;
	}
}