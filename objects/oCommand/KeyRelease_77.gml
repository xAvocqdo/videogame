/// @description Map

if(global.rName != "Room1")
{
	global.inmap = true
	global.current_room = global.rName
	oGame.player.x = obj_player.x
	oGame.player.y = obj_player.y
	room_goto(Room1)

}
show_debug_message(global.current_room)
if(global.rName == "Room1" && global.current_room != undefined)
{
	room_goto(asset_get_index(global.current_room))
}
