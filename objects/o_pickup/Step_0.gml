// creating our own z position
z_ += z_speed_;
z_speed_ += gravity_;

// if the z position has reached the ground, then we can pick it up
if (z_ >= 0) {
	can_pickup_ = true;
	var _bounce_amount = 0.25;
	z_speed_ = -z_speed_ * _bounce_amount; // make item bounce
	
	// if our z_speed_ is so small, stop bouncing
	if (z_speed_ > -1) {
		z_speed_ = 0;
		z_ = 0;
	}
}