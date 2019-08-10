/// @description Found Item State
if (alarm[2] <= 0 || o_input.action_one_pressed_ || o_input.action_two_pressed_) {
	state = starting_state_;
	found_item_sprite_ = noone;
	invincible_ = false;
}