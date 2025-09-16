/// @description Insert description here
// You can write your code in this editor
ermup = false
ermleft = false
ermright = false
oCommand.topleft = [ 480, 128 ] //update if rm_start changes
oCommand.bottomright = [ 864, 512 ] //update if rm_start changes


oCommand.room_mp_grid = mp_grid_create(oCommand.topleft[0], oCommand.topleft[1], (oCommand.bottomright[0]+64-oCommand.topleft[0])/64, (oCommand.bottomright[1]+64 - oCommand.topleft[1])/64, 64, 64)
mp_grid_add_instances(oCommand.room_mp_grid, oWall, true);
show_debug_message("test")