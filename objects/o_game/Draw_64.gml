var _gui_width = display_get_gui_width();
var _gui_height = display_get_gui_height();

if (sprite_exists(paused_sprite_)) {
	draw_sprite_ext(paused_sprite_, 0, 0, 0, paused_sprite_scale, paused_sprite_scale, 0, c_white, 1); // we need to scale the snapshot (size of viewport) to size of game
	draw_set_alpha(0.6);
	draw_rectangle_color(0, 0, _gui_width, _gui_height, c_black, c_black, c_black, c_black, false); // darkens snapshot screen
	draw_set_alpha(1); // reset draw set alpha for future
}

var _hud_right_edge = 2+global.player_max_health*15; // use the player's health to determine max edge
draw_sprite_ext(s_hud, 0, 0, _gui_height, _hud_right_edge, 1, 0, c_white, 1);
draw_sprite(s_hud_edge, 0, _hud_right_edge, _gui_height);

for (var _i = 0; _i < global.player_max_health; _i++) {
	var _filled = _i < global.player_health;
	draw_sprite(s_heart_ui, _filled, 4+15*_i, _gui_height - 29); // filled maps to 0 or 1, which is the position of the images
}

var _gem_string = string(global.player_gems); // typecast to string from int
var _text_width = string_width(_gem_string);
var _x = _gui_width - _text_width+4;
var _y = _gui_height - 16+4;
draw_sprite(s_gem, 0, _x-16, _y+7);
draw_text(_x-8, _y-1, _gem_string);

inventory_draw(4, 36);