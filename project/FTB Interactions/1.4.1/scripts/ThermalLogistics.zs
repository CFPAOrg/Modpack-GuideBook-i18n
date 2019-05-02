import mods.artisanworktables.builder.RecipeBuilder;
import mods.gregtech.recipe.RecipeMap;
val blast_furnace = mods.gregtech.recipe.RecipeMap.getByName("blast_furnace");
val fluid_extractor = mods.gregtech.recipe.RecipeMap.getByName("fluid_extractor");
val mixer = mods.gregtech.recipe.RecipeMap.getByName("mixer");
val solidifier = mods.gregtech.recipe.RecipeMap.getByName("fluid_solidifier");
val chemical_bath = mods.gregtech.recipe.RecipeMap.getByName("chemical_bath");
val vacFreezer = mods.gregtech.recipe.RecipeMap.getByName("vacuum_freezer");

print("---------------Thermal Logistics Start------------------");
	
	#Basic manager
	recipes.remove(<thermallogistics:manager>);
	recipes.addShaped(<thermallogistics:manager>, 
	[[<ore:plateLead>, <minecraft:redstone_torch>, <ore:plateLead>],
	[<ore:plateLead>, <ore:circuitLow>, <ore:plateLead>], 
	[<ore:plateLead>, <industrialforegoing:plastic>, <ore:plateLead>]]);
	
	
	#Item Terminal
	recipes.remove(<thermallogistics:terminal_item>);
	recipes.addShaped(<thermallogistics:terminal_item>, 
	[[null, <thermallogistics:manager>, null],
	[<thermaldynamics:duct_32>, <gregtech:machine:501>, <thermaldynamics:duct_32>], 
	[<ore:gearSmallSteel>, <thermalfoundation:material:513>, <ore:gearSmallSteel>]]);


	
print("----------------Thermal Logistics End-------------------");
