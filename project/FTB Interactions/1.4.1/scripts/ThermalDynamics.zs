import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.gregtech.recipe.RecipeMap;
import mods.thermalexpansion.Transposer;

print("---------------ThermalDynamics Start------------------");

val blast_furnace = mods.gregtech.recipe.RecipeMap.getByName("blast_furnace");
val assembler = mods.gregtech.recipe.RecipeMap.getByName("assembler");
val structureGlass = <mekanism:basicblock:10>;
val reinforcedAlloy = <ore:alloyElite>;
val mvMachineHull = <gregtech:machine:502>;
val alloyer = mods.gregtech.recipe.RecipeMap.getByName("alloy_smelter");
val servo = <thermalfoundation:material:512>;
val mixer = mods.gregtech.recipe.RecipeMap.getByName("mixer");
val chemReactor = mods.gregtech.recipe.RecipeMap.getByName("chemical_reactor");


	#removeUnused
var pipesDisabled as IItemStack[] = [	
	<thermaldynamics:duct_0:1>,
	<thermaldynamics:duct_0:7>,
	<thermaldynamics:duct_16:6>,
	<thermaldynamics:duct_16:7>,
	<thermaldynamics:duct_0:1>,
	<thermaldynamics:duct_0:2>,
	<thermaldynamics:duct_0:3>,
	<thermaldynamics:duct_0:4>,
	<thermaldynamics:duct_0:6>,
	<thermaldynamics:duct_0:7>,
	<thermaldynamics:duct_0:8>];

for i in pipesDisabled {
	mods.jei.JEI.removeAndHide(i);
}

var pipesDisabledNBT as IItemStack[] = [
	<thermaldynamics:duct_32>.withTag({DenseType: 1 as byte}),
	<thermaldynamics:duct_32>.withTag({DenseType: 2 as byte}),
	<thermaldynamics:duct_32:1>.withTag({DenseType: 2 as byte}),
	<thermaldynamics:duct_32:2>.withTag({DenseType: 2 as byte}),
	<thermaldynamics:duct_32:3>.withTag({DenseType: 2 as byte}),
	<thermaldynamics:duct_32:4>.withTag({DenseType: 2 as byte}),
	<thermaldynamics:duct_32:5>.withTag({DenseType: 2 as byte}),
	<thermaldynamics:duct_32:6>.withTag({DenseType: 2 as byte}),
	<thermaldynamics:duct_32:7>.withTag({DenseType: 2 as byte}),
	<thermaldynamics:duct_32:1>.withTag({DenseType: 1 as byte}),
	<thermaldynamics:duct_32:2>.withTag({DenseType: 1 as byte}),
	<thermaldynamics:duct_32:3>.withTag({DenseType: 1 as byte}),
	<thermaldynamics:duct_32:4>.withTag({DenseType: 1 as byte}),
	<thermaldynamics:duct_32:5>.withTag({DenseType: 1 as byte}),
	<thermaldynamics:duct_32:6>.withTag({DenseType: 1 as byte}),
	<thermaldynamics:duct_32:7>.withTag({DenseType: 1 as byte})
];

for i in pipesDisabled {
	mods.jei.JEI.removeAndHide(i, true);
}
	
	#filter
	recipes.remove(<thermaldynamics:filter>);
	recipes.remove(<thermaldynamics:filter:4>);
	recipes.remove(<thermaldynamics:filter:3>);
	recipes.remove(<thermaldynamics:filter:2>);
	recipes.remove(<thermaldynamics:filter:1>);
	
	recipes.addShaped(<thermaldynamics:filter>,
	[[null, null, null],
	[<ore:wireFineIron>, <minecraft:glass>, <ore:wireFineIron>], 
	[<ore:plateTinAlloy>, <minecraft:paper>, <ore:plateTinAlloy>]]);
	
	recipes.addShaped(<thermaldynamics:filter:4>, 
	[[null, null, null],
	[<ore:plateEnderium>, <thermaldynamics:filter:3>, <ore:plateEnderium>], 
	[null, null, null]]);
	
	recipes.addShaped(<thermaldynamics:filter:3>,
	[[null, null, null],
	[<ore:plateSignalum>, <thermaldynamics:filter:2>, <ore:plateSignalum>], 
	[null, null, null]]);
	
	recipes.addShaped(<thermaldynamics:filter:2>,
	[[null, null, null],[<ore:plateElectrum>, <thermaldynamics:filter:1>, <ore:plateElectrum>], 
	[null, null, null]]);
	
	recipes.addShaped(<thermaldynamics:filter:1>, 
	[[null, null, null],[<ore:plateInvar>, <thermaldynamics:filter>, <ore:plateInvar>],
	[null, null, null]]);
	
	#FluidDucts
	recipes.remove(<thermaldynamics:duct_16:2>);
	recipes.remove(<thermaldynamics:duct_16:3>);
	recipes.remove(<thermaldynamics:duct_16:1>);
	recipes.remove(<thermaldynamics:duct_16>);
	recipes.remove(<thermaldynamics:duct_0>);

	recipes.addShaped(<thermaldynamics:duct_16:2> * 6, 
	[[<thermaldynamics:duct_16:3>, <thermaldynamics:duct_16:3>, <thermaldynamics:duct_16:3>],
	[<thermaldynamics:duct_16:3>, <thermaldynamics:duct_16:3>, <thermaldynamics:duct_16:3>], 
	[<mekanism:basicblock:10>, null, null]]);

	recipes.addShaped(<thermaldynamics:duct_16:3> * 6, 
	[[<thermaldynamics:duct_16:2>, <thermaldynamics:duct_16:2>, <thermaldynamics:duct_16:2>],
	[<thermaldynamics:duct_16:2>, <thermaldynamics:duct_16:2>, <thermaldynamics:duct_16:2>], 
	[<ore:plateInvar>, null, null]]);

	recipes.addShaped(<thermaldynamics:duct_16:2> * 6, 
	[[<gregtech:fluid_pipe:1184>, <ore:plateInvar>, <gregtech:fluid_pipe:1184>],
	[<mekanism:basicblock:10>, <mekanism:basicblock:10>, <mekanism:basicblock:10>], 
	[<gregtech:fluid_pipe:1184>, <ore:plateInvar>, <gregtech:fluid_pipe:1184>]]);

	recipes.addShaped(<thermaldynamics:duct_16:3> * 6, 
	[[<gregtech:fluid_pipe:1184>, <mekanism:basicblock:10>, <gregtech:fluid_pipe:1184>],
	[<ore:plateInvar>, <mekanism:basicblock:10>, <ore:plateInvar>], 
	[<gregtech:fluid_pipe:1184>, <mekanism:basicblock:10>, <gregtech:fluid_pipe:1184>]]);

	recipes.addShaped(<thermaldynamics:duct_16> * 6, 
	[[<thermaldynamics:duct_16:1>, <thermaldynamics:duct_16:1>, <thermaldynamics:duct_16:1>],
	[<thermaldynamics:duct_16:1>, <thermaldynamics:duct_16:1>, <thermaldynamics:duct_16:1>], 
	[<minecraft:glass>, null, null]]);

	recipes.addShaped(<thermaldynamics:duct_16:1> * 6, 
	[[<thermaldynamics:duct_16>, <thermaldynamics:duct_16>, <thermaldynamics:duct_16>],
	[<thermaldynamics:duct_16>, <thermaldynamics:duct_16>, <thermaldynamics:duct_16>], 
	[<ore:plateLead>, null, null]]);

	recipes.addShaped(<thermaldynamics:duct_16:1> * 6, 
	[[<ore:pipeSmallBronze>, <ore:plateLead>, <ore:pipeSmallBronze>],
	[<minecraft:glass>, <minecraft:glass>, <minecraft:glass>], 
	[<ore:pipeSmallBronze>, <ore:plateLead>, <ore:pipeSmallBronze>]]);

	recipes.addShaped(<thermaldynamics:duct_16> * 6, 
	[[<ore:pipeSmallBronze>, <minecraft:glass>, <ore:pipeSmallBronze>],
	[<ore:plateLead>, <minecraft:glass>, <ore:plateLead>], 
	[<ore:pipeSmallBronze>, <minecraft:glass>, <ore:pipeSmallBronze>]]);

	recipes.addShaped(<thermaldynamics:duct_0> * 6, 
	[[<ore:cableGtSingleRedAlloy>, <ore:plateLead>, <ore:cableGtSingleRedAlloy>],
	[<ore:cableGtSingleRedAlloy>, <minecraft:glass>, <ore:cableGtSingleRedAlloy>], 
	[<ore:cableGtSingleRedAlloy>, <ore:plateLead>, <ore:cableGtSingleRedAlloy>]]);

	#cryoflux
	recipes.remove(<thermaldynamics:duct_0:5>);
	recipes.remove(<thermaldynamics:duct_0:9>);
	mods.thermalexpansion.Transposer.removeFillRecipe(<thermaldynamics:duct_0:9>, <liquid:cryotheum>);
	recipes.addShaped(<thermaldynamics:duct_0:9> * 8, 
	[[<thermalfoundation:glass_alloy:1>, <thermalfoundation:glass_alloy:1>, <thermalfoundation:glass_alloy:1>],
	[<ore:plateEnderium>, <ore:wireGtSingleSuperconductor>, <ore:plateEnderium>], 
	[<thermalfoundation:glass_alloy:1>, <thermalfoundation:glass_alloy:1>, <thermalfoundation:glass_alloy:1>]]);

	assembler.recipeBuilder()
    .inputs(<thermaldynamics:duct_0:9>)
	.fluidInputs([<liquid:cryotheum> * 144])
    .outputs([<thermaldynamics:duct_0:5>])
    .duration(400)
    .EUt(48)
    .buildAndRegister();	
	
	#Signalum fluxduct
	recipes.remove(<thermaldynamics:duct_16:5>);
	recipes.remove(<thermaldynamics:duct_16:4>);
	assembler.recipeBuilder()
    .inputs(<ore:plateSignalum>, <ore:foilRedAlloy> *3, <ore:plateInvar> *3)
	.fluidInputs([<liquid:redstone> * 288])
    .outputs([<thermaldynamics:duct_16:5>*3])
    .duration(200)
    .EUt(14)
    .buildAndRegister();

	assembler.recipeBuilder()
    .inputs(<ore:plateSignalum>, <ore:foilRedAlloy> *3, <mekanism:basicblock:10> *3)
	.fluidInputs([<liquid:redstone> * 288])
    .outputs([<thermaldynamics:duct_16:4>*3])
    .duration(200)
    .EUt(14)
    .buildAndRegister();	
	
	
	#itemDucts
	recipes.remove(<thermaldynamics:duct_32:1>);
	recipes.remove(<thermaldynamics:duct_32>);
	
	recipes.addShaped(<thermaldynamics:duct_32:1> * 6, 
	[[<industrialforegoing:plastic>, <ore:plateTinAlloy>, <industrialforegoing:plastic>],
	[<mekanism:basicblock:10>, null, <mekanism:basicblock:10>], 
	[<industrialforegoing:plastic>, <ore:plateTinAlloy>, <industrialforegoing:plastic>]]);
	
	recipes.addShaped(<thermaldynamics:duct_32> * 6, 
	[[<industrialforegoing:plastic>, <mekanism:basicblock:10>, <industrialforegoing:plastic>],
	[<ore:plateTinAlloy>, null, <ore:plateTinAlloy>], 
	[<industrialforegoing:plastic>, <mekanism:basicblock:10>, <industrialforegoing:plastic>]]);

	#impulse itemDucts
	mods.thermalexpansion.Transposer.removeFillRecipe(<thermaldynamics:duct_32:1>, <liquid:glowstone>);
	mods.thermalexpansion.Transposer.removeFillRecipe(<thermaldynamics:duct_32>, <liquid:glowstone>);
	assembler.recipeBuilder()
    .inputs(<thermaldynamics:duct_32>)
	.fluidInputs([<liquid:glowstone> * 144])
    .outputs([<thermaldynamics:duct_32:2>])
    .duration(100)
    .EUt(48)
    .buildAndRegister();

	#impulse itemDucts
	assembler.recipeBuilder()
    .inputs(<thermaldynamics:duct_32:1>)
	.fluidInputs([<liquid:glowstone> * 144])
    .outputs([<thermaldynamics:duct_32:3>])
    .duration(100)
    .EUt(48)
    .buildAndRegister();
	
	#viaduct
	recipes.remove(<thermaldynamics:duct_64:3>);
	recipes.addShaped(<thermaldynamics:duct_64:3> * 4, 
	[[<ore:plateBronze>, <mekanism:basicblock:10>, <ore:plateBronze>],
	[<mekanism:basicblock:10>, null, <mekanism:basicblock:10>], 
	[<ore:plateBronze>, <mekanism:basicblock:10>, <ore:plateBronze>]]);
	
	mods.thermalexpansion.Transposer.removeFillRecipe(<thermaldynamics:duct_64:3>, <liquid:aerotheum>);
	assembler.recipeBuilder()
    .inputs(<thermaldynamics:duct_64:3>)
	.fluidInputs([<liquid:aerotheum> * 144])
    .outputs([<thermaldynamics:duct_64>])
    .duration(100)
    .EUt(14)
    .buildAndRegister();
	
	#long distance Viaduct
	recipes.remove(<thermaldynamics:duct_64:1>);
	recipes.addShaped(<thermaldynamics:duct_64:1> * 8, 
	[[<ore:plateLead>, <mekanism:basicblock:10>, <ore:plateLead>],
	[<mekanism:basicblock:10>, null, <mekanism:basicblock:10>],
	[<ore:plateLead>, <mekanism:basicblock:10>, <ore:plateLead>]]);
	
	mods.thermalexpansion.Transposer.removeFillRecipe(<thermaldynamics:duct_64>, <liquid:ender>);
	assembler.recipeBuilder()
    .inputs(<thermaldynamics:duct_64>)
	.fluidInputs([<liquid:ender> * 144])
    .outputs([<thermaldynamics:duct_64:2>])
    .duration(280)
    .EUt(48)
    .buildAndRegister();	
	
	#Signalum plated itemDucts
	recipes.remove(<thermaldynamics:duct_32:4>);
	assembler.recipeBuilder()
    .inputs(<ore:plateSignalum>,<mekanism:basicblock:10>, <ore:platePlastic>, <ore:plateTinAlloy> *2)
	.fluidInputs([<liquid:redstone> * 288])
    .outputs([<thermaldynamics:duct_32:4> * 3])
    .duration(280)
    .EUt(48)
    .buildAndRegister();	

	recipes.remove(<thermaldynamics:duct_32:5>);
	assembler.recipeBuilder()
    .inputs(<ore:plateSignalum>,<ore:plateSteel> *3, <ore:platePlastic>, <ore:plateTinAlloy> *2)
	.fluidInputs([<liquid:redstone> * 288])
    .outputs([<thermaldynamics:duct_32:5> * 3])
    .duration(280)
    .EUt(48)
    .buildAndRegister();	

	#Servos
	recipes.remove(<thermaldynamics:servo:4>);
	recipes.remove(<thermaldynamics:servo:3>);
	recipes.remove(<thermaldynamics:servo:2>);
	recipes.remove(<thermaldynamics:servo:1>);
	recipes.remove(<thermaldynamics:servo>);
	recipes.remove(<thermaldynamics:servo>);
	
	#basic
recipes.addShaped(<thermaldynamics:servo>, 
	[[null, null, null],
	[<ore:nuggetTin>, <industrialforegoing:conveyor_upgrade>, <ore:nuggetTin>],
	[<ore:plateIron>, <extrautils2:ingredients>, <ore:plateIron>]]);

recipes.addShapeless(<thermaldynamics:servo> * 2, [<metaitem:conveyor.module.lv>]);
	
	#hardened
assembler.recipeBuilder()
    .inputs(<thermaldynamics:servo>, <metaitem:electric.pump.lv>, <ore:plateInvar>*2)
	.fluidInputs([<liquid:redstone> * 144])
    .outputs([<thermaldynamics:servo:1>])
    .duration(100)
    .EUt(14)
    .buildAndRegister();

#Reinforced
assembler.recipeBuilder()
    .inputs(<thermaldynamics:servo:1>, <metaitem:electric.pump.lv>, <ore:plateElectrum>*2)
	.fluidInputs([<liquid:redstone> * 144])
    .outputs([<thermaldynamics:servo:2>])
    .duration(200)
    .EUt(14)
    .buildAndRegister();
	
#Signalum
assembler.recipeBuilder()
    .inputs(<thermaldynamics:servo:2>, <metaitem:electric.pump.mv>, <ore:plateSignalum>*2)
	.fluidInputs([<liquid:redstone> * 144])
    .outputs([<thermaldynamics:servo:3>])
    .duration(100)
    .EUt(48)
    .buildAndRegister();
	
#Enderium
assembler.recipeBuilder()
    .inputs(<thermaldynamics:servo:3>, <metaitem:electric.pump.hv>, <ore:plateEnderium>*2)
	.fluidInputs([<liquid:redstone> * 144])
    .outputs([<thermaldynamics:servo:4>])
    .duration(200)
    .EUt(48)
    .buildAndRegister();
	
	
	#retrievers
recipes.remove(<thermaldynamics:retriever>);	
recipes.addShapeless(<thermaldynamics:retriever>, 
	[<thermaldynamics:servo>,<minecraft:ender_eye>]);

recipes.remove(<thermaldynamics:retriever:1>);
recipes.addShapeless(<thermaldynamics:retriever:1>, 
	[<thermaldynamics:servo:1>,<minecraft:ender_eye>]);
assembler.recipeBuilder()
    .inputs(<thermaldynamics:retriever>, <metaitem:electric.pump.lv>, <ore:plateElectrum>*2)
	.fluidInputs([<liquid:redstone> * 144])
    .outputs([<thermaldynamics:retriever:1>])
    .duration(200)
    .EUt(14)
    .buildAndRegister();

recipes.remove(<thermaldynamics:retriever:2>);
recipes.addShapeless(<thermaldynamics:retriever:2>, 
	[<thermaldynamics:servo:2>,<minecraft:ender_eye>]);
assembler.recipeBuilder()
    .inputs(<thermaldynamics:retriever:1>, <metaitem:electric.pump.lv>, <ore:plateElectrum>*2)
	.fluidInputs([<liquid:redstone> * 144])
    .outputs([<thermaldynamics:retriever:2>])
    .duration(200)
    .EUt(14)
    .buildAndRegister();

recipes.remove(<thermaldynamics:retriever:3>);
recipes.addShapeless(<thermaldynamics:retriever:3>, 
	[<thermaldynamics:servo:3>,<minecraft:ender_eye>]);
assembler.recipeBuilder()
    .inputs(<thermaldynamics:retriever:2>, <metaitem:electric.pump.mv>, <ore:plateSignalum>*2)
	.fluidInputs([<liquid:redstone> * 144])
    .outputs([<thermaldynamics:retriever:3>])
    .duration(100)
    .EUt(48)
    .buildAndRegister();

recipes.remove(<thermaldynamics:retriever:4>);
recipes.addShapeless(<thermaldynamics:retriever:4>, 
	[<thermaldynamics:servo:4>,<minecraft:ender_eye>]);
assembler.recipeBuilder()
    .inputs(<thermaldynamics:retriever:3>, <metaitem:electric.pump.hv>, <ore:plateEnderium>*2)
	.fluidInputs([<liquid:redstone> * 144])
    .outputs([<thermaldynamics:retriever:4>])
    .duration(200)
    .EUt(48)
    .buildAndRegister();

	#redstone relay
recipes.remove(<thermaldynamics:relay>);
recipes.addShaped(<thermaldynamics:relay>, 
	[[null, null, null],
	[null, <ore:plateNetherQuartz>, null], 
	[<ore:plateLead>, <extrautils2:ingredients>, <ore:plateLead>]]);
		
print("----------------ThermalDynamics End-------------------");
