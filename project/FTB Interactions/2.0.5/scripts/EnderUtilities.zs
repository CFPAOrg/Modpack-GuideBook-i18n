import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.block.IBlockProperties;
import crafttweaker.block.IBlockDefinition;
import crafttweaker.block.IBlock;

print("---------------Ender Utilities Start------------------");

	#Adjustable Storange Unit
recipes.remove(<enderutilities:asu>);
mods.thaumcraft.Infusion.registerRecipe("enUAdjustable", "INFUSION", <enderutilities:asu>, 10,
	[<aspect:vacuos> * 20, <aspect:praecantatio> * 20], <thermalexpansion:cache>,
	[<ore:enderpearl>, <ore:enderpearl>, <ore:enderpearl>]);

	#barrels
recipes.remove(<enderutilities:barrel>);
recipes.addShaped(<enderutilities:barrel>, [
	[<ore:plankWood>, craftingToolHardHammer, <ore:plankWood>],
	[<ore:plankWood>, <ironchest:wood_iron_chest_upgrade>, <ore:plankWood>],
	[<ore:screwIron>, <ore:chest>, <ore:screwIron>]]);
	



	var barrel = <enderutilities:barrel> as IBlock;
	barrel.definition.setHarvestLevel("pickaxe", 1);
	barrel.definition.hardness = 50;


mods.gregtech.recipe.RecipeMap.getByName("assembler").recipeBuilder()
	.inputs([<ore:screwIron> * 2, <ore:chest>, <ironchest:wood_iron_chest_upgrade>, <ore:plankWood> * 4, ])
	.outputs(<enderutilities:barrel>)
    .duration(300)
    .EUt(30)
    .buildAndRegister();

recipes.remove(<enderutilities:dolly>);
recipes.addShaped(<enderutilities:dolly>, [[null, null, <ore:stickLongWroughtIron>],[null, null, <ore:stickLongWroughtIron>], [<ore:plateWroughtIron>, <minecraft:slime>, <ore:stickLongWroughtIron>]]);


	#barrel label
recipes.remove(<enderutilities:enderpart:70>);
recipes.addShapeless(<enderutilities:enderpart:70>,[<ore:dyeBlue>,<minecraft:name_tag>]);

	#capacity upgrade
//recipes.remove(<enderutilities:enderpart:72>);
/*
recipes.addShaped(<enderutilities:enderpart:72>,[
	[<ore:plankWood>,craftingToolHardHammer,<ore:plankWood>],
	[<ore:plankWood>,<ironchest:wood_iron_chest_upgrade>,<ore:plankWood>],
	[<ore:plankWood>,<ore:chest>,<ore:plankWood>]]);
*/

	#Creative Breaking Module (Doesn't Break bedrock)
recipes.remove(<enderutilities:enderpart:30>);
mods.thaumcraft.Infusion.registerRecipe("enUBreakModule", "INFUSION", <enderutilities:enderpart:30>, 20,
	[<aspect:instrumentum>*200, <aspect:praecantatio> * 20], <bloodmagic:sentient_pickaxe>,
	[<ore:netherStar>, <ore:blockEnderium>, <ore:runeLustB>]);


	#Cheaty Water Wand
recipes.remove(<enderutilities:icemelter>);
recipes.addShaped(<enderutilities:icemelter>, [
	[null, null, null],
	[null, <ore:runeWaterB>, null],
	[<ore:stickBlaze>, null, null]]);

	#Cheaty Water Wand (Super)
recipes.remove(<enderutilities:icemelter:1>);

	//Disabled or Redundant
var enderUtilDisabled as IItemStack[]= [
	<enderutilities:enderpart:40>,		//end crystal
	<enderutilities:enderporter>,		//Reundant
	<enderutilities:enderporter:1>,
	<enderutilities:linkcrystal>,
	<enderutilities:linkcrystal:1>,
	<enderutilities:linkcrystal:2>,
	<enderutilities:enderlasso>, 		//ender lasso
	<enderutilities:enderpart:11>,		//Inactive Enhanced Core
	<enderutilities:enderpart:12>,		//Inactive Advanced Core
	<enderutilities:enderpart:15>,		//Active Basic Core
	<enderutilities:enderpart:16>,		//Active Enhanced Core
	<enderutilities:enderpart:17>,		//Active Advanced Core
	<enderutilities:enderpart:72>		//Barrel Capacity Upgrade
	];

for i in enderUtilDisabled {
	mods.jei.JEI.removeAndHide(i);
}

#core basic
	recipes.remove(<enderutilities:enderpart:15>);
	recipes.addShaped(<enderutilities:enderpart:15>,
	[[null,<enderutilities:enderpart>,null],
	[<enderutilities:enderpart>,<ore:gearSteel>,<enderutilities:enderpart>], 
	[null,<enderutilities:enderpart>,null]]);

#core enhanced
	recipes.remove(<enderutilities:enderpart:16>);
	recipes.addShaped(<enderutilities:enderpart:16>,
	[[null,<enderutilities:enderpart:1>,null],
	[<enderutilities:enderpart:1>,<ore:gearAluminium>,<enderutilities:enderpart:1>], 
	[null,<enderutilities:enderpart:1>,null]]);
		
#core advanced
	recipes.remove(<enderutilities:enderpart:17>);
	recipes.addShaped(<enderutilities:enderpart:17>,
	[[null,<enderutilities:enderpart:2>,null],
	[<enderutilities:enderpart:2>,<ore:gearSignalum>,<enderutilities:enderpart:2>], 
	[null,<enderutilities:enderpart:2>,null]]);
				

	#Drawbridge / Advanced
recipes.remove(<enderutilities:draw_bridge>);
mods.botania.ManaInfusion.addInfusion(<enderutilities:draw_bridge>, 
	<minecraft:sticky_piston>, 50000);

recipes.remove(<enderutilities:draw_bridge:1>);
recipes.addShapeless(<enderutilities:draw_bridge:1> , [<enderutilities:draw_bridge>]);


	recipes.remove(<enderutilities:enderbucket>);
	recipes.remove(<enderutilities:enderbag>);
	recipes.remove(<enderutilities:enderbow>);
	recipes.remove(<enderutilities:enderpart:71>);
	recipes.addShaped(<enderutilities:enderbucket>, 
	
	[[null, <lteleporters:endercrystal>, null],
	[<enderio:item_alloy_ingot:5>, <forge:bucketfilled>.withTag({FluidName: "ender", Amount: 1000}), <enderio:item_alloy_ingot:5>], 
	[null, <enderio:item_alloy_ingot:5>, null]]);
		
	recipes.addShaped(<enderutilities:enderbag>,
	[[<enderutilities:enderpart:21>, <harvestcraft:hardenedleatheritem>, <enderutilities:enderpart:21>],
	[<harvestcraft:hardenedleatheritem>, <astralsorcery:itemshiftingstar>, <harvestcraft:hardenedleatheritem>],
	[<enderutilities:enderpart:21>, <minecraft:ender_eye>, <enderutilities:enderpart:21>]]);


	recipes.addShaped(<enderutilities:enderbow>,
	[[<enderutilities:enderpart:21>, <enderutilities:enderpart:2>, null],
	[<enderutilities:enderpart:21>, <minecraft:emerald>, <enderutilities:enderpart:2>],
	[<enderutilities:enderpart:21>, <enderutilities:enderpart:2>, null]]);


	recipes.addShaped(<enderutilities:enderpart:71>,
	[[<minecraft:obsidian>, <minecraft:iron_bars>, <minecraft:obsidian>],
	[<minecraft:iron_bars>, null, <minecraft:iron_bars>], 
	[<minecraft:obsidian>, <minecraft:iron_bars>, <minecraft:obsidian>]]);


	#Ender Alloys
recipes.remove(<enderutilities:enderpart>);
mods.gregtech.recipe.RecipeMap.getByName("alloy_smelter").recipeBuilder()
	.inputs([<enderio:item_alloy_ingot:5>, <ore:dustQuartzite>])
	.outputs(<enderutilities:enderpart>)
    .duration(120)
    .EUt(24)
    .buildAndRegister();

recipes.remove(<enderutilities:enderpart:1>);
mods.gregtech.recipe.RecipeMap.getByName("alloy_smelter").recipeBuilder()
	.inputs([<ore:ingotRoseGold>, <ore:gemEnderPearl>])
	.outputs(<enderutilities:enderpart:1>)
    .duration(120)
    .EUt(48)
    .buildAndRegister();


recipes.remove(<enderutilities:enderpart:2>);
mods.gregtech.recipe.RecipeMap.getByName("alloy_smelter").recipeBuilder()
	.inputs([<ore:ingotEnderium>, <minecraft:diamond>])
	.outputs(<enderutilities:enderpart:2>)
    .duration(120)
    .EUt(120)
    .buildAndRegister();

    #Ender Capacitor(Basic)
recipes.remove(<enderutilities:endercapacitor>);
mods.botania.ManaInfusion.addInfusion(<enderutilities:endercapacitor>, 
	<metaitem:battery.re.mv.lithium>, 250000);

    #Ender Capacitor(Enhanced)
recipes.remove(<enderutilities:endercapacitor:1>);
mods.botania.ManaInfusion.addInfusion(<enderutilities:endercapacitor:1>, 
	<metaitem:battery.re.hv.lithium>, 500000);

    #Ender Capacitor(Advanced)
recipes.remove(<enderutilities:endercapacitor:2>);
mods.botania.ManaInfusion.addInfusion(<enderutilities:endercapacitor:2>, 
	<metaitem:crystal.lapotron>, 1000000);

    #Ender Core Basic

    #Ender Core

    #Ender Core Advanced

    #Ender Elevator
recipes.remove(<enderutilities:ender_elevator>);
mods.thaumcraft.Crucible.registerRecipe("enderElevator", "UNLOCKALCHEMY", <enderutilities:ender_elevator>, <thaumcraft:levitator>, [<aspect:alienis> * 5, <aspect:motus> * 10]);

    #Ender Pickaxe
recipes.remove(<enderutilities:endertool>);
recipes.addShaped(<enderutilities:endertool>, [
	[<enderutilities:enderpart:2>, <enderutilities:enderpart:2>, <enderutilities:enderpart:2>],
	[null, <ore:stickAluminium>, null],
	[null, <ore:stickAluminium>, null]]);

	#Ender Pearl (reusable)
recipes.remove(<enderutilities:enderpearlreusable>);
mods.thaumcraft.Infusion.registerRecipe("enUReusablePearl", "INFUSION", <enderutilities:enderpearlreusable>, 5,
	[<aspect:alienis> * 20, <aspect:praecantatio> * 20], <ore:enderpearl>,
	[<ore:enderpearl>, <ore:enderpearl>, <ore:enderpearl>, <ore:enderpearl>]);

	#Ender Pearl - Elite (Reusable)
<enderutilities:enderpearlreusable:1>.addTooltip("要是你用它之后卡在地上的话，这不关我们事啊。");
recipes.remove(<enderutilities:enderpearlreusable:1>);
mods.thaumcraft.Infusion.registerRecipe("enUReusablePearl", "INFUSION", <enderutilities:enderpearlreusable:1>, 10,
	[<aspect:alienis>*40, <aspect:praecantatio> * 20], <enderutilities:enderpearlreusable>,
	[<ore:enderpearl>, <ore:feather>, <ore:enderpearl>, <ore:feather>]);

	#Furnace
mods.jei.JEI.removeAndHide(<enderutilities:machine_0>);

	#remove the key ingredient for now, put back with balance pass
recipes.remove(<enderutilities:enderpart:2>);	
	
	#Handy Bag
recipes.remove(<enderutilities:handybag>);
mods.astralsorcery.Altar.addConstellationAltarRecipe("interactions:shaped/internal/altar/handybag", <enderutilities:handybag>, 4000, 200, [
    <ore:plateAluminium>, null, <ore:plateAluminium>, 
    null, <thermalexpansion:satchel:4>, null,
    <ore:plateAluminium>, null, <ore:plateAluminium>,
    <metaitem:field.generator.mv>, <metaitem:field.generator.mv>, <metaitem:field.generator.mv>, <metaitem:field.generator.mv>,
    null, null,
    null, null,
    null, null,
    null, null,]);

recipes.remove(<enderutilities:handybag:1>);
mods.astralsorcery.Altar.addTraitAltarRecipe("interactions:shaped/internal/altar/handybaglarge", <enderutilities:handybag:1>, 7500, 200, [
    <ore:plateTitanium>, null, <ore:plateTitanium>, 
    null, <enderutilities:handybag>, null,
    <ore:plateTitanium>, null, <ore:plateTitanium>,
    <metaitem:field.generator.hv>, <metaitem:field.generator.hv>, <metaitem:field.generator.hv>, <metaitem:field.generator.hv>,
    null, null,
    null, null,
    null, null,
    null, null,
    <enderutilities:enderpart:2>, <enderutilities:enderpart:2>, <enderutilities:enderpart:2>, <enderutilities:enderpart:2>,
    //Outer Items, indices 25+
    <minecraft:chorus_fruit_popped>, <extrautils2:klein>, <enderutilities:enderpart:50>, <bhc:red_heart>,],
	"astralsorcery.constellation.horologium");

	#Molecular Exciter
recipes.remove(<enderutilities:molecular_exciter>);
mods.thaumcraft.Infusion.registerRecipe("enUBreakModule", "INFUSION", <enderutilities:molecular_exciter>, 20,
	[<aspect:motus>*200, <aspect:potentia> * 20], <appliedenergistics2:part:300>,
	[<minecraft:end_crystal>, <minecraft:end_crystal>, <minecraft:end_crystal>, <ore:circuitHigh>]);

	#Living Matter Manipulator
recipes.remove(<enderutilities:livingmanipulator>);
recipes.addShaped(<enderutilities:livingmanipulator>, [
	[<ore:plateAluminium>, <ore:plateAluminium>, <ore:plateAluminium>],
	[<deepmoblearning:living_matter_overworldian>, <industrialforegoing:mob_imprisonment_tool>, <ore:stickAluminium>],
	[<deepmoblearning:living_matter_hellish>, <deepmoblearning:living_matter_extraterrestrial>,  <ore:stickAluminium>]]);

	#Memory Card
recipes.remove(<enderutilities:enderpart:50>);
recipes.addShaped(<enderutilities:enderpart:50> * 3, [
	[null, <ore:plateGold>, null],
	[<ore:circuitMedium>, <ore:circuitMedium>, <ore:circuitMedium>],
	[null, null, null]]);

	#Memory Chest - Small
recipes.remove(<enderutilities:storage_0>);
mods.gregtech.recipe.RecipeMap.getByName("assembler").recipeBuilder()
	.inputs([<ore:chestWood>, <enderutilities:enderpart:50>])
	.outputs(<enderutilities:storage_0>)
    .duration(600)
    .EUt(30)
    .buildAndRegister();

	#Memory Chest
recipes.remove(<enderutilities:storage_0:1>);
mods.gregtech.recipe.RecipeMap.getByName("assembler").recipeBuilder()
	.inputs([<ironchest:iron_chest>, <enderutilities:enderpart:50>])
	.outputs(<enderutilities:storage_0:1>)
    .duration(600)
    .EUt(30)
    .buildAndRegister();

	#Memory Chest - Large
recipes.remove(<enderutilities:storage_0:2>);
mods.gregtech.recipe.RecipeMap.getByName("assembler").recipeBuilder()
	.inputs([<ironchest:iron_chest:1>, <enderutilities:enderpart:50>])
	.outputs(<enderutilities:storage_0:2>)
    .duration(600)
    .EUt(30)
    .buildAndRegister();

	#Nullifier
recipes.remove(<enderutilities:nullifier>);
recipes.addShaped(<enderutilities:nullifier>, [
	[null, <ore:circuitMedium>, null],
	[null, <thermalexpansion:satchel:100>, null],
	[null, <thermalexpansion:cache>, null]]);

	#Ruler
recipes.remove(<enderutilities:ruler>);
recipes.addShaped(<enderutilities:ruler>, [
	[<ore:stickWood>, <ore:dyeBlue>, null],
	[<ore:stickWood>, null, <ore:dyeBlue>],
	[<ore:stickWood>, <ore:stickWood>, <ore:stickWood>]]);

	#Tool Workstation
recipes.remove(<enderutilities:machine_1:1>);
recipes.addShaped(<enderutilities:machine_1:1>, [
	[null, <minecraft:crafting_table>, null],
	[null, <meta_tile_entity:hull.mv>, null],
	[null, ]]);

	#void upgrade
recipes.remove(<enderutilities:enderpart:73>);
recipes.addShaped(<enderutilities:enderpart:73>, 
	[[<ore:plateIron>, <minecraft:obsidian>, <ore:plateIron>],
	[<extrautils2:endershard>, <extrautils2:trashcan>, <extrautils2:endershard>], 
	[<ore:plateIron>, <minecraft:obsidian>, <ore:plateIron>]]);
	

	#Station
mods.jei.JEI.removeAndHide(<enderutilities:machine_1:2>);

	#Storage Key
recipes.remove(<enderutilities:enderpart:80>);
recipes.addShaped(<enderutilities:enderpart:80>, [
	[<ore:dyeBlue>, <ore:stickWood>],
	[<ore:dyeBlue>, <ore:stickWood>],
	[null, <ore:stickWood>]]);

print("----------------Ender Utilities End-------------------");