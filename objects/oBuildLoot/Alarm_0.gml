/// @description Move & make tiles
if dir = 0 
	{x+=width} // right
if dir = 1
	{y-=width} //down
if dir = 2
	{x-=width} //left
if dir = 3
	{y += width} //up 
	

if (!place_meeting(x, y, oTile))
{
	instance_create_depth(x,y,0,oTile)
}
 dir = irandom(3)
alarm[0]=8