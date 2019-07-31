if (health_ <= 0) exit;

if (hurtbox_entity_can_be_hit_by(other)) {
	invincible_ = true;
	alarm[0] = global.one_second * 0.5; // 1/2 of a second
	
	health_ -= other.damage_; // subtract damage of the hitbox ("other") from our health
	state_ = enemy.hit;
	var _knockback_direction = point_direction(other.x, other.y, x, y);
	create_animation_effect(s_hit_effect, x, y-8, 1, true);
	set_movement(_knockback_direction, other.knockback_);
	
	audio_play_sound(a_hit, 7, false);
}