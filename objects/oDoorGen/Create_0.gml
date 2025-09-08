/// @description Insert description here
// You can write your code in this editor
ermup = false
ermleft = false
ermright = false
ermdown = false
up = false
down = false
left = false
right = false

// determine what doors need to be made
if(ds_grid_get(oGame.gridcopyt, global.playerx,global.playery-1) != 0 && ds_grid_get(oGame.gridcopyt, global.playerx,global.playery-1) != undefined)
{
	ermup = true
	up = false
} else{up = true}
if(ds_grid_get(oGame.gridcopyt, global.playerx,global.playery+1) != 0 && ds_grid_get(oGame.gridcopyt, global.playerx,global.playery+1) != undefined)
{
	ermdown = true
	down = false
} else{down = true}
if(ds_grid_get(oGame.gridcopyt, global.playerx-1,global.playery) != 0 && ds_grid_get(oGame.gridcopyt, global.playerx-1,global.playery) != undefined)
{
	ermleft = true
	left = false
} else{left = true}
if(ds_grid_get(oGame.gridcopyt, global.playerx+1,global.playery) != 0 && ds_grid_get(oGame.gridcopyt, global.playerx+1,global.playery) != undefined)
{
	ermright = true
	right = false
} else{right = true}

// find highest lowest leftest and rightest walls
highest_y = room_height
lowest_y = -room_height
left_x = room_width
right_x = -room_width
with(oWall)
{
	if(bbox_top < oDoorGen.highest_y)
	{
			oDoorGen.highest_y = bbox_top
	}
	if(bbox_bottom > oDoorGen.lowest_y)
	{
		oDoorGen.lowest_y = bbox_bottom-64
	}
	if(bbox_left < oDoorGen.left_x)
	{
		oDoorGen.left_x = bbox_left
	}
	if(bbox_right > oDoorGen.right_x)
	{
		oDoorGen.right_x = bbox_right-64
	}
}
x=left_x
y=highest_y

//Generate up door
if(ermup)
{
	x=left_x
	y=highest_y
	 // check if gen is on a tile and if theres a path tile beneath it
	if(!place_free(x,highest_y) && place_meeting(x,highest_y+64,oTile))
	{
		global.doorids.doorup = instance_create_depth(x,highest_y,-1,oDoorUp)
		up = true
	} else{
		for(i = 0; i < 999; i++) // loop until previous condition is met
		{
			x+=64
			if(!place_free(x,highest_y) && place_meeting(x,highest_y+64,oTile))
			{

				global.doorids.doorup = instance_create_depth(x,highest_y,-1,oDoorUp) //door gets generated
				up = true		
				break
			}
		}
	}
}

// generate down door
if(ermdown)
{
	x=left_x
	y=lowest_y

	if(!place_free(x,lowest_y) && place_meeting(x,lowest_y-64,oTile))
	{
		global.doorids.doordown = instance_create_depth(x,lowest_y,-1,oDoorDown)
		down = true
	} else{
		for(i = 0; i < 999; i++)
		{
			x+=64
			if(!place_free(x,lowest_y) && place_meeting(x,lowest_y-64,oTile))
			{
				global.doorids.doordown = instance_create_depth(x,lowest_y,-1,oDoorDown)
				down = true		
				break
			}
		}
	}	
}
 
// generate left door
if(ermleft)
{
	x=left_x
	y=highest_y

	if(!place_free(left_x,y) && place_meeting(left_x+64,y,oTile))
	{
		global.doorids.doorleft = instance_create_depth(left_x,y,-1,oDoorLeft)
		left = true
	} else{
		for(i = 0; i < 999; i++)
		{
			y+=64
			if(!place_free(left_x,y) && place_meeting(left_x+64,y,oTile))
			{
				global.doorids.doorleft = instance_create_depth(left_x,y,-1,oDoorLeft)
				left = true		
				break
			}
		}
	}
}
// generate right door
if(ermright)
{
	x=right_x
	y=highest_y

	if(!place_free(right_x,y) && place_meeting(right_x-64,y,oTile))
	{
		global.doorids.doorright = instance_create_depth(right_x,y,-1,oDoorRight)
		right = true
	} else{
		for(i = 0; i < 999; i++)
		{
			y+=64
			if(!place_free(right_x,y) && place_meeting(right_x-64,y,oTile))
			{
				global.doorids.doorright = instance_create_depth(right_x,y,-1,oDoorRight)
				right = true		
				break
			}
		}
	}
}
// player spawn location based on the location you came from
if(global.doorup2)
{
	with(oDoorDown)
	{
		global.spawnx = x
		global.spawny = y-64
		global.doorup = false
        show_debug_message("testdoordown")
	}
}
if(global.doordown2)
{
	with(oDoorUp)
	{
		global.spawnx = x
		global.spawny = y+64
		global.doordown = false
        show_debug_message("testdoorup")
        
	}
}
if(global.doorleft2)
{
	with(oDoorRight)
	{
		global.spawnx = x-64
		global.spawny = y
		global.doorleft = false
	}
}
if(global.doorright2)
{
	with(oDoorLeft)
	{
		global.spawnx = x+64
		global.spawny = y
		global.doorright = false
	}
}

oGame.player.x = global.spawnx
oGame.player.y = global.spawny

// delete doorgen after all doors in a room are made
if(up && down && left && right)
{
    global.doorgen = true
	instance_destroy()
}