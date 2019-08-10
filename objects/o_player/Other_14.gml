/// @description Bow State
speed_ = 0 ;
var bow_speed_ = 0.5;
image_speed = bow_speed_;
if (animation_hit_frame(3)) {
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

if (animation_hit_frame(image_number-1)) {
	state = player.move;
	image_index = 0;
}