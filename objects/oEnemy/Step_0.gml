/// @description Insert description here
// You can write your code in this editor
mp_potential_settings(0, 0, 1, 0)
if(oStack.combat && oStack.playerturn = false) {
	//path_start(enemy_path, 64, path_action_stop, false)
	mp_potential_step_object(obj_player.x, obj_player.y, 64, oWall)
	oStack.playerturn = true
}// lol