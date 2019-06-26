/// @description Move State
image_speed = 0; // reset, not good solution
var animation_speed = .6;
var x_input = keyboard_check(vk_right) - keyboard_check(vk_left); // 0 or 1 based on whether it's being pressed
var y_input = keyboard_check(vk_down) - keyboard_check(vk_up); // 0 or 1 based on whether it's being pressed
var input_direction = point_direction(0 ,0, x_input, y_input);
var attack_input = keyboard_check_pressed(ord("X"));
var roll_input = keyboard_check_pressed(ord("Z"));
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