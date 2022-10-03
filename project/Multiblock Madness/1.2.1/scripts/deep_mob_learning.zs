import crafttweaker.item.IItemStack;
import mods.botania.ElvenTrade;
print("==================== loading Deep Mob Learning.zs ====================");
##########################################################################################

val itemstoRemove =
[
	<deepmoblearning:machine_casing>,
	<deepmoblearning:soot_covered_plate>,
	<deepmoblearning:data_model_dragon>,
	<deepmoblearning:data_model_wither>,
	<deepmoblearning:trial_keystone>,
	<deepmoblearning:trial_key>,
	<deepmoblearning:simulation_chamber>,
	<deepmoblearning:glitch_infused_leggings>,
	<deepmoblearning:glitch_infused_sword>,
	<deepmoblearning:glitch_infused_helmet>,
	<deepmoblearning:glitch_infused_chestplate>,
	<deepmoblearning:glitch_infused_boots>,
	<deepmoblearning:extraction_chamber>,
	<deepmoblearningbm:digital_agonizer>,
]
 as IItemStack[];

for item in itemstoRemove {
	recipes.remove(item);
}

<deepmoblearning:machine_casing>.displayName = "炭灰外壳";

//No more free Nether Stars
recipes.removeShaped(<minecraft:nether_star>, [[<minecraft:skull:1>, <deepmoblearning:living_matter_extraterrestrial>, <minecraft:skull:1>],[<minecraft:soul_sand>, <minecraft:soul_sand>, <minecraft:soul_sand>], [null, <minecraft:soul_sand>, null]]);



//Sooty Plates
recipes.addShaped(<deepmoblearning:soot_covered_plate>, [[<actuallyadditions:item_misc:10>, <actuallyadditions:item_misc:10>, <actuallyadditions:item_misc:10>],
[<actuallyadditions:item_misc:10>, <ore:tierOnePlate>, <actuallyadditions:item_misc:10>], 
[<actuallyadditions:item_misc:10>, <actuallyadditions:item_misc:10>, <actuallyadditions:item_misc:10>]]);

recipes.addShaped(<deepmoblearning:soot_covered_plate>*2, [[<actuallyadditions:item_misc:10>, <actuallyadditions:item_misc:10>, <actuallyadditions:item_misc:10>],
[<actuallyadditions:item_misc:10>, <ore:tierTwoPlate>, <actuallyadditions:item_misc:10>], 
[<actuallyadditions:item_misc:10>, <actuallyadditions:item_misc:10>, <actuallyadditions:item_misc:10>]]);
//Sooty Casings
recipes.addShaped(<contenttweaker:sooty_block>*4, [[null, <deepmoblearning:soot_covered_plate>, null],[<deepmoblearning:soot_covered_plate>, null, <deepmoblearning:soot_covered_plate>], [null, <deepmoblearning:soot_covered_plate>, null]]);

//Keys
recipes.addShaped(<deepmoblearning:trial_key>, [[null, <mekanism:otherdust>, <minecraft:ender_pearl>],[<mekanism:otherdust>, <arcanearchives:radiant_key>, <mekanism:otherdust>], [<deepmoblearning:soot_covered_redstone>, <mekanism:otherdust>, null]]);

//Extraction Chamber
recipes.addShaped(<deepmoblearning:extraction_chamber>, [[<bloodmagic:blood_rune:1>, <immersiveengineering:material:27>, <bloodmagic:blood_rune:1>],[<moreplates:diamatine_plate>, <deepmoblearning:machine_casing>, <moreplates:diamatine_plate>], [<bloodmagic:blood_rune:1>, <immersiveengineering:metal_decoration0:4>, <bloodmagic:blood_rune:1>]]);

//Agonizer
recipes.addShaped(<deepmoblearningbm:digital_agonizer>, [[<bloodmagic:blood_rune:3>, <bloodarsenal:gem:1>, <bloodmagic:blood_rune:3>],[<moreplates:restonia_gear>, <deepmoblearning:machine_casing>, <moreplates:restonia_gear>], [<bloodmagic:blood_rune:3>, <immersiveengineering:metal_decoration0:5>, <bloodmagic:blood_rune:3>]]);

//Sim Chamber
recipes.addShaped(<deepmoblearning:simulation_chamber>, [[<moreplates:osgloglas_plate>, <actuallyadditions:item_crystal_empowered>, <moreplates:osgloglas_plate>],[<actuallyadditions:item_crystal_empowered>, <deepmoblearning:machine_casing>, <actuallyadditions:item_crystal_empowered>], [<moreplates:osgloglas_plate>, <techreborn:part:2>, <moreplates:osgloglas_plate>]]);






//Pre kill bosses
recipes.addShapeless(<deepmoblearning:data_model_dragon>.withTag({tier: 1, killCount: 1, totalKillCount: 1}), [<deepmoblearning:data_model_blank>,<minecraft:dragon_egg>]);
recipes.addShapeless(<deepmoblearning:data_model_wither>.withTag({tier: 1, killCount: 1, totalKillCount: 1}), [<deepmoblearning:data_model_blank>,<minecraft:nether_star>]);

//Glitch
ElvenTrade.addRecipe([<deepmoblearning:glitch_infused_sword>], [<botania:elementiumsword>,<enderio:item_material:18>,<deepmoblearning:glitch_infused_ingot>*8]);
ElvenTrade.addRecipe([<deepmoblearning:glitch_infused_helmet>], [<botania:elementiumhelm>,<enderio:item_material:18>,<deepmoblearning:glitch_infused_ingot>*5]);
ElvenTrade.addRecipe([<deepmoblearning:glitch_infused_chestplate>], [<botania:elementiumchest>,<enderio:item_material:18>,<deepmoblearning:glitch_infused_ingot>*8]);
ElvenTrade.addRecipe([<deepmoblearning:glitch_infused_leggings>], [<botania:elementiumlegs>,<enderio:item_material:18>,<deepmoblearning:glitch_infused_ingot>*7]);
ElvenTrade.addRecipe([<deepmoblearning:glitch_infused_boots>], [<botania:elementiumboots>,<enderio:item_material:18>,<deepmoblearning:glitch_infused_ingot>*4]);

##########################################################################################
print("==================== end of Deep Mob Learning.zs ====================");
