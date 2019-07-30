/// @description Move State
image_speed = 0; // reset, not good solution
var animation_speed = .6;
var x_input = o_input.right_ - o_input.left_; // 0 or 1 based on whether it's being pressed
var y_input = o_input.down_ - o_input.up_; // 0 or 1 based on whether it's being pressed
var input_direction = point_direction(0 ,0, x_input, y_input);
var attack_input = o_input.action_one_pressed_;
var roll_input = o_input.action_two_pressed_;
roll_direction = direction_facing * 90;

if(x_input == 0 && y_input == 0) {
	// if we're not moving
	image_index = 0; // standing
	image_speed = 0;
	apply_friction_to_movement_entity();
} else {
	image_speed = animation_speed;
	if(x_input != 0) {
		image_xscale = x_input; // determines left/right facing
	}
	get_direction_facing(input_direction);
	add_movement_maxspeed(input_direction, acceleration, max_speed);
	roll_direction = direction_facing * 90;
}

if(attack_input) {
	image_index = 0;
	state = player.sword;
} if(roll_input) {
	image_index = 0;
	state = player.evade;
}

move_movement_entity(false);