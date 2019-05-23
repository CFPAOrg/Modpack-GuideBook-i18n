import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.gregtech.recipe.RecipeMap;

print("---------------Thermal Expansion Start------------------");

val blast_furnace = mods.gregtech.recipe.RecipeMap.getByName("blast_furnace");
val assembler = mods.gregtech.recipe.RecipeMap.getByName("assembler");
val structureGlass = <mekanism:basicblock:10>;
val reinforcedAlloy = <ore:alloyElite>;
val mvMachineHull = <gregtech:machine:502>;
val alloyer = mods.gregtech.recipe.RecipeMap.getByName("alloy_smelter");
val servo = <thermalfoundation:material:512>;
val mixer = mods.gregtech.recipe.RecipeMap.getByName("mixer");
val chemReactor = mods.gregtech.recipe.RecipeMap.getByName("chemical_reactor");


	#remove unused compressed sawdust
	recipes.remove(<thermalfoundation:material:801>);
	mods.jei.JEI.removeAndHide(<thermalfoundation:material:801>);
	
	#preOW morb
	recipes.addShaped(<thermalexpansion:morb>,
	[[null, <bloodmagic:soul_snare>, null],
	[<minecraft:glass>, <extrautils2:endershard>, <minecraft:glass>],
	[null, <minecraft:glass>, null]]);

	recipes.remove(<thermalexpansion:morb:1>);

	#bioblend
	recipes.addShapeless(<thermalfoundation:material:818> * 4, [<thermalfoundation:material:816>,<thermalfoundation:material:816>,<thermalfoundation:material:816>,<ore:dustCharcoal>]);

	#fisher
	mods.jei.JEI.removeAndHide(<thermalexpansion:device:4>);
	mods.jei.JEI.removeAndHide(<thermalfoundation:material:657>);

	#drill tip
	mods.jei.JEI.removeAndHide(<thermalfoundation:material:656>);

	#hammers, new recipe, durability buff
	recipes.remove(<thermalfoundation:tool.hammer_diamond>);
	recipes.addShaped(<thermalfoundation:tool.hammer_diamond>,
		[[<ore:plateDiamond>, <ore:plateDiamond>, <ore:plateDiamond>],
		[<ore:plateDiamond>, <minecraft:stick>, <ore:plateDiamond>],
		[null, <minecraft:stick>, null]]);

	recipes.remove(<thermalfoundation:tool.hammer_steel>);
	recipes.addShaped(<thermalfoundation:tool.hammer_steel>,
		[[<ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>],
		[<ore:plateSteel>, <minecraft:stick>, <ore:plateSteel>],
		[null, <minecraft:stick>, null]]);
	<thermalfoundation:tool.hammer_steel>.maxDamage = 1000;
	<thermalfoundation:tool.hammer_diamond>.maxDamage = 3750;

	#wrench
	recipes.remove(<thermalfoundation:wrench>);
	recipes.addShaped(<thermalfoundation:wrench>,
	[[<ore:plateIron>, null, <ore:plateIron>],
	[null, <ore:gearSteel>, null],
	[null, <ore:plateIron>, null]]);

	#remove aspects from satchels to prevent accidentally cooking
	<thermalexpansion:satchel>.removeAspects(<aspect:sensus>*2);
	<thermalexpansion:satchel:1>.removeAspects(<aspect:sensus>*2);
	<thermalexpansion:satchel:2>.removeAspects(<aspect:sensus>*2);
	<thermalexpansion:satchel:3>.removeAspects(<aspect:sensus>*2);
	<thermalexpansion:satchel:4>.removeAspects(<aspect:sensus>*2);
	<thermalexpansion:satchel>.withTag({ench: [{lvl: 4 as short, id: 39}]}).removeAspects(<aspect:sensus>*2);
	<thermalexpansion:satchel>.withTag({ench: [{lvl: 4 as short, id: 39}]}).removeAspects(<aspect:praecantatio>*14);

	<thermalexpansion:satchel:1>.withTag({ench: [{lvl: 4 as short, id: 39}]}).removeAspects(<aspect:sensus>*2);
	<thermalexpansion:satchel:1>.withTag({ench: [{lvl: 4 as short, id: 39}]}).removeAspects(<aspect:praecantatio>*14);

	<thermalexpansion:satchel:2>.withTag({ench: [{lvl: 4 as short, id: 39}]}).removeAspects(<aspect:sensus>*2);
	<thermalexpansion:satchel:2>.withTag({ench: [{lvl: 4 as short, id: 39}]}).removeAspects(<aspect:praecantatio>*14);

	<thermalexpansion:satchel:3>.withTag({ench: [{lvl: 4 as short, id: 39}]}).removeAspects(<aspect:sensus>*2);
	<thermalexpansion:satchel:3>.withTag({ench: [{lvl: 4 as short, id: 39}]}).removeAspects(<aspect:praecantatio>*14);

	<thermalexpansion:satchel:4>.withTag({ench: [{lvl: 4 as short, id: 39}]}).removeAspects(<aspect:sensus>*2);
	<thermalexpansion:satchel:4>.withTag({ench: [{lvl: 4 as short, id: 39}]}).removeAspects(<aspect:praecantatio>*14);
	
	#void satchel
recipes.remove(<thermalexpansion:satchel:100>);
mods.astralsorcery.Altar.addDiscoveryAltarRecipe("integrations:voidsatchel", <thermalexpansion:satchel:100>, 120, 200, [
	null,null,null,
	<harvestcraft:hardenedleatheritem>,<thermalexpansion:satchel>,<harvestcraft:hardenedleatheritem>,
	<harvestcraft:hardenedleatheritem>,<minecraft:lava_bucket>,<harvestcraft:hardenedleatheritem>]);

	#experience tome
	recipes.remove(<thermalfoundation:tome_experience>);
	mods.astralsorcery.Altar.addAttunementAltarRecipe("interactions:experiencetome", <thermalfoundation:tome_experience>, 350, 600, [
		null, <ore:gemFlawlessEmerald>, null,
		<ore:plateLapis>, <minecraft:book>, <ore:plateLapis>,
		null, <ore:plateLapis>, null,
		<ore:nuggetElectrum>,<ore:nuggetElectrum>,<ore:nuggetElectrum>,<ore:nuggetElectrum>]);

	#insolator
recipes.remove(<thermalexpansion:machine:4>);
recipes.addShaped(<thermalexpansion:machine:4>,
	[[structureGlass, reinforcedAlloy, structureGlass],
	[<extrautils2:compresseddirt:1>, mvMachineHull, <extrautils2:compresseddirt:1>],
	[<ore:gearSteel>, structureGlass, <ore:gearSteel>]]);

	#reservoir
	recipes.remove(<thermalexpansion:reservoir>);
	assembler.recipeBuilder()
    .inputs(<ore:plateCopper> *4, servo, <minecraft:bucket>)
    .outputs([<thermalexpansion:reservoir>])
    .duration(150)
    .EUt(20)
    .buildAndRegister();

	#cache
recipes.remove(<thermalexpansion:cache>);
recipes.addShaped(<thermalexpansion:cache>,
	[[null, <ore:plateTin>, null],
	[<ore:plateTin>, <ore:chest>, <ore:plateTin>],
	[null, servo, null]]);

	#ores and blocks that dont need to show in jei for anything
mods.jei.JEI.hide(<thermalfoundation:ore>);
mods.jei.JEI.hide(<thermalfoundation:ore:1>);
mods.jei.JEI.hide(<thermalfoundation:ore:4>);
mods.jei.JEI.hide(<thermalfoundation:ore:5>);
mods.jei.JEI.hide(<thermalfoundation:ore:7>);
mods.jei.JEI.hide(<thermalfoundation:ore:8>);
mods.jei.JEI.hide(<thermalfoundation:ore_fluid>);
mods.jei.JEI.hide(<thermalfoundation:ore_fluid:1>);
mods.jei.JEI.hide(<thermalfoundation:ore_fluid:2>);
mods.jei.JEI.hide(<thermalfoundation:ore_fluid:3>);
mods.jei.JEI.hide(<thermalfoundation:ore_fluid:4>);
mods.jei.JEI.hide(<thermalfoundation:ore_fluid:5>);
mods.jei.JEI.hide(<thermalfoundation:storage_alloy:4>);
mods.jei.JEI.hide(<thermalfoundation:glass_alloy:4>);

	#tank
	recipes.remove(<thermalexpansion:tank>);
	recipes.addShaped(<thermalexpansion:tank>,
	[[<ore:plateCopper>, servo, <ore:plateCopper>],
	[<minecraft:glass>, null, <minecraft:glass>],
	[<ore:plateCopper>, <ore:plateCopper>, <ore:plateCopper>]]);

	#Arboreal extractor tooltips
	<forge:bucketfilled>.withTag({FluidName: "resin", Amount: 1000}).addTooltip(format.darkRed("使用树汁提取器提取树获得。"));
	<forge:bucketfilled>.withTag({FluidName: "sap", Amount: 1000}).addTooltip(format.darkRed("使用树汁提取器提取树获得。"));

	#servo
recipes.remove(servo);
recipes.addShaped(servo,
	[[null, <ore:wireGtSingleRedAlloy>, null],
	[null, <ore:ringIron>, null],
	[null, <ore:wireGtSingleRedAlloy>, null]]);

	#Mana dust
	mixer.recipeBuilder()
    .inputs(<ore:dustPyrotheum>,<ore:dustCryotheum>,<ore:dustAerotheum>,<ore:dustPetrotheum>)
    .outputs([<thermalfoundation:material:1028>])
    .fluidInputs([<liquid:unstable_mana> * 10000])
    .duration(150)
    .EUt(480)
    .buildAndRegister();

	#Primal Mana
	chemReactor.recipeBuilder()
    .inputs(<ore:dustMana>,<ore:dustVinteum>)
	.fluidOutputs([<liquid:mana> * 1000])
    .fluidInputs([<liquid:deuterium> * 120])
    .duration(2200)
    .EUt(48)
    .buildAndRegister();

	#machine casings
mods.jei.JEI.hide(<thermalexpansion:frame>);
mods.jei.JEI.hide(<thermalexpansion:frame:129>);
mods.jei.JEI.hide(<thermalexpansion:frame:130>);
mods.jei.JEI.hide(<thermalexpansion:frame:131>);
mods.jei.JEI.hide(<thermalexpansion:frame:132>);
mods.jei.JEI.hide(<thermalexpansion:frame:146>);
mods.jei.JEI.hide(<thermalexpansion:frame:147>);
mods.jei.JEI.hide(<thermalexpansion:frame:148>);
mods.jei.JEI.hide(<thermalexpansion:frame:64>);
mods.jei.JEI.hide(<thermalexpansion:frame:128>);

recipes.addShaped(<thermalfoundation:material:22>, [
	[null, <minecraft:stick>, null],
	[<minecraft:stick>, null, <minecraft:stick>], 
	[null, <minecraft:stick>, null]]);
recipes.addShaped(<thermalfoundation:material:23>, [
	[null, <ore:plateStone>, null],
	[<ore:plateStone>, <thermalfoundation:material:22>, <ore:plateStone>], 
	[null, <ore:plateStone>, null]]);

recipes.removeByRecipeName("thermalfoundation:material_64");
recipes.removeByRecipeName("thermalfoundation:material_73");
recipes.removeByRecipeName("thermalfoundation:material_79");
recipes.removeByRecipeName("thermalfoundation:material_81");
recipes.removeByRecipeName("thermalfoundation:material_6");
recipes.removeByRecipeName("thermalfoundation:material_5");

mods.jei.JEI.removeAndHide(<thermalfoundation:material:196>);
recipes.remove(<thermalexpansion:machine:15>);
recipes.remove(<thermalexpansion:machine:12>);
recipes.remove(<thermalexpansion:machine:14>);
recipes.remove(<thermalexpansion:machine:12>);
recipes.remove(<thermalexpansion:machine:8>);

	#Igneous extruder
	recipes.addShaped(<thermalexpansion:machine:15>,
	[[null, <gtadditions:ga_transparent_casing>, null],
	[<ore:plateInvar>, <gregtech:machine:500>, <ore:plateInvar>],
	[<ore:gearCopper>, <thermalfoundation:material:513>, <ore:gearCopper>]]);

	#Glacial Precipitator
	recipes.addShaped(<thermalexpansion:machine:14>,
	[[null, <minecraft:piston>, null],[<ore:plateInvar>, <gregtech:machine:500>, <ore:plateInvar>],
	[<ore:gearCopper>, <thermalfoundation:material:513>, <ore:gearCopper>]]);

	#Alchemical Imbuer
	recipes.addShaped(<thermalexpansion:machine:12>,
	[[null, <minecraft:brewing_stand>, null],
	[<gtadditions:ga_transparent_casing>, <gregtech:machine_casing:2>, <gtadditions:ga_transparent_casing>],
	[<ore:gearCupronickel>, <thermalfoundation:material:513>, <ore:gearCupronickel>]]);

	#Fluid Transposer
	recipes.addShaped(<thermalexpansion:machine:8>,
	[[null, <minecraft:bucket>, null],
	[<gtadditions:ga_transparent_casing>, <gregtech:machine:500>, <gtadditions:ga_transparent_casing>],
	[<ore:gearBronze>, <thermalfoundation:material:513>, <ore:gearBronze>]]);

	#slag from bioblend
	furnace.addRecipe(<thermalfoundation:material:864>, <ore:itemBioblend>);

	#Satchel Upgrade (disabled until workaround is figured out)
/*
recipes.addShapeless(<thermalexpansion:satchel>.withTag({ench: [{lvl: 4 as short, id: 39}]}), [
	<thermalexpansion:satchel>,
	<thermalexpansion:satchel>,
	<thermalexpansion:satchel>,
	<thermalexpansion:satchel>,
	<thermalexpansion:satchel>]);
*/

	#Excavators
mods.jei.JEI.removeAndHide(<thermalfoundation:tool.excavator_copper>);
mods.jei.JEI.removeAndHide(<thermalfoundation:tool.excavator_tin>);
mods.jei.JEI.removeAndHide(<thermalfoundation:tool.excavator_silver>);
mods.jei.JEI.removeAndHide(<thermalfoundation:tool.excavator_lead>);
mods.jei.JEI.removeAndHide(<thermalfoundation:tool.excavator_aluminum>);
mods.jei.JEI.removeAndHide(<thermalfoundation:tool.excavator_nickel>);
mods.jei.JEI.removeAndHide(<thermalfoundation:tool.excavator_platinum>);
mods.jei.JEI.removeAndHide(<thermalfoundation:tool.excavator_steel>);
mods.jei.JEI.removeAndHide(<thermalfoundation:tool.excavator_electrum>);
mods.jei.JEI.removeAndHide(<thermalfoundation:tool.excavator_invar>);
mods.jei.JEI.removeAndHide(<thermalfoundation:tool.excavator_bronze>);
mods.jei.JEI.removeAndHide(<thermalfoundation:tool.excavator_constantan>);
mods.jei.JEI.removeAndHide(<thermalfoundation:tool.excavator_iron>);
mods.jei.JEI.removeAndHide(<thermalfoundation:tool.excavator_diamond>);
mods.jei.JEI.removeAndHide(<thermalfoundation:tool.excavator_gold>);

	#constantan nugget
mods.jei.JEI.removeAndHide(<thermalfoundation:material:228>);

	#infuser
recipes.remove(<thermalexpansion:machine:9>);
recipes.addShaped(<thermalexpansion:machine:9>,
	[[<ore:screwBrass>, reinforcedAlloy, <ore:screwBrass>],
	[<ore:gearSignalum>, mvMachineHull, <ore:gearSignalum>], 
	[<ore:screwBrass>, <metaitem:circuit.vacuum_tube>, <ore:screwBrass>]]);
	
#coins
mods.jei.JEI.removeAndHide(<thermalfoundation:coin:*>);

<thermalfoundation:fertilizer:2>.addTooltip(format.darkRed("通过将富集光合堆肥放进能量灌注机获得。"));

	#PhytoGrow
recipes.addShapeless(<thermalfoundation:fertilizer>*4,
	[<ore:dustWood>, <ore:dustWood>, <ore:dustSaltpeter>, <ore:dustApatite>]);
recipes.addShapeless(<thermalfoundation:fertilizer>*16,
	[<ore:dustCharcoal>, <ore:dustSaltpeter>, <ore:dustApatite>]);

	#Aqueous Accumulator
	recipes.remove(<thermalexpansion:device>);
	recipes.addShaped(<thermalexpansion:device>,
	[[<mekanism:basicblock:10>, <minecraft:bucket>, <mekanism:basicblock:10>],
	[<metaitem:electric.pump.lv>, <gregtech:machine_casing:1>, <metaitem:electric.pump.lv>],
	[<ore:gearIron>, servo, <ore:gearIron>]]);

	#alternate accumulator (non automatable)
	recipes.addShaped(<thermalexpansion:device>,
	[[<ore:plateWroughtIron>, <ore:plateWroughtIron>, <ore:plateWroughtIron>],
	[<thermaldynamics:duct_16:1>, <thaumcraft:everfull_urn>, <thermaldynamics:duct_16:1>],
	[<ore:plateWroughtIron>, <extrautils2:redstoneclock>, <ore:plateWroughtIron>]]);

	#Nullifier
	recipes.remove(<thermalexpansion:device:1>);
	recipes.addShaped(<thermalexpansion:device:1>,
	[[<extrautils2:trashcan>, null, <extrautils2:trashcanfluid>],
	[null, craftingToolWrench, null],
	[null, <ore:plateIron>, null]]);

	#Flux Drill
	recipes.remove(<thermalinnovation:drill>);
	recipes.addShaped(<thermalinnovation:drill>,
	[[null, <ore:toolHeadDrillDiamond>.firstItem, null],
	[<ore:plateSilver>, <thermalfoundation:material:640>, <ore:plateSilver>],
	[<ore:plateTin>, <metaitem:electric.motor.mv>, <ore:plateTin>]]);


	#Flux Saw
	recipes.remove(<thermalinnovation:saw>);
	recipes.addShaped(<thermalinnovation:saw>,
	[[null, <ore:craftingDiamondBlade>, null],
	[<ore:plateSilver>, <thermalfoundation:material:640>, <ore:plateSilver>],
	[<ore:plateTin>, <metaitem:electric.motor.mv>, <ore:plateTin>]]);

	#Tool Casing
	recipes.remove(<thermalfoundation:material:640>);
	recipes.addShaped(<thermalfoundation:material:640>,
	[[<ore:plateSteel>, <ore:cableGtSingleRedAlloy>, <ore:plateSteel>],
	[<ore:plateElectrum>, <ore:circuitMedium>, <ore:plateElectrum>],
	[<ore:plateSteel>, <ore:cableGtSingleRedAlloy>, <ore:plateSteel>]]);

	#Flux Magnet
	recipes.remove(<thermalinnovation:magnet>);
	recipes.addShaped(<thermalinnovation:magnet>,
	[[<ore:plateSteelMagnetic>, <ore:cableGtSingleRedAlloy>, <ore:plateSteelMagnetic>],
	[<ore:cableGtSingleLead>, <ore:plateSteelMagnetic>, <ore:cableGtSingleLead>],
	[null, <ore:cableGtSingleRedAlloy>, null]]);

	#Potion injector
	recipes.remove(<thermalinnovation:injector>);
	recipes.addShaped(<thermalinnovation:injector>,
	[[<minecraft:glass_bottle>, <minecraft:glowstone>, <minecraft:glass_bottle>],
	[<ore:plateBrass>, <minecraft:glass_bottle>, <ore:plateBrass>],
	[null, <ore:plateSilver>, null]]);

	#Alchemical quiver
	recipes.remove(<thermalinnovation:quiver>);
	recipes.addShaped(<thermalinnovation:quiver>,
	[[<enderio:block_fused_quartz>, null, null],
	[<ore:plateBrass>, <harvestcraft:hardenedleatheritem>, <botania:manaresource:16>],
	[<harvestcraft:hardenedleatheritem>, <ore:plateBrass>, <botania:manaresource:16>]]);

	#Redstone transmission coil
	recipes.remove(<thermalfoundation:material:514>);
	recipes.addShaped(<thermalfoundation:material:514>,
	[[null, <minecraft:redstone>, null],[null, <ore:plateSilver>, null],
	[null, <minecraft:redstone>, null]]);

	#slag from bioblend
	furnace.addRecipe(<thermalfoundation:material:864>, <thermalfoundation:material:818>);

	#unused augments
var augmentAndDyeDisabled as IItemStack[] = [
	<thermalfoundation:dye>,
	<thermalfoundation:dye:1>,
	<thermalfoundation:dye:2>,
	<thermalfoundation:dye:14>,
	<thermalfoundation:dye:13>,
	<thermalfoundation:dye:12>,
	<thermalfoundation:dye:11>,
	<thermalfoundation:dye:10>,
	<thermalfoundation:dye:9>,
	<thermalfoundation:dye:8>,
	<thermalfoundation:dye:7>,
	<thermalfoundation:dye:6>,
	<thermalfoundation:dye:5>,
	<thermalfoundation:dye:4>,
	<thermalfoundation:dye:3>,
	<thermalfoundation:dye:15>,
	<thermalfoundation:dye>,
	<thermalfoundation:dye:1>,
	<thermalfoundation:dye:2>,
	<thermalfoundation:dye:14>,
	<thermalfoundation:dye:13>,
	<thermalfoundation:dye:12>,
	<thermalfoundation:dye:11>,
	<thermalfoundation:dye:10>,
	<thermalfoundation:dye:9>,
	<thermalfoundation:dye:8>,
	<thermalfoundation:dye:7>,
	<thermalfoundation:dye:6>,
	<thermalfoundation:dye:5>,
	<thermalfoundation:dye:4>,
	<thermalfoundation:dye:3>,
	<thermalfoundation:dye:15>,
	<thermalexpansion:augment:720>,
	<thermalexpansion:augment:704>,
	<thermalexpansion:augment:688>,
	<thermalexpansion:augment:674>,
	<thermalexpansion:augment:673>,
	<thermalexpansion:augment:672>,
	<thermalexpansion:augment:656>,
	<thermalexpansion:augment:640>,
	<thermalexpansion:augment:576>,
	<thermalexpansion:augment:515>,
	<thermalexpansion:augment:514>,
	<thermalexpansion:augment:513>,
	<thermalexpansion:augment:512>,
	<thermalexpansion:augment:497>,
	<thermalexpansion:augment:496>,
	<thermalexpansion:augment:433>,
	<thermalexpansion:augment:432>,
	<thermalexpansion:augment:416>,
	<thermalexpansion:augment:402>,
	<thermalexpansion:augment:401>,
	<thermalexpansion:augment:400>,
	<thermalexpansion:augment:352>,
	<thermalexpansion:augment:337>,
	<thermalexpansion:augment:336>,
	<thermalexpansion:augment:304>,
	<thermalexpansion:augment:303>,
	<thermalexpansion:augment:288>,
	<thermalexpansion:augment:273>,
	<thermalexpansion:augment:258>,
	<thermalexpansion:augment:257>
];

for i in augmentAndDyeDisabled {
	mods.jei.JEI.removeAndHide(i);
}


	#Nutrient recovery
	recipes.remove(<thermalexpansion:augment:320>);
	recipes.addShaped(<thermalexpansion:augment:320>,
	[[null,<ore:gearSterlingSilver>,null],
	[<thermalfoundation:fertilizer:2>,<thermalfoundation:material:512>,<thermalfoundation:fertilizer:2>],
	[null,<thermalfoundation:glass_alloy:6>,null]]);

	#Monoculture augment
	recipes.remove(<thermalexpansion:augment:324>);
	recipes.addShaped(<thermalexpansion:augment:324>,
	[[<thermalfoundation:fertilizer:2>, <metaitem:field.generator.luv>, <thermalfoundation:fertilizer:2>],
	[<projecte:item.pe_matter:1>, <thermalfoundation:material:515>, <projecte:item.pe_matter:1>],
	[<thermalfoundation:fertilizer:2>, <ore:gearSignalum>, <thermalfoundation:fertilizer:2>]]);

	#bonus phytogrow from apatite
recipes.addShapeless(<thermalfoundation:fertilizer>,
	[<plants2:plantball>, <ore:dustApatite>]);

	#hardened glass
alloyer.recipeBuilder()
    .inputs(<ore:obsidian>, <ore:dustLead> * 2)
    .outputs(<thermalfoundation:glass:3>)
    .duration(60)
    .EUt(48)
    .buildAndRegister();

	#colored variants
var glassVariant as IItemStack[IItemStack] = {
	<thermalfoundation:glass:8> : <thermalfoundation:material:136>,
	<thermalfoundation:glass_alloy:1> : <ore:ingotElectrum>.firstItem,
	<thermalfoundation:glass_alloy> : <ore:ingotSteel>.firstItem,
	<thermalfoundation:glass_alloy:6> : <ore:ingotLumium>.firstItem,
	<thermalfoundation:glass_alloy:7> : ingotGTEnderium,
	<thermalfoundation:glass:4> : <ore:ingotAluminium>.firstItem,
	<thermalfoundation:glass_alloy:2> : <ore:ingotInvar>.firstItem,
	<thermalfoundation:glass_alloy:3> : <ore:ingotBronze>.firstItem,
	<thermalfoundation:glass_alloy:5> : <ore:ingotSignalum>.firstItem,
	<thermalfoundation:glass:1> : <ore:ingotTin>.firstItem,
	<thermalfoundation:glass:7> : <ore:ingotIridium>.firstItem,
	<thermalfoundation:glass:2> : <ore:ingotSilver>.firstItem,
	<thermalfoundation:glass:6> : <ore:ingotPlatinum>.firstItem,
	<thermalfoundation:glass:5> : <ore:ingotNickel>.firstItem,
	<thermalfoundation:glass> : <ore:ingotCopper>.firstItem
};

	for glass, ingot in glassVariant {
		alloyer.recipeBuilder()
			.inputs(<thermalfoundation:glass:3>, ingot)
			.outputs(glass)
			.duration(30)
			.EUt(48)
			.buildAndRegister();
	}



print("----------------Thermal Expansion End-------------------");
