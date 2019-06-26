///@arg sprite
///@arg x
///@arg y
///@arg angle
///@arg frames
///@arg target_array
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