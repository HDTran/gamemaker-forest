/// @description Sword State
image_speed = 0.8;

// image_number gives total amount of frames
if(animation_hit_frame(image_number-1)) {
	state = player.move;
}