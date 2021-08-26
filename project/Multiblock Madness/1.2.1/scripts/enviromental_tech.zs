import crafttweaker.item.IItemStack;
import mods.advancedrocketry.Crystallizer;
import mods.rockhounding_chemistry.PullingCrucible;
import mods.advancedrocketry.PrecisionAssembler;
import crafttweaker.item.IIngredient;

print("==================== loading mods enviromental tech.zs ====================");
##########################################################################################

val itemstoRemove =
[
<environmentaltech:void_res_miner_cont_1>,
<environmentaltech:void_res_miner_cont_2>,
<environmentaltech:void_res_miner_cont_3>,
<environmentaltech:void_res_miner_cont_4>,
<environmentaltech:void_res_miner_cont_5>,
<environmentaltech:void_res_miner_cont_6>,
<environmentaltech:void_botanic_miner_cont_1>,
<environmentaltech:void_botanic_miner_cont_2>,
<environmentaltech:void_botanic_miner_cont_3>,
<environmentaltech:void_botanic_miner_cont_4>,
<environmentaltech:void_botanic_miner_cont_6>,
<environmentaltech:void_botanic_miner_cont_5>,
<environmentaltech:laser_core>,
//<etlunar:lunarvoltaic_cell>,
<environmentaltech:connector>,
<environmentaltech:laser_lens_crystal>,
<environmentaltech:photovoltaic_cell>,
]
 as IItemStack[];

for item in itemstoRemove {
	recipes.remove(item);
}

//laser core
recipes.addShaped(<environmentaltech:laser_core>, [[<advgenerators:iron_frame>, <threng:material:5>, <advgenerators:iron_frame>],[<environmentaltech:connector>, <threng:material:5>, <environmentaltech:connector>], [<advgenerators:iron_frame>, <threng:material:5>, <advgenerators:iron_frame>]]);
recipes.addShaped(<environmentaltech:laser_core>*4, [[<advgenerators:iron_frame>, <rockhounding_chemistry:alloy_items_gems:1>, <advgenerators:iron_frame>],[<environmentaltech:connector>, <rockhounding_chemistry:alloy_items_gems:1>, <environmentaltech:connector>], [<advgenerators:iron_frame>, <rockhounding_chemistry:alloy_items_gems:1>, <advgenerators:iron_frame>]]);

/* Lunar Biz
//lunarvoltaic cell
recipes.addShaped(<etlunar:lunarvoltaic_cell>, [[null, <threng:material:1>, null],[<threng:material:1>, <extendedcrafting:material:2>, <threng:material:1>], [null, <threng:material:1>, null]]);
*/
val MinerTooltip =
[
<environmentaltech:void_ore_miner_cont_1>,
<environmentaltech:void_ore_miner_cont_2>,
<environmentaltech:void_ore_miner_cont_3>,
<environmentaltech:void_ore_miner_cont_4>,
<environmentaltech:void_ore_miner_cont_5>,
<environmentaltech:void_ore_miner_cont_6>,
<environmentaltech:void_res_miner_cont_1>,
<environmentaltech:void_res_miner_cont_2>,
<environmentaltech:void_res_miner_cont_3>,
<environmentaltech:void_res_miner_cont_4>,
<environmentaltech:void_res_miner_cont_5>,
<environmentaltech:void_res_miner_cont_6>,
<environmentaltech:void_botanic_miner_cont_1>,
<environmentaltech:void_botanic_miner_cont_2>,
<environmentaltech:void_botanic_miner_cont_3>,
<environmentaltech:void_botanic_miner_cont_4>,
<environmentaltech:void_botanic_miner_cont_6>,
<environmentaltech:void_botanic_miner_cont_5>,
]
 as IItemStack[];

for item in MinerTooltip {
item.addTooltip(format.green("潜行右键来改变模式"));
}

//Photo cell
recipes.addShaped(<environmentaltech:photovoltaic_cell>, [[<mekanismgenerators:solarpanel>, <techreborn:reinforced_glass>, <mekanismgenerators:solarpanel>],[<techreborn:reinforced_glass>, <thermalfoundation:material:327>, <techreborn:reinforced_glass>], [<mekanismgenerators:solarpanel>, <techreborn:reinforced_glass>, <mekanismgenerators:solarpanel>]]);

//Connector
PrecisionAssembler.addRecipe(<environmentaltech:connector>, 600, 25000, <powersuits:powerarmorcomponent:6>, <techreborn:part:28>, <nuclearcraft:part:2>, <advgenerators:iron_wiring>*2);


//Crystal Lens
recipes.addShaped(<environmentaltech:laser_lens_crystal>, [[<environmentaltech:kyronite_crystal>, <environmentaltech:kyronite_crystal>, <environmentaltech:kyronite_crystal>],[<environmentaltech:kyronite_crystal>, <ore:etLaserLens>, <environmentaltech:kyronite_crystal>], [<environmentaltech:kyronite_crystal>, <environmentaltech:kyronite_crystal>, <environmentaltech:kyronite_crystal>]]);



//Start of stuff for making the crystals
val crystals =[
	<environmentaltech:litherite_crystal>,
	<environmentaltech:erodium_crystal>,
	<environmentaltech:kyronite_crystal>,
	<environmentaltech:pladium_crystal>,
	<environmentaltech:ionite_crystal>,
	<environmentaltech:aethium_crystal>,
] as IItemStack[];
for item in crystals {
item.addTooltip(format.gold("可制作"));
}

//Litherite
Crystallizer.addRecipe(<environmentaltech:litherite_crystal>, 500, 10000, <thermalfoundation:material:1028>, <actuallyadditions:item_crystal_empowered:4>); 
PullingCrucible.add(<actuallyadditions:item_crystal_empowered:4>, <thermalfoundation:material:1028>, <environmentaltech:litherite_crystal>*4);


//Tier 2
Crystallizer.addRecipe(<environmentaltech:erodium_crystal>, 200, 20000, <environmentaltech:litherite_crystal>*2, <botania:sparkupgrade:1>); 

//Tier 3
Crystallizer.addRecipe(<environmentaltech:kyronite_crystal>, 300, 40000, <environmentaltech:erodium_crystal>*2, <contenttweaker:blood_crystal>); 
//Blood Crystal
mods.nuclearcraft.Crystallizer.addRecipe(<liquid:refined_life_essence>*1000, <contenttweaker:blood_crystal>, 1, 4);

//Tier 4
Crystallizer.addRecipe(<environmentaltech:pladium_crystal>, 400, 60000, <environmentaltech:kyronite_crystal>*2, <qmd:semiconductor:4>); 

//Tier 5
Crystallizer.addRecipe(<environmentaltech:ionite_crystal>, 500, 80000, <environmentaltech:pladium_crystal>*2, <thaumadditions:mithrillium_ingot>); 

//Tier 6
Crystallizer.addRecipe(<environmentaltech:aethium_crystal>, 600, 100000, <environmentaltech:ionite_crystal>*2, <botania:manaresource:14>); 













##########################################################################################
print("==================== end of mods enviromental tech.zs ====================");
