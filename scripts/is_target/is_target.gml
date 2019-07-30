///@arg value
///@arg target_array
var _value = argument0;
var _array = argument1;
var _array_length = array_length_1d(_array);

// gamemaker looping (faster, but GMS specific)
// repeat runs an X number of times, we make it equal to array to traverse it
/*
var _index = 0;
repeat _array_length {
	if (_value == _array[_index]) return true;
	
	// check parent/children
	// ex. if o_porcupine is an ancestor of o_enemy
	if (object_is_ancestor(_value, _array[_index])) { return true; }
	
	_index += 1;
}
*/

// traditional for loop
for (var _index = 0; _index < _array_length; _index++) {
	if (_value == _array[_index]) return true;
	
	// check parent/children
	// ex. if o_porcupine is an ancestor of o_enemy
	if (object_is_ancestor(_value, _array[_index])) { return true; }
}


return false;