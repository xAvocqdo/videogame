/// @description Insert description here
// You can write your code in this editor
if (input != undefined)
{
	if(obj_player.x == -0.00) {obj_player.x = 0.00}
	if oStack.turnstoresolve == 1 {
		script_execute(input)
		oStack.turnstoresolve -=1
		global.turncount += 1
		if(oStack.combat) {
			oStack.playerturn = false
		}
	}
}
if (keyboard_check(ord("W"))) || keyboard_check(ord("A")) || keyboard_check(ord("S")) || keyboard_check(ord("D"))
{
	alarm[0] = alarm_interval
}
else
{
	input = undefined	
}