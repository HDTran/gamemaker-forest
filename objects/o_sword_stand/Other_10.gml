event_inherited();

if (!instance_exists(o_player)) {
	exit;	
}

image_index = 0;
inventory_add_item(o_sword_item);
set_player_found_item(s_sword_item);
activatable_ = false;
add_to_destroyed_list(id);