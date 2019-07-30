if (health_ <= 0) exit;

if (hurtbox_entity_can_be_hit_by(other)) {
	invincible_ = true;
	alarm[0] = global.one_second/4; // 1/4th of a second
	
	health_ -= other.damage_; // subtract damage of the hitbox ("other") from our health
	state_ = enemy.hit;
	var _knockback_direction = point_direction(other.x, other.y, x, y);
	set_movement(_knockback_direction, other.knockback_);
}