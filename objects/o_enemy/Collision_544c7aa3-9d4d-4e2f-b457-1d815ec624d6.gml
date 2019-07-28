if (health_ <= 0) exit;
health_ -= other.damage_; // subtract damage of the hitbox ("other") from our health
state_ = enemy.hit;
var _knockback_direction = point_direction(other.x, other.y, x, y);
set_movement(_knockback_direction, other.knockback_);