// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function check_row()
{
	
	with oGame
	{
		if(gridx <= 6)
		{
			gridx +=1
			posx += 128
			switch_draw()
		}
	}
}