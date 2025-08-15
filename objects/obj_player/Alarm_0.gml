/// @description Insert description here
// You can write your code in this editor
if (input != undefined)
{
	if(obj_player.x == -0.00) {obj_player.x = 0.00}
	script_execute(input)
}
if (keyboard_check(ord("W"))) || keyboard_check(ord("A")) || keyboard_check(ord("S")) || keyboard_check(ord("D"))
{
	alarm[0] = alarm_interval
}
else
{
	input = undefined	
}