/// @description Get Input
// this is put here so that other events can call it easily like a pseudo-function
right_ = keyboard_check(vk_right);
left_ = keyboard_check(vk_left);
up_ = keyboard_check(vk_up);
down_ = keyboard_check(vk_down);

right_pressed_ = keyboard_check_pressed(vk_right);
left_pressed_ = keyboard_check_pressed(vk_left);
up_pressed_ = keyboard_check_pressed(vk_up);
down_pressed_ = keyboard_check_pressed(vk_down);

action_one_pressed_ = keyboard_check_pressed(ord("Z"));
action_two_pressed_ = keyboard_check_pressed(ord("X"));

action_one_ = keyboard_check(ord("Z"));
action_two_ = keyboard_check(ord("X"));

paused_pressed_ = keyboard_check_pressed(vk_enter);