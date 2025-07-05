// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function move_left(){
	if(!position_meeting(x-64, y, oWall)){
		x -= grid_unit_width
	}
}