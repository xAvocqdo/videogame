/// @description Move

if(oStack.playerturn)
{
	if (keyboard_check(ord("W")))
	{
	    input = move_up
		oStack.turnstoresolve = 1
	    if(alarm[0] == -1)
		    {alarm [0] = 1}
	}
	if (keyboard_check(ord("A")))
	{
		input = move_left
		oStack.turnstoresolve = 1
		if(alarm[0] == -1)
		{alarm [0] = 1}

	}
	if (keyboard_check(ord("S")))
	{
		input = move_down
		oStack.turnstoresolve = 1
		if(alarm[0] == -1)
		{alarm [0] = 1}

	}
	if (keyboard_check(ord("D")))
	{
		input = move_right
		oStack.turnstoresolve = 1
		if(alarm[0] == -1)
		{alarm [0] = 1}
	
	}
	if (!keyboard_check(ord("W")) && !keyboard_check(ord("A")) && !keyboard_check(ord("S")) && !keyboard_check(ord("D")) )
	{
		alarm[0] = -1
	}
}


camera_set_view_speed(view_camera[0], 0.5, 0.5);



