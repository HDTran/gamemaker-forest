/// @description Move State
image_speed = .35;

set_sprite_facing();

if (alarm[1] <= 0) {
	// if alarm done, apply friction
	apply_friction_to_movement_entity();
} else {
	// else keep moving
	add_movement_maxspeed(direction_, 0.05, 0.5);
}

move_movement_entity(true); // bounce off walls instead of getting stuck

if (speed_ == 0) {
	alarm[1] = random_range(1, 3) * global.one_second;
	state_ = porcupine.idle;
}

porcupine_attack();