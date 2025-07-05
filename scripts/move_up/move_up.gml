// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function move_up(){
	if(!position_meeting(x, y-64, oWall)){
		y -= grid_unit_width
	}
}