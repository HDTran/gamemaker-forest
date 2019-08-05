///@description Look for a value in the array and return the index. Return -1 if not found.
///@arg value
///@arg array
var _value = argument0;
var _array = argument1;
var _array_size = array_length_1d(_array);

// Look for value
for (var _i = 0; _i < _array_size; _i++) {
	if(_array[_i] == _value) {
		return _i;	
	}
}

return -1;