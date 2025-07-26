// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function switch_draw()
{	

	with oGame 
	{
		var cName = ds_grid_get(grid, gridx, gridy)
		switch (cName)
		{
			case "start":
				instance_create_depth(posx, posy, 0, oStart)
				instance_create_depth(posx,posy, -1, obj_player_indicator)
			break
			
			case "standard":
				global.otempfetch = instance_create_depth(posx, posy, 0, oBase)
				global.tempfetch = room_duplicate(rm_base)
				ds_grid_set(grid, gridx, gridy, room_get_name(global.tempfetch))
				ds_grid_set(gridcopy, gridx, gridy, (global.otempfetch))
			break
			
			case "double":
				global.otempfetch = instance_create_depth(posx, posy, 0, oDouble)
				global.tempfetch = room_duplicate(rm_base)
				ds_grid_set(grid, gridx, gridy, room_get_name(global.tempfetch))
				ds_grid_set(gridcopy, gridx, gridy, (global.otempfetch))
				
			break
			
			case "shop":
				global.otempfetch = instance_create_depth(posx, posy, 0, oShop)
				global.tempfetch = room_duplicate(rm_base)
				ds_grid_set(grid, gridx, gridy, room_get_name(global.tempfetch))
				ds_grid_set(gridcopy, gridx, gridy, (global.otempfetch))
			
			break
			
			case "loot":
				global.otempfetch = instance_create_depth(posx, posy, 0, oLoot)
				global.tempfetch = room_duplicate(rm_base)
				ds_grid_set(grid, gridx, gridy, room_get_name(global.tempfetch))
				ds_grid_set(gridcopy, gridx, gridy, (global.otempfetch))
				
			break
			
			case "boss":
				instance_create_depth(posx, posy, 0, oBoss)
				global.tempfetch = room_duplicate(rm_base)
//				ds_grid_set(grid, gridx, gridy, room_get_name(global.tempfetch))
//				ds_grid_set(gridcopy, gridx, gridy, (global.otempfetch))
				
			break
		}
	}	

}