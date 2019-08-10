///@arg = file_name
var _file_name = argument0;

if(!file_exists(_file_name)) {
	exit;	
}

global.load = true;
ini_open(_file_name);

var _room_name = ini_read_string("Level", "Room", "");
global.start_x = ini_read_real("Level", "Start x", 0);
global.start_y = ini_read_real("Level", "Start y", 0);
global.player_health = ini_read_real("Player", "Health", 1);
global.player_max_health = ini_read_real("Player", "Max Health", 1);
global.player_stamina = ini_read_real("Player", "Stamina", 1);
global.player_max_stamina = ini_read_real("Player", "Max Stamina", 1);

global.inventory = ini_read_inventory("Player", "Inventory", []);
global.item = ini_read_inventory("Player", "Active Items", []);

global.destroyed = ini_read_string_array("World", "Destroyed Objects", []);

ini_close();

if (_room_name == "") {
	show_error("No save data", false);	
}

var _room = asset_get_index(_room_name); // get actual room based on name
room_goto(_room);

