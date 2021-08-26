import crafttweaker.item.IItemStack;
print("==================== loading simple storage.zs ====================");
##########################################################################################

val itemstoRemove =
[
<storagenetwork:master>,
<storagenetwork:request>,
<storagenetwork:controller>,
<storagenetwork:process_kabel>,
<storagenetwork:remote>,
<storagenetwork:remote:3>,
<storagenetwork:remote:2>,
<storagenetwork:remote:1>,
<storagenetwork:kabel>,
<storagenetwork:storage_kabel>
]
 as IItemStack[];

for item in itemstoRemove {
	recipes.remove(item);
}

<storagenetwork:storage_kabel>.addTooltip(format.aqua("可以配置优先级和过滤"));

recipes.addShaped(<storagenetwork:controller>, [[<actuallyadditions:block_crystal:1>, <storagenetwork:process_kabel>, <actuallyadditions:block_crystal:1>],[<storagenetwork:process_kabel>, <rockhounding_chemistry:misc_items:1>, <storagenetwork:process_kabel>], [<actuallyadditions:block_crystal:1>, <storagenetwork:process_kabel>, <actuallyadditions:block_crystal:1>]]);
recipes.addShaped(<storagenetwork:request>, [[<moreplates:restonia_plate>, <storagenetwork:simple_kabel>, <moreplates:restonia_plate>],[<storagenetwork:simple_kabel>, <engineersdecor:treated_wood_crafting_table>, <storagenetwork:simple_kabel>], [<moreplates:restonia_plate>, <storagenetwork:simple_kabel>, <moreplates:restonia_plate>]]);
recipes.addShaped(<storagenetwork:master>, [[<moreplates:void_plate>, <storagenetwork:kabel>, <moreplates:void_plate>],[<storagenetwork:kabel>, <rockhounding_chemistry:misc_items:1>, <storagenetwork:kabel>], [<moreplates:void_plate>, <storagenetwork:kabel>, <moreplates:void_plate>]]);
recipes.addShaped(<storagenetwork:kabel> * 8, [[<minecraft:stone_slab>, <minecraft:stone_slab>, <minecraft:stone_slab>],[<thermalfoundation:material:161>, <minecraft:redstone>, <thermalfoundation:material:161>], [<minecraft:stone_slab>, <minecraft:stone_slab>, <minecraft:stone_slab>]]);
recipes.addShaped(<storagenetwork:process_kabel> * 4, [[<enderio:item_alloy_ingot:5>, <storagenetwork:kabel>, <enderio:item_alloy_ingot:5>],[<storagenetwork:kabel>, <minecraft:observer>, <storagenetwork:kabel>], [<enderio:item_alloy_ingot:5>, <storagenetwork:kabel>, <enderio:item_alloy_ingot:5>]]);
recipes.addShapedMirrored(<storagenetwork:storage_kabel> * 2, [[<minecraft:piston>, <storagenetwork:simple_kabel>, <minecraft:sticky_piston>],[<storagenetwork:simple_kabel>, <ore:chestWood>, <storagenetwork:simple_kabel>], [<minecraft:sticky_piston>, <storagenetwork:simple_kabel>, <minecraft:piston>]]);

//remotes
recipes.addShaped(<storagenetwork:remote>, [[<thermalfoundation:material:354>, <astralsorcery:itemhandtelescope>, <ore:plateInvar>],[<thermalfoundation:material:161>, <storagenetwork:master>, <ore:ingotElectrum>], [<thermalfoundation:material:354>, <actuallyadditions:item_crafter_on_a_stick>, <thermalfoundation:material:354>]]);

recipes.addShaped("remotetwo", <storagenetwork:remote:3>, [[<thermalfoundation:material:352>, <immersiveengineering:material:26>, <thermalfoundation:material:352>],[<enderio:item_alloy_ingot:5>, <storagenetwork:remote>.marked("sncontroller"), <enderio:item_alloy_ingot:5>], [<thermalfoundation:material:352>, <immersiveengineering:powerpack>, <thermalfoundation:material:352>]],
	function(out, ins, cInfo) {
	    return out.withTag(ins.sncontroller.tag);
    }, null);
recipes.addShaped(<storagenetwork:remote:3>, [[<thermalfoundation:material:352>, <immersiveengineering:material:26>, <thermalfoundation:material:352>],[<enderio:item_alloy_ingot:5>, <storagenetwork:master>, <enderio:item_alloy_ingot:5>], [<thermalfoundation:material:352>, <immersiveengineering:powerpack>, <thermalfoundation:material:352>]]);

recipes.addShaped("remotethree", <storagenetwork:remote:2>, [[<moreplates:electrical_steel_plate>, <rockhounding_chemistry:probe_items:1>, <moreplates:electrical_steel_plate>],[<enderutilities:enderpart:1>, <storagenetwork:remote:3>.marked("sncontroller"), <enderutilities:enderpart:1>], [<moreplates:electrical_steel_plate>, <ore:circuitAdvanced>, <moreplates:electrical_steel_plate>]],
	function(out, ins, cInfo) {
	    return out.withTag(ins.sncontroller.tag);
    }, null);
recipes.addShaped(<storagenetwork:remote:2>, [[<moreplates:electrical_steel_plate>, <rockhounding_chemistry:probe_items:1>, <moreplates:electrical_steel_plate>],[<enderutilities:enderpart:1>, <storagenetwork:master>, <enderutilities:enderpart:1>], [<moreplates:electrical_steel_plate>, <ore:circuitAdvanced>, <moreplates:electrical_steel_plate>]]);

recipes.addShaped("remotefour", <storagenetwork:remote:1>, [[<moreplates:end_steel_plate>, <appliedenergistics2:material:41>, <moreplates:end_steel_plate>],[<enderutilities:enderpart:2>, <storagenetwork:remote:2>.marked("sncontroller"), <enderutilities:enderpart:2>], [<moreplates:end_steel_plate>, <techreborn:part:3>, <moreplates:end_steel_plate>]],
	function(out, ins, cInfo) {
	    return out.withTag(ins.sncontroller.tag);
    }, null);
recipes.addShaped(<storagenetwork:remote:1>, [[<moreplates:end_steel_plate>, <appliedenergistics2:material:41>, <moreplates:end_steel_plate>],[<enderutilities:enderpart:2>, <storagenetwork:master>, <enderutilities:enderpart:2>], [<moreplates:end_steel_plate>, <techreborn:part:3>, <moreplates:end_steel_plate>]]);


##########################################################################################
print("==================== end of simple storage.zs ====================");
