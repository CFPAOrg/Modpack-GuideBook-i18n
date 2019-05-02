import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.artisanworktables.builder.RecipeBuilder;
import mods.gregtech.recipe.RecipeMap;


print("---------------Integrated Dynamics Start------------------");
val solidifier = mods.gregtech.recipe.RecipeMap.getByName("fluid_solidifier");
val centrifuge = mods.gregtech.recipe.RecipeMap.getByName("centrifuge");
val assembler = mods.gregtech.recipe.RecipeMap.getByName("assembler");
val chemicalBath = mods.gregtech.recipe.RecipeMap.getByName("chemical_bath");
val wiremill = mods.gregtech.recipe.RecipeMap.getByName("wiremill");

	#Fluid Interface
recipes.remove(<integratedtunnels:part_interface_fluid_item>);
assembler.recipeBuilder()
	.inputs([<appliedenergistics2:fluid_interface>, <integrateddynamics:cable>*4])
	.outputs(<integratedtunnels:part_interface_fluid_item>*4)
	.EUt(1920)
	.duration(40)
	.buildAndRegister();

	#Fluid Exporter
recipes.remove(<integratedtunnels:part_exporter_fluid_item>);
recipes.addShapeless(<integratedtunnels:part_exporter_fluid_item>, [<integratedtunnels:part_importer_fluid_item>]);

	#Fluid Importer
recipes.remove(<integratedtunnels:part_importer_fluid_item>);
assembler.recipeBuilder()
	.inputs([<integratedtunnels:part_interface_fluid_item>, <translocators:translocator_part:1>])
	.outputs(<integratedtunnels:part_importer_fluid_item>)
	.EUt(1920)
	.duration(40)
	.buildAndRegister();
recipes.addShapeless(<integratedtunnels:part_importer_fluid_item>, [<integratedtunnels:part_exporter_fluid_item>]);

	#Item Interface
recipes.remove(<integratedtunnels:part_interface_item_item>);
assembler.recipeBuilder()
	.inputs([<appliedenergistics2:interface>, <integrateddynamics:cable>*4])
	.outputs(<integratedtunnels:part_interface_item_item>*4)
	.EUt(1920)
	.duration(40)
	.buildAndRegister();

	#Item Importer / Exporter
recipes.remove(<integratedtunnels:part_exporter_item_item>);
recipes.addShapeless(<integratedtunnels:part_exporter_item_item>, [<integratedtunnels:part_importer_item_item>]);

	#Item Importer
recipes.remove(<integratedtunnels:part_importer_item_item>);
assembler.recipeBuilder()
	.inputs([<integratedtunnels:part_interface_item_item>, <translocators:translocator_part>])
	.outputs(<integratedtunnels:part_importer_item_item>)
	.EUt(1920)
	.duration(40)
	.buildAndRegister();
recipes.addShapeless(<integratedtunnels:part_importer_item_item>, [<integratedtunnels:part_exporter_item_item>]);

	#Logic Cable
wiremill.recipeBuilder()
	.inputs(<integrateddynamics:crystalized_menril_chunk>*2)
	.outputs(<integrateddynamics:cable>)
	.EUt(16)
	.duration(160)
	.buildAndRegister();

	#Logic Director
recipes.remove(<integrateddynamics:logic_director>);
recipes.addShaped(<integrateddynamics:logic_director> * 4, [
	[null, <integrateddynamics:cable>, <integrateddynamics:cable>],
	[<integrateddynamics:cable>, <ore:plateTitanium>, null],
	[null, <integrateddynamics:cable>, null]]);

	#menril block
solidifier.recipeBuilder()
    .fluidInputs([<liquid:menrilresin> * 1000])
	.notConsumable(<metaitem:shape.mold.block>)
	.outputs(<integrateddynamics:crystalized_menril_block>)
	.duration(300)
	.EUt(14)
	.buildAndRegister();

	#Menril Log - Enriched
mods.botania.ManaInfusion.addInfusion(<integrateddynamics:menril_log>, <thaumcraft:log_silverwood>, 2000);

	#Menril sapling
mods.botania.ManaInfusion.addInfusion(<integrateddynamics:menril_sapling>, <thaumcraft:sapling_silverwood>, 10000);

	#Machine Reader
recipes.remove(<integrateddynamics:part_machine_reader_item>);
assembler.recipeBuilder()
	.inputs([<integrateddynamics:variable_transformer:1>, <ore:circuitMedium>])
	.fluidInputs([<liquid:menrilresin> * 1000])
	.outputs([<integrateddynamics:part_machine_reader_item>])
	.duration(200)
	.EUt(120)
	.buildAndRegister();


	#Machine Writer
recipes.remove(<integrateddynamics:part_machine_writer_item>);
assembler.recipeBuilder()
	.inputs([<integrateddynamics:variable_transformer>, <ore:circuitMedium>])
	.fluidInputs([<liquid:menrilresin> * 1000])
	.outputs([<integrateddynamics:part_machine_writer_item>])
	.duration(200)
	.EUt(120)
	.buildAndRegister();

	#Menril resin
centrifuge.recipeBuilder()
	.inputs(<ore:crystalMenril> * 1)
	.fluidOutputs([<liquid:menrilresin> * 250, <liquid:methane> * 80])
	.chancedOutput(<ore:dustCarbon>.firstItem, 2500)
	.chancedOutput(<metaitem:plant_ball>, 3750)
	.outputs(<ore:dustWood>.firstItem)
	.duration(150)
	.EUt(18)
	.buildAndRegister();
	
	#Variable Card
recipes.removeByRecipeName("integrateddynamics:variable");
chemicalBath.recipeBuilder()
	.inputs(<ore:paper>.firstItem)
	.fluidInputs(<liquid:menrilresin> * 100)
	.outputs(<integrateddynamics:variable>)
	.EUt(30)
	.duration(720)
	.buildAndRegister();

	#Variable Transformer - Input
recipes.remove(<integrateddynamics:variable_transformer:1>);
recipes.addShapeless(<integrateddynamics:variable_transformer:1>, [<integrateddynamics:variable_transformer>]);
assembler.recipeBuilder()
	.inputs([<integrateddynamics:variable>, <ore:circuitLow>])
	.outputs(<integrateddynamics:variable_transformer:1>)
	.EUt(16)
	.duration(80)
	.buildAndRegister();

	#Variable Transformer - Output
recipes.remove(<integrateddynamics:variable_transformer>);
recipes.addShapeless(<integrateddynamics:variable_transformer>, [<integrateddynamics:variable_transformer:1>]);

	#World Block Exporter
recipes.remove(<integratedtunnels:part_exporter_world_block_item>);
recipes.addShaped(<integratedtunnels:part_exporter_world_block_item>, [
	[null, <metaitem:conveyor.module.iv>, null],
	[<metaitem:electric.piston.iv>, <integratedtunnels:part_interface_item_item>, <metaitem:electric.piston.iv>],
	[null, <metaitem:conveyor.module.iv>, null]]);
recipes.addShapeless(<integratedtunnels:part_exporter_world_block_item>, [<integratedtunnels:part_importer_world_block_item>]);

	#World Block Importer
recipes.remove(<integratedtunnels:part_importer_world_block_item>);
recipes.addShapeless(<integratedtunnels:part_importer_world_block_item>, [<integratedtunnels:part_exporter_world_block_item>]);

	#World Energy Disabled
var worldEnergyDisabled as IItemStack[] = [
	<integratedtunnels:part_interface_energy_item>,
	<integratedtunnels:part_importer_energy_item>,
	<integratedtunnels:part_exporter_energy_item>,
	<integratedtunnels:part_importer_world_energy_item>,
	<integratedtunnels:part_exporter_world_energy_item>];

for i in worldEnergyDisabled {
	mods.jei.JEI.removeAndHide(i);
}

	#World Fluid Exporter
recipes.remove(<integratedtunnels:part_exporter_world_fluid_item>);
assembler.recipeBuilder()
	.inputs([<integratedtunnels:part_interface_fluid_item>, <appliedenergistics2:part:321>])
	.outputs(<integratedtunnels:part_exporter_world_fluid_item>)
	.EUt(1920)
	.duration(80)
	.buildAndRegister();

	#World Fluid Importer
recipes.remove(<integratedtunnels:part_importer_world_fluid_item>);
assembler.recipeBuilder()
	.inputs([<integratedtunnels:part_interface_fluid_item>, <appliedenergistics2:part:302>])
	.outputs(<integratedtunnels:part_importer_world_fluid_item>)
	.EUt(1920)
	.duration(80)
	.buildAndRegister();

	#World Item Exporter
recipes.remove(<integratedtunnels:part_exporter_world_item_item>);
assembler.recipeBuilder()
	.inputs([<integratedtunnels:part_interface_item_item>, <appliedenergistics2:part:320>])
	.outputs(<integratedtunnels:part_exporter_world_item_item>)
	.EUt(1920)
	.duration(80)
	.buildAndRegister();

	#World Item Importer
recipes.remove(<integratedtunnels:part_importer_world_item_item>);
assembler.recipeBuilder()
	.inputs([<integratedtunnels:part_interface_item_item>, <appliedenergistics2:part:300>])
	.outputs(<integratedtunnels:part_importer_world_item_item>)
	.EUt(1920)
	.duration(80)
	.buildAndRegister();



print("---------------Integrated Dynamics End------------------");