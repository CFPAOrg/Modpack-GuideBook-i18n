import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.appliedenergistics2.Grinder;
import mods.gregtech.recipe.RecipeMap;
import crafttweaker.data.IData;
import crafttweaker.liquid.ILiquidStack;
import mods.thermalexpansion.Infuser;



print("---------------Open Computers Start------------------");

val assembler = mods.gregtech.recipe.RecipeMap.getByName("assembler");
val laser = mods.gregtech.recipe.RecipeMap.getByName("laser_engraver");
val mixer = mods.gregtech.recipe.RecipeMap.getByName("mixer");
val macerator = mods.gregtech.recipe.RecipeMap.getByName("macerator");
val alloyer = mods.gregtech.recipe.RecipeMap.getByName("alloy_smelter");
val autoclave = mods.gregtech.recipe.RecipeMap.getByName("autoclave");
val lathe = mods.gregtech.recipe.RecipeMap.getByName("lathe");
val implosion = mods.gregtech.recipe.RecipeMap.getByName("implosion_compressor");


#removals
	#trading upgrade
	mods.jei.JEI.removeAndHide(<opencomputers:upgrade:29>);


	#boots
	recipes.remove(<opencomputers:hoverboots>);
	<opencomputers:hoverboots>.addTooltip(format.darkRed("到达月球或之后有机会通过战利品获得，"));
	
	#nanomachines
	recipes.remove(<opencomputers:tool:5>);
	assembler.recipeBuilder()
	.inputs(<metaitem:plate.central_processing_unit>,<ore:pearlFluix>, <ore:oc:materialTransistor>*2, <ore:wireFineElectrum>*4)
    .outputs(<opencomputers:tool:5>)
	.fluidInputs([<fluid:redstone> * 144])
    .duration(800)
    .EUt(42)
    .buildAndRegister();
	
	
	#Drones
	recipes.remove(<opencomputers:material:24>);
	recipes.remove(<opencomputers:material:23>);
	<opencomputers:material:23>.addTooltip(format.darkRed("只能通过战利品获得，在我们的世界上找不到这样先进的技术..."));
	<opencomputers:material:24>.addTooltip(format.darkRed("只能通过战利品获得，在我们的世界上找不到这样先进的技术..."));


print("---------------Open Computers End------------------");