/// @description Setup
initialize_movement_entity(1, .5, o_solid);

image_speed = 0; // temp

max_health_ = 2;
health_ = max_health_;

starting_state_ = noone;
state_ = starting_state_;

enum enemy {
	hit
}