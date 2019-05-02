#priority 998
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.zenstages.ZenStager;
import mods.zenstages.Stage;

#This script is for declaring all global variables and to set up AN ACCURATE NAMING CONVENTION.

	#Blocks
global blockDragonstone as IItemStack = <botania:storage:4>;
global blockManadiamond as IItemStack = <botania:storage:3>;
global blockElementium as IItemStack = <botania:storage:2>;
global blockTerrasteel as IItemStack = <botania:storage:1>;
global blockManasteel as IItemStack = <botania:storage>;
global blockAluminium as IItemStack = <gregtech:compressed_0>;

	#cells
global cellSteel as IItemStack = <gregtech:meta_item_1:32405>;
global cellTungsten as IItemStack = <gregtech:meta_item_1:32406>;
	
	#Circuit
global integratedCircuit as IItemStack = <gregtech:meta_item_1:32766>;


	#Dust
#enderium
global dustGTEnderium as IItemStack = <gregtech:meta_item_1:2800>;
global dustGTLumium as IItemStack = <gregtech:meta_item_1:2811>;
global dustGTSignalum as IItemStack = <gregtech:meta_item_1:2801>;
global dustGTThaumium as IItemStack = <gregtech:meta_item_1:2802>;
global dustGTSalt as IItemStack = <gregtech:meta_item_1:2155>;
global dustGTStarMetal as IItemStack = <gregtech:meta_item_1:2804>;
global dustGTWheat as IItemStack = <gregtech:meta_item_1:2345>;

	#Dust - Tiny

	#Dust - Small

	#ingot
global ingotGTEnderium as IItemStack = <gregtech:meta_item_1:10800>;
global ingotGTLumium as IItemStack = <gregtech:meta_item_1:10811>;	
global ingotGTSignalum as IItemStack = <gregtech:meta_item_1:10801>;
global ingotGTPigIron as IItemStack = <gregtech:meta_item_1:10140>;
global ingotGTThaumium as IItemStack = <gregtech:meta_item_1:10802>;
global ingotGTStellarAlloy as IItemStack = <gregtech:meta_item_1:10803>;
global ingotGTManasteel as IItemStack = <gregtech:meta_item_1:10805>;
global ingotGTTerrasteel as IItemStack = <gregtech:meta_item_1:10807>;
global ingotGTElementium as IItemStack = <gregtech:meta_item_1:10806>;
global ingotGTBrass as IItemStack = <gregtech:meta_item_1:10094>;
global ingotGTStarmetal as IItemStack = <gregtech:meta_item_1:10804>;

	#gems
global gemCertus as IItemStack = <gregtech:meta_item_1:8202>;	

	#Plate
global plateGTThaumium as IItemStack = <gregtech:meta_item_1:12802>;
global plateGTBrass as IItemStack = <gregtech:meta_item_1:12094>;

	#Pumps
global pumpLV as IItemStack= <metaitem:electric.pump.lv>;
global pumpMV as IItemStack= <metaitem:electric.pump.mv>;
global pumpHV as IItemStack= <metaitem:electric.pump.hv>;
global pumpEV as IItemStack= <metaitem:electric.pump.ev>;
global pumpIV as IItemStack= <metaitem:electric.pump.iv>;
global pumpLuV as IItemStack= <metaitem:electric.pump.luv>;
global pumpZPM as IItemStack= <metaitem:electric.pump.zpm>;
global pumpUV as IItemStack= <metaitem:electric.pump.uv>;

	#misc
global batterySmallSodium as IItemStack = <metaitem:battery.re.lv.sodium>;
global compressedClay as IItemStack = <metaitem:compressed.fireclay>;
global fluidFilter as IItemStack = <metaitem:fluid_filter>;
global itemFilter as IItemStack = <metaitem:item_filter>;
global oreDictionaryFilter as IItemStack = <metaitem:ore_dictionary_filter>;
global woodenFormBrick as IItemStack = <metaitem:wooden_form.brick>;

	#Motor
global motorLV as IItemStack= <metaitem:electric.motor.lv>;
global motorMV as IItemStack= <metaitem:electric.motor.mv>;
global motorHV as IItemStack= <metaitem:electric.motor.hv>;
global motorEV as IItemStack= <metaitem:electric.motor.ev>;
global motorIV as IItemStack= <metaitem:electric.motor.iv>;
global motorLuV as IItemStack= <metaitem:electric.motor.luv>;
global motorZPM as IItemStack= <metaitem:electric.motor.zpm>;
global motorUV as IItemStack= <metaitem:electric.motor.uv>;

	#nugget
global nuggetGTEnderium	as IItemStack = <gregtech:meta_item_1:9800>;
global nuggetGTLumium as IItemStack = <gregtech:meta_item_1:9811>;
global nuggetGTSignalum as IItemStack = <gregtech:meta_item_1:9801>;
global nuggetGTThaumium as IItemStack = <gregtech:meta_item_1:9802>;
global nuggetGTManasteel as IItemStack = <gregtech:meta_item_1:9805>;
global nuggetGTTerrasteel as IItemStack = <gregtech:meta_item_1:9807>;
global nuggetGTElementium as IItemStack = <gregtech:meta_item_1:9806>;

	#Robot Arm
global robotArmMV as IItemStack = <metaitem:robot.arm.mv>;

	#staging
static mobStagePeaceful as Stage = ZenStager.getStage("mobpeaceful");
static mobStageOverworld as Stage = ZenStager.getStage("moboverworld");
static mobStageBronze as Stage = ZenStager.getStage("mobbronze");
static mobStageNether as Stage = ZenStager.getStage("mobnether");
static mobStageSpace as Stage = ZenStager.getStage("mobspace");
static mobStageNever as Stage = ZenStager.getStage("mobnever");	

	#Tools - Crafting
global craftingToolHardHammer as IItemStack = <gregtech:meta_tool:6>;
global craftingToolFile as IItemStack = <gregtech:meta_tool:9>;
global craftingToolScrewdriver as IIngredient = <gregtech:meta_tool:11> | <gregtech:meta_tool:34>;
global craftingToolMortar as IItemStack = <gregtech:meta_tool:12>;
global craftingToolKnife as IItemStack = <gregtech:meta_tool:17>;
global craftingToolWrench as IIngredient = <gregtech:meta_tool:8> | <gregtech:meta_tool:29> | <gregtech:meta_tool:30> | <gregtech:meta_tool:31>; 
global craftingToolSaw as IIngredient = <gregtech:meta_tool:5> | <gregtech:meta_tool:26> | <gregtech:meta_tool:27> | <gregtech:meta_tool:28>;

	#skystone
global skyStoneBlock as IItemStack = <gregtech:compressed_17:7>;