/// @description Attack state
if (!instance_exists(o_player)) {
	state_ = bat.move;
	exit;
}

if (distance_to_object(o_player) > range_) {
	state_ = bat.move;
}

var _direction = point_direction(x, y, o_player.x, o_player.y);

// refactor from set_sprite_facing and use face direction of player instead of direction of movement
var _x_speed = lengthdir_x(speed_, direction_); // gets X length of current trajectory
if (_x_speed != 0) {
	image_xscale = sign(_x_speed); // gives 1 or -1 given speed to face properly
}


add_movement_maxspeed(_direction, 0.125, 1);
move_movement_entity(false);

var _player = instance_place(x, y, o_player);
if (_player != noone) {
	create_hitbox(sprite_index, x, y, 0, 1, [o_player], 1, 5);	
}