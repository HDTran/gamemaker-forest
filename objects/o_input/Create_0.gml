GET_INPUT = 0;
event_user(GET_INPUT);

// map keys for alternate controls
keyboard_set_map(ord("A"), vk_left);
keyboard_set_map(ord("D"), vk_right);
keyboard_set_map(ord("W"), vk_up);
keyboard_set_map(ord("S"), vk_down);

keyboard_set_map(ord("J"), ord("Z"));
keyboard_set_map(ord("K"), ord("X"));

keyboard_set_map(ord("E"), vk_enter);
keyboard_set_map(vk_escape, vk_enter);