/// @description Evade State
image_speed = 0.7;

set_movement(roll_direction, roll_speed);
move_movement_entity(false);

// image_number gives total amount of frames
if(animation_hit_frame(image_number-1)) {
	state = player.move;
}