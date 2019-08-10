///@arg item_sprite
var _item_sprite = argument0;

if (!instance_exists(o_player)) {
	exit;	
}

o_player.state = player.found_item;
o_player.found_item_sprite_ = _item_sprite;
o_player.invincible_ = true;
o_player.alarm[2] = global.one_second;
audio_play_sound(a_key_item, 6, false);