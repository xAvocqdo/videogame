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

show_debug_message("right: {0} ", [ds_grid_get(oGame.gridcopyt, global.playerx+1, global.playery)])
show_debug_message("left: {0}", [ds_grid_get(oGame.gridcopyt, global.playerx-1, global.playery)])
show_debug_message("up: {0}", [ds_grid_get(oGame.gridcopyt, global.playerx, global.playery-1)])
show_debug_message("down: {0}", [ds_grid_get(oGame.gridcopyt, global.playerx, global.playery+1)])


if(ermup)
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
			instance_create_depth(x, y, -1, oDoorUp)
			show_debug_message("testgenup")
			x=global.spawnx
			y=global.spawny
			up=true
			break
		}
	}
}

// down
if(ermdown)
{
	show_debug_message("down")
	for(i = 0; i < 999; i++)
	{
		if(place_free(x,y) = false && place_meeting(x,y, oTile))
		{
			y += 64
			show_debug_message("hidown")
		}
		if(place_meeting(x, y, oWall))
		{
			instance_create_depth(x, y, -1, oDoorDown)
			x=global.spawnx
			y=global.spawny
			down=true
			break
		}
	}
}
// 

if(ermleft)
{
	show_debug_message("left")
	for(i = 0; i < 999; i++)
	{
		if(place_free(x,y) = false && place_meeting(x,y, oTile))
		{
			x -= 64
			show_debug_message("hileft")
		}
		if(place_meeting(x, y, oWall))
		{
			instance_create_depth(x, y, -1, oDoorLeft)
			x=global.spawnx
			y=global.spawny
			left=true
			break
		}
	}
}
// right
if(ermright)
{
	show_debug_message("right")
	for(i = 0; i < 999; i++)
	{
		if(place_free(x,y) = false && place_meeting(x,y, oTile))
		{
			x += 64
			show_debug_message("hiright")
		}
		if(place_meeting(x, y, oWall))
		{
			instance_create_depth(x, y, -1, oDoorRight)
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