/// @description Insert description here
// You can write your code in this editor
inF = false
saved_seed = oGame.seed
global.inmap = false
global.current_room = undefined
generated = false
donegen = false
topleft = [ undefined, undefined ]
bottomright = [undefined, undefined]
room_mp_grid = undefined 

doorids = 
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