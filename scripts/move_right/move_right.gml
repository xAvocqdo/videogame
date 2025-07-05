// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function move_right(){
	if(!position_meeting(x+64, y, oWall)){

		from = x
		to = x + grid_unit_width
		for(var k = 0; k <= 1; k += 0.1)
		{
			x = lerp(from,to,k)
		}
	}
}