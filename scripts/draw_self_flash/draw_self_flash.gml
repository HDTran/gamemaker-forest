///@arg color
///@arg interval
///@arg alarm
var _color = argument0;
var _interval = argument1;
var _alarm = argument2;

// alarm only makes it work before it stops
if ((_alarm % _interval) <=  (_interval / 2) && _alarm > 0) {
	// use a shader for non-beginners, gpu_set_fog is just a shortcut that's slower and easier
	gpu_set_fog(true, _color, 0, 1); // set fog to white
	draw_self(); // drawing ourself
	gpu_set_fog(false, _color, 0, 1); // set fog back to default
}