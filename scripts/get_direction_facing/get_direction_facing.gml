///@arg input_direction
var input_direction = argument0;

direction_facing = round(input_direction/90); // converting actual direction into enums
if(direction_facing == 4) {
	direction_facing = 0; // 4 due to 360/90 isn't a valid value, we mujst go back to 60
}