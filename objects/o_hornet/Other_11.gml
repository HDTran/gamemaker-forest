/// @description Move state
set_sprite_facing();
add_movement_maxspeed(direction_, 0.05, 1);
move_movement_entity(true);

if (alarm[1] <= 0) {
	alarm[1] = global.one_second * random_range(1, 3);
	direction_ = random(360);
}

if (alarm[2] <= 0 && distance_to_object(o_player) <= range_) {
	state_ = hornet.attack;
}