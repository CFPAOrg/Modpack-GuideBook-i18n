import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.artisanworktables.builder.RecipeBuilder;

print("------------------Open Blocks Start---------------");

	#scaffolding recipe fix
	recipes.remove(<openblocks:scaffolding>);
	recipes.addShaped(<openblocks:scaffolding> * 8, [[<minecraft:stick>, <minecraft:stick>, <minecraft:stick>],[<minecraft:stick>, <minecraft:ladder>, <minecraft:stick>], [<minecraft:stick>, <minecraft:stick>, <minecraft:stick>]]);


	#vacuum hopper
	recipes.remove(<openblocks:vacuum_hopper>);
	recipes.addShaped(<openblocks:vacuum_hopper>, 
	[[null, <minecraft:hopper>, null],
	[null, <enderio:item_material:14>, null], 
	[<minecraft:obsidian>, <minecraft:obsidian>, <minecraft:obsidian>]]);

	#hanglider
	recipes.remove(<openblocks:hang_glider>);
	recipes.addShaped(<openblocks:hang_glider>, 
	[[null, null, null],
	[<openblocks:generic>, <ore:stickAluminium>, <openblocks:generic>], 
	[null, null, null]]);

	#glider wing
	recipes.remove(<openblocks:generic>);
	recipes.addShapedMirrored(<openblocks:generic>, 
	[[<harvestcraft:hardenedleatheritem>, <ore:stickAluminium>, null],
	[<harvestcraft:hardenedleatheritem>, <harvestcraft:hardenedleatheritem>, <ore:stickAluminium>], 
	[<harvestcraft:hardenedleatheritem>, <harvestcraft:hardenedleatheritem>, <harvestcraft:hardenedleatheritem>]]);
	
	#crane parts
	recipes.remove(<openblocks:generic:2>);
	recipes.remove(<openblocks:generic:3>);
	recipes.remove(<openblocks:generic:1>);

	#auto anvil
	recipes.remove(<openblocks:auto_anvil>);
	recipes.addShaped(<openblocks:auto_anvil>, 
	[[<ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>],
	[<mekanism:transmitter:1>, <minecraft:anvil>, <mekanism:transmitter:1>], 
	[<ore:plateSteel>, <thermalfoundation:material:512>, <ore:plateSteel>]]);

	
print("-------------------Open Blocks End----------------");