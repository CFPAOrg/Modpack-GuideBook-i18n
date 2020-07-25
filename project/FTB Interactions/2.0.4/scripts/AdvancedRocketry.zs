import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.artisanworktables.builder.RecipeBuilder;
import mods.gregtech.recipe.RecipeMap;

print("---------------Advanced Rocketry Start------------------");



val mixer = mods.gregtech.recipe.RecipeMap.getByName("mixer");
val compressor as RecipeMap = RecipeMap.getByName("compressor");
val assembler as RecipeMap = RecipeMap.getByName("assembler");
val chemical_reactor as RecipeMap = RecipeMap.getByName("chemical_reactor");
val blast_furnace = mods.gregtech.recipe.RecipeMap.getByName("blast_furnace");
val extruder = mods.gregtech.recipe.RecipeMap.getByName("extruder");
val lathe = mods.gregtech.recipe.RecipeMap.getByName("lathe");
val metal_bender = mods.gregtech.recipe.RecipeMap.getByName("metal_bender");
var basicMachineStructure = <libvulpes:structuremachine>;
var advancedMachineStructure = <libvulpes:advstructuremachine>;
val macerator = mods.gregtech.recipe.RecipeMap.getByName("macerator");
val autoclave = mods.gregtech.recipe.RecipeMap.getByName("autoclave");
val laser = mods.gregtech.recipe.RecipeMap.getByName("laser_engraver");

	#Some scripts adapted with permissions from black0305@infinitech, Thanks!


	#crystals
	macerator.recipeBuilder()
    .inputs(<advancedrocketry:crystal>)
	.outputs(<actuallyadditions:item_crystal_shard:2>)
	.chancedOutput(<ore:dustSmallYttrium>.firstItem, 1000, 150)
    .duration(40)
    .EUt(48)
    .buildAndRegister();

	macerator.recipeBuilder()
    .inputs(<advancedrocketry:crystal:1>)
	.outputs(<actuallyadditions:item_crystal_shard:1>)
	.chancedOutput(<ore:dustSmallNeodymium>.firstItem, 1000, 150)
    .duration(40)
    .EUt(48)
    .buildAndRegister();

	macerator.recipeBuilder()
    .inputs(<advancedrocketry:crystal:2>)
	.outputs(<actuallyadditions:item_crystal_shard>)
	.chancedOutput(<ore:dustSmallCadmium>.firstItem, 1000, 150)
    .duration(40)
    .EUt(48)
    .buildAndRegister();

	macerator.recipeBuilder()
    .inputs(<advancedrocketry:crystal:3>)
	.outputs(<actuallyadditions:item_crystal_shard:4>)
	.chancedOutput(<ore:dustSmallChrome>.firstItem, 1000, 150)
    .duration(40)
    .EUt(48)
    .buildAndRegister();

	macerator.recipeBuilder()
    .inputs(<advancedrocketry:crystal:4>)
	.outputs(<actuallyadditions:item_crystal_shard:5>)
	.chancedOutput(<ore:dustSmallGallium>.firstItem, 1000, 150)
    .duration(40)
    .EUt(48)
    .buildAndRegister();

	macerator.recipeBuilder()
    .inputs(<advancedrocketry:crystal:5>)
	.outputs(<actuallyadditions:item_crystal_shard:3>)
	.chancedOutput(<ore:dustTinyIndium>.firstItem, 1000, 150)
    .duration(40)
    .EUt(48)
    .buildAndRegister();


	#linker
	recipes.remove(<libvulpes:linker>);
	recipes.addShaped(<libvulpes:linker>, 
	[[<ore:plateIron>, <cyclicmagic:password_remote>, <ore:plateIron>],
	[<minecraft:dye:1>, <thermalfoundation:material:640>, <minecraft:dye:2>], 
	[<ore:plateIron>, <ore:plateIron>, <ore:plateIron>]]);

	
	#remove control circuit shapecrafts
	recipes.remove(<advancedrocketry:ic:3>);
	recipes.remove(<advancedrocketry:ic:4>);
	recipes.remove(<advancedrocketry:ic:5>);

	#Removing smelting AR copper
furnace.remove(<ore:ingotCopper>, <libvulpes:ore0:4>);
furnace.remove(<ore:ingotCopper>, <libvulpes:productdust:4>);

	#thermite fuel nerf
furnace.setFuel(<advancedrocketry:thermite>, 400);

	#liquid Fueled Engine
recipes.remove(<advancedrocketry:rocketmotor>);
recipes.addShaped(<advancedrocketry:rocketmotor>,[
	[<ore:screwAluminium>,<ore:plateSignalum>,<ore:screwAluminium>],
	[<ore:plateSteel>,<thermalexpansion:tank>,<ore:plateSteel>],
	[<ore:plateSignalum>,<ore:screwAluminium>,<ore:plateSignalum>]]);

	#fuel tanks
recipes.remove(<advancedrocketry:fueltank>);
recipes.addShaped(<advancedrocketry:fueltank>, [
	[<ore:plateSteel>, <mekanism:basicblock:11>, <ore:plateSteel>],
	[<ore:plateSteel>, <ore:pipeLargePlastic>, <ore:plateSteel>],
	[<ore:plateSteel>, <mekanism:basicblock:11>, <ore:plateSteel>]]);

	#Spacesuit
recipes.remove(<advancedrocketry:spacechestplate>);
recipes.addShaped(<advancedrocketry:spacechestplate>, [
	[<thermalfoundation:rockwool:15>, <ore:plateAluminium>, <thermalfoundation:rockwool:15>],
	[<thermalfoundation:rockwool:15>, <advancedrocketry:fueltank>, <thermalfoundation:rockwool:15>],
	[<thermalfoundation:rockwool:15>, <ore:rotorSteel>, <thermalfoundation:rockwool:15>]]);

	#Space helmet
recipes.remove(<advancedrocketry:spacehelmet>);
recipes.addShaped(<advancedrocketry:spacehelmet>, [
	[<ore:plateSteel>, <ore:stickAluminium>, <ore:plateSteel>],
	[<ore:stickAluminium>, <ore:plateGlass>, <ore:stickAluminium>],
	[<thermalfoundation:rockwool:15>, <thermalfoundation:rockwool:15>, <thermalfoundation:rockwool:15>]]);

	#space boots
recipes.remove(<advancedrocketry:spaceboots>);
recipes.addShaped(<advancedrocketry:spaceboots>, [
	[null, <ore:stickAluminium>, null],
	[<thermalfoundation:rockwool:15>, null, <thermalfoundation:rockwool:15>],
	[<ore:plateSteelMagnetic>, null, <ore:plateSteelMagnetic>]]);

	#space leggigns
recipes.remove(<advancedrocketry:spaceleggings>);
recipes.addShaped(<advancedrocketry:spaceleggings>, [
	[<thermalfoundation:rockwool:15>, <ore:plateAluminium>, <thermalfoundation:rockwool:15>],
	[<ore:stickAluminium>, null, <ore:stickAluminium>],
	[<thermalfoundation:rockwool:15>, null, <thermalfoundation:rockwool:15>]]);


	#buckets
mods.jei.JEI.hide(<advancedrocketry:bucketrocketfuel>);
mods.jei.JEI.hide(<advancedrocketry:bucketnitrogen>);
mods.jei.JEI.hide(<advancedrocketry:buckethydrogen>);
mods.jei.JEI.hide(<advancedrocketry:bucketoxygen>);
mods.jei.JEI.removeAndHide(<advancedrocketry:liquidtank>);

	#chemical reactor
mods.jei.JEI.removeAndHide(<advancedrocketry:chemicalreactor>);

	#solar panel
mods.jei.JEI.removeAndHide(<advancedrocketry:solarpanel>);

	#gui screen
recipes.remove(<advancedrocketry:misc>);
recipes.addShaped(<advancedrocketry:misc>, [
	[null, null, null],
	[<ore:plateRedAlloy>, <ore:foilSilicon>, <ore:plateRedAlloy>],
	[<ore:plateGlass>, <advancedrocketry:ic:3>, <ore:plateGlass>]]);

	#remove nuggets and steel block
mods.jei.JEI.removeAndHide(<libvulpes:productnugget:6>);
mods.jei.JEI.removeAndHide(<libvulpes:metal0:6>);

	#remove Electrolyzer
mods.jei.JEI.removeAndHide(<advancedrocketry:electrolyser>);

val oreDictSteelBlock = <ore:blockSteel>;
oreDictSteelBlock.remove(<libvulpes:metal0:6>);

	#Cutting Machine
mods.jei.JEI.removeAndHide(<advancedrocketry:cuttingmachine>);


	#titanium block
recipes.addShapeless(<libvulpes:metal0:7>,[<gregtech:compressed_3:10>]);
recipes.addShapeless(<gregtech:compressed_3:10>,[<libvulpes:metal0:7>]);

	#RocketFuel
mods.jei.JEI.hide(<liquid:rocketfuel>);

	#Coils
recipes.remove(<libvulpes:coil0:10>);
recipes.remove(<libvulpes:coil0:7>);
recipes.remove(<libvulpes:coil0:4>);
recipes.remove(<libvulpes:coil0:2>);
recipes.remove(<libvulpes:coil0:9>);

	#aluminium coil
recipes.addShaped(<libvulpes:coil0:9>, [
	[<ore:cableGtSingleAluminium>, <ore:cableGtSingleAluminium>, <ore:cableGtSingleAluminium>],
	[<ore:cableGtSingleAluminium>, <ore:ringSteelMagnetic>, <ore:cableGtSingleAluminium>],
	[<ore:cableGtSingleAluminium>, <ore:cableGtSingleAluminium>, <ore:cableGtSingleAluminium>]]);

	#iridium coil
recipes.addShaped(<libvulpes:coil0:10>, [
	[<ore:wireFineIridium>, <ore:wireFineIridium>, <ore:wireFineIridium>],
	[<ore:wireFineIridium>, <libvulpes:coil0:7>, <ore:wireFineIridium>],
	[<ore:wireFineIridium>, <ore:wireFineIridium>, <ore:wireFineIridium>]]);

	#Titanium coil
recipes.addShaped(<libvulpes:coil0:7>, [
	[<ore:cableGtSingleTitanium>, <ore:cableGtSingleTitanium>, <ore:cableGtSingleTitanium>],
	[<ore:cableGtSingleTitanium>, <ore:ringSteelMagnetic>, <ore:cableGtSingleTitanium>],
	[<ore:cableGtSingleTitanium>, <ore:cableGtSingleTitanium>, <ore:cableGtSingleTitanium>]]);

	#Copper Coil
recipes.addShaped(<libvulpes:coil0:4>, [
	[<ore:cableGtSingleCopper>, <ore:cableGtSingleCopper>, <ore:cableGtSingleCopper>],
	[<ore:cableGtSingleCopper>, <ore:ringSteelMagnetic>, <ore:cableGtSingleCopper>],
	[<ore:cableGtSingleCopper>, <ore:cableGtSingleCopper>, <ore:cableGtSingleCopper>]]);

	#Gold Coil
recipes.addShaped(<libvulpes:coil0:2>, [
	[<ore:cableGtSingleGold>, <ore:cableGtSingleGold>, <ore:cableGtSingleGold>],
	[<ore:cableGtSingleGold>, <ore:ringSteelMagnetic>, <ore:cableGtSingleGold>],
	[<ore:cableGtSingleGold>, <ore:cableGtSingleGold>, <ore:cableGtSingleGold>]]);



	#hide uncraftable rods (all recipes accept gt variants)
mods.jei.JEI.hide(<libvulpes:productrod:10>);
mods.jei.JEI.hide(<libvulpes:productrod:1>);
mods.jei.JEI.hide(<libvulpes:productrod:4>);
mods.jei.JEI.hide(<libvulpes:productrod:6>);
mods.jei.JEI.hide(<libvulpes:productrod:7>);
mods.jei.JEI.hide(<libvulpes:productboule:3>);

	#Removing AR rods from ore directory to prevent JEI from placing them in crafting benches
<ore:stickIridium>.remove(<libvulpes:productrod:10>);
<ore:stickCopper>.remove(<libvulpes:productrod:4>);
<ore:stickSteel>.remove(<libvulpes:productrod:6>);
<ore:stickTitanium>.remove(<libvulpes:productrod:7>);

	#hide nuggets
mods.jei.JEI.hide(<libvulpes:productnugget:10>);
mods.jei.JEI.hide(<libvulpes:productnugget:3>);
mods.jei.JEI.hide(<libvulpes:productnugget:4>);
mods.jei.JEI.hide(<libvulpes:productnugget:5>);
mods.jei.JEI.hide(<libvulpes:productnugget:7>);


	#precision assembler
recipes.remove(<advancedrocketry:precisionassemblingmachine>);
recipes.addShaped(<advancedrocketry:precisionassemblingmachine>, [
	[<gregtech:meta_item_2:32212>, <advancedrocketry:misc>, <ore:stickDiamond>],
	[<advancedrocketry:ic:4>, <libvulpes:structuremachine>, <advancedrocketry:ic:3>],
	[<cyclicmagic:laser>, <ore:gearAluminium>, <metaitem:robot.arm.mv>]]);


	#space elevator controller
recipes.remove(<advancedrocketry:spaceelevatorcontroller>);
recipes.addShaped(<advancedrocketry:spaceelevatorcontroller>, [
	[null, <advancedrocketry:ic:3>, null],
	[<advancedrocketry:ic:2>, <libvulpes:structuremachine>, <advancedrocketry:ic:2>],
	[<libvulpes:coil0:9>, <libvulpes:coil0:9>, <libvulpes:coil0:9>]]);

	#jetpack upgrade
recipes.remove(<advancedrocketry:jetpack>);

	#suit workstation
recipes.remove(<advancedrocketry:suitworkstation>);
recipes.addShaped(<advancedrocketry:suitworkstation>, [[null, <advancedrocketry:misc>, null],[<ore:gearElectrum>, <libvulpes:structuremachine>, <ore:gearElectrum>], [<advancedrocketry:concrete>, <advancedrocketry:concrete>, <advancedrocketry:concrete>]]);

	#orbital Miner
recipes.remove(<advancedrocketry:spacelaser>);
recipes.addShaped(<advancedrocketry:spacelaser>, [[<advancedrocketry:ic:2>, <metaitem:component.capacitor>, <advancedrocketry:ic:2>],[<libvulpes:battery:1>, <ore:lensRuby>, <advancedrocketry:ic:3>], [<ore:gearAluminium>, <thaumcraft:mirrored_glass>, <ore:gearAluminium>]]);

	#satelite builder
recipes.remove(<advancedrocketry:satellitebuilder>);
recipes.addShaped(<advancedrocketry:satellitebuilder>, [[<advancedrocketry:dataunit>, <ore:blockPolyvinylChloride>, <ore:plateAluminium>],[<advancedrocketry:ic>, <libvulpes:structuremachine>, <advancedrocketry:ic>], [<libvulpes:motor>, <ore:blockPolyvinylChloride>, <advancedrocketry:sawblade>]]);

	#gas intake
recipes.remove(<advancedrocketry:intake>);
recipes.addShaped(<advancedrocketry:intake>, [[<ore:stickAluminium>, <mekanism:transmitter:1>, <ore:stickAluminium>],[<mekanism:transmitter:1>, <libvulpes:structuremachine>, <mekanism:transmitter:1>], [<ore:stickAluminium>, <mekanism:transmitter:1>, <ore:stickAluminium>]]);

	#station builder
recipes.remove(<advancedrocketry:stationbuilder>);
recipes.addShaped(<advancedrocketry:stationbuilder>, [[<ore:gearAluminium>, <ore:blockPolyvinylChloride>, <ore:gearAluminium>],[<ore:blockPolyvinylChloride>, <advancedrocketry:rocketbuilder>, <ore:blockPolyvinylChloride>], [<advancedrocketry:ic:2>, <ore:blockPolyvinylChloride>, <advancedrocketry:ic:2>]]);

	#guidance computer
recipes.remove(<advancedrocketry:guidancecomputer>);
recipes.addShaped(<advancedrocketry:guidancecomputer>, [[<advancedrocketry:ic:1>, <ore:plateAluminium>, <advancedrocketry:ic:1>],[<ore:cableGtSingleRedAlloy>, <libvulpes:structuremachine>, <ore:cableGtSingleRedAlloy>], [<advancedrocketry:ic:1>, <ore:cableGtSingleRedAlloy>, <advancedrocketry:ic:1>]]);

	#rocket builder
recipes.remove(<advancedrocketry:rocketbuilder>);
recipes.addShaped(<advancedrocketry:rocketbuilder>, [[<ore:stickAluminium>, <advancedrocketry:misc>, <ore:stickAluminium>],[<advancedrocketry:ic:3>, <libvulpes:structuremachine>, <advancedrocketry:ic:3>], [<ore:gearAluminium>, <advancedrocketry:concrete>, <ore:gearAluminium>]]);

	#Add GT Bender recipe for sheets

#iron
metal_bender.recipeBuilder()
  .inputs(<ore:plateIron>)
  .notConsumable(<metaitem:circuit.integrated>.withTag({Configuration: 3}))
  .outputs(<libvulpes:productsheet:1> * 1)
  .duration(120)
  .EUt(20)
  .buildAndRegister();

#Aluminium
metal_bender.recipeBuilder()
  .inputs(<ore:plateAluminium>)
  .notConsumable(<metaitem:circuit.integrated>.withTag({Configuration: 3}))
  .outputs(<libvulpes:productsheet:9> * 1)
  .duration(120)
  .EUt(20)
  .buildAndRegister();

#Titanium
metal_bender.recipeBuilder()
  .inputs(<ore:plateTitanium>)
  .notConsumable(<metaitem:circuit.integrated>.withTag({Configuration: 3}))
  .outputs(<libvulpes:productsheet:7> * 1)
  .duration(120)
  .EUt(20)
  .buildAndRegister();

#Steel
metal_bender.recipeBuilder()
  .inputs(<ore:plateSteel>)
  .notConsumable(<metaitem:circuit.integrated>.withTag({Configuration: 3}))
  .outputs(<libvulpes:productsheet:6> * 1)
  .duration(120)
  .EUt(20)
  .buildAndRegister();

#Copper
metal_bender.recipeBuilder()
  .inputs(<ore:plateCopper>)
  .notConsumable(<metaitem:circuit.integrated>.withTag({Configuration: 3}))
  .outputs(<libvulpes:productsheet:4> * 1)
  .duration(120)
  .EUt(20)
  .buildAndRegister();

var arDisabled as IItemStack[] = [
	<libvulpes:coalgenerator>,
	<advancedrocketry:crystallizer>,
	<advancedrocketry:arcfurnace>,
	<advancedrocketry:blastbrick>,
	<advancedrocketry:rocketfuel>,
	<advancedrocketry:rollingmachine>,
	<advancedrocketry:platepress>,
	<advancedrocketry:lathe>,
	<advancedrocketry:solargenerator>];

for i in arDisabled {
	mods.jei.JEI.removeAndHide(i);
	i.addTooltip(format.darkRed("在这个包中禁用。"));
}


	#dlitihium processing
furnace.remove(<libvulpes:productdust>);
macerator.recipeBuilder()
    .inputs(<ore:oreDilithium>)
	.outputs(<libvulpes:productdust>)
	.chancedOutput(<ore:dustLithium>.firstItem, 1000, 150)
    .duration(40)
    .EUt(148)
    .buildAndRegister();

	#Dilithium
chemical_reactor.recipeBuilder()
	.inputs(<ore:dustLithium> * 2)
	.fluidInputs([<liquid:fluorine> * 100])
	.fluidOutputs([<liquid:hydrofluoric_acid> * 100])
	.outputs(<ore:dustDilithium>.firstItem)
    .duration(550)
    .EUt(48)
    .buildAndRegister();

	#dilithium Crystals
autoclave.recipeBuilder()
    .inputs(<ore:dustDilithium> * 1)
    .fluidInputs([<liquid:astralsorcery.liquidstarlight> * 50])
    .duration(100)
	.outputs(<libvulpes:productgem>)
    .EUt(24)
    .buildAndRegister();

	#Holoprojector
	recipes.remove(<libvulpes:holoprojector>);
	recipes.addShaped(<libvulpes:holoprojector>, [[null, null, null],[null, <advancedrocketry:satelliteprimaryfunction>, null], [<ore:plateSteelMagnetic>, <extrautils2:ingredients:2>, <ore:plateSteelMagnetic>]]);



	#GT Style gear crafting
recipes.remove(<advancedrocketry:productgear:0>);
recipes.addShaped(<advancedrocketry:productgear:0>, [
	[<ore:stickTitaniumAluminide>, <ore:plateTitaniumAluminide>, <ore:stickTitaniumAluminide>],
	[<ore:plateTitaniumAluminide>, craftingToolScrewdriver, <ore:plateTitaniumAluminide>],
	[<ore:stickTitaniumAluminide>, <ore:plateTitaniumAluminide>, <ore:stickTitaniumAluminide>]]);

recipes.remove(<advancedrocketry:productgear:1>);
recipes.addShaped(<advancedrocketry:productgear:1>, [
	[<ore:stickTitaniumIridium>, <ore:plateTitaniumIridium>, <ore:stickTitaniumIridium>],
	[<ore:plateTitaniumIridium>, craftingToolScrewdriver, <ore:plateTitaniumIridium>],
	[<ore:stickTitaniumIridium>, <ore:plateTitaniumIridium>, <ore:stickTitaniumIridium>]]);

	#Removing gears that have GT counterpart
recipes.remove(<libvulpes:productgear:6>);
recipes.remove(<libvulpes:productgear:7>);

	#GT Style Rod crafting
recipes.remove(<advancedrocketry:productrod>);
recipes.addShaped(<advancedrocketry:productrod>, [
	[craftingToolFile, null],
	[null, <ore:ingotTitaniumAluminide>]]);
recipes.remove(<advancedrocketry:productrod:1>);
recipes.addShaped(<advancedrocketry:productrod:1>, [
	[craftingToolFile, null],
	[null, <ore:ingotTitaniumIridium>]]);

	#Removing rods that have GT counterpart
recipes.remove(<libvulpes:productrod:1>);
recipes.remove(<libvulpes:productrod:4>);
recipes.remove(<libvulpes:productrod:6>);
recipes.remove(<libvulpes:productrod:7>);
recipes.remove(<libvulpes:productrod:10>);

	#GT Style Plate crafting
recipes.addShaped(<advancedrocketry:productplate>, [
	[craftingToolHardHammer],
	[<ore:ingotTitaniumAluminide>],
	[<ore:ingotTitaniumAluminide>]]);
recipes.addShaped(<advancedrocketry:productplate:1>, [
	[craftingToolHardHammer],
	[<ore:ingotTitaniumIridium>],
	[<ore:ingotTitaniumIridium>]]);


	#steel fan replaced by steel rotorSteel
recipes.remove(<libvulpes:productfan:6>);
recipes.addShapeless(<ore:rotorSteel>.firstItem, [<libvulpes:productfan:6>]);
recipes.addShapeless(<libvulpes:productfan:6>, [<ore:rotorSteel>]);

	#remove silicon ingot smelting
	furnace.remove(<libvulpes:productingot:3>);

	#satelite  bay
recipes.remove(<advancedrocketry:loader:1>);
	recipes.addShaped(<advancedrocketry:loader:1>, [[null, <ore:stickAluminium>, null],[<ore:stickAluminium>, <libvulpes:advstructuremachine>, <ore:stickAluminium>], [null, <ore:stickAluminium>, null]]);

	#concrete
	recipes.remove(<advancedrocketry:concrete>);
	<advancedrocketry:concrete>.displayName = "地质聚合物热凝土";

mixer.recipeBuilder()
    .inputs(<ore:dustSodiumHydroxide>, <ore:gravel> * 4, <ore:dustGlass>, <ore:dustAluminium>)
    .fluidInputs([<liquid:concrete> * 576])
	.outputs(<advancedrocketry:concrete> * 8)
    .duration(800)
    .EUt(28)
    .buildAndRegister();


	#GT Style block crafting
var blockTitaniumIridium = <advancedrocketry:metal0:1>;
var blockTitaniumAlumide = <advancedrocketry:metal0>;
var blockAluminium = <libvulpes:metal0:9>;
var blockTitanium = <libvulpes:metal0:7>;
var blockSteel = <libvulpes:metal0:6>;
var blockTin = <libvulpes:metal0:5>;
var blockCopper = <libvulpes:metal0:4>;
var blockIridium = <libvulpes:metal0:10>;

recipes.remove(blockTitaniumIridium);
recipes.remove(blockTitaniumAlumide);



compressor.recipeBuilder()
	.inputs(<ore:ingotTitaniumIridium> * 9)
	.outputs(blockTitaniumIridium)
	.duration(400).EUt(2)
	.buildAndRegister();
compressor.recipeBuilder()
	.inputs(<ore:ingotTitaniumAlumide> * 9)
	.outputs(blockTitaniumAlumide)
	.duration(400).EUt(2)
	.buildAndRegister();

recipes.remove(blockAluminium);
recipes.remove(blockTitanium);
recipes.remove(blockSteel);
recipes.remove(blockTin);
recipes.remove(blockCopper);
recipes.remove(blockIridium);

	#batteries
	recipes.remove(<libvulpes:battery>);
assembler.recipeBuilder()
  .inputs(<ore:plateBatteryAlloy> * 2, <ore:batterySodiumSmall>)
  .outputs(<libvulpes:battery>)
  .duration(200)
  .EUt(26)
  .buildAndRegister();

	#optical sensor
	recipes.remove(<advancedrocketry:satelliteprimaryfunction>);
assembler.recipeBuilder()
  .inputs(<ore:foilGold> * 2, <ore:lensDiamond>)
  .fluidInputs([<liquid:redstone> * 288])
  .outputs(<advancedrocketry:satelliteprimaryfunction>)
  .duration(200)
  .EUt(26)
  .buildAndRegister();


  #Ic chips
assembler.recipeBuilder()
  .inputs(<ore:plateSilicon>, <minecraft:redstone>, <ore:plateElectrum>)
  .fluidInputs([<liquid:plastic> * 288])
  .outputs(<advancedrocketry:ic:4>)
  .duration(300)
  .EUt(26)
  .buildAndRegister();

assembler.recipeBuilder()
  .inputs(<ore:plateSilicon>, <minecraft:redstone>, <ore:plateCopper>)
  .fluidInputs([<liquid:plastic> * 288])
  .outputs(<advancedrocketry:ic:3>)
  .duration(300)
  .EUt(26)
  .buildAndRegister();  
  
	#New Machine Structure recipes
recipes.remove(basicMachineStructure);
assembler.recipeBuilder()
  .inputs(<ore:plateAluminium> * 4, <ore:stickAluminium> * 4)
  .notConsumable(integratedCircuit.withTag({Configuration: 2}))
  .outputs(basicMachineStructure * 4)
  .duration(200)
  .EUt(68)
  .buildAndRegister();

recipes.remove(advancedMachineStructure);
assembler.recipeBuilder()
  .inputs(<ore:plateChrome> * 2, basicMachineStructure)
  .outputs(advancedMachineStructure)
  .duration(220)
  .EUt(90)
  .buildAndRegister();

  	#Move ingots from Arc Furnace to Blast Furnace
var ingotTitaniumAluminide = <advancedrocketry:productingot>;
var ingotTitaniumIridiumAlloy = <advancedrocketry:productingot:1>;

blast_furnace.recipeBuilder()
	.inputs([<ore:ingotTitanium> * 3, <ore:ingotAluminium> * 7])
	.outputs(ingotTitaniumAluminide * 2)
	.property("temperature", 2800)
	.duration(220)
	.EUt(520)
	.buildAndRegister();

blast_furnace.recipeBuilder()
	.inputs([<ore:ingotIridium> * 1, <ore:ingotTitanium> * 1])
	.outputs(ingotTitaniumIridiumAlloy * 2)
	.property("temperature", 2800)
	.duration(220)
	.EUt(520)
	.buildAndRegister();

	#Remove shapeless recipes for rods and plates
var rodTitaniumIridiumAlloy = <advancedrocketry:productrod:1>;
var rodTitaniumAluminide = <advancedrocketry:productrod>;
var plateTitaniumAluminide = <advancedrocketry:productplate>;
var plateTitaniumIridiumAlloy = <advancedrocketry:productplate:1>;


	#laser engraver for chips
	#basic -
laser.recipeBuilder()
  .inputs(<ore:circuitLow>)
  .notConsumable(<ore:lensDiamond>)
  .outputs(<advancedrocketry:ic>)
  .duration(160)
  .EUt(48)
  .buildAndRegister();

	#advanced -
laser.recipeBuilder()
  .inputs(<ore:circuitMedium>)
  .notConsumable(<ore:lensDiamond>)
  .outputs(<advancedrocketry:ic:2>)
  .duration(160)
  .EUt(48)
  .buildAndRegister();



	#Add GT Extruder recipe for rods
extruder.recipeBuilder()
  .inputs(<ore:ingotTitaniumAluminide>)
  .notConsumable(<metaitem:shape.extruder.rod>)
  .outputs(rodTitaniumAluminide * 2)
  .duration(160)
  .EUt(48)
  .buildAndRegister();

	#add GT extruder recipes for tanks
	#low pressure
extruder.recipeBuilder()
  .inputs(<ore:plateWroughtIron>*2)
  .notConsumable(<metaitem:shape.mold.cylinder>)
  .outputs(<advancedrocketry:pressuretank>)
  .duration(160)
  .EUt(18)
  .buildAndRegister();

	#pressure tank
extruder.recipeBuilder()
  .inputs(<ore:plateSteel>*2)
  .notConsumable(<metaitem:shape.mold.cylinder>)
  .outputs(<advancedrocketry:pressuretank:1>)
  .duration(160)
  .EUt(18)
  .buildAndRegister();

	#high pressure tank
extruder.recipeBuilder()
  .inputs(<ore:plateAluminium>*2)
  .notConsumable(<metaitem:shape.mold.cylinder>)
  .outputs(<advancedrocketry:pressuretank:2>)
  .duration(160)
  .EUt(18)
  .buildAndRegister();

	#super high pressure tank
extruder.recipeBuilder()
  .inputs(<ore:plateTitanium>*2)
  .notConsumable(<metaitem:shape.mold.cylinder>)
  .outputs(<advancedrocketry:pressuretank:3>)
  .duration(160)
  .EUt(18)
  .buildAndRegister();


extruder.recipeBuilder()
  .inputs(<ore:IngotTitaniumIridiumAlloy>)
  .notConsumable(<metaitem:shape.extruder.rod>)
  .outputs(rodTitaniumIridiumAlloy * 2)
  .duration(160)
  .EUt(48)
  .buildAndRegister();

	#Add GT Lathe recipe for rods
lathe.recipeBuilder()
  .inputs(<ore:ingotTitaniumAluminide>)
  .outputs(rodTitaniumAluminide * 1)
  .duration(160)
  .EUt(44)
  .buildAndRegister();

lathe.recipeBuilder()
  .inputs(<ore:IngotTitaniumIridiumAlloy>)
  .outputs(rodTitaniumIridiumAlloy * 1)
  .duration(160)
  .EUt(44)
  .buildAndRegister();

	#Add GT Extruder recipe for plates
extruder.recipeBuilder()
  .inputs(<ore:ingotTitaniumAluminide>)
  .notConsumable(<metaitem:shape.extruder.plate>)
  .outputs(plateTitaniumAluminide * 1)
  .duration(160)
  .EUt(48)
  .buildAndRegister();

extruder.recipeBuilder()
  .inputs(<ore:IngotTitaniumIridiumAlloy>)
  .notConsumable(<metaitem:shape.extruder.plate>)
  .outputs(plateTitaniumIridiumAlloy * 1)
  .duration(160)
  .EUt(48)
  .buildAndRegister();

	#Add GT Bender recipe for plates
metal_bender.recipeBuilder()
  .inputs(<ore:ingotTitaniumAluminide>)
  .notConsumable(<metaitem:circuit.integrated>.withTag({Configuration: 0}))
  .outputs(plateTitaniumAluminide * 1)
  .duration(120)
  .EUt(42)
  .buildAndRegister();

metal_bender.recipeBuilder()
  .inputs(<ore:ingotTitaniumIridiumAlloy>)
  .notConsumable(<metaitem:circuit.integrated>.withTag({Configuration: 0}))
  .outputs(plateTitaniumIridiumAlloy * 1)
  .duration(120)
  .EUt(42)
  .buildAndRegister();

  	#air tight seal book
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("ar:airtight", "", 20, [<aspect:aer> * 10], <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 1 as short, id: 27 as short}]}),
	[[<ore:pipeSmallPlastic>,<randomthings:ingredient:10>,<ore:pipeSmallPlastic>],
	[<ore:gemEmerald>,<minecraft:book>,<ore:gemEmerald>],
	[<ore:pipeSmallPlastic>,<advancedrocketry:pressuretank:1>,<ore:pipeSmallPlastic>]
	]);	
  
print("----------------Advanced Rocketry End-------------------");
