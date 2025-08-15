/// @description Insert description here
// You can write your code in this editor
randomize()
seed = random_get_seed()
global.doordown = false
global.doorup = false
global.doorleft = false
global.doorright = false
global.gendone = false
roomrange = irandom_range(20, 30)
global.spawnx = undefined
global.spawny = undefined
grid = ds_grid_create(7,15)
gridcopy = ds_grid_create(7,15)
gridcopyt = ds_grid_create(7,15)
test = undefined
rm_map = undefined
global.rName = undefined
global.playerx = 3
global.playery = 14
gen = false
mapgridx = 3
mapgridy = 14
posx = 0
posy = 468
gridx = 0
gridy= 14
direc = undefined
getroom = undefined
setroom = undefined
thingy = false
gw= ds_grid_width(grid);
gh= ds_grid_height(grid);
player_indicator = 
{
	x : 0,
	y : 468
}
player = 
{
	x : 672,
	y : 320,
	hp : 10
}
count = 0
rooms = 
[
	//Start Room
	{
		name : "start",
		size : 48,
	},
	// Standard Room
	{
		name : "standard",
		size : 96,
		containsmax : ["enemy", "enemy", "wnpc", "card", "item", "key"], //wnpc means wandering npc
		containsmin : ["enemy"],
	},
	// Double Room
	{
		name : "double",
		size : 128,
		containsmax : ["enemy", "enemy", "elite", "wnpc", "card", "item", "lockedchest", "key", "health"], 
		containsmin : ["enemy"],
	},
	//Loot Room 
	{
		name : "loot",
		size : 56,
		containsmax : ["chest", "lockedchest", "item", "enemy", "health"],
		containsmin : ["chest"],
	},
	//Shop Room
	{
		name : "shop",
		size: 56,
		containsmax: ["trader", "wnpc", "health"],
		containsmin: ["trader"],
	},
		//Boss Room
	{
		name : "boss",
		size : 128,
		containsmax : ["boss", "bosslockedchest"],
		containsmin : ["boss", "bosslockedchest"],

	},

];

