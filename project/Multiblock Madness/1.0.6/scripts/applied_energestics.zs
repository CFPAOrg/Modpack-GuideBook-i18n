import mods.appliedenergistics2.Inscriber;
import crafttweaker.item.IItemStack;
import mods.threng.Aggregator;
import mods.techreborn.blastFurnace;

print("==================== loading applied.zs ====================");
##########################################################################################

val itemstoRemove =
[
	<appliedenergistics2:interface>,
	<ae2stuff:inscriber>,
	<appliedenergistics2:inscriber>,
	<appliedenergistics2:drive>,
	<appliedenergistics2:quartz_growth_accelerator>,
	<appliedenergistics2:crafting_unit>,
	<appliedenergistics2:molecular_assembler>,
	<appliedenergistics2:material:41>,
	<appliedenergistics2:security_station>,
	<appliedenergistics2:chest>,
	<appliedenergistics2:condenser>,
	<appliedenergistics2:charger>,
	<appliedenergistics2:io_port>,
	<appliedenergistics2:spatial_io_port>,
	<extracells:part.base:7>,
	<appliedenergistics2:quantum_ring>,
	<threng:material:4>,
	<appliedenergistics2:material:52>,
	<packagedauto:packager>,
	<packagedauto:encoder>,
	<packagedauto:unpackager>,
	<packagedauto:packager_extension>,
	<threng:big_assembler>,
	<packagedauto:me_package_component>,
	<packagedauto:package_component>,
	<packagedauto:recipe_holder>,
	<appliedenergistics2:part:240>,
	<appliedenergistics2:part:260>,
	<appliedenergistics2:part:241>,
	<appliedenergistics2:part:240>,
	<appliedenergistics2:fluid_interface>,
]
 as IItemStack[];

for item in itemstoRemove {
	recipes.remove(item);
}



//normal crafting table recipe, might be to expensive
recipes.addShaped(<appliedenergistics2:controller>, [[<rockhounding_chemistry:alloy_parts:43>, <mekanism:controlcircuit:3>, <rockhounding_chemistry:alloy_parts:43>],[<advancedrocketry:ic:2>, <techreborn:part:1>, <enderutilities:enderpart:54>], [<rockhounding_chemistry:alloy_parts:43>, <rockhounding_chemistry:misc_items:10>, <rockhounding_chemistry:alloy_parts:43>]]);

//interface
recipes.addShaped(<appliedenergistics2:interface>, [[<thermalfoundation:material:324>, <appliedenergistics2:quartz_glass>, <thermalfoundation:material:324>],[<appliedenergistics2:material:44>, <techreborn:part:43>, <appliedenergistics2:material:43>], [<thermalfoundation:material:324>, <appliedenergistics2:quartz_glass>, <thermalfoundation:material:324>]]);
recipes.addShaped(<appliedenergistics2:interface> * 2, [[<rockhounding_chemistry:alloy_parts:10>, <appliedenergistics2:quartz_glass>, <rockhounding_chemistry:alloy_parts:10>],[<appliedenergistics2:material:44>, <techreborn:part:43>, <appliedenergistics2:material:43>], [<rockhounding_chemistry:alloy_parts:10>, <appliedenergistics2:quartz_glass>, <rockhounding_chemistry:alloy_parts:10>]]);
recipes.addShapeless(<appliedenergistics2:interface>, [<appliedenergistics2:part:440>]);

recipes.addShaped(<appliedenergistics2:fluid_interface>, [[<thermalfoundation:material:324>, <minecraft:dye:4>, <thermalfoundation:material:324>],[<appliedenergistics2:material:44>, <techreborn:part:43>, <appliedenergistics2:material:43>], [<thermalfoundation:material:324>, <minecraft:dye:4>, <thermalfoundation:material:324>]]);
recipes.addShaped(<appliedenergistics2:fluid_interface> * 2, [[<rockhounding_chemistry:alloy_parts:10>, <minecraft:dye:4>, <rockhounding_chemistry:alloy_parts:10>],[<appliedenergistics2:material:44>, <techreborn:part:43>, <appliedenergistics2:material:43>], [<rockhounding_chemistry:alloy_parts:10>, <minecraft:dye:4>, <rockhounding_chemistry:alloy_parts:10>]]);


//inscribers
recipes.addShaped(<ae2stuff:inscriber>, [[<moreplates:dark_steel_plate>, <minecraft:hopper>, <moreplates:dark_steel_plate>],[<threng:material:4>, <appliedenergistics2:inscriber>, <threng:material:4>], [<moreplates:dark_steel_plate>, <minecraft:hopper>, <moreplates:dark_steel_plate>]]);
recipes.addShapedMirrored(<appliedenergistics2:inscriber>, [[<enderio:item_alloy_ingot:6>, <minecraft:sticky_piston>, <enderio:item_alloy_ingot:6>],[<ore:gemFluix>, null, <enderio:item_alloy_ingot:6>], [<enderio:item_alloy_ingot:6>, <minecraft:sticky_piston>, <enderio:item_alloy_ingot:6>]]);

//drives
recipes.addShaped(<appliedenergistics2:drive>, [[<thermalfoundation:material:324>, <appliedenergistics2:part:16>, <thermalfoundation:material:324>],[<appliedenergistics2:material:24>, null, <appliedenergistics2:material:24>], [<thermalfoundation:material:324>, <appliedenergistics2:part:16>, <thermalfoundation:material:324>]]);
recipes.addShaped(<appliedenergistics2:drive> * 2, [[<rockhounding_chemistry:alloy_parts:10>, <appliedenergistics2:part:16>, <rockhounding_chemistry:alloy_parts:10>],[<appliedenergistics2:material:24>, null, <appliedenergistics2:material:24>], [<rockhounding_chemistry:alloy_parts:10>, <appliedenergistics2:part:16>, <rockhounding_chemistry:alloy_parts:10>]]);
recipes.addShapeless(<extracells:part.base:7>, [<appliedenergistics2:drive:*>, <thermalfoundation:material:132>,<thermalfoundation:material:132>]);

recipes.addShaped(<appliedenergistics2:quartz_growth_accelerator>, [[<moreplates:dark_steel_plate>, <appliedenergistics2:part:16>, <moreplates:dark_steel_plate>],[<appliedenergistics2:quartz_glass>, <appliedenergistics2:fluix_block>, <appliedenergistics2:quartz_glass>], [<moreplates:dark_steel_plate>, <appliedenergistics2:part:16>, <moreplates:dark_steel_plate>]]);

//busses
recipes.addShaped(<appliedenergistics2:part:240>, [[null, <appliedenergistics2:material:44>, null], [<thermalfoundation:material:132>, <minecraft:sticky_piston>, <thermalfoundation:material:132>]]);
recipes.addShaped(<appliedenergistics2:part:240>*2, [[null, <appliedenergistics2:material:44>, null], [<rockhounding_chemistry:alloy_items_tech:4>, <minecraft:sticky_piston>, <rockhounding_chemistry:alloy_items_tech:4>]]);
recipes.addShaped(<appliedenergistics2:part:260>, [[<thermalfoundation:material:132>, <appliedenergistics2:material:43>, <thermalfoundation:material:132>], [null, <minecraft:piston>, null]]);
recipes.addShaped(<appliedenergistics2:part:260>*2, [[<rockhounding_chemistry:alloy_items_tech:4>, <appliedenergistics2:material:43>, <rockhounding_chemistry:alloy_items_tech:4>], [null, <minecraft:piston>, null]]);

//crafting unit
recipes.addShaped(<appliedenergistics2:crafting_unit>, [[<thermalfoundation:material:324>, <appliedenergistics2:material:23>, <thermalfoundation:material:324>],[<appliedenergistics2:part:16>, <appliedenergistics2:material:22>, <appliedenergistics2:part:16>], [<thermalfoundation:material:324>, <appliedenergistics2:material:23>, <thermalfoundation:material:324>]]);
recipes.addShaped(<appliedenergistics2:crafting_unit> * 2, [[<rockhounding_chemistry:alloy_parts:10>, <appliedenergistics2:material:23>, <rockhounding_chemistry:alloy_parts:10>],[<appliedenergistics2:part:16>, <appliedenergistics2:material:22>, <appliedenergistics2:part:16>], [<rockhounding_chemistry:alloy_parts:10>, <appliedenergistics2:material:23>, <rockhounding_chemistry:alloy_parts:10>]]);

//assembler
recipes.addShaped(<appliedenergistics2:molecular_assembler>, [[<thermalfoundation:material:324>, <appliedenergistics2:quartz_glass>, <thermalfoundation:material:324>],[<appliedenergistics2:material:44>, <enderio:block_crafter>, <appliedenergistics2:material:43>], [<thermalfoundation:material:324>, <appliedenergistics2:quartz_glass>, <thermalfoundation:material:324>]]);
recipes.addShaped(<appliedenergistics2:molecular_assembler> * 2, [[<rockhounding_chemistry:alloy_parts:10>, <appliedenergistics2:quartz_glass>, <rockhounding_chemistry:alloy_parts:10>],[<appliedenergistics2:material:44>, <enderio:block_crafter>, <appliedenergistics2:material:43>], [<rockhounding_chemistry:alloy_parts:10>, <appliedenergistics2:quartz_glass>, <rockhounding_chemistry:alloy_parts:10>]]);

//ender hat
recipes.addShaped(<appliedenergistics2:material:41>, [[null, <appliedenergistics2:material:9>, null],[<enderio:item_alloy_ingot:6>, <appliedenergistics2:part:140>, <enderio:item_alloy_ingot:6>], [null, <enderio:item_alloy_ingot:6>, null]]);

//station
recipes.addShaped(<appliedenergistics2:security_station>, [[<moreplates:dark_steel_plate>, <appliedenergistics2:chest>, <moreplates:dark_steel_plate>],[<appliedenergistics2:part:16>, <appliedenergistics2:material:37>, <appliedenergistics2:part:16>], [<moreplates:dark_steel_plate>, <appliedenergistics2:material:24>, <moreplates:dark_steel_plate>]]);

//me chest
recipes.addShaped(<appliedenergistics2:chest>, [[<minecraft:glass:*>, <appliedenergistics2:part:380>, <minecraft:glass:*>],[<appliedenergistics2:part:16>, null, <appliedenergistics2:part:16>], [<enderio:item_alloy_ingot:6>, <appliedenergistics2:material:7>, <enderio:item_alloy_ingot:6>]]);

//condenser
recipes.addShaped(<appliedenergistics2:condenser>, [
	[<ore:plateTungstensteel>, <embers:ember_funnel>, <ore:plateTungstensteel>], 
	[<advancedrocketry:ic:2>, <ore:compressedCobblestone3x>, <advancedrocketry:ic:2>], 
	[<ore:plateTungstensteel>, <threng:material:4>, <ore:plateTungstensteel>]
]);
//charger
recipes.addShapedMirrored(<appliedenergistics2:charger>, [[<enderio:item_alloy_ingot:6>, <appliedenergistics2:material>, <enderio:item_alloy_ingot:6>],[<enderio:item_alloy_ingot:6>, <embers:charger>, null], [<enderio:item_alloy_ingot:6>, <appliedenergistics2:material>, <enderio:item_alloy_ingot:6>]]);

//dense smart cable
recipes.addShaped(<appliedenergistics2:part:76>, [[<appliedenergistics2:part:56>, <appliedenergistics2:part:56>],[<appliedenergistics2:part:56>, <appliedenergistics2:part:56>]]);

//spatial io port
recipes.addShaped(<appliedenergistics2:spatial_io_port>, [[<minecraft:glass:*>, <minecraft:glass:*>, <minecraft:glass:*>],[<appliedenergistics2:part:16>, <appliedenergistics2:io_port>, <appliedenergistics2:part:16>], [<moreplates:dark_steel_plate>, <appliedenergistics2:material:24>, <moreplates:dark_steel_plate>]]);

//io port
recipes.addShaped(<appliedenergistics2:io_port>, [[<minecraft:glass:*>, <minecraft:glass:*>, <minecraft:glass:*>],[<appliedenergistics2:drive>, <appliedenergistics2:part:16>, <appliedenergistics2:drive>], [<moreplates:dark_steel_plate>, <appliedenergistics2:material:22>, <moreplates:dark_steel_plate>]]);

//quantum ring
recipes.addShaped(<appliedenergistics2:quantum_ring>, [[<thermalfoundation:material:324>, <appliedenergistics2:material:22>, <thermalfoundation:material:324>],[<appliedenergistics2:material:24>, <mekanism:teleportationcore>, <appliedenergistics2:part:76>], [<thermalfoundation:material:324>, <appliedenergistics2:material:22>, <thermalfoundation:material:324>]]);
recipes.addShaped(<appliedenergistics2:quantum_ring> * 2, [[<rockhounding_chemistry:alloy_parts:10>, <appliedenergistics2:material:22>, <rockhounding_chemistry:alloy_parts:10>],[<appliedenergistics2:material:24>, <mekanism:teleportationcore>, <appliedenergistics2:part:76>], [<rockhounding_chemistry:alloy_parts:10>, <appliedenergistics2:material:22>, <rockhounding_chemistry:alloy_parts:10>]]);

//Patterns
recipes.addShaped(<appliedenergistics2:material:52>, [[<appliedenergistics2:quartz_glass>, <minecraft:glowstone_dust>, <appliedenergistics2:quartz_glass>],[<minecraft:glowstone_dust>, <rockhounding_chemistry:misc_items:1>, <minecraft:glowstone_dust>], [<thermalfoundation:material:132>, <thermalfoundation:material:132>, <thermalfoundation:material:132>]]);
recipes.addShaped(<appliedenergistics2:material:52> * 2, [[<appliedenergistics2:quartz_glass>, <minecraft:glowstone_dust>, <appliedenergistics2:quartz_glass>],[<minecraft:glowstone_dust>, <rockhounding_chemistry:misc_items:1>, <minecraft:glowstone_dust>], [<rockhounding_chemistry:alloy_items_tech:4>, <rockhounding_chemistry:alloy_items_tech:4>, <rockhounding_chemistry:alloy_items_tech:4>]]);

//Fluid I/O
recipes.addShaped(<appliedenergistics2:part:261>, [[<minecraft:dye:4>, <appliedenergistics2:material:43>, <minecraft:dye:4>], [<thermalfoundation:material:132>, <minecraft:piston>, <thermalfoundation:material:132>]]);
recipes.addShaped(<appliedenergistics2:part:261> * 2, [[<minecraft:dye:4>, <appliedenergistics2:material:43>, <minecraft:dye:4>], [<rockhounding_chemistry:alloy_items_tech:4>, <minecraft:piston>, <rockhounding_chemistry:alloy_items_tech:4>]]);
recipes.addShaped(<appliedenergistics2:part:241>, [[<minecraft:dye:4>, <appliedenergistics2:material:44>, <minecraft:dye:4>], [<thermalfoundation:material:132>, <minecraft:sticky_piston>, <thermalfoundation:material:132>]]);
recipes.addShaped(<appliedenergistics2:part:241>*2, [[<minecraft:dye:4>, <appliedenergistics2:material:44>, <minecraft:dye:4>], [<rockhounding_chemistry:alloy_items_tech:4>, <minecraft:sticky_piston>, <rockhounding_chemistry:alloy_items_tech:4>]]);


//moved to actually additions
//Inscriber.addRecipe(<chisel:voidstonerunic>, <chisel:energizedvoidstone>, true, <chisel:chisel_diamond>);

//fluix platinum


furnace.remove(<threng:material>);
blastFurnace.addRecipe(<threng:material>, null, <threng:material:2>, null, 1200, 60, 2000);

<threng:material>.displayName = "福鲁伊克斯铂锭";
Aggregator.removeRecipe(<threng:material>);
Aggregator.addRecipe(<threng:material>, <thermalfoundation:material:134>, <threng:material:1>, <appliedenergistics2:material:45>);

<threng:material:2>.displayName = "福鲁伊克斯覆层铂锭";
Inscriber.removeRecipe(<threng:material:2>);
Inscriber.addRecipe(<threng:material:2>, <thermalfoundation:material:134>, false, <appliedenergistics2:material:45>, <threng:material:1>);

//fluix logic chip
recipes.addShaped(<threng:material:4>, [[<threng:material>, <appliedenergistics2:material:24>, <threng:material>],[<appliedenergistics2:material:22>, <rockhounding_chemistry:misc_items:10>, <appliedenergistics2:material:22>], [<threng:material>, <appliedenergistics2:material:24>, <threng:material>]]);


//upgrades from simple storage network
recipes.addShaped(<appliedenergistics2:part:240>, [[null, <appliedenergistics2:material:44>, null], [<thermalfoundation:material:132>, <storagenetwork:im_kabel>, <thermalfoundation:material:132>]]);
recipes.addShaped(<appliedenergistics2:part:240>*2, [[null, <appliedenergistics2:material:44>, null], [<rockhounding_chemistry:alloy_items_tech:4>, <storagenetwork:im_kabel>, <rockhounding_chemistry:alloy_items_tech:4>]]);
recipes.addShaped(<appliedenergistics2:part:260>, [[<thermalfoundation:material:132>, <appliedenergistics2:material:43>, <thermalfoundation:material:132>], [null, <storagenetwork:ex_kabel>, null]]);
recipes.addShaped(<appliedenergistics2:part:260> * 2, [[<rockhounding_chemistry:alloy_items_tech:4>, <appliedenergistics2:material:43>, <rockhounding_chemistry:alloy_items_tech:4>], [null, <storagenetwork:ex_kabel>, null]]);
recipes.addShapeless(<appliedenergistics2:part:220>, [<appliedenergistics2:interface>,<storagenetwork:storage_kabel>]);
recipes.addShapeless(<appliedenergistics2:part:36>, [<storagenetwork:kabel>, <minecraft:wool:*>]);


mods.advancedrocketry.PrecisionAssembler.addRecipe(<appliedenergistics2:material:22>, 100, 1000, <nuclearcraft:gem:6>, <minecraft:redstone>,<minecraft:gold_ingot>);
mods.advancedrocketry.PrecisionAssembler.addRecipe(<appliedenergistics2:material:23>, 100, 1000, <nuclearcraft:gem:6>, <minecraft:redstone>,<appliedenergistics2:material:10>);
mods.advancedrocketry.PrecisionAssembler.addRecipe(<appliedenergistics2:material:24>, 100, 1000, <nuclearcraft:gem:6>, <minecraft:redstone>,<minecraft:diamond>);
mods.advancedrocketry.PrecisionAssembler.addRecipe(<threng:material:6>, 300, 10000, <nuclearcraft:gem:6>, <minecraft:redstone>,<threng:material:5>);
mods.advancedrocketry.PrecisionAssembler.addRecipe(<threng:material:14>, 600, 100000, <nuclearcraft:gem:6>, <minecraft:redstone>,<threng:material:13>);

mods.advancedrocketry.PrecisionAssembler.addRecipe(<threng:material:4>, 600, 10000, <threng:material>*4,<appliedenergistics2:material:22>,<appliedenergistics2:material:24>,<rockhounding_chemistry:misc_items:10>);

//Lazy Frame
recipes.addShaped(<threng:big_assembler>*4, [
	[<ore:plateTungstensteel>, <ore:ingotFluixSteel>, <ore:plateTungstensteel>], 
	[<ore:ingotFluixSteel>, <nuclearcraft:part:12>, <ore:ingotFluixSteel>], 
	[<ore:plateTungstensteel>, <ore:ingotFluixSteel>, <ore:plateTungstensteel>]
]);

####### PACKAGED AUTO ##################

//Component
recipes.addShaped(<packagedauto:package_component>, [
	[<threng:material:5>, <thermalfoundation:material:801>, <threng:material:5>], 
	[<thermalfoundation:material:801>, <ore:pearlEnderEye>, <thermalfoundation:material:801>], 
	[<threng:material:5>, <thermalfoundation:material:801>, <threng:material:5>]
]);

//ME Component
recipes.addShaped(<packagedauto:me_package_component>, [
	[<ore:plateAluminum>, <appliedenergistics2:quartz_glass>, <ore:plateAluminum>], 
	[<appliedenergistics2:material:44>, <packagedauto:package_component>, <appliedenergistics2:material:43>], 
	[<ore:plateAluminum>, <appliedenergistics2:quartz_glass>, <ore:plateAluminum>]
]);
recipes.addShaped(<packagedauto:me_package_component>*2, [
	[<rockhounding_chemistry:alloy_parts:10>, <appliedenergistics2:quartz_glass>, <rockhounding_chemistry:alloy_parts:10>], 
	[<appliedenergistics2:material:44>, <packagedauto:package_component>, <appliedenergistics2:material:43>], 
	[<rockhounding_chemistry:alloy_parts:10>, <appliedenergistics2:quartz_glass>, <rockhounding_chemistry:alloy_parts:10>]
]);

//Pattern
recipes.addShaped(<packagedauto:recipe_holder>*2, [
	[<appliedenergistics2:quartz_vibrant_glass>, <ore:alloyBasic>, <appliedenergistics2:quartz_vibrant_glass>], 
	[<ore:alloyBasic>, <threng:material:4>, <ore:alloyBasic>], 
	[<ore:plateAluminum>, <packagedauto:package_component>, <ore:plateAluminum>]
]);
recipes.addShaped(<packagedauto:recipe_holder>*4, [
	[<appliedenergistics2:quartz_vibrant_glass>, <ore:alloyBasic>, <appliedenergistics2:quartz_vibrant_glass>], 
	[<ore:alloyBasic>, <threng:material:4>, <ore:alloyBasic>], 
	[<rockhounding_chemistry:alloy_parts:10>, <packagedauto:package_component>, <rockhounding_chemistry:alloy_parts:10>]
]);

//packager
recipes.addShaped(<packagedauto:packager>, [
	[<ore:plateDarkSteel>, <packagedauto:me_package_component>, <ore:plateDarkSteel>], 
	[<ore:alloyBasic>, <ore:crafterWood>, <ore:alloyBasic>], 
	[<ore:plateDarkSteel>, <ore:craftingPiston>, <ore:plateDarkSteel>]
]);
//packer extention
recipes.addShaped(<packagedauto:packager_extension>, [
	[<ore:plateDarkSteel>, <packagedauto:me_package_component>, <ore:plateDarkSteel>], 
	[<ore:dustGlowstone>, <ore:crafterWood>, <ore:dustGlowstone>], 
	[<ore:plateDarkSteel>, <ore:craftingPiston>, <ore:plateDarkSteel>]
]);
//unpacker
recipes.addShaped(<packagedauto:unpackager>, [
	[<ore:plateDarkSteel>, <packagedauto:me_package_component>, <ore:plateDarkSteel>], 
	[<ore:alloyBasic>, <ore:chest>, <ore:alloyBasic>], 
	[<ore:plateDarkSteel>, <ore:blockHopper>, <ore:plateDarkSteel>]
]);

//encoder
recipes.addShaped(<packagedauto:encoder>, [
	[<ore:plateDarkSteel>, <packagedauto:package_component>, <ore:plateDarkSteel>], 
	[<ore:crafterWood>, <ore:glowstone>, <ore:crafterWood>], 
	[<ore:plateDarkSteel>, <minecraft:comparator>, <ore:plateDarkSteel>]
]);


//Terminal Converting
recipes.addShaped(<ae2wtlib:infinity_booster_card> * 64, [[<appliedenergistics2:material:9>, <threng:material:6>, <appliedenergistics2:material:9>],[<threng:material:6>, <storagenetwork:remote:1>, <threng:material:6>], [<appliedenergistics2:material:9>, <threng:material:6>, <appliedenergistics2:material:9>]]);
recipes.addShaped(<ae2wtlib:wut>, [[<thermalfoundation:material:324>, <appliedenergistics2:material:41>, <thermalfoundation:material:324>],[<appliedenergistics2:material:22>, <storagenetwork:remote:2>, <appliedenergistics2:material:22>], [<thermalfoundation:material:324>, <appliedenergistics2:material:24>, <thermalfoundation:material:324>]]);
recipes.addShaped(<wct:wct>, [[<thermalfoundation:material:324>, <appliedenergistics2:material:41>, <thermalfoundation:material:324>],[<appliedenergistics2:material:22>, <storagenetwork:remote:3>, <appliedenergistics2:material:22>], [<thermalfoundation:material:324>, <appliedenergistics2:material:24>, <thermalfoundation:material:324>]]);
recipes.addShaped(<appliedenergistics2:wireless_terminal>, [[<thermalfoundation:material:324>, <appliedenergistics2:material:41>, <thermalfoundation:material:324>],[<appliedenergistics2:material:22>, <storagenetwork:remote>, <appliedenergistics2:material:22>], [<thermalfoundation:material:324>, <appliedenergistics2:material:24>, <thermalfoundation:material:324>]]);

##########################################################################################
print("==================== end of applied.zs ====================");
