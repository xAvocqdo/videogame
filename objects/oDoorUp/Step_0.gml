/// @description Insert description here
// You can write your code in this editor
if(global.doorup)
{
	
	show_debug_message(global.playery)
    global.playery -=1
    if(global.doorgen)
    {
        global.doorup = false
    }
	room_goto(asset_get_index(ds_grid_get(oGame.grid, global.playerx, global.playery)))
}