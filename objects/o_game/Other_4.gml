if (instance_exists(global.player_start_position)) {
	if (instance_exists(o_player)) {
		o_player.persistent = false; // reset persistance when changing rooms	
		o_player.x = global.player_start_position.x;
		o_player.y = global.player_start_position.y;
		o_player.layer = layer_get_id("Instances"); // when we move between rooms, we need to set the player back on the proper layer
	} else {
		// create if doesn't exist for game beginning
		var _start_x = global.player_start_position.x;
		var _start_y = global.player_start_position.y;
		instance_create_layer(_start_x, _start_y, "Instances", o_player);
	}
	global.player_start_position = noone;
}