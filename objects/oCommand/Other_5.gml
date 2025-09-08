/// @description Insert description here
// You can write your code in this editor
// using doorids, fill in doorlocation x y if it exists (CHANGE EXISTS IN DOORGEN)
if(!inmap)
{
	if(global.rName != "Room1" && global.rName != "rm_menu") {
		if(global.generated)
		{
			if(doorlocations.doorup.exists)
			{
				doorlocations.doorup.x = global.doorids.doorup.x
				doorlocations.doorup.y = global.doorids.doorup.y
			}
			if(doorlocations.doordown.exists)
			{
				doorlocations.doordown.x = global.doorids.doordown.x	
				doorlocations.doordown.y = global.doorids.doordown.y
			}
			if(doorlocations.doorleft.exists)
			{
				doorlocations.doorleft.x = global.doorids.doorleft.x
				doorlocations.doorleft.y = global.doorids.doorleft.y	
			}
			if(doorlocations.doorright.exists)
			{
				doorlocations.doorright.x = global.doorids.doorright.x
				doorlocations.doorright.y = global.doorids.doorright.y
			}
		}
	}
	global.donegen = true
} else {inmap = true}