var _x_speed = lengthdir_x(speed_, direction_); // gets X length of current trajectory
if (_x_speed != 0) {
	image_xscale = sign(_x_speed); // gives 1 or -1 given speed to face properly
}