import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.thaumcraft.Infusion;
import mods.thermalexpansion.Insolator;
import mods.gregtech.recipe.RecipeMap;
import mods.thaumcraft.Crucible;
import mods.gregtech.recipe.RecipeMaps;


print("---------------RandomThings Start------------------");

val centrifuge = mods.gregtech.recipe.RecipeMap.getByName("centrifuge");

val lotusBlossom  = <randomthings:ingredient:10>;
val lotusSeed = <randomthings:lotusseeds>;
val phyto = <thermalfoundation:fertilizer>;
val richPhyto = <thermalfoundation:fertilizer:1>;
val fluxedPhyto = <thermalfoundation:fertilizer:2>;
val assembler = mods.gregtech.recipe.RecipeMap.getByName("assembler");

<randomthings:itemcollector>.addTooltip(format.darkRed("也可以在大多数地牢中作为战利品找到。"));
recipes.remove(<randomthings:itemcollector>); //item collector loot only until HV tier infusion becomes avaialble
mods.thaumcraft.Infusion.registerRecipe("itemcollector", "INFUSION", <randomthings:itemcollector>, 4,
	[<aspect:motus> * 5, <aspect:vacuos> * 8, <aspect:permutatio> * 8, <aspect:alienis> * 10 ],
	<enderio:item_material:14>,
	[<minecraft:obsidian>,<minecraft:obsidian>,<minecraft:obsidian>,<enderio:item_material:2>]);

#Spectre Coils

recipes.remove(<randomthings:spectrecoil_normal>);
assembler.recipeBuilder()
	.inputs(<randomthings:spectrelens>,<ore:wireFineRedAlloy>*4,<ore:circuitPrimitive>)
    .outputs(<randomthings:spectrecoil_normal>)
	.fluidInputs([<liquid:redstone> * 576])
    .duration(125)
    .EUt(24)
    .buildAndRegister();

recipes.remove(<randomthings:spectrecoil_redstone>);
assembler.recipeBuilder()
	.inputs(<randomthings:spectrecoil_normal>,<extrautils2:ingredients:2>,  <opencomputers:material:8>)
    .outputs(<randomthings:spectrecoil_redstone>)
	.fluidInputs([<liquid:redstone> * 576])
    .duration(125)
    .EUt(48)
    .buildAndRegister();

	#time ina  bottle
	recipes.remove(<randomthings:timeinabottle>);

	recipes.addShaped(<randomthings:timeinabottle>, 
	[[<ore:ingotElectrum>, <randomthings:ingredient:10>, <ore:ingotElectrum>],
	[<minecraft:diamond>, <minecraft:clock>, <minecraft:diamond>], 
	[<minecraft:dye:4>, <minecraft:glass_bottle>, <minecraft:dye:4>]]);
	
	
	#ender bucket
recipes.remove(<randomthings:enderbucket>);
mods.thaumcraft.Infusion.registerRecipe("enderbucket", "INFUSION", <randomthings:enderbucket>, 4,
	[<aspect:aer> * 16, <aspect:alienis> * 10, <aspect:permutatio> * 8, <aspect:vacuos> * 10 ],
	 <minecraft:bucket>,
	[<minecraft:ender_eye>,<minecraft:ender_eye>,<rftools:dimensional_shard>,<rftools:dimensional_shard>]);
	
	#Bean Stew
recipes.remove(<randomthings:beanstew>);
recipes.addShapeless(<randomthings:beanstew>, [
	<ore:cropBean>, <ore:cropBean>, <ore:cropBean>,
	<ore:cropOnion>,<ore:cropWheat>, <minecraft:bowl>]);
	
	#Crafting Tables
mods.jei.JEI.removeAndHide(<randomthings:customworkbench>);

	#ender spectre coil
	mods.jei.JEI.removeAndHide(<randomthings:spectrecoil_ender>);

	#Fertilized Dirt (nerfing to a later stage)
recipes.remove(<randomthings:fertilizeddirt>);

	#divining rods - these dont work with gt ores
mods.jei.JEI.removeAndHide(<randomthings:diviningrod:*>);

	#block breaker - maybe readd later
recipes.remove(<randomthings:blockbreaker>);
	
	#Rain shield
recipes.remove(<randomthings:rainshield>);
mods.bloodmagic.AlchemyArray.addRecipe(<randomthings:rainshield>, <projecte:item.pe_covalence_dust>, <chisel:cloud>);

	#evil tear - used to create artificial end portal
recipes.remove(<randomthings:ingredient:1>);
mods.thaumcraft.Infusion.registerRecipe("eviltear", "INFUSION", <randomthings:ingredient:1>, 15, 
	[<aspect:alienis> *32, <aspect:potentia> * 64, <aspect:motus> * 16, <aspect:alkimia> *8 ], <minecraft:ghast_tear>, 
	[<astralsorcery:itemusabledust:1>, <astralsorcery:itemusabledust:1>, <quark:black_ash>, 
	<projecte:item.pe_covalence_dust:2>,<projecte:item.pe_covalence_dust:2>, <ore:dustIndium>]);

	#peace candle
mods.thaumcraft.Infusion.registerRecipe("peacecandle", "INFUSION", <randomthings:peacecandle>, 8, 
	[<aspect:ordo> *12, <aspect:lux> * 16, <aspect:motus> * 8], <thaumcraft:candle_black>, 
	[<deepmoblearning:glitch_heart>, <bloodmagic:component:16>, <thaumcraft:paving_stone_barrier>,<thaumcraft:paving_stone_barrier>,<thaumcraft:paving_stone_barrier>,<thaumcraft:paving_stone_barrier>]);
	
	#Block destabilizer
	recipes.remove(<randomthings:blockdestabilizer>);
	recipes.addShaped(<randomthings:blockdestabilizer>, 
	[[<minecraft:obsidian>, <ore:cableGtSingleRedAlloy>, <minecraft:obsidian>],
	[<ore:plateAluminium>, <botania:manaresource:2>, <ore:plateAluminium>], 
	[<minecraft:obsidian>, <ore:cableGtSingleRedAlloy>, <minecraft:obsidian>]]);
	
	#chunk analyzer
recipes.remove(<randomthings:chunkanalyzer>);
recipes.addShaped(<randomthings:chunkanalyzer>,
	[[<minecraft:iron_bars>, null, <minecraft:iron_bars>],
	[<ore:plateAluminium>, <metaitem:emitter.lv>, <ore:plateAluminium>], 
	[<minecraft:dirt>, <ore:plateAluminium>, <minecraft:stone>]]);
	
	#glowing mushroom crucible recipe
		mods.thaumcraft.Crucible.registerRecipe("glowingshroom", "BASEALCHEMY", <randomthings:glowingmushroom>, <ore:listAllmushroom>, [<aspect:lux> * 10, <aspect:sensus> * 5]);
	
	#Potion Vaporizer
recipes.remove(<randomthings:potionvaporizer>);
recipes.addShaped(<randomthings:potionvaporizer>, [
	[<ore:cobblestone>, <openblocks:fan>, <ore:cobblestone>],
	[<ore:cobblestone> , null, <ore:cobblestone>],
	[<ore:cobblestone>, <rustic:condenser_advanced>, <ore:cobblestone>]]);

	#lotus seed
mods.bloodmagic.AlchemyArray.addRecipe(<randomthings:lotusseeds>, 	<minecraft:wheat_seeds>, <randomthings:ingredient:10>);
	

	#liquid XP from blossoms

centrifuge.recipeBuilder()
	.inputs(lotusBlossom)
	.fluidOutputs([<liquid:xpjuice> * 40])
	.chancedOutput(<actuallyadditions:item_solidified_experience>, 500, 150)
    .duration(120)
    .EUt(8)
    .buildAndRegister();

	
print("----------------RandomThings End-------------------");


