#priority 98

import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDict;
import mods.immersiveengineering.Crusher;
import mods.immersiveengineering.MetalPress;
import mods.nuclearcraft.Manufactory;
import mods.nuclearcraft.Pressurizer;
import mods.techreborn.grinder;
import mods.techreborn.rollingMachine;
import mods.thermalexpansion.Compactor;
import mods.thermalexpansion.Pulverizer;
import mods.advancedrocketry.PlatePresser;
import mods.techreborn.implosionCompressor;
import mods.techreborn.plateBendingMachine;
import mods.techreborn.assemblingMachine;
import mods.advancedrocketry.Lathe;
import mods.enderio.SagMill;

print("==================== loading parts.zs ====================");
##########################################################################################

val itemstoRemove =
[
	<embers:blend_caminite>,
	<tconstruct:soil>,
	<enderio:item_material:22>,
	<appliedenergistics2:quartz_glass>,
	<appliedenergistics2:quartz_vibrant_glass>,
	<deepmoblearning:polymer_clay>,
	<randomthings:ingredient:3>,
]
 as IItemStack[];

for item in itemstoRemove {
	recipes.remove(item);
}


//Binder
<enderio:item_material:22>.displayName = "万用粘合剂";
recipes.addShapedMirrored(<enderio:item_material:22>*8, [[<minecraft:sand>, <minecraft:clay_ball>, <minecraft:gravel>],[<minecraft:clay_ball>, <enderio:item_material:20>, <minecraft:clay_ball>], [<minecraft:gravel>, <minecraft:clay_ball>, <minecraft:sand>]]);
recipes.addShapeless(<embers:blend_caminite>*2, [<enderio:item_material:22>,<enderio:item_material:22>]);
recipes.addShapeless(<tconstruct:soil>*4, [<enderio:item_material:22>,<enderio:item_material:22>,<enderio:item_material:22>,<enderio:item_material:22>]);
//recipes.addShaped(<enderio:item_material:22>*8, [[<tconstruct:soil>, <tconstruct:soil>, <tconstruct:soil>],[<tconstruct:soil>, <enderio:item_material:20>, <tconstruct:soil>], [<tconstruct:soil>, <tconstruct:soil>, <tconstruct:soil>]]);
//recipes.addShaped(<enderio:item_material:22>*8, [[<embers:blend_caminite>, <embers:blend_caminite>, <embers:blend_caminite>],[<embers:blend_caminite>, <enderio:item_material:20>, <embers:blend_caminite>], [<embers:blend_caminite>, <embers:blend_caminite>, <embers:blend_caminite>]]);


//scaffolding
assemblingMachine.addRecipe(<contenttweaker:vanasteel_scaffolding>*9, <rockhounding_chemistry:alloy_items_tech:40>*3, <contenttweaker:rod_vanasteel>*3, 100, 100);
assemblingMachine.addRecipe(<immersiveengineering:metal_decoration1:1>*9, <thermalfoundation:material:160>*3, <immersiveengineering:material:2>*3, 100, 100);
assemblingMachine.addRecipe(<contenttweaker:scal_scaffolding>*9, <rockhounding_chemistry:alloy_items_tech:4>*3, <contenttweaker:rod_scal>*3, 100, 100);
assemblingMachine.addRecipe(<contenttweaker:bam_scaffolding>*9, <rockhounding_chemistry:alloy_items_tech:7>*3, <contenttweaker:rod_bam>*3, 100, 100);
assemblingMachine.addRecipe(<contenttweaker:nimonic_scaffolding>*9, <rockhounding_chemistry:alloy_items_tech:16>*3, <contenttweaker:rod_nimonic>*3, 100, 100);
assemblingMachine.addRecipe(<contenttweaker:invar_scaffolding>*9, <thermalfoundation:material:162>*3, <moreplates:invar_stick>*3, 100, 100);
assemblingMachine.addRecipe(<immersiveengineering:metal_decoration1:5>*9, <thermalfoundation:material:132>*3, <immersiveengineering:material:3>*3, 100, 100);
assemblingMachine.addRecipe(<jaopca:block_scaffoldingnichrome>*9, <rockhounding_chemistry:alloy_items_tech:22>*3, <jaopca:item_sticknichrome>*3, 100, 100);
assemblingMachine.addRecipe(<jaopca:block_scaffoldingstainlesssteel>*9, <qmd:ingot_alloy:2>*3, <jaopca:item_stickstainlesssteel>*3, 100, 100);



recipes.addShaped(<contenttweaker:scal_scaffolding> * 6, [[<rockhounding_chemistry:alloy_items_tech:4>, <rockhounding_chemistry:alloy_items_tech:4>, <rockhounding_chemistry:alloy_items_tech:4>],[null, <contenttweaker:rod_scal>, null], [<contenttweaker:rod_scal>, null, <contenttweaker:rod_scal>]]);
recipes.addShaped(<contenttweaker:bam_scaffolding> * 6, [[<rockhounding_chemistry:alloy_items_tech:7>, <rockhounding_chemistry:alloy_items_tech:7>, <rockhounding_chemistry:alloy_items_tech:7>],[null, <contenttweaker:rod_bam>, null], [<contenttweaker:rod_bam>, null, <contenttweaker:rod_bam>]]);
recipes.addShaped(<contenttweaker:nimonic_scaffolding> * 6, [[<rockhounding_chemistry:alloy_items_tech:16>, <rockhounding_chemistry:alloy_items_tech:16>, <rockhounding_chemistry:alloy_items_tech:16>],[null, <contenttweaker:rod_nimonic>, null], [<contenttweaker:rod_nimonic>, null, <contenttweaker:rod_nimonic>]]);
recipes.addShaped(<contenttweaker:vanasteel_scaffolding> * 6, [[<rockhounding_chemistry:alloy_items_tech:40>, <rockhounding_chemistry:alloy_items_tech:40>, <rockhounding_chemistry:alloy_items_tech:40>],[null, <contenttweaker:rod_vanasteel>, null], [<contenttweaker:rod_vanasteel>, null, <contenttweaker:rod_vanasteel>]]);
recipes.addShaped(<contenttweaker:invar_scaffolding> * 6, [[<thermalfoundation:material:162>, <thermalfoundation:material:162>, <thermalfoundation:material:162>],[null, <moreplates:invar_stick>, null], [<moreplates:invar_stick>, null, <moreplates:invar_stick>]]);
recipes.addShaped(<jaopca:block_scaffoldingnichrome> * 6, [[<ore:ingotNichrome>, <ore:ingotNichrome>, <ore:ingotNichrome>],[null, <jaopca:item_sticknichrome>, null], [<jaopca:item_sticknichrome>, null, <jaopca:item_sticknichrome>]]);
recipes.addShaped(<jaopca:block_scaffoldingstainlesssteel> * 6, [[<ore:ingotStainlessSteel>, <ore:ingotStainlessSteel>, <ore:ingotStainlessSteel>],[null, <jaopca:item_stickstainlesssteel>, null], [<jaopca:item_stickstainlesssteel>, null, <jaopca:item_stickstainlesssteel>]]);


################# GEARS #######################
mods.actuallyadditions.AtomicReconstructor.removeRecipe(<moreplates:restonia_gear>);

MetalPress.addRecipe(<moreplates:restonia_gear>, <actuallyadditions:item_crystal>, <immersiveengineering:mold:1>, 2000, 4);
MetalPress.addRecipe(<thaumicperiphery:gear_brass>, <ore:ingotBrass>, <immersiveengineering:mold:1>, 2000, 4);
Compactor.addGearRecipe(<moreplates:restonia_gear>, <actuallyadditions:item_crystal>*4, 4000);

################# PLATES #######################
//restonia
//mods.immersiveengineering.MetalPress.addRecipe(<moreplates:restonia_plate>, <actuallyadditions:item_crystal>, <immersiveengineering:mold>, 2000);
Compactor.addStorageRecipe(<moreplates:restonia_plate>, <actuallyadditions:item_crystal>, 1500);
Pressurizer.addRecipe(<actuallyadditions:item_crystal>, <moreplates:restonia_plate>);
MetalPress.addRecipe(<moreplates:restonia_plate>, <actuallyadditions:item_crystal>, <immersiveengineering:mold>, 2000);

//Enori
//mods.immersiveengineering.MetalPress.addRecipe(<moreplates:restonia_plate>, <actuallyadditions:item_crystal>, <immersiveengineering:mold>, 2000);
Compactor.addStorageRecipe(<moreplates:enori_plate>, <actuallyadditions:item_crystal:5>, 1500);
Pressurizer.addRecipe(<actuallyadditions:item_crystal:5>, <moreplates:enori_plate>);
MetalPress.addRecipe(<moreplates:enori_plate>, <actuallyadditions:item_crystal:5>, <immersiveengineering:mold>, 2000);

//void
MetalPress.removeRecipe(<moreplates:void_plate>);
MetalPress.addRecipe(<moreplates:void_plate>, <actuallyadditions:item_crystal:3>, <immersiveengineering:mold>, 2000);
Compactor.addStorageRecipe(<moreplates:void_plate>, <actuallyadditions:item_crystal:3>, 1500);
Pressurizer.addRecipe(<actuallyadditions:item_crystal:3>, <moreplates:void_plate>);

//void metal
MetalPress.addRecipe(<thaumcraft:plate:3>, <thaumcraft:ingot:1>, <immersiveengineering:mold>, 2000);
Pressurizer.removeRecipeWithInput(<thaumcraft:ingot:1>);

//Carbon Plate
MetalPress.addRecipe(<techreborn:plates:2>, <thermalfoundation:storage_resource>, <immersiveengineering:mold>, 2000);

//Iriduim Alloy Plate
Compactor.removeStorageRecipe(<techreborn:ingot:22>);
MetalPress.removeRecipe(<techreborn:plates:38>);
Pressurizer.removeRecipeWithOutput(<techreborn:plates:38>);
PlatePresser.removeRecipe(<techreborn:plates:38>); 
mods.advancedrocketry.RollingMachine.removeRecipe(<techreborn:plates:38>); 

//Electial Steel
//plateBendingMachine.addRecipe(<moreplates:electrical_steel_plate>,<enderio:item_alloy_ingot>, 400, 8);

//Energetic Alloy
//plateBendingMachine.addRecipe(<moreplates:energetic_alloy_plate>, <enderio:item_alloy_ingot:1>, 400, 8);

//QUartz
mods.immersiveengineering.MetalPress.removeRecipe(<moreplates:nether_quartz_plate>);
mods.techreborn.compressor.addRecipe(<moreplates:nether_quartz_plate>, <minecraft:quartz>, 400, 8);

//sheetmetal
recipes.addShaped(<contenttweaker:sheetmetal_bronze> * 4, [[null, <ore:plateBronze>, null],[<ore:plateBronze>, null, <ore:plateBronze>], [null, <ore:plateBronze>, null]]);
recipes.addShaped(<contenttweaker:sheetmetal_refinediron> * 4, [[null, <techreborn:plates:35>, null],[<techreborn:plates:35>, null, <techreborn:plates:35>], [null, <techreborn:plates:35>, null]]);
recipes.addShaped(<contenttweaker:sheetmetal_thaumium> * 4, [[null, <thaumcraft:plate:2>, null],[<thaumcraft:plate:2>, null, <thaumcraft:plate:2>], [null, <thaumcraft:plate:2>, null]]);
recipes.addShaped(<contenttweaker:sheetmetal_brass> * 4, [[null, <ore:plateBrass>, null],[<ore:plateBrass>, null, <ore:plateBrass>], [null, <ore:plateBrass>, null]]);
recipes.addShaped(<contenttweaker:sheetmetal_nimonic> * 4, [[null, <rockhounding_chemistry:alloy_parts:22>, null],[<rockhounding_chemistry:alloy_parts:22>, null, <rockhounding_chemistry:alloy_parts:22>], [null, <rockhounding_chemistry:alloy_parts:22>, null]]);
recipes.addShaped(<jaopca:block_sheetmetaldarksteel> * 4, [[null, <moreplates:dark_steel_plate>, null],[<moreplates:dark_steel_plate>, null, <moreplates:dark_steel_plate>], [null, <moreplates:dark_steel_plate>, null]]);
recipes.addShaped(<jaopca:block_sheetmetalsoularium> * 4, [[null, <moreplates:soularium_plate>, null],[<moreplates:soularium_plate>, null, <moreplates:soularium_plate>], [null, <moreplates:soularium_plate>, null]]);
recipes.addShaped(<jaopca:block_sheetmetallumium> * 4, [[null, <thermalfoundation:material:358>, null],[<thermalfoundation:material:358>, null, <thermalfoundation:material:358>], [null, <thermalfoundation:material:358>, null]]);
recipes.addShaped(<jaopca:block_sheetmetalredstonealloy> * 4, [[null, <moreplates:redstone_alloy_plate>, null],[<moreplates:redstone_alloy_plate>, null, <moreplates:redstone_alloy_plate>], [null, <moreplates:redstone_alloy_plate>, null]]);
recipes.addShaped(<jaopca:block_sheetmetalscal> * 4, [[null, <rockhounding_chemistry:alloy_parts:10>, null],[<rockhounding_chemistry:alloy_parts:10>, null, <rockhounding_chemistry:alloy_parts:10>], [null, <rockhounding_chemistry:alloy_parts:10>, null]]);
recipes.addShaped(<jaopca:block_sheetmetalelectricalsteel> * 4, [[null, <moreplates:electrical_steel_plate>, null],[<moreplates:electrical_steel_plate>, null, <moreplates:electrical_steel_plate>], [null, <moreplates:electrical_steel_plate>, null]]);
recipes.addShaped(<jaopca:block_sheetmetalvanasteel> * 4, [[null, <rockhounding_chemistry:alloy_parts:40>, null],[<rockhounding_chemistry:alloy_parts:40>, null, <rockhounding_chemistry:alloy_parts:40>], [null, <rockhounding_chemistry:alloy_parts:40>, null]]);
recipes.addShaped(<jaopca:block_sheetmetaltitanium> * 4, [[null, <techreborn:plates:31>, null],[<techreborn:plates:31>, null, <techreborn:plates:31>], [null, <techreborn:plates:31>, null]]);
recipes.addShaped(<jaopca:block_sheetmetalconductiveiron> * 4, [[null, <moreplates:conductive_iron_plate>, null],[<moreplates:conductive_iron_plate>, null, <moreplates:conductive_iron_plate>], [null, <moreplates:conductive_iron_plate>, null]]);


### Rolling Machine ###
rollingMachine.addShapeless(<immersiveengineering:sheetmetal:10>*9, [<minecraft:gold_block>]);
rollingMachine.addShapeless(<contenttweaker:sheetmetal_thaumium>*9, [<thaumcraft:metal_thaumium>]);
rollingMachine.addShapeless(<contenttweaker:sheetmetal_bronze>*9, [<thermalfoundation:storage_alloy:3>]);
rollingMachine.addShapeless(<immersiveengineering:sheetmetal>*9, [<thermalfoundation:storage>]);
rollingMachine.addShapeless(<immersiveengineering:sheetmetal:1>*9, [<thermalfoundation:storage:4>]);
rollingMachine.addShapeless(<immersiveengineering:sheetmetal:2>*9, [<thermalfoundation:storage:3>]);
rollingMachine.addShapeless(<contenttweaker:sheetmetal_refinediron>*9, [<techreborn:storage2:10>]);
rollingMachine.addShapeless(<contenttweaker:sheetmetal_brass>*9, [<ore:blockBrass>]);
rollingMachine.addShapeless(<contenttweaker:sheetmetal_nimonic>*9, [<rockhounding_chemistry:alloy_blocks_tech:5>]);
rollingMachine.addShapeless(<immersiveengineering:sheetmetal:9>*9, [<minecraft:iron_block>]);
rollingMachine.addShapeless(<immersiveengineering:sheetmetal:8>*9, [<thermalfoundation:storage_alloy>]);
rollingMachine.addShapeless(<jaopca:block_sheetmetaldarksteel>*9, [<enderio:block_alloy:6>]);
rollingMachine.addShapeless(<jaopca:block_sheetmetalsoularium>*9, [<enderio:block_alloy:7>]);
rollingMachine.addShapeless(<jaopca:block_sheetmetallumium>*9, [<thermalfoundation:storage_alloy:6>]);
rollingMachine.addShapeless(<jaopca:block_sheetmetalredstonealloy>*9, [<enderio:block_alloy:3>]);
rollingMachine.addShapeless(<jaopca:block_sheetmetalscal>*9,[<rockhounding_chemistry:alloy_blocks_tech:1>]);
rollingMachine.addShapeless(<jaopca:block_sheetmetalelectricalsteel>*9,[<enderio:block_alloy>]);
rollingMachine.addShapeless(<jaopca:block_sheetmetalvanasteel>*9,[<rockhounding_chemistry:alloy_blocks_tech:13>]);
rollingMachine.addShapeless(<jaopca:block_sheetmetaltitanium>*9,[<techreborn:storage:2>]);
rollingMachine.addShapeless(<jaopca:block_sheetmetalconductiveiron>*9,[<enderio:block_alloy:4>]);

### Compressed Platess ###
mods.techreborn.compressor.addRecipe(<jaopca:item_platedenseadvancedalloy>, <techreborn:plates:36>*9, 600, 50);
mods.techreborn.compressor.addRecipe(<jaopca:item_platedensecarbon>, <techreborn:plates:2>*9, 600, 50);
mods.techreborn.compressor.addRecipe(<jaopca:item_platedenseenergeticalloy>, <moreplates:energetic_alloy_plate>*9, 600, 50);
mods.techreborn.compressor.addRecipe(<jaopca:item_platedenseenergeticsilver>, <moreplates:energetic_silver_plate>*9, 600, 50);
mods.techreborn.compressor.addRecipe(<jaopca:item_platedenseintermedium>, <moreplates:intermedium_plate>*9, 600, 50);



################################### LATHE ######################################

mods.advancedrocketry.Lathe.clear();

val latheRods as IItemStack[IItemStack] = {
<thebetweenlands:items_misc:11>:<jaopca:item_sticksyrmorite>,
<rockhounding_chemistry:alloy_items_tech:37>:<jaopca:item_stickhydronalium>,
<thermalfoundation:material:132>:<immersiveengineering:material:3>,
<thaumcraft:ingot:2>:<jaopca:item_stickbrass>,
<contenttweaker:material_part:5>:<contenttweaker:material_part:6>,
<contenttweaker:material_part:30>:<contenttweaker:material_part:34>,
<thermalfoundation:material:160>:<immersiveengineering:material:2>,
<contenttweaker:material_part:20>:<contenttweaker:material_part:24>,
<thermalfoundation:material:128>:<libvulpes:productrod:4>,
<minecraft:gold_ingot>:<moreplates:gold_stick>,
<botania:manaresource>:<jaopca:item_stickmanasteel>,
<tconstruct:ingots:1>:<jaopca:item_stickardite>,
<nuclearcraft:alloy:1>:<jaopca:item_sticktough>,
<contenttweaker:material_part:10>:<contenttweaker:material_part:14>,
<techreborn:ingot:14>:<libvulpes:productrod:7>,
<enderio:item_alloy_ingot:8>:<jaopca:item_stickendsteel>,
<thermalfoundation:material:161>:<moreplates:electrum_stick>,
<thermalfoundation:material:130>:<moreplates:silver_stick>,
<enderio:item_alloy_ingot:6>:<jaopca:item_stickdarksteel>,
<qmd:ingot_alloy:2>:<jaopca:item_stickstainlesssteel>,
<rockhounding_chemistry:alloy_items_tech:40>:<contenttweaker:rod_vanasteel>,
<rockhounding_chemistry:alloy_items_tech:7>:<contenttweaker:rod_bam>,
<rockhounding_chemistry:alloy_items_tech:4>:<contenttweaker:rod_scal>,
<advancedrocketry:productingot>:<advancedrocketry:productrod>,
<minecraft:iron_ingot>:<immersiveengineering:material:1>,
<advancedrocketry:productingot:1>:<advancedrocketry:productrod:1>,
<rockhounding_chemistry:alloy_items_tech:16>:<contenttweaker:rod_nimonic>,
<thermalfoundation:material:162>:<moreplates:invar_stick>,
<thermalfoundation:material:135>:<libvulpes:productrod:10>,
<rockhounding_chemistry:alloy_items_tech:22>:<jaopca:item_sticknichrome>,
<thermalfoundation:material:164>:<moreplates:constantan_stick>,
} as IItemStack[IItemStack];

for material, rod in latheRods {
	Lathe.addRecipe(rod*4, 100, 2000, material);
}


val latheWires as IItemStack[IItemStack] = {
<immersiveengineering:material:3>:<immersiveengineering:material:22>,
<immersiveengineering:material:2>:<immersiveengineering:material:23>,
<moreplates:electrum_stick>:<immersiveengineering:material:21>,
<libvulpes:productrod:4>:<immersiveengineering:material:20>,
} as IItemStack[IItemStack];

for rod, wire in latheWires {
	Lathe.addRecipe(wire*4, 100, 2000, rod);
}

###################################################
############     CRUSHING      ####################
###################################################


//clay dust
Crusher.removeRecipe(<minecraft:clay_ball>);
Crusher.addRecipe(<techreborn:dust:12>*4,<minecraft:clay>, 1024);
Crusher.addRecipe(<techreborn:dust:12>,<minecraft:clay_ball>, 1024);
grinder.removeRecipe(<techreborn:dust:12>*9);
grinder.addRecipe(<techreborn:dust:12>*4, <minecraft:clay>, 300, 4);
grinder.addRecipe(<techreborn:dust:12>, <minecraft:clay_ball>, 150, 2);
Manufactory.removeRecipeWithInput(<minecraft:clay>);
Manufactory.addRecipe(<minecraft:clay>, <techreborn:dust:12> * 4);
Manufactory.addRecipe(<minecraft:clay_ball>, <techreborn:dust:12>);
Pulverizer.removeRecipe(<minecraft:clay>);
Pulverizer.addRecipe(<techreborn:dust:12>*4, <minecraft:clay>, 2000);
Pulverizer.addRecipe(<techreborn:dust:12>, <minecraft:clay_ball>, 1500);
SagMill.addRecipe([<techreborn:dust:12>*4], [1] , <minecraft:clay>, "NONE");

//limestone
val limestoneforFlux = <ore:limestoneforFlux>;
limestoneforFlux.add(<quark:limestone>);
limestoneforFlux.add(<quark:limestone:1>);
limestoneforFlux.add(<thebetweenlands:polished_limestone>);
limestoneforFlux.add(<thebetweenlands:limestone>);
limestoneforFlux.add(<chisel:limestone2:7>);
for item in limestoneforFlux.items{
Crusher.addRecipe(<thebetweenlands:items_misc:27>*3, item, 1024, <thebetweenlands:items_misc:27>, 0.5);
Pulverizer.addRecipe(<thebetweenlands:items_misc:27>*4, item, 1500, <thebetweenlands:items_misc:27>, 50);
}
Manufactory.addRecipe(<ore:limestoneforFlux>, <thebetweenlands:items_misc:27>*4);
grinder.addRecipe(<thebetweenlands:items_misc:27>*4, <ore:limestoneforFlux>, 300, 4);
SagMill.addRecipe([<thebetweenlands:items_misc:27>*3], [1] , <ore:limestoneforFlux>, "MULTIPLY_OUTPUT");


//sulfur
Crusher.addRecipe(<thermalfoundation:material:771>*3, <thebetweenlands:items_misc:18>, 1024, <thermalfoundation:material:771>, 0.5);
Manufactory.addRecipe(<thebetweenlands:items_misc:18>, <thermalfoundation:material:771>*4);
grinder.addRecipe(<thermalfoundation:material:771>*4, <thebetweenlands:items_misc:18>, 300, 4);
Pulverizer.addRecipe(<thermalfoundation:material:771>*4, <thebetweenlands:items_misc:18>, 1500, <thermalfoundation:material:771>, 50);
SagMill.addRecipe([<thermalfoundation:material:771>*3], [1] , <thebetweenlands:items_misc:18>, "MULTIPLY_OUTPUT");

//Radiant Dust
Crusher.addRecipe(<arcanearchives:radiant_dust>*9, <arcanearchives:storage_raw_quartz>, 1024, <arcanearchives:radiant_dust>*3, 0.5);
Manufactory.addRecipe(<arcanearchives:storage_raw_quartz>, <arcanearchives:radiant_dust>*9);
grinder.addRecipe(<arcanearchives:radiant_dust>*9, <arcanearchives:storage_raw_quartz>, 300, 4);
Pulverizer.addRecipe(<arcanearchives:radiant_dust>*9, <arcanearchives:storage_raw_quartz>, 1500, <arcanearchives:radiant_dust>*3, 50);
SagMill.addRecipe([<arcanearchives:radiant_dust>*9], [1] , <arcanearchives:storage_raw_quartz>, "MULTIPLY_OUTPUT");


//Ember Grit
Crusher.addRecipe(<embers:dust_ember>, <embers:crystal_ember>, 2048, <embers:dust_ember>, 0.1);
Manufactory.addRecipe(<embers:crystal_ember>, <embers:dust_ember>);
grinder.addRecipe(<embers:dust_ember>, <embers:crystal_ember>, 300, 4);
Pulverizer.addRecipe(<embers:dust_ember>, <embers:crystal_ember>, 1500, <embers:dust_ember>, 10);
SagMill.addRecipe([<embers:dust_ember>], [1] , <embers:crystal_ember>, "NONE");


//Graphite
grinder.addRecipe(<nuclearcraft:dust:8>, <thermalfoundation:material:768>, 300, 4);
SagMill.addRecipe([<nuclearcraft:dust:8>], [1] , <thermalfoundation:material:768>, "NONE");

//Slates
Crusher.addRecipe(<contenttweaker:slatedust>*2, <bloodmagic:slate>, 2048);
Crusher.addRecipe(<contenttweaker:slatedust>*4, <bloodmagic:slate:1>, 2048);
Crusher.addRecipe(<contenttweaker:slatedust>*8, <bloodmagic:slate:2>, 2048);
Crusher.addRecipe(<contenttweaker:slatedust>*16, <bloodmagic:slate:3>, 2048);
Crusher.addRecipe(<contenttweaker:slatedust>*32, <bloodmagic:slate:4>, 2048);
Manufactory.addRecipe(<bloodmagic:slate>, <contenttweaker:slatedust>*2);
Manufactory.addRecipe(<bloodmagic:slate:1>, <contenttweaker:slatedust>*4);
Manufactory.addRecipe(<bloodmagic:slate:2>, <contenttweaker:slatedust>*8);
Manufactory.addRecipe(<bloodmagic:slate:3>, <contenttweaker:slatedust>*16);
Manufactory.addRecipe(<bloodmagic:slate:4>, <contenttweaker:slatedust>*32);
Pulverizer.addRecipe(<contenttweaker:slatedust>*2, <bloodmagic:slate>, 10000);
Pulverizer.addRecipe(<contenttweaker:slatedust>*4, <bloodmagic:slate:1>, 10000);
Pulverizer.addRecipe(<contenttweaker:slatedust>*8, <bloodmagic:slate:2>, 10000);
Pulverizer.addRecipe(<contenttweaker:slatedust>*16, <bloodmagic:slate:3>, 10000);
Pulverizer.addRecipe(<contenttweaker:slatedust>*32, <bloodmagic:slate:4>, 10000);
grinder.addRecipe(<contenttweaker:slatedust>*2, <bloodmagic:slate>, 300, 4);
grinder.addRecipe(<contenttweaker:slatedust>*4, <bloodmagic:slate:1>, 300, 4);
grinder.addRecipe(<contenttweaker:slatedust>*8, <bloodmagic:slate:2>, 300, 4);
grinder.addRecipe(<contenttweaker:slatedust>*16, <bloodmagic:slate:3>, 300, 4);
grinder.addRecipe(<contenttweaker:slatedust>*32, <bloodmagic:slate:4>, 300, 4);

Crusher.addRecipe(<nuclearcraft:dust:8>, <thermalfoundation:material:768>, 2048);
Crusher.addRecipe(<rockhounding_chemistry:chemical_dusts:24>,<techreborn:plates:2>, 2048);

//Silicon dust
Crusher.addRecipe(<libvulpes:productdust:3>, <nuclearcraft:gem:6>, 1024);
Manufactory.addRecipe(<nuclearcraft:gem:6>, <libvulpes:productdust:3>);
grinder.addRecipe(<libvulpes:productdust:3>, <nuclearcraft:gem:6>, 300, 4);
SagMill.addRecipe([<libvulpes:productdust:3>], [1] , <nuclearcraft:gem:6>, "NONE");

//Skystone dust
Crusher.addRecipe(<appliedenergistics2:material:45>, <appliedenergistics2:sky_stone_block>, 1024);
grinder.addRecipe(<appliedenergistics2:material:45>, <appliedenergistics2:sky_stone_block>, 300, 4);
SagMill.addRecipe([<appliedenergistics2:material:45>], [1] , <appliedenergistics2:sky_stone_block>, "NONE");

//Plutonium
val plutoniumDust =
[
	<nuclearcraft:plutonium:12>,
	<nuclearcraft:plutonium:8>,
	<nuclearcraft:plutonium:4>,
	<nuclearcraft:plutonium>,
]
 as IItemStack[];
for item in plutoniumDust {
Manufactory.addRecipe(item, <techreborn:dust:67>);
}

//Wither Ash
Crusher.addRecipe(<quark:black_ash>*3, <minecraft:skull:1>, 1024);
Manufactory.addRecipe(<minecraft:skull:1>, <quark:black_ash>*3);
grinder.addRecipe(<quark:black_ash>*3, <minecraft:skull:1>, 300, 4);
SagMill.addRecipe([<quark:black_ash>*3], [1] , <minecraft:skull:1>, "MULTIPLY_OUTPUT");



##########################################################################################
print("==================== end of parts.zs ====================");
