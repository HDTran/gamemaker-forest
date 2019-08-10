///@arg file_name
var _file_name = argument0;
if (file_exists(_file_name)) {
	file_delete(_file_name);
}
ini_open(_file_name);

ini_write_string("Level", "Room", room_get_name(room));
ini_write_real("Level", "Start x", global.player_start_position.x);
ini_write_real("Level", "Start y", global.player_start_position.y);
ini_write_real("Player", "Health", global.player_health);
ini_write_real("Player", "Max Health", global.player_max_health);
ini_write_real("Player", "Stamina", global.player_stamina);
ini_write_real("Player", "Max Stamina", global.player_max_stamina);

ini_write_inventory("Player", "Inventory", global.inventory);
ini_write_inventory("Player", "Active Items", global.item);

ini_write_string_array("World", "Destroyed Objects", global.destroyed);

ini_close();