///@arg sprite
///@arg x
///@arg y
///@arg angle
///@arg frames this hitbox will exist
///@arg target_array array of things only this hitbox hits
///@arg damage
///@arg knockback

var _sprite = argument0;
var _x = argument1;
var _y = argument2;
var _angle = argument3;
var _frames = argument4;
var _array = argument5;
var _damage = argument6;
var _knockback = argument7;

var _hitbox = instance_create_layer(_x, _y, "Instances", o_hitbox);
_hitbox.sprite_index = _sprite;
_hitbox.image_angle = _angle;
_hitbox.alarm[0] = _frames;
_hitbox.targets_ = _array;
_hitbox.damage_ = _damage;
_hitbox.knockback_ = _knockback;

// return instance for further use
return _hitbox;