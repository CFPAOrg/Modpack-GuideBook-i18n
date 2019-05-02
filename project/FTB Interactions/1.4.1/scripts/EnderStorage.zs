import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.gregtech.recipe.RecipeMap;

print("------------------Ender Storage Start---------------");
val assembler = mods.gregtech.recipe.RecipeMap.getByName("assembler");


#Ender Tank
recipes.remove(<enderstorage:ender_storage:1>);

assembler.recipeBuilder()
	.inputs([<metaitem:large_fluid_cell.steel>, <astralsorcery:itemcraftingcomponent:4> * 2, <thaumcraft:plate:3> * 2, 	<ore:screwTitanium> * 4])
	.fluidInputs([<liquid:ender> * 1000])
	.outputs(<enderstorage:ender_storage:1>)
	.EUt(1920)
	.duration(600)
	.buildAndRegister();
	
#Ender Chest
recipes.remove(<enderstorage:ender_storage>);
assembler.recipeBuilder()
	.inputs([<gregtech:machine:804>, <astralsorcery:itemcraftingcomponent:4> * 2, <thaumcraft:plate:3> * 2, <ore:screwTitanium> * 4])
	.fluidInputs([<liquid:ender> * 1000])
	.outputs(<enderstorage:ender_storage>)
	.EUt(1920)
	.duration(600)
	.buildAndRegister();	
	

print("------------------Ender Storage End---------------");