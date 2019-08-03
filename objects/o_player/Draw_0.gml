draw_sprite(s_medium_shadow, 0, x, y);
draw_self(); // need to draw self because we're overriding default draw
draw_self_flash(c_white, 12, alarm[0]);