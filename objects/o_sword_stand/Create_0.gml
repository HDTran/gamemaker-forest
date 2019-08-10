event_inherited();
image_speed = 0; // make sure it doesn't animate
image_index = 1; // sword is in the stand as initial state
depth = -bbox_bottom;

if (is_in_destroyed_list(id)) {
	image_index = 0; // no sword
	activatable_ = false;
}