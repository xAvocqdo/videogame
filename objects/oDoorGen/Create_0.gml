/// @description Insert description here
// You can write your code in this editor

// up
show_debug_message(global.doordown)
show_debug_message(global.doorup)
show_debug_message(global.doorleft)
show_debug_message(global.doorright)
if(!global.doordown)
{
	down = true
} else {down=false}
if(!global.doorup)
{
	up= true
} else {up=false}
if(!global.doorleft)
{
	left = true
} else {left=false}
if(!global.doorright)
{
	right = true
} else {right=false}

if(global.doorup)
{
	show_debug_message("hiup")
	for(i = 0; i < 999; i++)
	{
		if(place_free(x,y) = false && place_meeting(x,y, oTile))
		{
			y -= 64
			show_debug_message("hiup")
		}
		if(place_meeting(x, y, oWall))
		{
			instance_create_depth(x, y, -1, oDoor)
			show_debug_message("testgen")
			x=global.spawnx
			y=global.spawny
			up=true
			break
		}
	}
}

// down
if(global.doordown)
{
	for(i = 0; i < 999; i++)
	{
		if(place_free(x,y) = false && place_meeting(x,y, oTile))
		{
			y += 64
			show_debug_message("hidown")
		}
		if(place_meeting(x, y, oWall))
		{
			instance_create_depth(x, y, -1, oDoor)
			x=global.spawnx
			y=global.spawny
			down=true
			break
		}
	}
}
// 

if(global.doorleft = true)
{
	for(i = 0; i < 999; i++)
	{
		if(place_free(x,y) = false && place_meeting(x,y, oTile))
		{
			x -= 64
			show_debug_message("hileft")
		}
		if(place_meeting(x, y, oWall))
		{
			instance_create_depth(x, y, -1, oDoor)
			x=global.spawnx
			y=global.spawny
			left=true
			break
		}
	}
}
// right
if(global.doorright = true)
{
	for(i = 0; i < 999; i++)
	{
		if(place_free(x,y) = false && place_meeting(x,y, oTile))
		{
			x += 64
			show_debug_message("hiright")
		}
		if(place_meeting(x, y, oWall))
		{
			instance_create_depth(x, y, -1, oDoor)
			x=global.spawnx
			y=global.spawny
			right=true
			break
		}
	}
}

if(up && down && left && right)
{
	instance_destroy()
}