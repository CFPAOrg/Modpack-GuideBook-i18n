import mods.artisanworktables.builder.RecipeBuilder;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import mods.gregtech.recipe.RecipeMap;

val blast_furnace = mods.gregtech.recipe.RecipeMap.getByName("blast_furnace");
val fluid_extractor = mods.gregtech.recipe.RecipeMap.getByName("fluid_extractor");
val mixer = mods.gregtech.recipe.RecipeMap.getByName("mixer");
val solidifier = mods.gregtech.recipe.RecipeMap.getByName("fluid_solidifier");
val chemical_bath = mods.gregtech.recipe.RecipeMap.getByName("chemical_bath");
val vacFreezer = mods.gregtech.recipe.RecipeMap.getByName("vacuum_freezer");

print("---------------Thermal Foundation Start------------------");

	#Cryotheum Dust
recipes.remove(<thermalfoundation:material:1025>);
mods.gregtech.recipe.RecipeMap.getByName("mixer").recipeBuilder()
	.inputs([<ore:dustBlizz>.firstItem * 2, <minecraft:snowball>, <ore:dustRedstone>])
	.fluidInputs(<liquid:brine> * 500)
	.outputs(<ore:dustCryotheum>.firstItem * 2)
	.duration(120)
	.EUt(32)
	.buildAndRegister();

	#Rockwool
mixer.recipeBuilder()
    .inputs(<minecraft:gravel>*4, <minecraft:sand>*4, <ore:blockWool>)
    .fluidInputs([<liquid:water> * 100])
	.outputs(<thermalfoundation:rockwool:7>)
    .duration(800)
    .EUt(3)
    .buildAndRegister();

	#remove small and tiny piles from dust
recipes.remove(<ore:dustSmallSignalum>.firstItem);
recipes.remove(<ore:dustTinySignalum>.firstItem);

	#Niter Deprecatiion Recipe
recipes.addShapeless(<ore:dustNiter>.firstItem, [<thermalfoundation:material:772>]);
<thermalfoundation:material:772>.addTooltip(format.darkRed("此物品已停用，将其合成为来自GTCE的替代品。"));

	
	#Destabilized Redstone Bucket recipes
recipes.removeByRecipeName("thermalfoundation:dust_signalum");
recipes.removeByRecipeName("redstonearsenal:gem_crystal_flux");
recipes.removeByRecipeName("redstonearsenal:dust_electrum_flux_alloy");
recipes.removeByRecipeName("redstonearsenal:dust_electrum_flux");


	#Enderium Ingot
blast_furnace.findRecipe(120, [<ore:dustEnderium>.firstItem], null).remove();
blast_furnace.recipeBuilder()
    .inputs(<ore:dustEnderium> * 2, <ore:dustPyrotheum>)
    .fluidInputs([<liquid:helium> * 100])
    .outputs(<ore:ingotHotEnderium>.firstItem * 2)
    .property("temperature", 4500)
    .duration(2200)
    .EUt(480)
    .buildAndRegister();
mods.jei.JEI.removeAndHide(<thermalfoundation:material:167>);
<thermalfoundation:material:167>.addTooltip(format.darkRed("此物品已停用，将其合成为来自GTCE的替代品。"));
recipes.addShapeless(ingotGTEnderium, [<thermalfoundation:material:167>]);

	#Enderium Blend
mods.jei.JEI.removeAndHide(<thermalfoundation:material:103>);
<thermalfoundation:material:103>.addTooltip(format.darkRed("此物品已停用，将其合成为来自GTCE的替代品。"));
recipes.addShapeless(dustGTEnderium, [<thermalfoundation:material:103>]);
mixer.recipeBuilder()
	.inputs([<ore:dustLead> * 3, <ore:dustPlatinum>])
	.fluidInputs(<liquid:ender> * 1000)
	.outputs(<ore:dustEnderium>.firstItem * 2)
	.duration(120)
	.EUt(30)
	.buildAndRegister();

	#Lumium Ingot
blast_furnace.recipeBuilder()
    .inputs(<ore:dustLumium> * 1)
    .fluidInputs([<liquid:nitrogen> * 250])
    .outputs(<ore:ingotLumium>.firstItem * 1)
    .property("temperature", 2100)
    .duration(220)
    .EUt(120)
    .buildAndRegister();
mods.jei.JEI.removeAndHide(<thermalfoundation:material:166>);
<thermalfoundation:material:166>.addTooltip(format.darkRed("此物品已停用，将其合成为来自GTCE的替代品。"));
recipes.addShapeless(ingotGTLumium, [<thermalfoundation:material:166>]);

	#Lumium Blend
mods.jei.JEI.removeAndHide(<thermalfoundation:material:102>);
<thermalfoundation:material:102>.addTooltip(format.darkRed("此物品已停用，将其合成为来自GTCE的替代品。"));
mixer.recipeBuilder()
	.inputs([<ore:dustTin> * 3, <ore:dustSilver>])
	.fluidInputs(<liquid:glowstone> * 1008)
	.outputs(<ore:dustLumium>.firstItem * 2)
	.duration(120)
	.EUt(32)
	.buildAndRegister();

	#Signalum Ingot
mods.jei.JEI.removeAndHide(<thermalfoundation:material:165>);
<thermalfoundation:material:165>.addTooltip(format.darkRed("此物品已停用，将其合成为来自GTCE的替代品。"));
recipes.addShapeless(ingotGTSignalum, [<thermalfoundation:material:165>]);
blast_furnace.recipeBuilder()
    .inputs(<ore:dustSignalum>)
    .fluidInputs([<liquid:nitrogen> * 250])
    .outputs(<ore:ingotSignalum>.firstItem)
    .property("temperature", 1350)
    .duration(220)
    .EUt(120)
    .buildAndRegister();

    #Signalum Blend
mods.jei.JEI.removeAndHide(<thermalfoundation:material:101>);
<thermalfoundation:material:101>.addTooltip(format.darkRed("此物品已停用，将其合成为来自GTCE的替代品。"));
recipes.addShapeless(dustGTSignalum, [<thermalfoundation:material:101>]);
mixer.recipeBuilder()
	.inputs([<ore:dustCopper> * 3, <ore:dustRedstone>])
	.fluidInputs(<liquid:redstone> * 1000)
	.outputs(<ore:dustSignalum>.firstItem * 2)
	.duration(120)
	.EUt(30)
	.buildAndRegister();

	#petrotheym dust
solidifier.recipeBuilder()
    .fluidInputs([<liquid:petrotheum> * 144])
	.notConsumable(<metaitem:shape.mold.ball>)
	.outputs(<ore:dustPetrotheum>.firstItem)
	.duration(800)
	.EUt(18)
	.buildAndRegister();		

	#Elemental Powders Removal
	#Basalz
mods.thermalexpansion.Transposer.removeFillRecipe(<thermalfoundation:material:770> * 2, <liquid:experience>);
mods.thermalexpansion.Transposer.removeFillRecipe(<thermalfoundation:material:770> * 2, <liquid:essence>);
mods.thermalexpansion.Transposer.removeFillRecipe(<thermalfoundation:material:770> * 2, <liquid:xpjuice>);
	#blizz
mods.thermalexpansion.Transposer.removeFillRecipe(<minecraft:snowball> * 2, <liquid:experience>);
mods.thermalexpansion.Transposer.removeFillRecipe(<minecraft:snowball> * 2, <liquid:essence>);
mods.thermalexpansion.Transposer.removeFillRecipe(<minecraft:snowball> * 2, <liquid:xpjuice>);
	#Blaze
mods.thermalexpansion.Transposer.removeFillRecipe(<thermalfoundation:material:771> * 2, <liquid:experience>);
mods.thermalexpansion.Transposer.removeFillRecipe(<thermalfoundation:material:771> * 2, <liquid:essence>);
mods.thermalexpansion.Transposer.removeFillRecipe(<thermalfoundation:material:771> * 2, <liquid:xpjuice>);
	#Blitz
mods.thermalexpansion.Transposer.removeFillRecipe(<thermalfoundation:material:772> * 2, <liquid:experience>);
mods.thermalexpansion.Transposer.removeFillRecipe(<thermalfoundation:material:772> * 2, <liquid:essence>);
mods.thermalexpansion.Transposer.removeFillRecipe(<thermalfoundation:material:772> * 2, <liquid:xpjuice>);

var dustsAndPowders as IIngredient[IOreDictEntry] = {
	<ore:dustBlizz> : <ore:dustNiter>,
	<ore:dustBlitz> : <minecraft:snowball>,
	<ore:dustBasalz> : <ore:dustObsidian>,
	<ore:dustBlaze> : <ore:dustSulfur>
};

for dust, powder in dustsAndPowders {
	chemical_bath.recipeBuilder()
		.inputs(powder * 2)
		.fluidInputs([<liquid:xpjuice> * 200])
		.outputs(dust.firstItem * 2)
    	.duration(160)
    	.EUt(18)
    	.buildAndRegister();

	chemical_bath.recipeBuilder()
		.inputs(powder * 2)
		.fluidInputs([<liquid:essence> * 200])
		.outputs(dust.firstItem * 2)
    	.duration(160)
    	.EUt(18)
    	.buildAndRegister();
		
	chemical_bath.recipeBuilder()
		.inputs(powder * 2)
		.fluidInputs([<liquid:experience> * 200])
		.outputs(dust.firstItem * 2)
    	.duration(160)
    	.EUt(18)
    	.buildAndRegister();
}

	#infused mana deblockify
recipes.addShapeless(<thermalfoundation:material:136> * 9, 
	[<thermalfoundation:storage:8>]);

	#Pyrotheum Dust
recipes.remove(<thermalfoundation:material:1024>);
mods.gregtech.recipe.RecipeMap.getByName("mixer").recipeBuilder()
	.inputs([<minecraft:blaze_powder> * 2, <ore:dustSulfur>, <ore:dustRedstone>])
	.fluidInputs(<liquid:brine> * 500)
	.outputs(<ore:dustPyrotheum>.firstItem * 2)
	.duration(120)
	.EUt(32)
	.buildAndRegister();

	#Pyrotheum Fluid
fluid_extractor.recipeBuilder()
	.inputs(<ore:dustPyrotheum>)
	.fluidOutputs(<liquid:pyrotheum>*144)
	.duration(80)
	.EUt(30)
	.buildAndRegister();
	
	#Petrotheum Fluid
fluid_extractor.recipeBuilder()
	.inputs(<ore:dustPetrotheum>)
	.fluidOutputs(<liquid:petrotheum>*144)
	.duration(80)
	.EUt(30)
	.buildAndRegister();

	#Cryotheum Fluid
fluid_extractor.recipeBuilder()
	.inputs(<ore:dustCryotheum>)
	.fluidOutputs(<liquid:cryotheum>*144)
	.duration(80)
	.EUt(30)
	.buildAndRegister();
	
	
	#Aerotheum Dust
recipes.remove(<thermalfoundation:material:1026>);
mods.gregtech.recipe.RecipeMap.getByName("mixer").recipeBuilder()
	.inputs([<thermalfoundation:material:2051> * 2, <ore:dustSaltpeter>, <ore:dustRedstone>])
	.fluidInputs(<liquid:brine> * 500)
	.outputs(<thermalfoundation:material:1026> * 2)
	.duration(120)
	.EUt(30)
	.buildAndRegister();

	#Petrotheum Dust
recipes.remove(<thermalfoundation:material:1027>);
mods.gregtech.recipe.RecipeMap.getByName("mixer").recipeBuilder()
	.inputs([<thermalfoundation:material:2053> * 2, <ore:dustObsidian>, <ore:dustRedstone>])
	.fluidInputs(<liquid:brine> * 500)
	.outputs(<thermalfoundation:material:1027> * 2)
	.duration(120)
	.EUt(32)
	.buildAndRegister();


	
	#Aerotheum Fluid
fluid_extractor.recipeBuilder()
	.inputs(<ore:dustAerotheum>)
	.fluidOutputs(<liquid:aerotheum>*144)
	.duration(80)
	.EUt(30)
	.buildAndRegister();	

	#Resonant Ender Bucket recipes
recipes.removeByRecipeName("thermalfoundation:dust_enderium");
	
print("----------------Thermal Foundation End-------------------");
