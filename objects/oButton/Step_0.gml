/// @description Insert description here
// You can write your code in this editor
if (point_in_rectangle(mouse_x, mouse_y, x-Width, y-Height,x+Width,y+Height))
{
	Hover = 1
	HoverColor = c_olive
	if(mouse_check_button(mb_left))
	{
		Hover = 2
		HoverColor = c_lime
	}
}
else 
{
	Hover = 0
	HoverColor = c_white
}

if(Hover = 1)
{
	if(mouse_check_button_released(mb_left))
	{
		switch(Button_Type)
		{
			case 1: // Play
				room_goto(Room1)
			break
			
			case 2: //Options
				with(oButton_Spawner)
				{
					event_user(0)
				}
			break
			
			case 3: //Quit
				game_end() // probably sub this out for a saver script eventually
			break
			
			case 4: //Option back 2 main
				with(oButton_Spawner)
				{
					event_user(1)		
				}
			break
			
			case 5: //Fullscreen 
				{
					if(!window_get_fullscreen())
					{
						window_set_fullscreen(true)
					}
					else
					{
						window_set_fullscreen(false)	
					}
				}
			break
			
			default: 
				
			break
			
		}
	}
}