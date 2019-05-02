import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.item.IIngredient;
import mods.artisanworktables.builder.RecipeBuilder;
import mods.gregtech.recipe.RecipeMap;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.block.IBlockDefinition;
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Block;
import mods.gregtech.recipe.RecipeMaps;


print("------------------Redstone Arsenal Start---------------");

val extruder = mods.gregtech.recipe.RecipeMap.getByName("extruder");
val metal_bender = mods.gregtech.recipe.RecipeMap.getByName("metal_bender");
val mixer = mods.gregtech.recipe.RecipeMap.getByName("mixer");
val chemical_bath = mods.gregtech.recipe.RecipeMap.getByName("chemical_bath");
val assembler = mods.gregtech.recipe.RecipeMap.getByName("assembler");
val blast_furnace = mods.gregtech.recipe.RecipeMap.getByName("blast_furnace");

	#fluxed electrum ingot
	blast_furnace.recipeBuilder()
    .inputs(<redstonearsenal:material>, <ore:ingotCarbon>)
    .fluidInputs([<liquid:helium> * 50])
    .outputs(<redstonearsenal:material:32> * 2)
    .property("temperature", 1700)
    .duration(400)
    .EUt(480)
    .buildAndRegister();

	#fluxed electrum plates
	metal_bender.recipeBuilder()
    .inputs(<ore:ingotElectrumFlux>)
    .notConsumable(<metaitem:circuit.integrated>.withTag({Configuration: 0}).or(<metaitem:circuit.integrated>))
    .outputs(<redstonearsenal:material:128>)
    .duration(100)
    .EUt(24)
    .buildAndRegister();
	
	#armor plating
	recipes.remove(<redstonearsenal:material:224>);
	assembler.recipeBuilder()
		.inputs(<ore:plateElectrumFlux>*4,<ore:gemCrystalFlux>)
		.fluidInputs(<liquid:glowstone> * 288)
		.outputs(<redstonearsenal:material:224>)
		.duration(80)
		.EUt(48)
		.buildAndRegister();
	
	#fluxed electrum gear
	recipes.remove(<redstonearsenal:material:96>);
	metal_bender.recipeBuilder()
    .inputs(<ore:ingotElectrumFlux>*4)
    .notConsumable(<metaitem:shape.extruder.gear>)
    .outputs(<redstonearsenal:material:96>)
    .duration(100)
    .EUt(24)
    .buildAndRegister();

	#fluxed electrum blend
	recipes.remove(<redstonearsenal:material>);
	mixer.recipeBuilder()
    .inputs(<ore:dustSterlingSilver>,<ore:dustRoseGold>)
    .fluidInputs([<liquid:redstone> * 1000])
    .outputs(<redstonearsenal:material>*2)
    .duration(120)
    .EUt(48)
    .buildAndRegister();	
		
	#flux cyrstal
	recipes.remove(<redstonearsenal:material:160>);
	chemical_bath .recipeBuilder()
    .inputs(<ore:manaDiamond>)
    .fluidInputs([<liquid:redstone> * 1000])
    .outputs(<redstonearsenal:material:160>)
    .duration(440)
    .EUt(24)
    .buildAndRegister();		
	
	#armor recipes
	recipes.remove(<redstonearsenal:armor.helmet_flux>);
	recipes.remove(<redstonearsenal:armor.legs_flux>);
	recipes.remove(<redstonearsenal:armor.boots_flux>);
	recipes.remove(<redstonearsenal:armor.plate_flux>);

	recipes.addShaped(<redstonearsenal:armor.boots_flux>, 
	[[<ore:screwStainlessSteel>, <ore:circuitMedium>, <ore:screwStainlessSteel>],
	[<redstonearsenal:material:224>, <minecraft:iron_boots>, <redstonearsenal:material:224>], 
	[<ore:screwStainlessSteel>, <redstonearsenal:material:224>, <ore:screwStainlessSteel>]]);

	mods.thermalexpansion.Transposer.removeFillRecipe(<thermalfoundation:material:97>, <liquid:redstone>);
	
	recipes.addShaped(<redstonearsenal:armor.legs_flux>, 
	[[<ore:screwStainlessSteel>, <ore:circuitMedium>, <ore:screwStainlessSteel>],
	[<redstonearsenal:material:224>, <minecraft:iron_leggings>, <redstonearsenal:material:224>], 
	[<ore:screwStainlessSteel>, <redstonearsenal:material:224>, <ore:screwStainlessSteel>]]);

	recipes.addShaped(<redstonearsenal:armor.helmet_flux>, 
	[[<ore:screwStainlessSteel>, <ore:circuitMedium>, <ore:screwStainlessSteel>],
	[<redstonearsenal:material:224>, <minecraft:iron_helmet>, <redstonearsenal:material:224>], 
	[<ore:screwStainlessSteel>, <redstonearsenal:material:224>, <ore:screwStainlessSteel>]]);

	recipes.addShaped(<redstonearsenal:armor.plate_flux>, 
	[[<ore:screwStainlessSteel>, <ore:circuitMedium>, <ore:screwStainlessSteel>],
	[<redstonearsenal:material:224>, <minecraft:iron_chestplate>, <redstonearsenal:material:224>], 
	[<ore:screwStainlessSteel>, <redstonearsenal:material:224>, <ore:screwStainlessSteel>]]);
	
	#flux bow
	recipes.remove(<redstonearsenal:tool.bow_flux>);
	recipes.addShaped(<redstonearsenal:tool.bow_flux>, 
	[[null, <redstonearsenal:material:193>, <randomthings:ingredient:12>],
	[<redstonearsenal:material:224>, null, <randomthings:ingredient:12>], 
	[null, <redstonearsenal:material:193>, <randomthings:ingredient:12>]]);
	
print("-------------------Redstone Arsenal End----------------");