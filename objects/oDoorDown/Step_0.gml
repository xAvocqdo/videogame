/// @description Insert description here
// You can write your code in this editor

if(global.doordown)
{
	global.playery +=1
    show_debug_message(global.playery)
	show_debug_message(global.doordown)


	if(ds_grid_get(oGame.grid, global.playerx, global.playery) != "start"){
		room_goto(asset_get_index(ds_grid_get(oGame.grid, global.playerx, global.playery)))
	} else{room_goto(rm_start)}
	global.doordown = false
}