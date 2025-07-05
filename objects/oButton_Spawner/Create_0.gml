/// @description Insert description here
// You can write your code in this editor
HoverValue = 0
KeyboardToggle = false

var Button_Play = instance_create_depth(room_width/2, room_height/2,-4096, oButton)
Button_Play.Button_Type = 1
Button_Play.HoverValue = 1

var Button_Options = instance_create_depth(room_width/2, room_height/2+60,-4096, oButton)
Button_Options.Button_Type = 2
Button_Options.HoverValue = 2

var Button_Quit = instance_create_depth(room_width/2, room_height/2+120,-4096, oButton)
Button_Quit.Button_Type = 3
Button_Quit.HoverValue = 3
