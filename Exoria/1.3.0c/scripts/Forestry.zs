print("Forestry");

// Ash Powder into Ash
recipes.addShaped(<forestry:ash>, [[<botany:misc>, <botany:misc>], [<botany:misc>, <botany:misc>]]);

// Rebalancing Fertilizer
recipes.remove(<forestry:fertilizer_compound>);
recipes.addShaped(<forestry:fertilizer_compound> * 2, [[<ore:sand>], [<forestry:apatite>], [<ore:sand>]]);
recipes.addShaped(<forestry:fertilizer_compound> * 2, [[<ore:dustAsh>, <ore:dustAsh>, <ore:dustAsh>], [<ore:dustAsh>, <forestry:apatite>, <ore:dustAsh>], [<ore:dustAsh>, <ore:dustAsh>, <ore:dustAsh>]]);

// Sturdy Casing
recipes.remove(<forestry:sturdy_machine>);
recipes.addShaped(<forestry:sturdy_machine>, [[<ore:plateDawnstone>, <ore:plateDawnstone>, <ore:plateDawnstone>], [<ore:plateDawnstone>, <immersiveengineering:material:27>, <ore:plateDawnstone>], [<ore:plateDawnstone>, <ore:plateDawnstone>, <ore:plateDawnstone>]]);

// Reinforced Casing
recipes.remove(<genetics:misc>);
recipes.addShaped(<genetics:misc>, [[<ore:plateAluminum>, <ore:plateAluminum>, <ore:plateAluminum>], [<ore:plateAluminum>, <forestry:sturdy_machine>, <ore:plateAluminum>], [<ore:plateAluminum>, <ore:plateAluminum>, <ore:plateAluminum>]]);

// Moistener
mods.forestry.Moistener.addRecipe(<minecraft:clay>, <primal:terraclay_block>, 200);
mods.forestry.Moistener.addRecipe(<minecraft:clay>, <forestry:loam>, 200);
mods.forestry.Moistener.addRecipe(<biomesoplenty:mud>, <minecraft:dirt>, 200);

// Squeezer
mods.forestry.Squeezer.addRecipe(<liquid:srcrystalfluid> * 1000, [<skyresources:alchemyitemcomponent:1>], 50);
mods.forestry.Squeezer.addRecipe(<liquid:lava> * 1000, [<skyresources:blazepowderblock>], 50);
var leaves = <ore:treeLeaves> as crafttweaker.oredict.IOreDictEntry;
for item in leaves.items{
    mods.forestry.Squeezer.addRecipe(<liquid:water> * 250, [item], 50);
}

// Circuits
mods.forestry.Carpenter.removeRecipe(<forestry:chipsets>);
mods.forestry.Carpenter.removeRecipe(<forestry:chipsets:1>);
mods.forestry.Carpenter.removeRecipe(<forestry:chipsets:2>);
mods.forestry.Carpenter.removeRecipe(<forestry:chipsets:3>);
mods.forestry.Carpenter.addRecipe(<forestry:chipsets>, [[null, <ore:nuggetTin>, null], [<ore:nuggetTin>, <immersiveengineering:material:27>, <ore:nuggetTin>], [null, <ore:nuggetTin>, null]], 10, <liquid:mist_acid> * 100);
mods.forestry.Carpenter.addRecipe(<forestry:chipsets:1>, [[null, <ore:nuggetBronze>, null], [<ore:nuggetBronze>, <immersiveengineering:material:27>, <ore:nuggetBronze>], [null, <ore:nuggetBronze>, null]], 10, <liquid:mist_acid> * 100);
mods.forestry.Carpenter.addRecipe(<forestry:chipsets:2>, [[null, <ore:nuggetIron>, null], [<ore:nuggetIron>, <immersiveengineering:material:27>, <ore:nuggetIron>], [null, <ore:nuggetIron>, null]], 10, <liquid:mist_acid> * 100);
mods.forestry.Carpenter.addRecipe(<forestry:chipsets:3>, [[null, <ore:nuggetGold>, null], [<ore:nuggetGold>, <immersiveengineering:material:27>, <ore:nuggetGold>], [null, <ore:nuggetGold>, null]], 10, <liquid:mist_acid> * 100);

// Tubes
mods.forestry.ThermionicFabricator.removeCast(<forestry:thermionic_tubes:*>);
mods.forestry.ThermionicFabricator.addCast(<forestry:thermionic_tubes> * 4,[[<immersiveengineering:material:26>, <ore:ingotCopper>, <immersiveengineering:material:26>], [<immersiveengineering:material:26>, <ore:ingotCopper>, <immersiveengineering:material:26>], [<ore:ingotCopper>, <ore:ingotCopper>, <ore:ingotCopper>]], <liquid:glass> * 1000);
mods.forestry.ThermionicFabricator.addCast(<forestry:thermionic_tubes:1> * 4,[[<immersiveengineering:material:26>, <ore:ingotTin>, <immersiveengineering:material:26>], [<immersiveengineering:material:26>, <ore:ingotTin>, <immersiveengineering:material:26>], [<ore:ingotTin>, <ore:ingotTin>, <ore:ingotTin>]], <liquid:glass> * 1000);
mods.forestry.ThermionicFabricator.addCast(<forestry:thermionic_tubes:2> * 4,[[<immersiveengineering:material:26>, <ore:ingotBronze>, <immersiveengineering:material:26>], [<immersiveengineering:material:26>, <ore:ingotBronze>, <immersiveengineering:material:26>], [<ore:ingotBronze>, <ore:ingotBronze>, <ore:ingotBronze>]], <liquid:glass> * 1000);
mods.forestry.ThermionicFabricator.addCast(<forestry:thermionic_tubes:3> * 4,[[<immersiveengineering:material:26>, <ore:ingotIron>, <immersiveengineering:material:26>], [<immersiveengineering:material:26>, <ore:ingotIron>, <immersiveengineering:material:26>], [<ore:ingotIron>, <ore:ingotIron>, <ore:ingotIron>]], <liquid:glass> * 1000);
mods.forestry.ThermionicFabricator.addCast(<forestry:thermionic_tubes:4> * 4,[[<immersiveengineering:material:26>, <ore:ingotGold>, <immersiveengineering:material:26>], [<immersiveengineering:material:26>, <ore:ingotGold>, <immersiveengineering:material:26>], [<ore:ingotGold>, <ore:ingotGold>, <ore:ingotGold>]], <liquid:glass> * 1000);
mods.forestry.ThermionicFabricator.addCast(<forestry:thermionic_tubes:5> * 4,[[<immersiveengineering:material:26>, <ore:gemDiamond>, <immersiveengineering:material:26>], [<immersiveengineering:material:26>, <ore:gemDiamond>, <immersiveengineering:material:26>], [<ore:gemDiamond>, <ore:gemDiamond>, <ore:gemDiamond>]], <liquid:glass> * 1000);
mods.forestry.ThermionicFabricator.addCast(<forestry:thermionic_tubes:6> * 4,[[<immersiveengineering:material:26>, <ore:obsidian>, <immersiveengineering:material:26>], [<immersiveengineering:material:26>, <ore:obsidian>, <immersiveengineering:material:26>], [<ore:obsidian>, <ore:obsidian>, <ore:obsidian>]], <liquid:glass> * 1000);
mods.forestry.ThermionicFabricator.addCast(<forestry:thermionic_tubes:7> * 4,[[<immersiveengineering:material:26>, <ore:powderBlaze>, <immersiveengineering:material:26>], [<immersiveengineering:material:26>, <ore:powderBlaze>, <immersiveengineering:material:26>], [<ore:powderBlaze>, <ore:powderBlaze>, <ore:powderBlaze>]], <liquid:glass> * 1000);
mods.forestry.ThermionicFabricator.addCast(<forestry:thermionic_tubes:9> * 4,[[<immersiveengineering:material:26>, <ore:gemEmerald>, <immersiveengineering:material:26>], [<immersiveengineering:material:26>, <ore:gemEmerald>, <immersiveengineering:material:26>], [<ore:gemEmerald>, <ore:gemEmerald>, <ore:gemEmerald>]], <liquid:glass> * 1000);
mods.forestry.ThermionicFabricator.addCast(<forestry:thermionic_tubes:10> * 4,[[<immersiveengineering:material:26>, <ore:gemApatite>, <immersiveengineering:material:26>], [<immersiveengineering:material:26>, <ore:gemApatite>, <immersiveengineering:material:26>], [<ore:gemApatite>, <ore:gemApatite>, <ore:gemApatite>]], <liquid:glass> * 1000);
mods.forestry.ThermionicFabricator.addCast(<forestry:thermionic_tubes:11> * 4,[[<immersiveengineering:material:26>, <ore:gemLapis>, <immersiveengineering:material:26>], [<immersiveengineering:material:26>, <ore:gemLapis>, <immersiveengineering:material:26>], [<ore:gemLapis>, <ore:gemLapis>, <ore:gemLapis>]], <liquid:glass> * 1000);

// Exoria Special
<forestry:royal_jelly>.displayName = "艾柯索瑞亚精华";
<forestry:pollen>.displayName = "艾柯索瑞亚花粉";

// Worktable
recipes.remove(<forestry:worktable>);
mods.recipestages.Recipes.addShaped("crafting_knowledge_2", <forestry:worktable>, [[<minecraft:paper>], [<tconstruct:tooltables>], [<ore:chest>]]);

// Bee House
recipes.remove(<forestry:bee_house>);
mods.recipestages.Recipes.addShaped("bee_knowledge", <forestry:bee_house>, [[<ore:slabWood>, <ore:slabWood>, <ore:slabWood>], [<ore:plankWood>, null, <ore:plankWood>], [<ore:plankWood>, <ore:plankWood>, <ore:plankWood>]]);

// Engines
recipes.remove(<forestry:engine_biogas>);
recipes.remove(<forestry:engine_peat>);
mods.jei.JEI.removeAndHide(<forestry:engine_clockwork>);
recipes.addShaped(<forestry:engine_biogas>, [[<ore:plateBronze>, <ore:plateBronze>, <ore:plateBronze>], [null, <forestry:chipsets>, null], [<ore:gearBronze>, <minecraft:piston>, <ore:gearBronze>]]);
recipes.addShaped(<forestry:engine_peat>, [[<ore:plateCopper>, <ore:plateCopper>, <ore:plateCopper>], [null, <forestry:chipsets>, null], [<ore:gearCopper>, <minecraft:piston>, <ore:gearCopper>]]);

// Analyzer
mods.forestry.Carpenter.removeRecipe(<forestry:portable_alyzer>);
recipes.addShaped(<forestry:portable_alyzer>, [[<ore:ingotTin>, <ore:paneGlass>, <ore:ingotTin>], [<ore:ingotTin>, <forestry:honey_drop>, <ore:ingotTin>], [<ore:ingotTin>, <ore:paneGlass>, <ore:ingotTin>]]);

// Honey Drop
mods.magneticraft.CrushingTable.addRecipe(<forestry:bee_combs>, <forestry:honey_drop>, true);

// Disabling Greenhouse
mods.jei.JEI.removeAndHide(<forestry:greenhouse>);
mods.jei.JEI.removeAndHide(<forestry:greenhouse:3>);
mods.jei.JEI.removeAndHide(<forestry:greenhouse:4>);
mods.jei.JEI.removeAndHide(<forestry:greenhouse:5>);	
mods.jei.JEI.removeAndHide(<forestry:climatiser>);
mods.jei.JEI.removeAndHide(<forestry:climatiser:1>);
mods.jei.JEI.removeAndHide(<forestry:climatiser:2>);
mods.jei.JEI.removeAndHide(<forestry:climatiser:3>);
mods.jei.JEI.removeAndHide(<forestry:climatiser:4>);

// Remove Habitat Locator
mods.jei.JEI.removeAndHide(<forestry:habitat_locator>);

// Manasteel Grafter
recipes.remove(<magicbees:manasteelgrafter>);
recipes.addShaped(<magicbees:manasteelgrafter>, [[null, <botania:manaresource>], [<ore:stickWood>, null]]);

// Gendustry
//recipes.remove(<gendustry:genetics_processor>);
recipes.addShaped(<gendustry:genetics_processor>, [[<minecraft:quartz>, <genetics:misc:3>, <minecraft:quartz>], [<genetics:misc:3>, <refinedstorage:processor:5>, <genetics:misc:3>], [<minecraft:quartz>, <genetics:misc:3>, <minecraft:quartz>]]);
//recipes.remove(<gendustry:env_processor>);
recipes.addShaped(<gendustry:env_processor>, [[<minecraft:quartz>, <ore:gemLapis>, <minecraft:quartz>], [<ore:gemLapis>, <refinedstorage:processor:5>, <ore:gemLapis>], [<minecraft:quartz>, <ore:gemLapis>, <minecraft:quartz>]]);
//recipes.remove(<gendustry:bee_receptacle>);
recipes.addShaped(<gendustry:bee_receptacle>, [[<ore:plateBronze>, <ore:plateBronze>, <ore:plateBronze>], [<ore:plateBronze>, <roots:fairy_dust>, <ore:plateBronze>], [<minecraft:redstone>, <ore:plateGold>, <minecraft:redstone>]]);
recipes.addShaped(<gendustry:apiary.upgrade:1>, [[<mist:sponge_slime>, <ore:blockGlass>, <mist:sponge_slime>], [<ore:blockGlass>, <gendustry:upgrade_frame>, <ore:blockGlass>]]);