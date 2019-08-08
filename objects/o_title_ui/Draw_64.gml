draw_set_halign(fa_center);
for (var _i = 0; _i < option_length_; _i++) {
	if (_i == index_) {
		draw_set_color(menu_color_);	
	} else {
		draw_set_color(menu_dark_color_);	
	}
	draw_text(x, y+(_i*12), option_[_i]);	
}

// reset color and halign for rest of the game
draw_set_color(c_white);
draw_set_halign(fa_left);