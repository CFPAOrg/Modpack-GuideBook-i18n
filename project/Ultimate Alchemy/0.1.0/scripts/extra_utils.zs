extrautilities2.Tweaker.XUTweaker.allowSurvivalFlight();
extrautilities2.Tweaker.XUTweaker.disableNetherPortals();


var voidStone = <ore:stoneMarble>;
scripts.globals.replaceShaped("extrautils2:machine_base", <extrautils2:machine> * 4, [[voidStone, <ore:dustRedstone>, voidStone], [<ore:dustRedstone>, <ore:chestWood>, <ore:dustRedstone>], [voidStone, <ore:dustRedstone>, voidStone]]);

recipes.addShapeless("time_machine", <extrautils2:machine>.withTag({Type: "crafttweaker:time_machine"}), [<extrautils2:machine>, <notenoughwands:acceleration_wand:*>]);

var time_machine = extrautilities2.Tweaker.IMachineRegistry.getMachine("time_machine");

scripts.globals.addCrusherSecondary(<minecraft:gunpowder> * 5, <minecraft:tnt>, <extrautils2:ingredients:10>, 10);

recipes.addShaped("resonator2", <extrautils2:resonator>, [[<ore:dustRedstone>, <ore:blockCharcoal>, <ore:dustRedstone>], [<ore:ingotIron>, <extrautils2:ingredients>, <ore:ingotIron>], [<ore:ingotIron>, <ore:ingotIron>, <ore:ingotIron>]]);


print("Adding Time Recipes");

// Amber
time_machine.addRecipe(
	{"input_fluid": <liquid:sap> * 1000},
	{"output_item": <thaumcraft:amber>},
	1024*200, 20*60*5
);
print("Added");

// AA Crystals
time_machine.addRecipe(
	{"input_item": <ore:dustRedstone>, "input_fluid": <liquid:glass> * 1000},
	{"output_item": <actuallyadditions:block_crystal_cluster_redstone>},
	1024*50, 20*60*2
);

time_machine.addRecipe(
	{"input_item": <ore:gemLapis>, "input_fluid": <liquid:glass> * 1000},
	{"output_item": <actuallyadditions:block_crystal_cluster_lapis>},
	1024*50, 20*60*2
);


time_machine.addRecipe(
	{"input_item": <ore:gemDiamond>, "input_fluid": <liquid:glass> * 1000},
	{"output_item": <actuallyadditions:block_crystal_cluster_diamond>},
	1024*50, 20*60*2
);


time_machine.addRecipe(
	{"input_item": <ore:charcoal> | <ore:coal>, "input_fluid": <liquid:glass> * 1000},
	{"output_item": <actuallyadditions:block_crystal_cluster_coal>},
	1024*50, 20*60*2
);


time_machine.addRecipe(
	{"input_item": <ore:gemEmerald>, "input_fluid": <liquid:glass> * 1000},
	{"output_item": <actuallyadditions:block_crystal_cluster_emerald>},
	1024*50, 20*60*2
);


time_machine.addRecipe(
	{"input_item": <ore:ingotIron>, "input_fluid": <liquid:glass> * 1000},
	{"output_item": <actuallyadditions:block_crystal_cluster_iron>},
	1024*50, 20*60*2
);


time_machine.addRecipe(
	{"input_fluid": <liquid:biomass> * 1000},
	{"output_fluid": <liquid:oil> * 1000},
	1024*50, 20*30
);

time_machine.addRecipe(
	{"input_item": <contenttweaker:mini_void_seeds>},
	{"output_item": <thaumcraft:void_seed>},
	1024*50, 20*60*5
);

// Ancient Tiles

time_machine.addRecipe(
	{"input_item": <minecraft:stone>},
	{"output_item": <thaumcraft:stone_ancient_tile>},
	1024*50, 20*60*2
);

time_machine.addRecipe(
	{"input_item": <minecraft:stonebrick>},
	{"output_item": <thaumcraft:stone_ancient>},
	1024*50, 20*60*2
);

time_machine.addRecipe(
	{"input_item": <minecraft:stonebrick:3>},
	{"output_item": <thaumcraft:stone_ancient_glyphed>},
	1024*50, 20*60*2
);

// Bot

time_machine.addRecipe(
	{"input_item": <contenttweaker:rune_of_tragedy>},
	{"output_item": <contenttweaker:rune_of_comedy>},
	1024*50, 20*60*2
);

// 

recipes.removeByRecipeName("extrautils2:redstone_eye");



time_machine.addRecipe(
	{"input_item": <ore:egg>, "input_fluid": <liquid:void> * 1000},
	{"output_item": <minecraft:dragon_egg>},
	60*60*20*16, 60*60*20
);

scripts.globals.addFilling(<minecraft:skull:1>, <minecraft:skull:0>, <liquid:evil>, 1000, true);

print("Finished Loading");

mods.extrautils2.Resonator.add(<contenttweaker:dragon_skin>, <minecraft:leather>, 100 * 100);


mods.extrautils2.Resonator.add(<actuallyadditions:item_dust:7>, <minecraft:redstone>, 400);
