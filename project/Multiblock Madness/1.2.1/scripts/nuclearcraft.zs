
import crafttweaker.item.IItemStack;
import mods.techreborn.blastFurnace;
import mods.nuclearcraft.IngotFormer;
print("==================== loading nuclearcraft.zs ====================");
##########################################################################################

val itemstoRemove =
[
<nuclearcraft:manufactory>,
<nuclearcraft:alloy_furnace>,
<nuclearcraft:part:10>,
<nuclearcraft:part:12>,
<nuclearcraft:part:4>,
]
 as IItemStack[];

for item in itemstoRemove {
	recipes.remove(item);
}


<nuclearcraft:fission_irradiator>.addTooltip(format.green("请查阅核电工程师章节"));

//sink
recipes.addShaped(<cookingforblockheads:sink>, [[<thermalfoundation:material:32>, <thermalfoundation:material:32>, <thermalfoundation:material:32>],[<minecraft:hardened_clay>, <nuclearcraft:water_source_compact>, <minecraft:hardened_clay>], [<minecraft:hardened_clay>, <minecraft:hardened_clay>, <minecraft:hardened_clay>]]);

//Steel Chassis
recipes.addShaped(<nuclearcraft:part:12>, [[<jaopca:item_sticktough>, <moreplates:electrical_steel_plate>, <jaopca:item_sticktough>],[<moreplates:dark_steel_plate>, <enderio:item_material>, <moreplates:dark_steel_plate>], [<jaopca:item_sticktough>, <moreplates:electrical_steel_plate>, <jaopca:item_sticktough>]]);

##Manufactory
##------------

recipes.addShaped(<nuclearcraft:manufactory>, [[<thermalfoundation:material:323>, <minecraft:piston>, <thermalfoundation:material:323>],[<minecraft:flint>, <nuclearcraft:part:10>, <minecraft:flint>], [<thermalfoundation:material:323>, <nuclearcraft:part:4>, <thermalfoundation:material:323>]]);

recipes.addShaped(<contenttweaker:plating_basic> * 4, [[null, <nuclearcraft:part>, null],[<nuclearcraft:part>, null, <nuclearcraft:part>], [null, <nuclearcraft:part>, null]]);
recipes.addShaped(<nuclearcraft:alloy_furnace>, [[<nuclearcraft:part>, <minecraft:redstone>, <nuclearcraft:part>],[<minecraft:brick>, <nuclearcraft:part:10>, <minecraft:brick>], [<nuclearcraft:part>, <nuclearcraft:part:4>, <nuclearcraft:part>]]);

//mods.nuclearcraft.pressurizer.addRecipe([itemInput, itemOutput, @Optional double timeMultiplier, @Optional double powerMultiplier, @Optional double processRadiation]);
//mods.nuclearcraft.pressurizer.addRecipe([<enderore:dust_ender>, <minecraft:ender_pearl>, 5, 10]);

recipes.remove(<nuclearcraft:dominos>);
mods.extendedcrafting.TableCrafting.addShaped(<nuclearcraft:dominos>, [
    [<actuallyadditions:item_misc:4>, <actuallyadditions:item_misc:4>, <actuallyadditions:item_misc:4>, <actuallyadditions:item_misc:4>, <actuallyadditions:item_misc:4>],
    [<actuallyadditions:item_misc:4>, <xlfoodmod:cheese>, <ore:mushroomAny>, <xlfoodmod:sausage>, <actuallyadditions:item_misc:4>],
    [<actuallyadditions:item_misc:4>, <ore:mushroomAny>, <xlfoodmod:bacon>, <ore:mushroomAny>, <actuallyadditions:item_misc:4>],
    [<actuallyadditions:item_misc:4>, <xlfoodmod:sausage>, <ore:mushroomAny>, <xlfoodmod:cheese>, <actuallyadditions:item_misc:4>],
    [<actuallyadditions:item_misc:4>, <actuallyadditions:item_misc:4>, <actuallyadditions:item_misc:4>, <actuallyadditions:item_misc:4>, <actuallyadditions:item_misc:4>]
]);  

//Ender Pearl
IngotFormer.addRecipe(<liquid:ender>*250, <minecraft:ender_pearl>);


blastFurnace.addRecipe(<nuclearcraft:ingot:14>, null, <nuclearcraft:dust:14>, null, 200, 80, 1500);

//Solanoid
recipes.addShaped(<nuclearcraft:part:4> * 2, [[null, <powersuits:powerarmorcomponent>, <immersiveengineering:material:2>],[<powersuits:powerarmorcomponent>, <immersiveengineering:material:2>, <powersuits:powerarmorcomponent>], [<immersiveengineering:material:2>, <powersuits:powerarmorcomponent>, null]]);

##########################################################################################
print("==================== end of nuclearcraft.zs ====================");
