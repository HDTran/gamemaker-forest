// exception for depth so that arrow and shadow draw stay together
if (image_angle == 0 || image_angle == 180) {
	if (y < other.bbox_top + 5) {
		exit;	
	}
}

var _arrow_hit = instance_create_layer(x, y-7, "Instances", o_arrow_hit);
_arrow_hit.image_angle = image_angle;
with (_arrow_hit) {
	var _x_dir = sign(lengthdir_x(1, image_angle));
	var _y_dir = sign(lengthdir_y(1, image_angle));
	
	while (!place_meeting(x+_x_dir, y+_y_dir, o_solid)) {
		x += _x_dir;
		y += _y_dir;
	}
	
	x += _x_dir;
	y += _y_dir;
	
	depth = -y;
}

instance_destroy();