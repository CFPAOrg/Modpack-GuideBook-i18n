#priority 98

import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDict;
import mods.enderio.AlloySmelter;
import mods.immersiveengineering.ArcFurnace;
import mods.nuclearcraft.AlloyFurnace;
import mods.techreborn.blastFurnace;
import mods.thermalexpansion.InductionSmelter;
import mods.techreborn.implosionCompressor;
import mods.mekatweaker.InfuserType;
import mods.mekanism.infuser;

print("==================== loading parts.zs ====================");
##########################################################################################


###################################################
##############     ALLOYS      ####################
###################################################

//inert ingot
ArcFurnace.addRecipe(<contenttweaker:inert_ingot>*2, <thermalfoundation:material:130>*2, null, 400, 1024, [<thermalfoundation:material:131>]);
AlloySmelter.addRecipe(<contenttweaker:inert_ingot>*2, [<thermalfoundation:material:130>*2,<thermalfoundation:material:131>], 5000);

//fused quartz
ArcFurnace.addRecipe(<enderio:block_fused_quartz>, <ore:blockQuartz>, null, 200, 1024);

//vibrant alloy
//ArcFurnace.addRecipe(<enderio:item_alloy_ingot:2>, <enderio:item_alloy_ingot:1>, null, 1200, 2048, [<minecraft:ender_pearl>]);
AlloyFurnace.removeRecipeWithOutput(<enderio:item_material:15>);
AlloySmelter.addRecipe(<enderio:item_material:15>, [<minecraft:emerald>,<enderio:item_alloy_ingot:2>], 20000, 0.1);

//energetic alloy
AlloySmelter.removeRecipe(<enderio:item_alloy_ingot:1>);
AlloyFurnace.removeRecipeWithOutput(<enderio:item_alloy_ingot:1>);
ArcFurnace.removeRecipe(<enderio:item_alloy_ingot:1>);

ArcFurnace.addRecipe(<enderio:item_alloy_ingot:1>, <embers:ingot_dawnstone>, null, 400, 1024, [<minecraft:redstone>,<minecraft:glowstone_dust>]);
AlloySmelter.addRecipe(<enderio:item_alloy_ingot:1>, [<minecraft:redstone>,<embers:ingot_dawnstone>,<minecraft:glowstone_dust>], 10000, 0.1);
AlloyFurnace.addRecipe(<embers:ingot_dawnstone>, <nuclearcraft:compound:2>, <enderio:item_alloy_ingot:1>);
InductionSmelter.addRecipe(<enderio:item_alloy_ingot:1>, <embers:ingot_dawnstone>, <nuclearcraft:compound:2>, 25000);

//energetic silver
AlloyFurnace.removeRecipeWithOutput(<enderio:item_alloy_endergy_ingot:5>);
AlloySmelter.removeRecipe(<enderio:item_alloy_endergy_ingot:5>);

ArcFurnace.addRecipe(<enderio:item_alloy_endergy_ingot:5>, <botania:manaresource>, null, 400, 1024, [<minecraft:redstone>,<minecraft:glowstone_dust>]);
AlloySmelter.addRecipe(<enderio:item_alloy_endergy_ingot:5>, [<minecraft:redstone>,<botania:manaresource>,<minecraft:glowstone_dust>], 10000, 0.1);
AlloyFurnace.addRecipe(<botania:manaresource>, <nuclearcraft:compound:2>, <enderio:item_alloy_endergy_ingot:5>);
InductionSmelter.addRecipe(<enderio:item_alloy_endergy_ingot:5>, <botania:manaresource>, <nuclearcraft:compound:2>, 25000);

//Pulsating
AlloyFurnace.removeRecipeWithOutput(<enderio:item_material:14>);
AlloySmelter.addRecipe(<enderio:item_material:14>, [<minecraft:diamond>,<enderio:item_alloy_ingot:5>], 10000, 0.1);
ArcFurnace.addRecipe(<enderio:item_alloy_ingot:5>, <minecraft:iron_ingot>, null, 600, 1024, [<minecraft:ender_pearl>], "Alloying");

//Steel
for item in <ore:ingotSteel>.items{ArcFurnace.removeRecipe(item);}
ArcFurnace.addRecipe(<thermalfoundation:material:160>*2, <minecraft:iron_ingot>*2, <immersiveengineering:material:7>*2, 400, 512, [<immersiveengineering:material:6>], "Alloying");
ArcFurnace.addRecipe(<thermalfoundation:material:160>, <minecraft:iron_ingot>, <immersiveengineering:material:7>, 400, 512, [<minecraft:coal>], "Alloying");
ArcFurnace.addRecipe(<thermalfoundation:material:160>, <minecraft:iron_ingot>, <immersiveengineering:material:7>, 400, 512, [<minecraft:coal:1>*2], "Alloying");

//Dark Steel
ArcFurnace.removeRecipe(<enderio:item_alloy_ingot:6>);
ArcFurnace.addRecipe(<enderio:item_alloy_ingot:6>, <thermalfoundation:material:160>, null, 1200, 1024, [<thermalfoundation:material:770>*4], "Alloying");

//Electrical Steel
ArcFurnace.removeRecipe(<enderio:item_alloy_ingot>);
ArcFurnace.addRecipe(<enderio:item_alloy_ingot>, <thermalfoundation:material:160>, null, 800, 1024, [<nuclearcraft:gem:6>], "Alloying");

//Red Alloy
AlloyFurnace.removeRecipeWithOutput(<enderio:item_alloy_ingot:3>);
AlloySmelter.removeRecipe(<enderio:item_alloy_ingot:3>);
ArcFurnace.addRecipe(<enderio:item_alloy_ingot:3>, <enderio:item_alloy_ingot:4>, null, 600, 1024, [<minecraft:redstone>,<nuclearcraft:gem:6>], "Alloying");
AlloySmelter.addRecipe(<enderio:item_alloy_ingot:3>, [<minecraft:redstone>,<enderio:item_alloy_ingot:4>,<nuclearcraft:gem:6>], 10000, 0.1);
//AlloyFurnace.addRecipe([<enderio:item_alloy_ingot:4>, <minecraft:redstone>, <nuclearcraft:gem:6>, <enderio:item_alloy_ingot:3>]);

//Knight Slime
ArcFurnace.addRecipe(<tconstruct:ingots:3>, <minecraft:iron_ingot> , null, 600, 1024, [<tconstruct:edible:2>,<tconstruct:materials>], "Alloying");
AlloySmelter.addRecipe(<tconstruct:ingots:3>, [<tconstruct:edible:2>,<minecraft:iron_ingot> ,<tconstruct:materials>], 10000, 0.1);

//Clear Glass
ArcFurnace.addRecipe(<enderio:block_fused_glass>, <minecraft:glass> * 2, null, 200, 512);

//Advanced Alloy
recipes.remove(<enderutilities:enderpart:1>);
ArcFurnace.addRecipe(<enderutilities:enderpart:1>*2, <enderutilities:enderpart>*2, null, 500, 1024, [<enderio:item_alloy_ingot:1>*2, <minecraft:ender_eye>], "Alloying");
AlloySmelter.addRecipe(<enderutilities:enderpart:1> *2, [<enderutilities:enderpart> * 2,<enderio:item_alloy_ingot:1> * 2,<minecraft:ender_eye>], 10000);

//Enhanced Alloy
recipes.remove(<enderutilities:enderpart:2>);
//ArcFurnace.addRecipe(<enderutilities:enderpart:2>*2, <enderutilities:enderpart:1>*2, null, 1000, 2048, [<enderio:item_alloy_ingot:8>*2, <randomthings:stableenderpearl>], "Alloying");
AlloySmelter.addRecipe(<enderutilities:enderpart:2> * 2, [<enderutilities:enderpart:1> * 2,<enderio:item_alloy_ingot:8> * 2,<randomthings:stableenderpearl>], 15000);

//Adaptive Ingot
AlloySmelter.addRecipe(<contenttweaker:adaptive_ingot>, [<contenttweaker:material_part:30>, <enderio:block_infinity>], 15000);
ArcFurnace.addRecipe(<contenttweaker:adaptive_ingot>, <contenttweaker:material_part:30>, null, 500, 1024, [<enderio:block_infinity>], "Alloying");
AlloyFurnace.addRecipe(<contenttweaker:material_part:30>, <enderio:block_infinity>, <contenttweaker:adaptive_ingot>);

//Stellar Alloy
AlloyFurnace.removeRecipeWithOutput(<enderio:item_alloy_endergy_ingot:3>*2);
AlloySmelter.removeRecipe(<enderio:item_alloy_endergy_ingot:3>);
AlloySmelter.addRecipe(<enderio:item_alloy_endergy_ingot:3>*2, [<minecraft:nether_star>,<enderio:item_alloy_endergy_ingot:2>,<environmentaltech:aethium_crystal>*4], 1000000, 0.0);


//osgloglas Alloy
AlloySmelter.addRecipe(<plustic:osgloglasingot>, [<mekanism:ingot>,<mekanism:ingot:1>,<mekanism:ingot:3>], 500000, 0.0);
//osmerdium Alloy
AlloySmelter.addRecipe(<plustic:osmiridiumingot>*2, [<thermalfoundation:material:135>,<mekanism:ingot:1>], 1000000, 0.0);


//Prosperity shard
AlloySmelter.addRecipe(<mysticalagriculture:crafting:5>*4, [<minecraft:quartz_block>, <minecraft:lapis_block>], 15000);
InductionSmelter.addRecipe(<mysticalagriculture:crafting:5>*4, <minecraft:quartz_block>, <minecraft:lapis_block>, 15000);
AlloyFurnace.addRecipe(<minecraft:quartz_block>, <minecraft:lapis_block>, <mysticalagriculture:crafting:5>*4);

//Quartz Glass
AlloySmelter.addRecipe(<appliedenergistics2:quartz_glass>, [<ore:blockGlassHardened>, <appliedenergistics2:material:2>], 15000);
ArcFurnace.addRecipe(<appliedenergistics2:quartz_glass>, <ore:blockGlassHardened>, null, 500, 1024, [<appliedenergistics2:material:2>], "Alloying");
AlloyFurnace.addRecipe(<ore:blockGlassHardened>, <appliedenergistics2:material:2>, <appliedenergistics2:quartz_glass>);

//Vib Quartz Glass
AlloySmelter.addRecipe(<appliedenergistics2:quartz_vibrant_glass>, [<ore:blockGlassHardened>, <appliedenergistics2:material:2>,<minecraft:glowstone_dust>*2], 15000);
ArcFurnace.addRecipe(<appliedenergistics2:quartz_vibrant_glass>, <appliedenergistics2:quartz_glass>, null, 500, 1024, [<minecraft:glowstone_dust>*2], "Alloying");
AlloyFurnace.addRecipe(<appliedenergistics2:quartz_glass>, <minecraft:glowstone_dust>*2, <appliedenergistics2:quartz_vibrant_glass>);

//polymer_clay
AlloySmelter.addRecipe(<deepmoblearning:polymer_clay>*32, [<randomthings:ingredient:3>, <enderio:item_material:22>*16], 20000);
ArcFurnace.addRecipe(<deepmoblearning:polymer_clay>*32, <randomthings:ingredient:3>, null, 1200, 512, [<enderio:item_material:22>*16], "Alloying");
AlloyFurnace.addRecipe(<randomthings:ingredient:3>, <enderio:item_material:22>*16, <deepmoblearning:polymer_clay>*32);

AlloySmelter.addRecipe(<deepmoblearning:polymer_clay>*16, [<thermalfoundation:material:134>, <enderio:item_material:22>*8], 15000);
ArcFurnace.addRecipe(<deepmoblearning:polymer_clay>*16, <thermalfoundation:material:134>, null, 800, 512, [<enderio:item_material:22>*8], "Alloying");
AlloyFurnace.addRecipe(<thermalfoundation:material:134>, <enderio:item_material:22>*8, <deepmoblearning:polymer_clay>*16);

AlloySmelter.addRecipe(<deepmoblearning:polymer_clay>*8, [<minecraft:gold_ingot>, <enderio:item_material:22>*4], 10000);
ArcFurnace.addRecipe(<deepmoblearning:polymer_clay>*8, <minecraft:gold_ingot>, null, 600, 512, [<enderio:item_material:22>*4], "Alloying");
AlloyFurnace.addRecipe(<minecraft:gold_ingot>, <enderio:item_material:22>*4, <deepmoblearning:polymer_clay>*8);

AlloySmelter.addRecipe(<deepmoblearning:polymer_clay>*4, [<minecraft:iron_ingot>, <enderio:item_material:22>*2], 5000);
ArcFurnace.addRecipe(<deepmoblearning:polymer_clay>*4, <minecraft:iron_ingot>, null, 600, 512, [<enderio:item_material:22>*2], "Alloying");
AlloyFurnace.addRecipe(<minecraft:iron_ingot>, <enderio:item_material:22>*2, <deepmoblearning:polymer_clay>*4);

//Specter Ingot
InductionSmelter.addRecipe(<randomthings:ingredient:3>, <contenttweaker:inert_ingot>, <randomthings:ingredient:2>, 10000);
InductionSmelter.addRecipe(<randomthings:ingredient:3>*2, <contenttweaker:material_part:20>, <randomthings:ingredient:2>, 10000);
ArcFurnace.addRecipe(<randomthings:ingredient:3>*2, <contenttweaker:material_part:20>, null, 500, 1024, [<randomthings:ingredient:2>], "Alloying");
ArcFurnace.addRecipe(<randomthings:ingredient:3>, <contenttweaker:inert_ingot>, null, 500, 1024, [<randomthings:ingredient:2>], "Alloying");

//Titanium Iridium
AlloyFurnace.removeRecipeWithOutput(<advancedrocketry:productingot:1>*2);

//Bimetal Gear
InductionSmelter.addRecipe(<enderio:item_material:11>, <thermalfoundation:material:288>, <enderio:item_material:20>*4, 10000);
ArcFurnace.addRecipe(<enderio:item_material:11>, <thermalfoundation:material:288>, null, 500, 1024, [<enderio:item_material:20>*4], "Alloying");
AlloySmelter.addRecipe(<enderio:item_material:11>, [<thermalfoundation:material:288>, <enderio:item_material:20>*4], 10000);

//Dark Gear
InductionSmelter.addRecipe(<enderio:item_material:73>, <enderio:item_material:11>, <enderio:item_alloy_ingot:6>*4, 25000);
ArcFurnace.addRecipe(<enderio:item_material:73>, <enderio:item_material:11>, null, 500, 2048, [<enderio:item_alloy_ingot:6>*4], "Alloying");
AlloySmelter.addRecipe(<enderio:item_material:73>, [<enderio:item_material:11>, <enderio:item_alloy_ingot:6>*4], 25000);

//Energetic Gear
InductionSmelter.addRecipe(<enderio:item_material:12>, <enderio:item_material:73>, <enderio:item_alloy_ingot:1>*4, 50000);
AlloySmelter.addRecipe(<enderio:item_material:12>, [<enderio:item_material:73>, <enderio:item_alloy_ingot:1>*4], 50000);

//Vibrant Gear
InductionSmelter.addRecipe(<enderio:item_material:13>, <enderio:item_material:12>, <enderio:item_alloy_ingot:2>*4, 100000);
AlloySmelter.addRecipe(<enderio:item_material:13>, [<enderio:item_material:12>, <enderio:item_alloy_ingot:2>*4], 100000);

//Manylan
furnace.remove(<tconstruct:ingots:2>);
AlloyFurnace.removeRecipeWithOutput(<tconstruct:ingots:2>);
AlloyFurnace.removeRecipeWithOutput(<tconstruct:metal:2>);
AlloyFurnace.removeRecipeWithOutput(<tconstruct:nuggets:2>);
ArcFurnace.removeRecipe(<tconstruct:ingots:2>);
blastFurnace.addRecipe(<tconstruct:ingots:2>, null, <tconstruct:ingots>, <tconstruct:ingots:1>, 600, 80, 1500);

//Dawnstone
//ArcFurnace.addRecipe(<embers:ingot_dawnstone>*2, <minecraft:gold_ingot>*2, null, 500, 4096, [<thermalfoundation:material:128>*2,<minecraft:glowstone_dust>*2,<embers:shard_ember>], "Alloying");
InductionSmelter.addRecipe(<embers:ingot_dawnstone>*4, <rockhounding_chemistry:alloy_items_deco:4>*4, <embers:shard_ember>, 75000);

//Duskstone
	recipes.remove(<extendedcrafting:material:36>);
<extendedcrafting:material:36>.displayName = "黄昏金属锭";
<extendedcrafting:storage:5>.displayName = "黄昏金属块";
AlloySmelter.addRecipe(<extendedcrafting:material:36>, [<techreborn:ingot:15>, <minecraft:ender_eye>,<quark:biotite>], 100000);

//Feroborron
ArcFurnace.addRecipe(<nuclearcraft:alloy:6>*2, <thermalfoundation:material:160>, null, 500, 2048, [<nuclearcraft:ingot:5>], "Alloying");
InductionSmelter.addRecipe(<nuclearcraft:alloy:6>*2, <thermalfoundation:material:160>, <nuclearcraft:ingot:5>, 75000);

//Tough Alloy
ArcFurnace.addRecipe(<nuclearcraft:alloy:1>*2, <nuclearcraft:alloy:6>, null, 1000, 2048, [<nuclearcraft:ingot:6>], "Alloying");
InductionSmelter.addRecipe(<nuclearcraft:alloy:1>*2, <nuclearcraft:alloy:6>, <nuclearcraft:ingot:6>, 75000);

//Nichrome
AlloyFurnace.removeRecipeWithOutput(<rockhounding_chemistry:alloy_items_tech:22>*2);
AlloyFurnace.removeRecipeWithOutput(<rockhounding_chemistry:alloy_items_tech:23>*2);
AlloyFurnace.removeRecipeWithOutput(<rockhounding_chemistry:alloy_blocks_tech:7>*2);
infuser.addRecipe("CHROME", 25, <thermalfoundation:material:133>, <rockhounding_chemistry:alloy_items_tech:22>);

//Stainless Steel
AlloyFurnace.removeRecipeWithOutput(<qmd:ingot_alloy:2>*6);
AlloyFurnace.removeRecipeWithOutput(<jaopca:block_blockstainlesssteel>*6);
infuser.addRecipe("CHROME", 20, <thermalfoundation:material:160>, <qmd:ingot_alloy:2>);


//Pink Slime ingot
InductionSmelter.addRecipe(<enderio:item_alloy_endergy_ingot:4>, <enderio:item_alloy_endergy_ingot:1>, <tconstruct:ingots:3>, 50000);
AlloySmelter.addRecipe(<enderio:item_alloy_endergy_ingot:4>, [<enderio:item_alloy_endergy_ingot:1>, <tconstruct:ingots:3>], 50000);
AlloyFurnace.addRecipe(<enderio:item_alloy_endergy_ingot:1>, <tconstruct:ingots:3>, <enderio:item_alloy_endergy_ingot:4>);

//Crystal ingot
InductionSmelter.addRecipe(<enderio:item_alloy_endergy_ingot:1>, <minecraft:gold_ingot>, <enderio:item_material:36>, 20000);

//Melodic
AlloyFurnace.removeRecipeWithOutput(<enderio:item_alloy_endergy_ingot:2>);
AlloySmelter.removeRecipe(<enderio:item_alloy_endergy_ingot:2>);
AlloySmelter.addRecipe(<enderio:item_alloy_endergy_ingot:2>, [<enderio:item_alloy_endergy_ingot:4>, <enderio:item_alloy_ingot:8>,<minecraft:chorus_fruit_popped>], 100000);


//XP Ingot
val xpMap as int[IItemStack] = {
<actuallyadditions:item_solidified_experience>:10,
<minecraft:experience_bottle>:20,
<mysticalagriculture:xp_droplet>:20,
<deepmoblearning:living_matter_overworldian>:10,
<deepmoblearning:living_matter_hellish>:15,
<deepmoblearning:living_matter_extraterrestrial>:20,
<deepmoblearning:living_matter_twilight>:30,
} as int[IItemStack];
for matter, qty in xpMap {
InfuserType.addTypeObject(matter, "EXPERIENCE", qty);
}
infuser.addRecipe("EXPERIENCE", 100, <mekanism:ingot:3>, <contenttweaker:ingot_xp>);
recipes.addShaped(<contenttweaker:block_xp>, 
[[<contenttweaker:ingot_xp>,<contenttweaker:ingot_xp>,<contenttweaker:ingot_xp>],
[<contenttweaker:ingot_xp>,<contenttweaker:ingot_xp>,<contenttweaker:ingot_xp>],
[<contenttweaker:ingot_xp>,<contenttweaker:ingot_xp>,<contenttweaker:ingot_xp>]]);
recipes.addShapeless(<contenttweaker:ingot_xp>*9, [<contenttweaker:block_xp>]);


val alloystoAdapt =
[
<contenttweaker:inert_ingot>,
<enderio:item_alloy_endergy_ingot:5>,
<enderio:item_alloy_ingot:1>,
<enderio:item_alloy_ingot:3>,
<enderio:item_alloy_ingot:4>,
<enderio:item_alloy_ingot:5>,
<enderio:item_alloy_ingot:6>,
<enderio:item_alloy_ingot:7>,
<enderio:item_alloy_ingot>,
<nuclearcraft:alloy:6>,
<tconstruct:ingots:5>,
<thermalfoundation:material:160>,
<thermalfoundation:material:161>,
<thermalfoundation:material:162>,
<thermalfoundation:material:163>,
<thermalfoundation:material:164>,
]
 as IItemStack[];

for item in alloystoAdapt {
AlloySmelter.addRecipe(item * 3, [<contenttweaker:adaptive_ingot>, item], 15000);
ArcFurnace.addRecipe(item * 3, <contenttweaker:adaptive_ingot>, null, 500, 1024, [item], "Alloying");
AlloyFurnace.addRecipe(<contenttweaker:adaptive_ingot>, item, item * 3);
}




##########################################################################################
print("==================== end of parts.zs ====================");
