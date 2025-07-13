/// @description Insert description here
// You can write your code in this editor

if(global.doorright)
{
	global.playerx +=1
	global.doorright = false
	global.spawnx = global.spawnxs
	global.spawny = global.spawnys

	if(ds_grid_get(oGame.grid, global.playerx, global.playery) != "start"){
		room_goto(asset_get_index(ds_grid_get(oGame.grid, global.playerx, global.playery)))
	} else{room_goto(rm_start)}

}