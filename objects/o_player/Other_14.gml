/// @description Bow State
speed_ = 0 ;
var _bow_speed = 0.5;
image_speed = _bow_speed;
if (animation_hit_frame(3)) {
	image_speed = 0;
	var _released = false;
	if (action_ == action.one) {
		_released = !o_input.action_one_;	
	} else if (action_ == action.two) {
		_released = !o_input.action_two_;	
	}
	
	if (_released) {
		image_speed = _bow_speed;
		audio_play_sound(a_swipe, 2, false);
		// create the arrow
		var _arrow = instance_create_layer(x, y, "Instances", o_arrow);
		_arrow.direction = direction_facing * 90;
		_arrow.image_angle = direction_facing * 90;
		_arrow.speed = 4;
	
		switch (direction_facing) {
			case dir.right: _arrow.y -= 4; break;
			case dir.up: _arrow.y -= 2; break;
			case dir.left: _arrow.y -= 4; break;
			default: break;
		}
	}
}

if (animation_hit_frame(image_number-1)) {
	state = player.move;
	image_index = 0;
}