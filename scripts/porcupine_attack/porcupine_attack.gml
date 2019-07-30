if (not instance_exists(o_player)) exit;

var _distance_to_player = point_distance(x, y, o_player.x, o_player.y);
// within 16 pixels of player
if (_distance_to_player < 16) {
	state_ = porcupine.attack;
	image_index = 0; // start the attack from frame 0 incase it was mid-animation from something else
	sprite_index = s_porcupine_attack;
}