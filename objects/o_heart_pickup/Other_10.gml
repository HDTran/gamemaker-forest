instance_destroy();
global.player_health += 1;
if (global.player_health > global.player_max_health) {
	global.player_health = global.player_max_health;	
}

audio_play_sound(a_collect_item, 2, false);