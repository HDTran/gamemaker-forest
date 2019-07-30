event_inherited(); // run all parent code
initialize_movement_entity(0.5, 0.5, o_solid); // override parent to slow down more

enum porcupine {
	hit, // has to be the same state as parent
	idle,
	move,
	attack,
	wait
}

starting_state_ = porcupine.idle;
state_ = starting_state_;

image_index = 0;
image_xscale = choose(1, -1); // randomly face right or left

alarm[1] = random_range(0, 1) * game_get_speed(gamespeed_fps); // between 0 and 1 second