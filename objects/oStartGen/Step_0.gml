/// @description Insert description here
// You can write your code in this editor

if(ds_grid_get(oGame.gridcopyt, global.playerx, global.playery-1) != 0) //up
{
		instance_create_depth(obj_player.x, obj_player.y-192,-4096, oDoorUp)
		ermup = true
} else {ermup = true}
if(ds_grid_get(oGame.gridcopyt, global.playerx+1, global.playery) != 0) //right
{
		instance_create_depth(obj_player.x+192, obj_player.y,-4096, oDoorRight)
		ermright = true
} else {ermright = true}
if(ds_grid_get(oGame.gridcopyt, global.playerx-1, global.playery) != 0) //left
{
		instance_create_depth(obj_player.x-192, obj_player.y,-4096, oDoorLeft)
		ermleft = true
} else {ermleft=true}

if(ermup && ermleft && ermright)
{
	instance_destroy()
}