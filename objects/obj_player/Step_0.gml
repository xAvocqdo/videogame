/// @description Move
/*
var _xinput = keyboard_check(ord("D")) - keyboard_check(ord("A"));
var _yinput = keyboard_check(ord("S")) - keyboard_check(ord("W"));
move_and_collide(_xinput * my_speed, _yinput * my_speed, obj_wall);
*/

if(global.rName == "Room1")
{
	visible = false
	mask_index = empty_sprite
}
else
{
	visible = true
	mask_index = spr_player
}

if (keyboard_check(ord("W")))
{
    input = move_up
    if(alarm[0] == -1)
	    {alarm [0] = 1}
    

	
}
if (keyboard_check(ord("A")))
{
	input = move_left
	if(alarm[0] == -1)
	{alarm [0] = 1}

}
if (keyboard_check(ord("S")))
{
	input = move_down
	if(alarm[0] == -1)
	{alarm [0] = 1}

}
if (keyboard_check(ord("D")))
{
	input = move_right
	if(alarm[0] == -1)
	{alarm [0] = 1}

}

if (!keyboard_check(ord("W")) && !keyboard_check(ord("A")) && !keyboard_check(ord("S")) && !keyboard_check(ord("D")) )
{
	alarm[0] = -1
}



//x=clamp(x, 0, room_width-22);
//y=clamp(y, 0, room_height-64);
camera_set_view_speed(view_camera[0], 0.5, 0.5);



