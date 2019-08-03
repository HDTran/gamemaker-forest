if (chance(.1)) {
	var _item = choose(o_gem_pickup, o_heart_pickup); // 50/50
	instance_create_layer(x+8, y+8, "Instances", _item);	
}