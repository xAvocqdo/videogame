/// @description Insert description here
// You can write your code in this editor
if (input != undefined)
{
	script_execute(input)
	//show_debug_message("script executed")
	if(position_meeting(x,y+64,oWall)){
		show_debug_message("WHYYYYY")
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