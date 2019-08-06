/// @description Alarm for stamina recharge
global.player_stamina = min(global.player_stamina+1, global.player_max_stamina);
if (global.player_stamina < global.player_max_stamina) {
	alarm[1] = global.one_second;
}