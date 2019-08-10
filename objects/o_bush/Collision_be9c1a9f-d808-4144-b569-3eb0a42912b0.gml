if (hurtbox_entity_can_be_hit_by(other)) {
	add_to_destroyed_list(id);
	instance_destroy();
	instance_destroy(wall_);
	create_animation_effect(s_bush_effect, x, y, 1, true);
}