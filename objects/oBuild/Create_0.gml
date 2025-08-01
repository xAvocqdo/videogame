/// @description building the map
randomize() // randomize the seed of the engine so its not the same pattern every time
width=sprite_get_width(sFloor) // 64 rn  
rSize = irandom_range(36, oGame.rooms[1].size)


for (i = 0; i<999; i++) // place a tile then go random direction place new tile 60 times.
{
	dir = irandom(3) // random direction right left down or up 
	if dir = 0 
		{x+=width} // right
	if dir = 1
		{y-=width} //down
	if dir = 2
		{x-=width} //left
	if dir = 3
		{y += width} //up 
	

	if (!place_meeting(x, y, oTile)) // so it doesnt place tiles on top of each other
	{
		instance_create_depth(x,y,0,oTile) //places tiles
	}

	if(instance_number(oTile) >= rSize) // uses the var rSize to determine the max # of tiles
	{
		with oTile // every tile object will run this
		{
			if(place_free(x+oBuild.width, y)) // if the tile to the right is free
			{
				instance_create_depth(x+oBuild.width,y,0,oWall) //place a wall
			}
			if(place_free(x-oBuild.width, y)) //if a tile to the left is free
			{
				instance_create_depth(x-oBuild.width,y,0,oWall) // place a wall
			}
			if(place_free(x, y+oBuild.width)) //etc.
			{
				instance_create_depth(x,y+oBuild.width,0,oWall)
			}
			if(place_free(x, y-oBuild.width))
			{
				instance_create_depth(x,y-oBuild.width,0,oWall)
			}
		
		}
		
		instance_create_depth(x,y,-4096,oDoorGen)
		instance_destroy() //destroys the oBuild tile
		break // once it hits that, exit the loop. 
	}
}
