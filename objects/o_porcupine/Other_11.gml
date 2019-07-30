/// @description Idle State
image_index = 0;
image_speed = 0;

// remember that alarms can be 0 or -1 (final value)
if (alarm[1] <= 0) {
	alarm[1] = random_range(2, 4) * global.one_second;
	state_ = porcupine.move;
	direction_ = random(360); // from movement script
}

porcupine_attack();