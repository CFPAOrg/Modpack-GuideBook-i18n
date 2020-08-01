import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDict;
import mods.gregtech.recipe.RecipeMap;

print("---------------Mekanism Start------------------");

val assembler = mods.gregtech.recipe.RecipeMap.getByName("assembler");
val aSmelter = mods.gregtech.recipe.RecipeMap.getByName("alloy_smelter");
val blast_furnace = mods.gregtech.recipe.RecipeMap.getByName("blast_furnace");
val chemReactor = mods.gregtech.recipe.RecipeMap.getByName("chemical_reactor");

    #Tooltips
<mekanism:basicblock:14>.addTooltip("太阳能板无法被获取。你必须在外部为结构提供热力。");

	#mekanism hydrogen and oxygen
chemReactor.recipeBuilder()
	.fluidInputs([<liquid:oxygen> * 1000])
	.fluidOutputs([<liquid:liquidoxygen> * 1000])
	.notConsumable(integratedCircuit.withTag({Configuration: 5}))
    .duration(20)
    .EUt(28)
    .buildAndRegister();

chemReactor.recipeBuilder()
	.notConsumable(integratedCircuit.withTag({Configuration: 5}))
	.fluidInputs([<liquid:hydrogen> * 1000])
	.fluidOutputs([<liquid:liquidhydrogen> * 1000])
    .duration(20)
    .EUt(28)
    .buildAndRegister();


	#Redundant/Useless Mekanism Smelting Recipes
furnace.remove(<mekanism:ingot:1>);
furnace.remove(<ore:ingotCopper>, <mekanism:dust:3>);
furnace.remove(<ore:ingotCopper>, <mekanism:oreblock:1>);
furnace.remove(<ore:ingotIron>, <mekanism:dust:0>);

	#remove mek osmium ingots and nuggets
mods.jei.JEI.removeAndHide(<mekanism:nugget:1>);
mods.jei.JEI.removeAndHide(<mekanism:ingot:1>);
	
	#remove metalurgic infuser
mods.jei.JEI.removeAndHide(<mekanism:machineblock:8>);

	#gas tanks
recipes.remove(<mekanism:gastank>.withTag({tier: 0, mekData: {}}));
recipes.addShaped(<mekanism:gastank>.withTag({tier: 0, mekData: {}}),
	[[<ore:plateAluminium>,<ore:paneGlassColorless>,<ore:plateAluminium>],
	[<ore:plateAluminium>,null,<ore:plateAluminium>],
	[<ore:plateAluminium>,<thermalfoundation:material:512>,<ore:plateAluminium>]]);

	#remove electrolyzer
mods.jei.JEI.removeAndHide(<mekanism:machineblock2:4>);
	
	#rotary condestrator
recipes.remove(<mekanism:machineblock2>);	
recipes.addShaped(<mekanism:machineblock2>, 
	[[<ore:plateAluminium>, <ore:circuitLow>, <ore:plateAluminium>],
	[<mekanism:gastank>, <metaitem:battery.re.lv.lithium>, <thermalexpansion:tank>],
	[<ore:plateAluminium>, <ore:circuitLow>, <ore:plateAluminium>]]);

	#laser amplifier
	recipes.remove(<mekanism:machineblock2:14>);
	recipes.addShaped(<mekanism:machineblock2:14>, 
	[[<ore:plateAluminium>, <metaitem:component.glass.tube>, <ore:plateAluminium>],
	[<metaitem:component.glass.tube>, <metaitem:energy_crystal>, <ore:lensDiamond>], 
	[<ore:plateAluminium>, <metaitem:component.glass.tube>, <ore:plateAluminium>]]);
		
	#laser
recipes.remove(<mekanism:machineblock2:13>);
recipes.addShaped(<mekanism:machineblock2:13>, 
	[[<mekanism:reinforcedalloy>, <metaitem:battery.re.lv.lithium>, null],
	[<mekanism:reinforcedalloy>, <gregtech:machine:502>, <ore:lensDiamond>], 
	[<mekanism:reinforcedalloy>, <metaitem:battery.re.lv.lithium>, null]]);

	#Logistic transport pipes
recipes.remove(<mekanism:transmitter:3>.withTag({tier: 0}));
recipes.addShaped(<mekanism:transmitter:3>.withTag({tier: 0}) * 8, [
	[<ore:itemRubber>, <ore:gearSteel>, <ore:itemRubber>],
	[<ore:itemRubber>, <ore:circuitPrimitive>, <ore:itemRubber>], 
	[<ore:itemRubber>, <ore:itemRubber>, <ore:itemRubber>]]);
	
	#remove circuits
mods.jei.JEI.removeAndHide(<mekanism:controlcircuit>);
mods.jei.JEI.removeAndHide(<mekanism:controlcircuit:1>);
mods.jei.JEI.removeAndHide(<mekanism:controlcircuit:2>);
mods.jei.JEI.removeAndHide(<mekanism:controlcircuit:3>);

	#energy tablet
mods.jei.JEI.removeAndHide(<mekanism:energytablet>);
	
	#Fluid pipes
recipes.remove(<mekanism:transmitter:1>.withTag({tier: 0}));
recipes.addShaped(<mekanism:transmitter:1>.withTag({tier: 0}) * 8, [
	[<mekanism:transmitter:3>, <mekanism:transmitter:3>, <mekanism:transmitter:3>],
	[<mekanism:transmitter:3>, <advancedrocketry:pipesealer>, <mekanism:transmitter:3>], 
	[<mekanism:transmitter:3>, <mekanism:transmitter:3>, <mekanism:transmitter:3>]]);
	
	#Energy Tablet
recipes.remove(<mekanism:energytablet>);
	
	#Configurator
recipes.remove(<mekanism:configurator>);
recipes.addShaped(<mekanism:configurator>, [
	[null, <metaitem:component.glass.tube>, null],
	[<ore:cableGtSingleRedAlloy>, <metaitem:battery.re.lv.sodium>, <ore:cableGtSingleRedAlloy>], 
	[null, <ore:stickSteel>, null]]);

	#dyanmic tanks
recipes.remove(<mekanism:basicblock:9>);
recipes.addShaped(<mekanism:basicblock:9> * 4, [
	[null, <ore:plateIron>, null],
	[<ore:plateSteel>, <ore:cableGtSingleRedAlloy>, <ore:plateSteel>], 
	[null, <ore:plateIron>, null]]);

	#dynaic valve
recipes.remove(<mekanism:basicblock:11>);
aSmelter.recipeBuilder()
    .inputs(<mekanism:basicblock:9> * 2, <ore:circuitLow>)
    .outputs([<mekanism:basicblock:11> * 2])
    .duration(800)
    .EUt(3)
    .buildAndRegister();

	#guage dropper
recipes.remove(<mekanism:gaugedropper>);
recipes.addShaped(<mekanism:gaugedropper>, 
	[[null, <metaitem:electric.pump.lv>, null],
	[<minecraft:glass_pane>, null, <minecraft:glass_pane>], 
	[<minecraft:glass_pane>, <minecraft:glass_pane>, <minecraft:glass_pane>]]);

	
	#mekanical pipe upgrades
assembler.recipeBuilder()
    .inputs(<ore:itemEnrichedAlloy>, <mekanism:transmitter:1>.withTag({tier: 0}) * 8)
    .outputs([ <mekanism:transmitter:1>.withTag({tier: 1})*8])
    .duration(160)
    .EUt(20)
    .buildAndRegister();

#higher tier pipe making 
assembler.recipeBuilder()
    .inputs(<ore:itemEnrichedAlloy>, <ore:gearSmallSteel>, <ore:platePlastic>*2)
    .outputs([<mekanism:transmitter:1>.withTag({tier: 1}) * 12])
    .duration(160)
    .EUt(20)
    .buildAndRegister();

assembler.recipeBuilder()
    .inputs(<ore:itemEnrichedAlloy>, <ore:gearSmallSteel>, <ore:platePolytetrafluoroethylene>)
    .outputs([<mekanism:transmitter:1>.withTag({tier: 1}) * 16])
    .duration(160)
    .EUt(20)
    .buildAndRegister();


assembler.recipeBuilder()
    .inputs(<ore:alloyElite>, <mekanism:transmitter:1>.withTag({tier: 1}) * 8)
    .outputs([ <mekanism:transmitter:1>.withTag({tier: 2})*8])
    .duration(160)
    .EUt(20)
    .buildAndRegister();
	
assembler.recipeBuilder()
    .inputs(<ore:alloyUltimate>, <mekanism:transmitter:1>.withTag({tier: 2}) * 8)
    .outputs([ <mekanism:transmitter:1>.withTag({tier: 3})*8])
    .duration(160)
    .EUt(20)
    .buildAndRegister();
	
	#logistic pipe upgrades
assembler.recipeBuilder()
    .inputs(<ore:itemEnrichedAlloy>, <mekanism:transmitter:3>.withTag({tier: 0}) * 8)
    .outputs([ <mekanism:transmitter:3>.withTag({tier: 1})*8])
    .duration(160)
    .EUt(20)
    .buildAndRegister();

assembler.recipeBuilder()
    .inputs(<ore:alloyElite>, <mekanism:transmitter:3>.withTag({tier: 1}) * 8)
    .outputs([ <mekanism:transmitter:3>.withTag({tier: 2})*8])
    .duration(160)
    .EUt(20)
    .buildAndRegister();
	
assembler.recipeBuilder()
    .inputs(<ore:alloyUltimate>, <mekanism:transmitter:3>.withTag({tier: 2}) * 8)
    .outputs([ <mekanism:transmitter:3>.withTag({tier: 3})*8])
    .duration(160)
    .EUt(20)
    .buildAndRegister();
	
	#enriched alloy
assembler.recipeBuilder()
    .inputs(<ore:dustGraphite>, <ore:ingotSolderingAlloy>)
	.fluidInputs([<liquid:redstone> * 288])
    .outputs([<mekanism:enrichedalloy>])
    .duration(1500)
    .EUt(20)
    .buildAndRegister();
	
	#fuelwood heater
recipes.remove(<mekanism:machineblock3:6>);
recipes.addShaped(<mekanism:machineblock3:6>, 
	[[<ore:plateTin>, <ore:cableGtSingleRedAlloy>, <ore:plateTin>],
	[<gregtech:metal_casing:8>, <gregtech:machine_casing:1>, <gregtech:metal_casing:8>], 
	[<ore:plateTin>, <metaitem:battery.re.lv.lithium>, <ore:plateTin>]]);

	#Free runners
recipes.remove(<mekanism:freerunners>);
recipes.addShaped(<mekanism:freerunners>, 
	[[<ore:circuitMedium>, null, <ore:circuitMedium>],
	[<mekanism:reinforcedalloy>, <minecraft:iron_boots>, <mekanism:reinforcedalloy>], 
	[<metaitem:battery.re.lv.lithium>, <metaitem:battery.re.lv.lithium>, <metaitem:battery.re.lv.lithium>]]);

	#speed upgrades
recipes.remove(<mekanism:speedupgrade>);
recipes.addShaped(<mekanism:speedupgrade>, 
	[[null,<metaitem:plate.advanced.alloy>,null],
	[<ore:alloyAdvanced>,<ore:dustAluminium>,<ore:alloyAdvanced>], 
	[null,<metaitem:plate.advanced.alloy>,null]]);
		
	
	#resistive heater
recipes.remove(<mekanism:machineblock3:4>);
recipes.addShaped(<mekanism:machineblock3:4>, 
	[[<ore:plateTin>, <ore:cableGtSingleRedAlloy>, <ore:plateTin>],
	[<ore:cableGtSingleRedAlloy>, <gregtech:machine_casing:1>, <ore:cableGtSingleRedAlloy>], 
	[<ore:plateTin>, <metaitem:battery.re.lv.sodium>, <ore:plateTin>]]);
	
	#evaperation valve
recipes.remove(<mekanism:basicblock:15>);
recipes.addShaped(<mekanism:basicblock:15>, 
	[[null,<mekanism:basicblock2>,],
	[<mekanism:basicblock2>,<ore:circuitLow>,<mekanism:basicblock2>], 
	[null,<mekanism:basicblock2>,null]]);
	
	#Thermal evaporation blocks
recipes.remove(<mekanism:basicblock2>);
assembler.recipeBuilder()
	.inputs(<ore:plateSteel>*2,<ore:frameGtBronze>)
    .outputs([<mekanism:basicblock2>])
    .duration(400)
    .EUt(24)
    .buildAndRegister();
	
	#Thermal Evaporation controller
recipes.remove(<mekanism:basicblock:14>);
recipes.addShaped(<mekanism:basicblock:14>, [
	[<ore:circuitLow>, <mekanism:basicblock:10>, <ore:circuitLow>],
	[<mekanism:basicblock2>, <gregtech:machine:501>, <mekanism:basicblock2>], 
	[<mekanism:basicblock2>, <mekanism:basicblock2>, <mekanism:basicblock2>]]);
	
	
	#ultimate alloy
	assembler.recipeBuilder()
    .inputs(<ore:foilChrome>*2, <ore:alloyElite>)
	.fluidInputs([<liquid:polytetrafluoroethylene> * 144])
    .outputs([<mekanism:atomicalloy>])
    .duration(1500)
    .EUt(150)
    .buildAndRegister();
	
	#refined obsidian
blast_furnace.recipeBuilder()
    .inputs(<ore:dustObsidian>*4, <ore:dustStellarAlloy>)
    .fluidInputs([<liquid:helium> * 500])
    .outputs(<mekanism:ingot>)
    .property("temperature", 3600)
    .duration(220)
    .EUt(480)
    .buildAndRegister();	

	#refined glowstone
blast_furnace.recipeBuilder()
    .inputs(<ore:dustGlowstone>*4, <ore:dustSmallOsmium>)
    .fluidInputs([<liquid:helium> * 500])
    .outputs(<mekanism:ingot:3>)
    .property("temperature", 3600)
    .duration(220)
    .EUt(480)
    .buildAndRegister();	

	
	#Reinforcd alloy
assembler.recipeBuilder()
    .inputs(<ore:dustDiamond>, <ore:alloyAdvanced>)
	.fluidInputs([<liquid:rubber> * 144])
    .outputs([<mekanism:reinforcedalloy>])
    .duration(1500)
    .EUt(48)
    .buildAndRegister();
	
	#pump
recipes.remove(<mekanism:machineblock:12>);
recipes.addShaped(<mekanism:machineblock:12>, [
	[<mekanism:enrichedalloy>, <metaitem:electric.pump.lv>, <mekanism:enrichedalloy>],
	[<metaitem:electric.pump.lv>, <gregtech:machine:501>, <metaitem:electric.pump.lv>], 
	[<ore:pipeMediumSteel>, <metaitem:electric.pump.lv>, <ore:pipeMediumSteel>]]);	
	
	#Dynamic glass
recipes.remove(<mekanism:basicblock:10>);
aSmelter.recipeBuilder()
    .inputs(<gtadditions:ga_transparent_casing>, <ore:plateSteel>)
    .outputs([<mekanism:basicblock:10> * 4])
    .duration(800)
    .EUt(3)
    .buildAndRegister();
	
	val oreDictOsmium = <ore:ingotOsmium>;
oreDictOsmium.remove(<mekanism:ingot:1>);

	#Bin Removal
mods.jei.JEI.removeAndHide(<mekanism:basicblock:6>);

	#Cardboard Box
recipes.remove(<mekanism:cardboardbox>);
mods.bloodmagic.BloodAltar.addRecipe(<mekanism:cardboardbox>, <thermalfoundation:material:800>, 4, 10000, 10, 2);

	#Furnace removal
mods.jei.JEI.removeAndHide(<mekanism:machineblock:10>);

	#Factory Crafting Removal
var factoryDisabled as IItemStack[] = [
	<mekanism:machineblock:5>.withTag({recipeType: 0}),
	<mekanism:machineblock:5>.withTag({recipeType: 1}),
	<mekanism:machineblock:5>.withTag({recipeType: 2}),
	<mekanism:machineblock:5>.withTag({recipeType: 3}),
	<mekanism:machineblock:5>.withTag({recipeType: 4}),
	<mekanism:machineblock:5>.withTag({recipeType: 5}),
	<mekanism:machineblock:5>.withTag({recipeType: 6}),
	<mekanism:machineblock:5>.withTag({recipeType: 7}),
	<mekanism:machineblock:7>.withTag({recipeType: 2}),
	<mekanism:machineblock:5>.withTag({recipeType: 0}),
	<mekanism:machineblock:7>.withTag({recipeType: 7}),
	<mekanism:machineblock:7>.withTag({recipeType: 6}),
	<mekanism:machineblock:7>.withTag({recipeType: 5}),
	<mekanism:machineblock:7>.withTag({recipeType: 4}),
	<mekanism:machineblock:7>.withTag({recipeType: 3}),
	<mekanism:machineblock:7>.withTag({recipeType: 2}),
	<mekanism:machineblock:7>.withTag({recipeType: 1}),
	<mekanism:machineblock:7>.withTag({recipeType: 0}),	
	<mekanism:machineblock:6>.withTag({recipeType: 0}),
	<mekanism:machineblock:6>.withTag({recipeType: 1}),
	<mekanism:machineblock:6>.withTag({recipeType: 2}),
	<mekanism:machineblock:6>.withTag({recipeType: 3}),
	<mekanism:machineblock:6>.withTag({recipeType: 4}),
	<mekanism:machineblock:6>.withTag({recipeType: 5}),
	<mekanism:machineblock:6>.withTag({recipeType: 6}),
	<mekanism:machineblock:6>.withTag({recipeType: 7})];

for i in factoryDisabled {
	mods.jei.JEI.removeAndHide(i);
}

	#Induction/Energy Cube removal/bins/tanks
var generalDisabled as IItemStack[] = [
	<mekanism:energycube>,
	<mekanism:basicblock2:1>,   
	<mekanism:basicblock2:3>,   // induction blocks
	<mekanism:basicblock2:4>,   
	<mekanism:machineblock3:5>, // Forumlaic Assembler
	<mekanism:machineblock2:7>,
	<mekanism:machineblock2:1>, 
	<mekanism:machineblock2:2>, 
	<mekanism:machineblock2:3>, // Ore Processing Machines
	<mekanism:machineblock2:6>, 
	<mekanism:machineblock2:8>,
	<mekanism:machineblock:2>, //combiner
	<mekanism:machineblock:1>, //osmium compressor
	<mekanism:basicblock2:5>,	
	<mekanism:basicblock2:7>,
	<mekanism:basicblock:6>.withTag({tier: 0, mekData: {}}),
	<mekanism:basicblock:6>.withTag({tier: 1, mekData: {}}),
	<mekanism:basicblock:6>.withTag({tier: 2, mekData: {}}),
	<mekanism:basicblock:6>.withTag({tier: 3, mekData: {}}),
	<mekanism:basicblock:6>.withTag({tier: 4, mekData: {}}),
	<mekanism:basicblock2:8>,
	<mekanism:machineblock2:11>.withTag({tier: 0, mekData: {}}),
	<mekanism:machineblock2:11>.withTag({tier: 1, mekData: {}}),
	<mekanism:machineblock2:11>.withTag({tier: 2, mekData: {}}),
	<mekanism:machineblock2:11>.withTag({tier: 3, mekData: {}}),
	<mekanism:machineblock2:11>.withTag({tier: 4, mekData: {}}),
	<mekanism:transmitter>, // universal cables
	
];

for i in generalDisabled {
	mods.jei.JEI.removeAndHide(i);
}

var energyBlocksHidden as IItemStack[] = [
<mekanism:basicblock2:2>,
<mekanism:basicblock2:3>.withTag({tier: 1, mekData: {}}),
<mekanism:basicblock2:3>.withTag({tier: 2, mekData: {}}),
<mekanism:basicblock2:3>.withTag({tier: 3, mekData: {}}),
<mekanism:basicblock2:4>.withTag({tier: 1}),
<mekanism:basicblock2:4>.withTag({tier: 2}),
<mekanism:basicblock2:4>.withTag({tier: 3}),
<mekanism:energycube>.withTag({tier: 0, mekData: {energyStored: 2000000.0}}),
<mekanism:energycube>.withTag({tier: 1, mekData: {}}),
<mekanism:energycube>.withTag({tier: 1, mekData: {energyStored: 8000000.0}}),
<mekanism:energycube>.withTag({tier: 2, mekData: {}}),
<mekanism:energycube>.withTag({tier: 2, mekData: {energyStored: 3.2E7}}),
<mekanism:energycube>.withTag({tier: 3, mekData: {}}),
<mekanism:energycube>.withTag({tier: 3, mekData: {energyStored: 1.28E8}}),
<mekanism:energycube>.withTag({tier: 4, mekData: {}}),
<mekanism:energycube>.withTag({tier: 4, mekData: {energyStored: 1.7976931348623157E308}})
];

for i in energyBlocksHidden {
	mods.jei.JEI.hide(i);
}

#energy tablet removals
recipes.remove(<mekanism:atomicdisassembler>);
recipes.remove(<mekanism:electricbow>);
recipes.remove(<mekanism:machineblock:14>);
recipes.remove(<mekanism:networkreader>);
recipes.remove(<mekanism:portableteleporter>);
recipes.remove(<mekanism:robit>);
recipes.remove(<mekanism:robit>);
recipes.remove(<mekanism:robit>);
recipes.remove(<mekanism:robit>);
recipes.remove(<mekanism:seismicreader>);
recipes.remove(<mekanism:seismicreader>);

recipes.addShaped(<mekanism:atomicdisassembler>, 
[[<ore:plateAluminium>, <ore:circuitLow>, <ore:plateAluminium>],
[<mekanism:reinforcedalloy>, <thermalfoundation:material:640>, <mekanism:reinforcedalloy>], 
[<ore:plateAluminium>, <metaitem:battery.re.mv.lithium>, <ore:plateAluminium>]]);

recipes.addShaped(<mekanism:electricbow>, 
[[<ore:stickSteel>, <mekanism:enrichedalloy>, <minecraft:string>],
[<metaitem:battery.re.mv.lithium>, null, <minecraft:string>], 
[<ore:stickSteel>, <mekanism:enrichedalloy>, <minecraft:string>]]);

recipes.addShaped(<mekanism:machineblock:14>, 
[[null, <metaitem:battery.re.mv.lithium>, null],
[<enderio:block_painted_pressure_plate:5>, <enderio:block_painted_pressure_plate:5>, <enderio:block_painted_pressure_plate:5>], 
[<ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>]]);

recipes.addShaped(<mekanism:networkreader>, 
[[null, <minecraft:glass>, null],
[<mekanism:enrichedalloy>, <ore:batterySodiumSmall>, <mekanism:enrichedalloy>], 
[null, <ore:plateSteel>, null]]);

recipes.addShaped(<mekanism:portableteleporter>, 
[[null, <metaitem:battery.re.mv.lithium>, null],
[<ore:circuitLow>, <mekanism:atomicalloy>, <ore:circuitLow>], 
[null, <metaitem:battery.re.mv.lithium>, null]]);

recipes.addShaped(<mekanism:robit>, 
[[null, <ore:plateSteel>, null],
[<metaitem:battery.re.lv.lithium>, <mekanism:atomicalloy>, <metaitem:battery.re.lv.lithium>], 
[<mekanism:ingot>, <mekanism:machineblock:13>, <mekanism:ingot>]]);

recipes.addShaped(<mekanism:seismicreader>, 
[[<ore:plateSteel>, <minecraft:dye:4>, <ore:plateSteel>],
[<ore:plateSteel>, <ore:batterySodiumSmall>, <ore:plateSteel>], 
[<ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>]]);


print("----------------Mekanism End-------------------");