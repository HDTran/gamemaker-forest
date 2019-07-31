depth = -y; // origin is at feet
event_user(state);
sprite_index = sprite_[state, direction_facing];

if (global.player_health <= 0 and !invincible_) {
	instance_destroy();	
}