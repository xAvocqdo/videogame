/// @description Insert description here
// You can write your code in this editor
// using doorids, fill in doorlocation x y if it exists (CHANGE EXISTS IN DOORGEN)
if(!global.inmap)
{
	if(global.rName != "Room1" && global.rName != "rm_menu") {
		if(generated && !donegen)
		{
			if(doorlocations.doorup.exists)
			{
				doorlocations.doorup.x = doorids.doorup.x
				doorlocations.doorup.y = doorids.doorup.y
			}
			if(doorlocations.doordown.exists)
			{
				doorlocations.doordown.x = doorids.doordown.x	
				doorlocations.doordown.y = doorids.doordown.y
			}
			if(doorlocations.doorleft.exists)
			{
				doorlocations.doorleft.x = doorids.doorleft.x
				doorlocations.doorleft.y = doorids.doorleft.y	
			}
			if(doorlocations.doorright.exists)
			{
				doorlocations.doorright.x = doorids.doorright.x
				doorlocations.doorright.y = doorids.doorright.y
			}
			donegen = true
			show_debug_message("moredonegentesting")
		}
	}
} 