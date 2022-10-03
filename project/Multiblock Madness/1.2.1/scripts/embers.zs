##########################################################################################
import mods.tconstruct.Alloy;
import mods.tconstruct.Melting;
import mods.tconstruct.Casting;
import crafttweaker.liquid.ILiquidStack;
import mods.embers.Mixer;
import mods.embers.EmberGeneration;
import crafttweaker.item.IItemStack;
import mods.thermalexpansion.Crucible;
print("==================== loading mods embers.zs ====================");
##########################################################################################

recipes.addShapeless(<embers:blend_caminite> * 4, [<embers:plate_caminite_raw>]);

val itemstoRemove =
[
<embers:beam_cannon>,
<embers:boiler>,
<mysticalmechanics:gear_gold_off>,
<mysticalmechanics:gear_gold_on>,
<embers:steam_engine>,
<embers:cinder_plinth>,
<embers:ember_bore>,
<embers:block_furnace>,
<embers:stamper>,
<embers:stamper_base>,
<embers:mixer>,
<embers:alchemy_pedestal>,
]
 as IItemStack[];

for item in itemstoRemove {
	recipes.remove(item);
}

recipes.addShaped(<embers:boiler>, [[<thermalfoundation:material:128>, <thermalfoundation:material:128>, <thermalfoundation:material:128>],[<thermalfoundation:material:32>, <minecraft:furnace>, <thermalfoundation:material:32>], [<thermalfoundation:material:32>, <thermalfoundation:storage_alloy:3>, <thermalfoundation:material:32>]]);
recipes.addShaped(<embers:boiler>, [[null, <embers:ember_activator>, null], [<thermalfoundation:material:32>, <thermalfoundation:storage_alloy:3>, <thermalfoundation:material:32>]]);


<embers:crystal_ember>.addTooltip(format.red("使用灰烬晶体开采机从基岩中提取而来"));
<embers:shard_ember>.addTooltip(format.red("使用灰烬晶体开采机从基岩中提取而来"));
<embers:dust_ember>.addTooltip(format.red("使用灰烬晶体开采机从基岩中提取而来"));
<embers:dust_ash>.addTooltip(format.red("用灰烬炉烧制物品获得"));

recipes.addShaped(<mysticalmechanics:gear_gold_off>, [[<minecraft:redstone>, <minecraft:redstone>, <minecraft:redstone>],[<minecraft:redstone>, <ore:gearGold>, <minecraft:redstone>], [<minecraft:redstone>, <minecraft:redstone>, <minecraft:redstone>]]);

recipes.addShaped(<mysticalmechanics:gear_gold_on>, [[<minecraft:redstone_torch>, <minecraft:redstone_torch>, <minecraft:redstone_torch>],[<minecraft:redstone_torch>, <ore:gearGold>, <minecraft:redstone_torch>], [<minecraft:redstone_torch>, <minecraft:redstone_torch>, <minecraft:redstone_torch>]]);

recipes.addShaped(<embers:steam_engine>, [[null, <embers:pipe>, <embers:pipe>],[<mysticalmechanics:axle_iron>, <thermalfoundation:material:290> , <ore:plateBronze>], [<embers:block_caminite_brick_slab>, <embers:block_caminite_brick_slab>, <embers:block_caminite_brick_slab>]]);

//Cinder Plinth
recipes.addShaped(<embers:cinder_plinth>, [[null, <thermalfoundation:material:323>, null],[<moreplates:constantan_stick>, <arcanearchives:phoenixway>, <moreplates:constantan_stick>], [<thermalfoundation:material:323>, <embers:block_caminite_brick>, <thermalfoundation:material:323>]]);

//Beam Cannon
recipes.addShaped(<embers:beam_cannon>, [[<moreplates:energetic_alloy_plate>, <embers:crystal_ember>, <moreplates:energetic_alloy_plate>],[<moreplates:energetic_alloy_plate>, <embers:crystal_ember>, <moreplates:energetic_alloy_plate>], [<embers:ingot_dawnstone>, <embers:block_caminite_brick>, <embers:ingot_dawnstone>]]);

//Pedestal
recipes.addShaped(<embers:alchemy_pedestal>, [[<embers:plate_dawnstone>, null, <embers:plate_dawnstone>],[<techreborn:plates:35>, <embers:crystal_ember>, <techreborn:plates:35>], [<embers:stairs_caminite_brick>, <thermalfoundation:storage>, <embers:stairs_caminite_brick>]]);


//Mixer
recipes.addShaped(<embers:mixer>, [[<thermalfoundation:material:32>, <thermalfoundation:material:32>, <thermalfoundation:material:32>],[<thermalfoundation:material:32>, <thermalfoundation:storage_alloy:3>, <thermalfoundation:material:32>], [<botania:manaresource>, <embers:mech_core>, <botania:manaresource>]]);

//Dawnstone
Melting.addRecipe(<liquid:dawnstone> * 1296, <embers:block_dawnstone>);
Melting.addRecipe(<liquid:dawnstone> * 576, <embers:gear_dawnstone>);
Melting.addRecipe(<liquid:dawnstone> * 144, <embers:plate_dawnstone>);
Melting.addRecipe(<liquid:dawnstone> * 144, <embers:ingot_dawnstone>);

Crucible.addRecipe(<liquid:dawnstone> * 1296, <embers:block_dawnstone>, 10000);
Crucible.addRecipe(<liquid:dawnstone> * 576, <embers:gear_dawnstone>, 4000);
Crucible.addRecipe(<liquid:dawnstone> * 144, <embers:plate_dawnstone>, 1000);
Crucible.addRecipe(<liquid:dawnstone> * 144, <embers:ingot_dawnstone>, 1000);

Melting.addRecipe(<liquid:moltenembers> * 100, <embers:shard_ember>,1000);
Melting.addRecipe(<liquid:moltenembers> * 600, <embers:crystal_ember>,2000);
Melting.addRecipe(<liquid:moltenembers> * 2000, <embers:ember_cluster>,4000);
Melting.addRecipe(<liquid:moltenembers> * 50, <embers:dust_ember>,1000);
Mixer.remove(<liquid:dawnstone> * 8);
Mixer.add(<liquid:dawnstone> * 144,[<liquid:gold> * 144,<liquid:copper> * 144,<liquid:glowstone> * 125]);

EmberGeneration.addMetalCoefficient(<embers:block_dawnstone>,3);

Casting.addTableRecipe(<embers:gear_dawnstone>, <tconstruct:cast_custom:4>, <liquid:dawnstone>, 576, false, 250);
Casting.addTableRecipe(<embers:plate_dawnstone>, <tconstruct:cast_custom:3>, <liquid:dawnstone>, 144, false, 100);
Casting.addTableRecipe(<embers:ingot_dawnstone>, <tconstruct:cast_custom>, <liquid:dawnstone>, 144, false, 100);
Casting.addBasinRecipe(<embers:block_dawnstone>, null, <liquid:dawnstone>, 1296);

mods.embers.Alchemy.add(<embers:seed_dawnstone>, [<minecraft:quartz>,<embers:ingot_dawnstone>,<embers:ingot_dawnstone>,<embers:shard_ember>,<embers:shard_ember>], {"iron":48 to 64,"dawnstone":48 to 64});
//mods.embers.Alchemy.remove(IItemStack <output>);


//Archaic Brick
Casting.addTableRecipe(<embers:archaic_brick>, <embers:brick_caminite>, <liquid:inert_metal>, 144, true, 50);

//inert metal
Mixer.add(<liquid:inert_metal> * 72, [<liquid:silver> * 72, <liquid:lead> * 36]);


recipes.addShaped(<embers:stamper>, [[<embers:brick_caminite>, <ore:plateCopper>, <embers:brick_caminite>],[<embers:brick_caminite>, <minecraft:iron_block>, <embers:brick_caminite>], [<embers:brick_caminite>, null, <embers:brick_caminite>]]);
recipes.addShaped(<embers:stamper_base>, [[null, null, null],[<ore:ingotIron>, null, <ore:ingotIron>], [<embers:block_caminite_brick>, <minecraft:bucket>, <embers:block_caminite_brick>]]);


recipes.addShaped(<embers:ember_bore>, [[<embers:stairs_caminite_brick>, <ore:plateCopper>, <embers:stairs_caminite_brick>],[<embers:stairs_caminite_brick>, <embers:mech_core>, <embers:stairs_caminite_brick>], [<thermalfoundation:material:657>, <thermalfoundation:material:657>, <thermalfoundation:material:657>]]);

recipes.addShaped(<embers:block_furnace>, [[<embers:brick_caminite>, <embers:plate_caminite>, <embers:brick_caminite>],[<embers:brick_caminite>, <thermalfoundation:material:320>, <embers:brick_caminite>], [<ore:ingotIron>, <morefurnaces:furnaceblock>, <ore:ingotIron>]]);

mods.inworldcrafting.FluidToItem.transform(<contenttweaker:activatedaspectussilver>, <liquid:astralsorcery.liquidstarlight>, [<embers:aspectus_silver>], true);
mods.inworldcrafting.FluidToItem.transform(<contenttweaker:activatedaspectuscopper>, <liquid:astralsorcery.liquidstarlight>, [<embers:aspectus_copper>], true);
mods.inworldcrafting.FluidToItem.transform(<contenttweaker:activatedaspectusdawnstone>, <liquid:astralsorcery.liquidstarlight>, [<embers:aspectus_dawnstone>], true);

mods.astralsorcery.Lightwell.addLiquefaction(<embers:aspectus_silver>, <liquid:silver>, 1.2, 1.5, 0xcfcfcf);
mods.astralsorcery.Lightwell.addLiquefaction(<embers:aspectus_copper>, <liquid:copper>, 1.2, 1.5, 0xff9b4a);
mods.astralsorcery.Lightwell.addLiquefaction(<embers:aspectus_iron>, <liquid:iron>, 1.2, 1.5, 0xa6a6a6);
mods.astralsorcery.Lightwell.addLiquefaction(<embers:aspectus_lead>, <liquid:lead>, 1.2, 1.5, 0x5c6f7a);
mods.astralsorcery.Lightwell.addLiquefaction(<embers:aspectus_dawnstone>, <liquid:dawnstone>, 1.2, 1.5, 0xe89e43);


//Glowstone Flows up :(
//mods.embers.Melter.add(<liquid:glowstone> * 250, <minecraft:glowstone_dust>);
//mods.embers.Melter.add(<liquid:glowstone> * 1000, <minecraft:glowstone>);


##########################################################################################
print("==================== end of mods embers.zs ====================");