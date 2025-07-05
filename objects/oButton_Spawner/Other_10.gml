/// @description Options Menu Event
with(oButton)
{
	instance_destroy()
}
var Button_FullScreen = instance_create_depth(room_width/2, room_height/2,-4096, oButton)
Button_FullScreen.Button_Type = 5
Button_FullScreen.HoverValue = 1


var Button_Back = instance_create_depth(room_width/2, room_height/2+60,-4096, oButton)
Button_Back.Button_Type = 4
Button_Back.HoverValue = 1

