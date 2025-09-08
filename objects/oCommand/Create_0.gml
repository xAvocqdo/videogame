/// @description Insert description here
// You can write your code in this editor
inF = false
saved_seed = oGame.seed
global.current_room = undefined
global.doorids = 
{
	doorup: undefined,
	doordown: undefined,
	doorright: undefined,
	doorleft: undefined
}
doorlocations =
{
	doorup:
	{
		exists: false,
		x: undefined,
		y: undefined
	},
	
	doordown:
	{
		exists: false,
		x: undefined,
		y: undefined
	},
	
	doorleft:
	{
		exists: false,
		x: undefined,
		y: undefined
	},
	
	doorright:
	{
		exists: false,
		x: undefined,
		y: undefined
	}
}