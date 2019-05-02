import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.artisanworktables.builder.RecipeBuilder;

print("---------------Minecraft Start------------------");

val fluidExtractor = mods.gregtech.recipe.RecipeMap.getByName("fluid_extractor");
val compressor = mods.gregtech.recipe.RecipeMap.getByName("compressor");
val hardenedLeather = <harvestcraft:hardenedleatheritem>;
val solidifier = mods.gregtech.recipe.RecipeMap.getByName("fluid_solidifier");
val mixer = mods.gregtech.recipe.RecipeMap.getByName("mixer");
val assembler = mods.gregtech.recipe.RecipeMap.getByName("assembler");

	#player interface
	mods.jei.JEI.removeAndHide(<superfactorymanager:cable_relay:8>);
	mods.jei.JEI.removeAndHide(<superfactorymanager:cable_relay>);

	#Block gate
	recipes.remove(<superfactorymanager:cable_breaker>);
	assembler.recipeBuilder()
		.inputs(<superfactorymanager:cable>, <actuallyadditions:block_placer>, <actuallyadditions:block_breaker>)
		.outputs(<superfactorymanager:cable_breaker>)
		.duration(500)
		.EUt(48)
		.buildAndRegister();		
	
	#Item Valve
	recipes.remove(<superfactorymanager:cable_intake>);
	assembler.recipeBuilder()
		.inputs(<actuallyadditions:block_dropper>, <minecraft:hopper>)
		.outputs(<superfactorymanager:cable_intake>)
		.duration(200)
		.EUt(48)
		.buildAndRegister();		

	#Rapid Item Valve
	recipes.remove(<superfactorymanager:cable_intake:8>);
	assembler.recipeBuilder()
		.inputs(<superfactorymanager:cable_intake>, <rftools:sequencer_block>)
		.outputs(<superfactorymanager:cable_intake:8>)
		.duration(300)
		.EUt(48)
		.buildAndRegister();		

	#Inventory Cable
	recipes.remove(<superfactorymanager:cable>);
	assembler.recipeBuilder()
		.inputs(<ore:cableGtSingleRedAlloy>*4, <ore:plateGold>*8, <ore:plateAluminium>*4)
		.fluidInputs([<liquid:plastic> * 1152])
		.outputs(<superfactorymanager:cable> *8)
		.duration(180)
		.EUt(48)
		.buildAndRegister();		

	#Inventory Manager
	recipes.remove(<superfactorymanager:manager>);
	assembler.recipeBuilder()
		.inputs(<avaritia:compressed_crafting_table>, <gregtech:machine:502>, <metaitem:sensor.mv>)
		.fluidInputs([<liquid:plastic> * 288])
		.outputs(<superfactorymanager:manager>)
		.duration(800)
		.EUt(48)
		.buildAndRegister();				
print("----------------Minecraft End-------------------");
