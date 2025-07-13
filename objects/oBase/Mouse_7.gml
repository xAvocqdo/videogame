/// @description Insert description here
// You can write your code in this editor


//room_goto(ds_grid_get(grid, ds_grid_value_x(gridcopy, 0, 14, 6, 0, instance_position(mouse_x, mouse_y, oBase)),  ds_grid_value_y(gridcopy, 0, 14, 6, 0, instance_position(mouse_x, mouse_y, oBase)))
// )
var tx = ds_grid_value_x(oGame.gridcopy, 0, 14, 6, 0, instance_position(mouse_x, mouse_y, oBase))
var ty = ds_grid_value_y(oGame.gridcopy, 0, 14, 6, 0, instance_position(mouse_x, mouse_y, oBase))

show_debug_message(instance_position(mouse_x, mouse_y, oBase))
room_goto(asset_get_index(ds_grid_get(oGame.grid,tx,ty)))