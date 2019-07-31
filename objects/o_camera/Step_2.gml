// we use end step event because every other object should have been moved
if (!instance_exists(target_)) exit;

// move the camera object to the player
x = lerp(x, target_.x, 0.1);
y = lerp(y, target_.y-8, 0.1); // -8 is to center on the player sprite because origin is at feet
camera_set_view_pos(view_camera[0], x-width_/2, y-height_/2);