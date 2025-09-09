if(!global.inmap)
{
	if(oCommand.donegen)
	{
		show_debug_message(global.doordown2)
		if(global.doorup2)
		{
			x = oCommand.doorlocations.doordown.x
			y = oCommand.doorlocations.doordown.y-64
		}
		if(global.doordown2)
		{
			x = oCommand.doorlocations.doorup.x
			y = oCommand.doorlocations.doorup.y+64
			show_debug_message("hiiii testing")
		}
		if(global.doorleft2)
		{
			x = oCommand.doorlocations.doorright.x-64
			y = oCommand.doorlocations.doorright.y
		}
		if(global.doorright2)
		{
			x = oCommand.doorlocations.doorleft.x+64
			y = oCommand.doorlocations.doorleft.y
		}
	} else {
		show_debug_message("hii")
		x = oGame.player.x
		y = oGame.player.y
	}
} 