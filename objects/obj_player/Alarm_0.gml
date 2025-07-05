/// @description Insert description here
// You can write your code in this editor
if (input != undefined)
{
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