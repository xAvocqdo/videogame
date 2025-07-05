/// @description Insert description here
// You can write your code in this editor

/*
if(!place_empty(x, y+128) && place_empty(x,y+128,obj_player))
{
	show_debug_message("testdown")
	global.doordown = true
} else {global.doordown = false}
if(!place_empty(x, y-128) && place_empty(x,y-128,obj_player))
{
	show_debug_message("testup")	
	global.doorup = true
} else {global.doorup = false}
if(!place_empty(x+128, y) && place_empty(x+128,y,obj_player))
{
	show_debug_message("testright")
	global.doorright = true
} else {global.doorright = false}
if(!place_empty(x-128, y) && place_empty(x-128,y,obj_player))
{
	show_debug_message("testleft")
	global.doorleft = true
} else {global.doorleft = false}




room_goto(rm_base)