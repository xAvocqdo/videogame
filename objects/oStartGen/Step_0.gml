/// @description Insert description here
// You can write your code in this editor

if(ds_grid_get(oGame.gridcopyt, global.playerx, global.playery-1) != 0) //up
{
		oCommand.doorids.doorup = instance_create_depth(obj_player.x, obj_player.y-192,-4096, oDoorUp)
		oCommand.doorlocations.doorup.exists = true
		ermup = true
} else {ermup = true}
if(ds_grid_get(oGame.gridcopyt, global.playerx+1, global.playery) != 0) //right
{
		oCommand.doorids.doorright = instance_create_depth(obj_player.x+192, obj_player.y,-4096, oDoorRight)
		oCommand.doorlocations.doorright.exists = true
		ermright = true
} else {ermright = true}
if(ds_grid_get(oGame.gridcopyt, global.playerx-1, global.playery) != 0) //left
{
		oCommand.doorids.doorleft = instance_create_depth(obj_player.x-192, obj_player.y,-4096, oDoorLeft)
		oCommand.doorlocations.doorleft.exists = true
		ermleft = true
} else {ermleft=true}

if(ermup && ermleft && ermright)
{
	oCommand.generated = true
	instance_destroy()
}