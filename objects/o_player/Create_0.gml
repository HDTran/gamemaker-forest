/// @description Setup
initialize_movement_entity(0.5, 1, o_solid);
initialize_hurtbox_entity();

image_speed = 0;
acceleration = 0.5;
max_speed = 1.5;
roll_speed = 2;
direction_facing = dir.right;
roll_direction = 0;

alarm[1] = global.one_second; // initialize alarm for loading game case

enum player {
	move,
	sword,
	evade,
	bomb,
	bow,
	found_item,
	hit
}

enum dir {
	right,
	up,
	left,
	down
}

starting_state_ = player.move;
state = starting_state_;

// sprite move lookup table
sprite_[player.move, dir.right] = s_player_run_right;
sprite_[player.move, dir.up] = s_player_run_up;
sprite_[player.move, dir.left] = s_player_run_right;
sprite_[player.move, dir.down] = s_player_run_down;

sprite_[player.sword, dir.right] = s_player_attack_right;
sprite_[player.sword, dir.up] = s_player_attack_up;
sprite_[player.sword, dir.left] = s_player_attack_right;
sprite_[player.sword, dir.down] = s_player_attack_down;

sprite_[player.evade, dir.right] = s_player_roll_right;
sprite_[player.evade, dir.up] = s_player_roll_up;
sprite_[player.evade, dir.left] = s_player_roll_right;
sprite_[player.evade, dir.down] = s_player_roll_down;

sprite_[player.hit, dir.right] = s_player_run_right;
sprite_[player.hit, dir.up] = s_player_run_up;
sprite_[player.hit, dir.left] = s_player_run_right;
sprite_[player.hit, dir.down] = s_player_run_down;

sprite_[player.bomb, dir.right] = s_player_run_right;
sprite_[player.bomb, dir.up] = s_player_run_up;
sprite_[player.bomb, dir.left] = s_player_run_right;
sprite_[player.bomb, dir.down] = s_player_run_down;