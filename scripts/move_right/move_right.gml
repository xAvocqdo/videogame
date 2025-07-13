// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function move_right(){
	if(!position_meeting(x+64, y, oWall) || position_meeting(x+64,y,oDoorParent)){

		from = x
		to = x + grid_unit_width
		for(var k = 0; k <= 1; k += 0.1)
		{
			x = lerp(from,to,k)
		}
	}
	if(position_meeting(x,y, oDoorLeft)){
		x -= grid_unit_width
		global.doorleft = true
		global.doorright = false
		global.doorup = false
		global.doordown = false
	}
	if(position_meeting(x,y, oDoorRight)){
		x -= grid_unit_width
		global.doorleft = false
		global.doorright = true
		global.doorup = false
		global.doordown = false
	}
	if(position_meeting(x,y, oDoorUp)){
		x -= grid_unit_width
		global.doorleft = false
		global.doorright = false
		global.doorup = true
		global.doordown = false
	}
	if(position_meeting(x,y, oDoorDown)){
		x -= grid_unit_width
		global.doorleft = false
		global.doorright = false
		global.doorup = false
		global.doordown = true
	}
}