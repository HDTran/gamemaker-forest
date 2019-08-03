create_animation_effect(s_death_effect, x, y-8, 0.6, true);
if (chance(.75)) {
	var _item = choose(o_gem_pickup, o_heart_pickup); // 50/50
	instance_create_layer(x, y-8, "Instances", _item);	
}