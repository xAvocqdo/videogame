// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function move_up(){
	if(!position_meeting(x, y-64, oWall) || position_meeting(x,y-64,oDoorParent)){
		y -= grid_unit_width
	}
	if(position_meeting(x,y, oDoorLeft)){
		y += grid_unit_width
		global.doorleft = true
		global.doorright = false
		global.doorup = false
		global.doordown = false
	}
	if(position_meeting(x,y, oDoorRight)){
		y += grid_unit_width
		global.doorleft = false
		global.doorright = true
		global.doorup = false
		global.doordown = false
	}
	if(position_meeting(x,y, oDoorUp)){
		y += grid_unit_width
		global.doorleft = false
		global.doorright = false
		global.doorup = true
		global.doordown = false
	}
	if(position_meeting(x,y, oDoorDown)){
		y += grid_unit_width
		global.doorleft = false
		global.doorright = false
		global.doorup = false
		global.doordown = true
	}
}