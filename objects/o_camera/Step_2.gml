// we use end step event because every other object should have been moved
if (!instance_exists(target_)) exit;

// move the camera object to the player
x = target_.x;
y = target_.y;
camera_set_view_pos(view_camera[0], x-width_/2, y-height_/2);