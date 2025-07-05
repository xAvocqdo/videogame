/// @description Insert description here
// You can write your code in this editor
global.rName = room_get_name(room)


if(global.rName = "Room1")
{
	if(ds_grid_get(grid,mapgridx,mapgridy) == 0 && !global.gendone)
	{
		ds_grid_set(grid,mapgridx,mapgridy,rooms[0].name)
	}
	if(ds_grid_get(grid, mapgridx, mapgridy) == "start")
	{
		for(var i = 0; i < 9999; i++)
		{
			direc = irandom(99)
			getroom = irandom(99)
			if (getroom >= 0 && getroom <= 50){setroom = rooms[1].name}
			if (getroom >= 51 && getroom <= 70){setroom = rooms[2].name}
			if (getroom >= 71 && getroom <= 83) {setroom = rooms[3].name}
			if (getroom >= 84 && getroom <= 100) {setroom = rooms[4].name}
			if(direc > 65 && direc <= 80) // left
			{
				if(mapgridx >= 1 )
				{
					mapgridx -= 1
					if(ds_grid_get(grid, mapgridx, mapgridy) == 0)
					{
						ds_grid_set(grid,mapgridx,mapgridy,setroom)
						count +=1
						if(count >= roomrange)
						{
							ds_grid_set(grid,mapgridx,mapgridy, rooms[5].name)
							global.gendone = true
							ds_grid_copy(gridcopy, grid)
							ds_grid_copy(gridcopyt, grid)
							break
						}
					}
				}
			}
			if(direc >40 && direc <= 65) //right
			{
				if(mapgridx <= 5 )
				{
					mapgridx += 1
					if(ds_grid_get(grid, mapgridx, mapgridy) == 0)
					{
						ds_grid_set(grid,mapgridx,mapgridy,setroom)
						count +=1
						if(count >= roomrange)
						{
							ds_grid_set(grid,mapgridx,mapgridy, rooms[5].name)
							global.gendone = true
							ds_grid_copy(gridcopy, grid)
							ds_grid_copy(gridcopyt, grid)
							break
						}
					}
				}
			}
			if(direc >= 0 && direc <= 40) //up
			{
				if(mapgridy >= 1)
				{
					mapgridy -= 1
						if(ds_grid_get(grid, mapgridx, mapgridy) == 0)
					{
						ds_grid_set(grid, mapgridx,mapgridy, setroom)
						count +=1
						if(count >= roomrange)
						{
							ds_grid_set(grid,mapgridx,mapgridy, rooms[5].name)
							global.gendone = true
							ds_grid_copy(gridcopy, grid)
							ds_grid_copy(gridcopyt, grid)
							break
						}
					}
				}
			}
			if(direc >80 && direc <=99) //down
			{
				if(mapgridy <= 13)
				{
					mapgridy += 1
					if(ds_grid_get(grid, mapgridx, mapgridy) == 0)
					{
						ds_grid_set(grid, mapgridx, mapgridy, setroom)
						count +=1
						if(count >= roomrange)
						{
							ds_grid_set(grid,mapgridx,mapgridy, rooms[5].name)
							global.gendone = true
							ds_grid_copy(gridcopy, grid) 
							ds_grid_copy(gridcopyt, grid)
							break
						}
					}
				}
			}
		}
	}

	//show_debug_message(global.gendone)
	
	if(!thingy) 
	{
		repeat(15)
		{
			repeat(6)
			{
	//			show_debug_message("Hi Lisa")
				switch_draw()
				check_row()
				if(gridx >= 6)
				{
					thingy = true
					break
				
				}
			}
			gridx = 0
			gridy -= 1
			//show_debug_message(gridy)
			posx = 0
			posy -= 128
		}
	}
}




//show_debug_message(ds_grid_get(grid,3,14))











if(keyboard_check_pressed(ord("K")))
{
//	test = room_duplicate(Room1)
//	show_debug_message("hi")
}

if(keyboard_check_pressed(ord("L")))
{
//	room_goto(test)	
}

if(global.rName = "__newroom1")
{
	//show_debug_message("Hi Lisa")
	if(!gen)
	{
		instance_create_layer(0, 0, "Instances", oBuild_Start)
		camera_set_view_pos(view_camera[0], -300, -250);
		gen = true
	}
}


