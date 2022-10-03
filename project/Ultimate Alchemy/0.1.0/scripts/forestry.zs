
scripts.globals.replaceShaped("forestry:sturdy_casing", <forestry:sturdy_machine>, [[null, <ore:dustRedstone>, null], [<ore:slabWood>, <ore:chestWood>, <ore:slabWood>], [<ore:slabWood>, <ore:slabWood>, <ore:slabWood>]]);

scripts.globals.replaceShaped("forestry:moistener", <forestry:moistener>, [[<ore:gearWood>, <ore:blockGlass>, <ore:gearWood>], [<ore:blockGlass>, <forestry:sturdy_machine:*>, <ore:blockGlass>], [<ore:gearWood>, <ore:blockGlass>, <ore:gearWood>]]);
scripts.globals.replaceShaped("forestry:fermenter", <forestry:fermenter>, [[<ore:gearStone>, <ore:blockGlass>, <ore:gearStone>], [<ore:blockGlass>, <forestry:sturdy_machine:*>, <ore:blockGlass>], [<ore:gearStone>, <ore:blockGlass>, <ore:gearStone>]]);

scripts.globals.replaceShaped("forestry:centrifuge", <forestry:centrifuge>, [[<ore:stairWood>, <ore:blockGlass>, <ore:stairWood>], [<minecraft:piston>, <forestry:sturdy_machine:*>, <minecraft:piston>], [<ore:stairWood>, <ore:blockGlass>, <ore:stairWood>]]);
scripts.globals.replaceShaped("forestry:carpenter", <forestry:carpenter>, [[<ore:logWood>, <ore:blockGlass>, <ore:logWood>], [<ore:workbench> | <ore:craftingTableWood>, <forestry:sturdy_machine:*>, <minecraft:iron_axe>], [<ore:logWood>, <ore:blockGlass>, <ore:logWood>]]);

scripts.globals.replaceShaped("forestry:squeezer", <forestry:squeezer>, [[<ore:plankWood>, <minecraft:piston>, <ore:plankWood>], [<ore:blockGlass>, <forestry:sturdy_machine:*>, <ore:blockGlass>], [<ore:plankWood>, <minecraft:piston>, <ore:plankWood>]]);


mods.forestry.Squeezer.addRecipe(<liquid:water> * 1000, [<minecraft:log>], 20);

mods.forestry.Carpenter.addRecipe(<minecraft:deadbush>, [[<minecraft:stick>], [<minecraft:stick>]], 20, <liquid:water> * 50);
mods.forestry.Carpenter.addRecipe(<minecraft:sapling:0>, [[<minecraft:deadbush>]], 20, <liquid:water> * 250);

recipes.addShaped(<forestry:fertilizer_bio> * 8, [[null, <ore:treeSapling>, null], [<ore:treeSapling>, <minecraft:dirt>, <ore:treeSapling>], [null, <ore:treeSapling>, null]]);

recipes.addShaped(<minecraft:leaves>, [[<minecraft:sapling:0>.transformReplace(<minecraft:deadbush>),<minecraft:sapling:0>.transformReplace(<minecraft:deadbush>),<minecraft:sapling:0>.transformReplace(<minecraft:deadbush>)], [<minecraft:sapling:0>.transformReplace(<minecraft:deadbush>),<minecraft:sapling:0>.transformReplace(<minecraft:deadbush>),<minecraft:sapling:0>.transformReplace(<minecraft:deadbush>)], [<minecraft:sapling:0>.transformReplace(<minecraft:deadbush>),<minecraft:sapling:0>.transformReplace(<minecraft:deadbush>),<minecraft:sapling:0>.transformReplace(<minecraft:deadbush>)]]);
recipes.addShaped(<forestry:fertilizer_bio>, [[<minecraft:leaves>, <minecraft:leaves>, <minecraft:leaves>], [<minecraft:leaves>, <minecraft:leaves>, <minecraft:leaves>], [<minecraft:leaves>, <minecraft:leaves>, <minecraft:leaves>]]);

mods.forestry.Fermenter.addRecipe(<liquid:water_of_life>, <minecraft:gravel>, <liquid:water>, 100, 1);

mods.forestry.Still.addRecipe(<liquid:dirt> * 1, <liquid:water_of_life> * 1, 1);

mods.forestry.Carpenter.addRecipe(<minecraft:dirt>, [[<minecraft:gravel>]], 20, <liquid:dirt> * 50);
mods.forestry.Carpenter.addRecipe(<minecraft:grass>, [[<forestry:fertilizer_bio>, <minecraft:dirt>, <forestry:fertilizer_bio>]], 20, <liquid:water> * 100);


mods.forestry.Centrifuge.addRecipe(
	[
		<botania:petal:0> % 20,
		<botania:petal:1> % 20,
		<botania:petal:2> % 20,
		<botania:petal:3> % 20,
		<botania:petal:4> % 20,
		<botania:petal:5> % 20,
		<botania:petal:6> % 20,
		<botania:petal:7> % 20,
		<botania:petal:8> % 20,
		<botania:petal:9> % 20,
		<botania:petal:10> % 20,
		<botania:petal:11> % 20,
		<botania:petal:12> % 20,
		<botania:petal:13> % 20,
		<botania:petal:14> % 20,
		<botania:petal:15> % 20
	], 
	<minecraft:grass>, 40);


	
scripts.globals.addCrusher(<minecraft:vine>, <minecraft:sapling>);
recipes.addShaped(<minecraft:string> * 8, [[<minecraft:vine>, <minecraft:vine>, <minecraft:vine>]]);


mods.forestry.Squeezer.addRecipe(<liquid:protein> * 1000, [<actuallyadditions:item_misc:1>], 50);

mods.forestry.Fermenter.addRecipe(<liquid:netherwart>, <chisel:netherrack:7>, <liquid:protein>, 1000, 1);
mods.forestry.Fermenter.addRecipe(<liquid:netherwart>, <chisel:netherrack:8>, <liquid:protein>, 1000, 1);
mods.forestry.Fermenter.addRecipe(<liquid:netherwart>, <chisel:netherrack:9>, <liquid:protein>, 1000, 1);
mods.forestry.Fermenter.addRecipe(<liquid:netherwart>, <chisel:netherrack:10>, <liquid:protein>, 1000, 1);
mods.forestry.Fermenter.addRecipe(<liquid:netherwart>, <chisel:netherrack:11>, <liquid:protein>, 1000, 1);
scripts.globals.addFilling(<minecraft:nether_wart>,<minecraft:wheat_seeds>, <liquid:netherwart>, 1000, false);

mods.forestry.Fermenter.addRecipe(<liquid:milk>, <minecraft:sugar>, <liquid:protein>, 250, 1);

mods.forestry.Fermenter.addRecipe(<liquid:liquidchorus>, <minecraft:ender_pearl>, <liquid:protein>, 250, 1);
scripts.globals.addFilling(<minecraft:chorus_flower>, <minecraft:red_flower:*> | <minecraft:yellow_flower:*>, <liquid:liquidchorus>, 1000, false);

mods.forestry.Fermenter.addRecipe(<liquid:mushroom_stew>, <minecraft:mycelium:*>, <liquid:protein>, 50, 1);
scripts.globals.addFilling(<minecraft:brown_mushroom>, <minecraft:wheat_seeds>, <liquid:mushroom_stew>, 1000, false);


mods.forestry.Carpenter.addRecipe(<botania:overgrowthseed> * 8,
	[
		[<ore:seedWheat>, <ore:seedWheat>, <ore:seedWheat>],
		[<ore:seedWheat>, <stevescarts:upgrade:4>, <ore:seedWheat>],
		[<ore:seedWheat>, <ore:seedWheat>, <ore:seedWheat>]
	],
	20,
	<liquid:experience> * 2000);
	
	
mods.forestry.ThermionicFabricator.addCast(
	<contenttweaker:dragon_eye>,
	[
		[<ore:nuggetVoid>, <integrateddynamics:logic_director>, <ore:nuggetVoid>],
		[ <integrateddynamics:logic_director>, <botania:thirdeye>, <integrateddynamics:logic_director>],
		[<ore:nuggetVoid>, <integrateddynamics:logic_director>, <ore:nuggetVoid>]
	], 
	<liquid: glass> * 4000);
	
