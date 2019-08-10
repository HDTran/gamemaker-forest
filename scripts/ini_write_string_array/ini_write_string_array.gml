///@arg section
///@arg name
///@arg array
var _section = argument0;
var _name = argument1;
var _array = argument2;

var _array_size = array_length_1d(_array);
for (var _i = 0; _i < _array_size; _i++) {
	var _value = _array[_i];
	ini_write_string(_section, _name+string(_i), _value);
}