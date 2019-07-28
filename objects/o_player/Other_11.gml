/// @description Sword State
image_speed = 0.8;

if(animation_hit_frame(1)) {
	var _angle = direction_facing * 90;
	var _life = 3
	var _damage = 1;
	var _knockback = 8;
	
	var _hitbox = create_hitbox(s_sword_hitbox, x, y, _angle, _life, [], _damage, _knockback);
	
	switch (direction_facing) {
		case dir.up: _hitbox.y -= 4; break; // when up, it's better aligned this way
		default: _hitbox.y -= 8; break;
	}
}

// image_number gives total amount of frames
if(animation_hit_frame(image_number-1)) {
	state = player.move;
}