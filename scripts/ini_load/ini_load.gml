///@arg = file_name
var _file_name = argument0;

global.load = true;
ini_open(_file_name);

var _room_name = ini_read_string("Level", "Room", "");
global.start_x = ini_read_real("Level", "Start x", 0);
global.start_y = ini_read_real("Level", "Start y", 0);

ini_close();

if (_room_name == "") {
	show_error("No save data", false);	
}

var _room = asset_get_index(_room_name); // get actual room based on name
room_goto(_room);

