///@arg section
///@arg name
///@arg default
var _section = argument0;
var _name = argument1;
var _default = argument2;

var _array = [];
var _i = 0;

// use while loop because we don't know how big the section is
while ini_key_exists(_section, _name+string(_i)) {
	var _value = ini_read_string(_section, _name+string(_i), "-4");
	var _object = asset_get_index(_value);
	if (_object == -1) {
		_object = noone;
	} else {
		_object = singleton(_object);	
	}
	_array[_i] = _object;
	_i += 1;	
}

if (array_length_1d(_array) > 0) {
	return _array;	
} else {
	return _default;	
}