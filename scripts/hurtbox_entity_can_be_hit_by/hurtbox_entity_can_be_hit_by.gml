///@arg hitbox
var _hitbox = argument0;
var _is_target = is_target(object_index, _hitbox.targets); // if we are in the hitbox's target list

return !invincible_ and _is_target; // return true/false based on whether we're invincible and whether we're in the target list