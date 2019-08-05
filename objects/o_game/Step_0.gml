if (o_input.paused_pressed_) {
	if (paused_) {
		paused_ = false;
		if (sprite_exists(paused_sprite_)) {
			sprite_delete(paused_sprite_);
		}
		instance_activate_all();
		audio_play_sound(a_unpause, 5, false);
	} else {
		paused_ = true;
		// take a snapshot
		paused_sprite_ = sprite_create_from_surface(application_surface, 0, 0, view_wport[0], view_hport[0], false, false, 0, 0);

		// deactive everything, but the game object
		instance_deactivate_all(true);
		
		// activate all inventory items
		var _array_size = array_length_1d(global.inventory);
		for (var _i = 0; _i < _array_size; _i++) {
			instance_activate_object(global.inventory[_i]);
		}
		
		// reactivate this to read inputs for next unpause read
		instance_activate_object(o_input); 
		audio_play_sound(a_pause, 5, false);
	}
}