
mods.actuallyadditions.Compost.addRecipe( <minecraft:rotten_flesh>, <thaumcraft:flesh_block>, <minecraft:nether_wart>, <minecraft:nether_wart_block>);

scripts.globals.addFilling(<contenttweaker:tear_drop> * 64, <thaumcraft:bath_salts>, <liquid:water>, 1000, false );

mods.actuallyadditions.Empowerer.addRecipe(
	<minecraft:ghast_tear>, 
	<contenttweaker:tear_drop>,
	<actuallyadditions:item_crystal_empowered:0>, 
	<actuallyadditions:item_crystal_empowered:5>,
	<minecraft:nether_wart>,
	<minecraft:quartz>,
	500, 100);
	
	
mods.actuallyadditions.Empowerer.addRecipe(
	<contenttweaker:dragon_horn>, 
	<actuallyadditions:item_crystal_empowered:1>,
	<actuallyadditions:item_crystal_empowered:2>,
	<actuallyadditions:item_crystal_empowered:4>,
	<actuallyadditions:item_crystal_empowered:2>,
	<actuallyadditions:item_crystal_empowered:4>,
	1500, 100);	
	
mods.actuallyadditions.Empowerer.removeRecipe(<actuallyadditions:item_crystal_empowered:2>);
mods.actuallyadditions.Empowerer.removeRecipe(<actuallyadditions:block_crystal_empowered:2>);


mods.actuallyadditions.Empowerer.addRecipe(
	<actuallyadditions:item_crystal_empowered:2>,
	<actuallyadditions:item_crystal:2>,
	<minecraft:dye:12>, 
	<thermalfoundation:material:130>,
	<thermalfoundation:material:130>,
	<thaumcraft:quicksilver>,
	500, 100);


mods.actuallyadditions.Empowerer.addRecipe(
	<actuallyadditions:block_crystal_empowered:2>,
	<actuallyadditions:block_crystal:2>,
	<minecraft:dye:12>, 
	<thermalfoundation:material:130>,
	<thermalfoundation:material:130>,
	<thaumcraft:quicksilver>,
	500, 100);
	
recipes.removeByRecipeName("thermalfoundation:block_podzol");
scripts.globals.addFilling(<minecraft:dirt:2>, <minecraft:dirt>, <liquid:empoweredoil>, 1000, true);
mods.forestry.Moistener.removeRecipe(<minecraft:dirt:2>);

recipes.addShaped("crusher2", <actuallyadditions:block_grinder>, [[<ore:cobblestone>, <ore:itemFlint>, <ore:dustRedstone>],[<ore:gearIron>, <minecraft:furnace>, <ore:gearIron>],[<ore:dustRedstone>, <ore:itemFlint>, <ore:cobblestone>]]);