import crafttweaker.item.IItemStack;
import mods.rockhounding_chemistry.MaterialCabinet;
import mods.rockhounding_chemistry.Transposer;


print("==================== loading mods rockhounding.zs ====================");
##########################################################################################

val EletrochemicalCTSR = <rockhounding_chemistry:machines_e:7>;

val itemstoRemove =
[
    <rockhounding_chemistry:misc_items:13>,
    EletrochemicalCTSR,
]
 as IItemStack[];

for item in itemstoRemove {
	recipes.remove(item);
}



<rockhounding_chemistry:machines_d>.addTooltip("按住shift来查看多方块所需材料");
<rockhounding_chemistry:machines_d>.addShiftTooltip((format.red("- 电站")));
<rockhounding_chemistry:machines_d>.addShiftTooltip((format.gray("- 物料柜")));
<rockhounding_chemistry:machines_d>.addShiftTooltip((format.white("- 元素柜")));
<rockhounding_chemistry:machines_d>.addShiftTooltip((format.yellow("- 可选：服务器")));

mods.enderio.SagMill.addRecipe([<rockhounding_chemistry:chemical_dusts:11>,<techreborn:dust:37>], [0.15,0.1], <rockhounding_chemistry:phosphate_shards:8>);
mods.enderio.SagMill.addRecipe([<thermalfoundation:material:64>,<rockhounding_chemistry:chemical_dusts:52>], [0.20,0.15], <rockhounding_chemistry:phosphate_shards:12>);
mods.enderio.SagMill.addRecipe([<rockhounding_chemistry:chemical_dusts:35>,<thermalfoundation:material>], [0.25,0.1], <rockhounding_chemistry:oxide_shards:26>);

<ore:gemFluorite>.add(<rockhounding_chemistry:chemical_items:4>);

recipes.addShaped(<rockhounding_chemistry:misc_blocks_a:13>, [[<rockhounding_chemistry:misc_blocks_a>, <minecraft:glass>, <rockhounding_chemistry:misc_blocks_a>],[<minecraft:glass>, null, <minecraft:glass>], [<rockhounding_chemistry:misc_blocks_a>, <minecraft:glass>, <rockhounding_chemistry:misc_blocks_a>]]);

//Fly Ash Balls
recipes.remove(<rockhounding_chemistry:misc_items:36>);
recipes.addShaped(<rockhounding_chemistry:misc_items:36>, [[<rockhounding_chemistry:chemical_items:1>, <rockhounding_chemistry:chemical_items:1>, <rockhounding_chemistry:chemical_items:1>],[<rockhounding_chemistry:chemical_items:1>,  <liquid:water>*1000, <rockhounding_chemistry:chemical_items:1>], [<rockhounding_chemistry:chemical_items:1>, <rockhounding_chemistry:chemical_items:1>, <rockhounding_chemistry:chemical_items:1>]]);

//gas Pipes
recipes.remove(<rockhounding_chemistry:gasline_duct>);

recipes.addShaped(<rockhounding_chemistry:gasline_duct> * 16, [[<contenttweaker:hastelloyfoil>, <rockhounding_chemistry:misc_items:7>, <contenttweaker:hastelloyfoil>],[<contenttweaker:hastelloyfoil>, <rockhounding_chemistry:misc_items:7>, <contenttweaker:hastelloyfoil>], [<contenttweaker:hastelloyfoil>, <rockhounding_chemistry:misc_items:7>, <contenttweaker:hastelloyfoil>]]);
recipes.addShaped(<rockhounding_chemistry:gasline_duct> * 8, [[<rockhounding_chemistry:misc_items:3>, <rockhounding_chemistry:misc_items:7>, <rockhounding_chemistry:misc_items:3>],[<rockhounding_chemistry:misc_items:3>, <rockhounding_chemistry:misc_items:7>, <rockhounding_chemistry:misc_items:3>], [<rockhounding_chemistry:misc_items:3>, <rockhounding_chemistry:misc_items:7>, <rockhounding_chemistry:misc_items:3>]]);
recipes.addShaped(<rockhounding_chemistry:gasline_pump> * 2, [[<contenttweaker:hastelloyfoil>, <rockhounding_chemistry:misc_items:7>, <contenttweaker:hastelloyfoil>],[<contenttweaker:hastelloyfoil>, <minecraft:piston>, <contenttweaker:hastelloyfoil>], [<contenttweaker:hastelloyfoil>, <minecraft:redstone_block>, <contenttweaker:hastelloyfoil>]]);


//Item Detector
recipes.remove(<rockhounding_chemistry:misc_items:11>);
recipes.addShaped(<rockhounding_chemistry:misc_items:11>, [[<moreplates:energetic_silver_plate>, <mysticalmechanics:gear_gold_on>, <moreplates:energetic_silver_plate>],[<mysticalmechanics:gear_gold_off>, <techreborn:part:2>, <mysticalmechanics:gear_gold_off>], [<moreplates:energetic_silver_plate>, <mysticalmechanics:gear_gold_on>, <moreplates:energetic_silver_plate>]]);

//logic chips (might change idk)
recipes.remove(<rockhounding_chemistry:misc_items:1>);
recipes.addShaped(<rockhounding_chemistry:misc_items:1>, [[<rockhounding_chemistry:misc_items:3>, <minecraft:redstone>, <rockhounding_chemistry:misc_items:3>],[<actuallyadditions:item_misc:7>, <moreplates:nether_quartz_plate>, <actuallyadditions:item_misc:7>], [<rockhounding_chemistry:misc_items:3>, <minecraft:redstone>, <rockhounding_chemistry:misc_items:3>]]);

//Advanced Logic Chip
recipes.remove(<rockhounding_chemistry:misc_items:10>);
recipes.addShaped(<rockhounding_chemistry:misc_items:10>, [[<contenttweaker:goldfoil>, <minecraft:redstone>, <contenttweaker:goldfoil>],[<actuallyadditions:item_misc:8>, <rockhounding_chemistry:misc_items:1>, <actuallyadditions:item_misc:8>], [<contenttweaker:goldfoil>, <minecraft:redstone>, <contenttweaker:goldfoil>]]);

//Heating Element
recipes.addShaped(<rockhounding_chemistry:misc_items:13>*2, [[<rockhounding_chemistry:misc_items:14>, <rockhounding_chemistry:misc_items:14>, <rockhounding_chemistry:misc_items:14>],[<rockhounding_chemistry:misc_items:14>, null, <rockhounding_chemistry:misc_items:14>], [<techreborn:plates:35>, <techreborn:plates:35>, <techreborn:plates:35>]]);
recipes.addShaped(<rockhounding_chemistry:misc_items:13>, [[<contenttweaker:material_part:6>, <contenttweaker:material_part:6>, <contenttweaker:material_part:6>],[<contenttweaker:material_part:6>, null, <contenttweaker:material_part:6>], [<techreborn:plates:35>, <techreborn:plates:35>, <techreborn:plates:35>]]);

// Remove Iron Casings =============================================================
//<rockhounding_chemistry:misc_items:5>.displayName = "TAIGA Casing";


// Remove Unused Graphite Ingots =============================================================
//mods.jei.JEI.removeAndHide(<rockhounding_chemistry:metal_items:7>);

// Remove Unused wrong Titanium Plate =============================================================
//mods.jei.JEI.removeAndHide(<rockhounding_chemistry:alloy_parts:1>);

// Sodium Hydroxid through Alcheical Imbuer  =====================================================================================================================================================================
//mods.thermalexpansion.Imbuer.addRecipe(<liquid:sodium_hydroxide> * 500, <mekanism:salt> * 3, <liquid:water> * 1000, 2048);
//mods.thermalexpansion.Imbuer.addRecipe(<liquid:sodium_hydroxide> * 2500, <extraplanets:iodide_salt> * 3, <liquid:water> * 1000, 2048);


// Remove and Replace Gas Pipe =============================================================
//mods.rockhounding_chemistry.ProfilingBench.removeByOutput(<rockhounding_chemistry:misc_items:5>);
//mods.rockhounding_chemistry.ProfilingBench.add(<thermalfoundation:glass:3>, <rockhounding_chemistry:misc_items:7>*4, 1);

// Remove and Replace Iron Casings =============================================================
//mods.rockhounding_chemistry.ProfilingBench.removeByOutput(<rockhounding_chemistry:misc_items:7>);
//mods.rockhounding_chemistry.ProfilingBench.add(<taiga:triberium_block>, <rockhounding_chemistry:misc_items:5>*8, 5);

// Vapor Distilation Plant =============================================================
recipes.remove(<rockhounding_chemistry:machines_d:4>);
recipes.addShaped(<rockhounding_chemistry:machines_d:4>, [[<contenttweaker:casingplatinum>, <rockhounding_chemistry:misc_items:7>, <contenttweaker:casingplatinum>],[<rockhounding_chemistry:misc_items:7>, <techreborn:part:1>, <rockhounding_chemistry:misc_items:7>], [<contenttweaker:casingplatinum>, <rockhounding_chemistry:machines_a:6>, <contenttweaker:casingplatinum>]]);



##=======================================================
##LAB BLENDER
##=======================================================
// Lab Blend Controller =============================================================
//recipes.remove(<rockhounding_chemistry:machines_a:9>);
//**Note 1: input will be extended to their oredicts. Plans to improve this.
//input array: the list of ingredients with their quantity
//output stack: the resulting mixture and its quantity
//mods.rockhounding_chemistry.LabBlender.add([<minecraft:redstone>*9, <minecraft:gunpowder>*4, <minecraft:glowstone_dust>*2], <minecraft:magma_cream>*9);
//output stack: the output to remove
//mods.rockhounding_chemistry.LabBlender.remove(<minecraft:magma_cream>);


recipes.addShaped(EletrochemicalCTSR, [[<rockhounding_chemistry:misc_items:7>, <rockhounding_chemistry:machines_a:4>, <rockhounding_chemistry:misc_items:7>],[<rockhounding_chemistry:misc_items:8>, <rockhounding_chemistry:misc_items:1>, <rockhounding_chemistry:misc_items:8>], [<rockhounding_chemistry:misc_items:5>, <rockhounding_chemistry:slurry_agitator>, <rockhounding_chemistry:misc_items:5>]]);


// Power Station  =============================================================
//recipes.remove(<rockhounding_chemistry:machines_a:2>);

// Gas Condenser  =============================================================
//recipes.remove(<rockhounding_chemistry:machines_c:1>);

// Pressure Vessel  =============================================================
//recipes.remove(<rockhounding_chemistry:machines_b:9>);

// Evaporation Tank  =============================================================
//recipes.remove(<rockhounding_chemistry:machines_a:12>);

// Seasonal Rack  =============================================================
//recipes.remove(<rockhounding_chemistry:machines_a:13>);

// Slurry Pond  =============================================================
//recipes.remove(<rockhounding_chemistry:machines_b>);

// Transposer  =============================================================
//recipes.remove(<rockhounding_chemistry:machines_d:11>);

// Heat Exchanger =============================================================
//recipes.remove(<rockhounding_chemistry:machines_b:11>);

// Fluid Tank =============================================================
//recipes.remove(<rockhounding_chemistry:machines_a:4>);

// Gas Pressurizer =============================================================
//recipes.remove(<rockhounding_chemistry:machines_b:1>);

// Expansion Chambre =============================================================
//recipes.remove(<rockhounding_chemistry:machines_a:15>);

// Catalyst Regenerator =============================================================
//recipes.remove(<rockhounding_chemistry:machines_e:3>);

## Air Compressor =============================================================
recipes.remove(<rockhounding_chemistry:machines_b:10>);
recipes.addShaped(<rockhounding_chemistry:machines_b:10>, [[<rockhounding_chemistry:misc_items:3>, <rockhounding_chemistry:misc_items:3>, <rockhounding_chemistry:misc_items:3>],[<rockhounding_chemistry:misc_blocks_a>, <rockhounding_chemistry:misc_items:9>, <rockhounding_chemistry:misc_items:7>], [<techreborn:plates:35>, <morefurnaces:furnaceblock>, <techreborn:plates:35>]]);

// Gas Holder =============================================================
//recipes.remove(<rockhounding_chemistry:machines_d:6>);

##=======================================================
##MINERAL SIZER
##=======================================================

//Note 1: the script with a single output does not need comminution
//Note 2: output arrays can be also made of 1 element only
//input stack: the item to crush
//output stack: the crushed item


//input stack: the item to crush
//output array: the list of possible outputs
//comminution array: the comminution for each output (values: min 0, max 15)

//mods.rockhounding_chemistry.MineralSizer.add(<minecraft:hardened_clay>, [<minecraft:dye:0>, <minecraft:dye:1>, <minecraft:dye:2>, <minecraft:dye:3>, <minecraft:dye:4>], [5, 10, 12, 6, 4]);
//mods.rockhounding_chemistry.MineralSizer.add("oreUninspected", [<minecraft:dye:0>, <minecraft:dye:1>, <minecraft:dye:2>, <minecraft:dye:3>, <minecraft:dye:4>], [5, 10, 12, 6, 4]);

//input stack: the input to remove
//mods.rockhounding_chemistry.MineralSizer.removeByInput(<minecraft:hardened_clay>);
//input oredict: the oredict to remove
//mods.rockhounding_chemistry.MineralSizer.removeByOredict("oreUninspected");

// Server =============================================================
//recipes.remove(<rockhounding_chemistry:machines_a:14>);

// Compressing Unit =============================================================
//recipes.remove(<rockhounding_chemistry:misc_items:9>);

// GAN Controller =============================================================
//recipes.remove(<rockhounding_chemistry:machines_c>);

##=======================================================
##LEACHING VAT
##=======================================================
//input stack: the item to be analyzed
//output array: the list of extracted items
//gravity array: the gravity of each extracted items
//leachate: the fluid byproduct (optional)
//input stack: the input to remove
//mods.rockhounding_chemistry.LeachingVat.removeByInput(<minecraft:slime_ball>);
//input oredict: the oredict to remove
//mods.rockhounding_chemistry.LeachingVat.removeByOredict("slimeball");

#=======================================================
#CHEMICAL EXTRACTOR
#=======================================================
recipes.remove(<rockhounding_chemistry:machines_c:7>);
recipes.addShaped(<rockhounding_chemistry:machines_c:7>, [[<contenttweaker:aluminumcasing>, <rockhounding_chemistry:misc_items:11>, <contenttweaker:aluminumcasing>],[<rockhounding_chemistry:misc_items:7>, <rockhounding_chemistry:misc_items:1>, <rockhounding_chemistry:misc_items:7>], [<contenttweaker:aluminumcasing>, <rockhounding_chemistry:misc_blocks_a:3>, <contenttweaker:aluminumcasing>]]);

//categoty: the category of the input
//input stack: the item to decompose
//output array: the list of elements oredict composing the input
//quantity array: the list of quantities expressed in PartsPerCraft for each element
//mods.rockhounding_chemistry.ChemicalExtractor.add("Sulfate", <minecraft:hardened_clay>, ["dustCalcium", "dustSulfur", "dustCarbon", "dustIron", "dustTin"], [20, 13, 5, 4, 3]);




mods.rockhounding_chemistry.ChemicalExtractor.add("Rare Earth", <thaumcraft:nugget:10>, 
["dustVanadium", "dustScandium", "dustMolybdenum", "dustYttrium", "dustNeodymium"], [56, 42, 37, 25, 20]);
//input stack: the input to remove
//mods.rockhounding_chemistry.ChemicalExtractor.removebyInput(<minecraft:hardened_clay>);
//input oredict: the oredict to remove
//mods.rockhounding_chemistry.ChemicalExtractor.removeByOredict("oreIron");
//inhibited element: element not being extracted
//mods.rockhounding_chemistry.InhibitElements.inhibit("dustZirconium");

##=======================================================
##MATERIAL CABINET
##=======================================================
//symbol: a 2 chars symbol appearing on screen
//oredict: the element oredict to be added
//name: the display name of the added element
MaterialCabinet.add("Sy", "dustSyrmorite", "Syrmorite");
MaterialCabinet.add("Oc", "dustOctine", "Octine");

MaterialCabinet.add("Ar", "dustArdite", "Ardite");
MaterialCabinet.add("Gl", "dustGlowstone", "Glowstone");
MaterialCabinet.add("Bz", "dustBlaze", "Blaze Powder");     

MaterialCabinet.add("Ad", "dustAdamantine", "Adamantine");
MaterialCabinet.add("Or", "dustOrichalcum", "Orichalcum");
MaterialCabinet.add("Pl", "dustPalladium", "Palladium");
MaterialCabinet.add("St", "dustAstralStarmetal", "Starmetal");

MaterialCabinet.add("Hf", "dustHafnium", "Hafnium");



//oredict: the oredict to remove
//mods.rockhounding_chemistry.MaterialCabinet.remove("dustDraconium");

#=======================================================
#METAL ALLOYER
#=======================================================
//input array: list of oredicts composing the alloy
//quantity array: quantity expressed in PartsPerCraft for each element
//output stack: the resulting alloy

//Kanthal
mods.rockhounding_chemistry.MetalAlloyer.add(["dustIron", "dustChromium", "dustAluminum", "dustSilicon", "dustManganese", "dustCarbon"], [67, 23, 6, 2, 1, 1], <contenttweaker:material_part:5>);



//Nichrome
mods.rockhounding_chemistry.MetalAlloyer.remove(<rockhounding_chemistry:alloy_items_tech:22>);
//mods.rockhounding_chemistry.MetalAlloyer.add(["dustNickel", "dustChromium", "dustIron", "dustSilicon", "dustManganese", "dustMolybdenum"], [70, 20, 1, 2, 3, 4], <rockhounding_chemistry:alloy_items_tech:22>);

// Transposer echanges  =============================================================
Transposer.add(<liquid:ammonia>*1000, <liquid:ammonia>*1000);
Transposer.add(<liquid:carbon_dioxide>*1000, <liquid:carbon_dioxide>*1000);
Transposer.add(<liquid:compressed_air>*1000, <liquid:compressed_air>*1000);
Transposer.add(<liquid:hydrogen>*1000, <liquid:hydrogen>*1000);
Transposer.add(<liquid:liquid_oxygen>*1000, <liquid:liquidoxygen>*1000);
Transposer.add(<liquid:liquidoxygen>*1000, <liquid:liquid_oxygen>*1000);
Transposer.add(<liquid:nitrogen>*1000, <liquid:nitrogen>*1000);
Transposer.add(<liquid:oxygen>*1000, <liquid:oxygen>*1000);
Transposer.add(<liquid:raw_syngas>*1000, <liquid:raw_syngas>*1000);
Transposer.add(<liquid:silicone>*1000, <liquid:silicone>*1000);
Transposer.add(<liquid:syngas>*1000, <liquid:syngas>*1000);
Transposer.add(<liquid:sodium_hydroxide>*1000, <liquid:sodium_hydroxide_solution>*1000);
Transposer.add(<liquid:argon>*1000, <liquid:argon>*1000);
Transposer.add(<liquid:fluegas>*1000, <liquid:flue_gas>*1000);
Transposer.add(<liquid:flue_gas>*1000, <liquid:fluegas>*1000);
//Transposer.add(<liquid:hydrochloric_acid>*1000, <liquid:hydrogenchloride>*1000); not sure what liquid:hydrogenchloride should be, its not a fluid


#=======================================================
#PROFILING BENCH
#=======================================================
//input stack: the specific item to be shaped
//output stack: the reshaped item
//pattern: the casting pattern (0:generic, 1:coil, 2:rod, 3:foil, 4:arm, 5:casing, 6:gear, 7:ingot, 8:gauze, 9:coin, 10:plate )
recipes.remove(<rockhounding_chemistry:machines_a:11>);
##Moved to 3D craft
//recipes.addShaped(<rockhounding_chemistry:machines_a:11>, [[<moreplates:invar_stick>, <advancedrocketry:platepress>, <moreplates:invar_stick>],[<moreplates:invar_stick>, null, <moreplates:invar_stick>], [<minecraft:stone_slab>, <minecraft:stone_slab>, <minecraft:stone_slab>]]);


//mods.rockhounding_chemistry.ProfilingBench.removeByOutput(<rockhounding_chemistry:crushing_gear>);

mods.rockhounding_chemistry.ProfilingBench.add(<thermalfoundation:material:162>, <contenttweaker:gearcrushinginvar>, 6);
mods.rockhounding_chemistry.CrushingGears.add(<contenttweaker:gearcrushinginvar>);
<contenttweaker:gearcrushinginvar>.addTooltip("粉碎8组");

mods.rockhounding_chemistry.ProfilingBench.add(<thermalfoundation:material:160>, <contenttweaker:gearcrushingsteel>, 6);
mods.rockhounding_chemistry.CrushingGears.add(<contenttweaker:gearcrushingsteel>);
<contenttweaker:gearcrushingsteel>.addTooltip("粉碎16组");

mods.rockhounding_chemistry.ProfilingBench.add(<enderio:item_alloy_ingot:6>, <contenttweaker:gearcrushingdarksteel>, 6);
mods.rockhounding_chemistry.CrushingGears.add(<contenttweaker:gearcrushingdarksteel>);
<contenttweaker:gearcrushingdarksteel>.addTooltip("粉碎32组");

mods.rockhounding_chemistry.ProfilingBench.add(<rockhounding_chemistry:alloy_items_deco:22>, <contenttweaker:gearcrushingcortensteel>, 6);
mods.rockhounding_chemistry.CrushingGears.add(<contenttweaker:gearcrushingcortensteel>);
<contenttweaker:gearcrushingcortensteel>.addTooltip("粉碎64组");

mods.rockhounding_chemistry.ProfilingBench.add(<rockhounding_chemistry:alloy_items_tech:40>, <contenttweaker:gearcrushingvanasteel>, 6);
mods.rockhounding_chemistry.CrushingGears.add(<contenttweaker:gearcrushingvanasteel>);
<contenttweaker:gearcrushingvanasteel>.addTooltip("粉碎128组");

/*
recipes.addShaped(<rockhounding_chemistry:slurry_agitator>.withTag({ench: [{lvl: 1 as short, id: 34 as short}], RepairCost: 1}), [[null, <moreplates:invar_stick>, null],[<rockhounding_chemistry:misc_items:3>, <moreplates:invar_stick>, <rockhounding_chemistry:misc_items:3>], [<rockhounding_chemistry:misc_items:3>, <moreplates:invar_stick>, <rockhounding_chemistry:misc_items:3>]]);
recipes.addShaped(<rockhounding_chemistry:slurry_agitator>.withTag({ench: [{lvl: 2 as short, id: 34 as short}], RepairCost: 1}), [[null, <immersiveengineering:material:2>, null],[<rockhounding_chemistry:misc_items:3>, <immersiveengineering:material:2>, <rockhounding_chemistry:misc_items:3>], [<rockhounding_chemistry:misc_items:3>, <immersiveengineering:material:2>, <rockhounding_chemistry:misc_items:3>]]);
recipes.addShaped(<rockhounding_chemistry:slurry_agitator>.withTag({ench: [{lvl: 3 as short, id: 34 as short}], RepairCost: 1}), [[null, <jaopca:item_stickdarksteel>, null],[<rockhounding_chemistry:misc_items:3>, <jaopca:item_stickdarksteel>, <rockhounding_chemistry:misc_items:3>], [<rockhounding_chemistry:misc_items:3>, <jaopca:item_stickdarksteel>, <rockhounding_chemistry:misc_items:3>]]);
recipes.addShaped(<rockhounding_chemistry:slurry_agitator>.withTag({ench: [{lvl: 4 as short, id: 34 as short}]}), [[null, <jaopca:item_stickhydronalium>, null],[<rockhounding_chemistry:misc_items:3>, <jaopca:item_stickhydronalium>, <rockhounding_chemistry:misc_items:3>], [<rockhounding_chemistry:misc_items:3>, <jaopca:item_stickhydronalium>, <rockhounding_chemistry:misc_items:3>]]);
recipes.addShaped(<rockhounding_chemistry:slurry_agitator>.withTag({Unbreakable: 1 as byte}), [[null, <rockhounding_chemistry:misc_items:27>, null],[<contenttweaker:hastelloyfoil>, <rockhounding_chemistry:misc_items:27>, <contenttweaker:hastelloyfoil>], [<contenttweaker:hastelloyfoil>, <rockhounding_chemistry:misc_items:27>, <contenttweaker:hastelloyfoil>]]);
*/

mods.rockhounding_chemistry.ProfilingBench.add(<thermalfoundation:material:162>, <contenttweaker:rodinvar>*4, 2);
mods.rockhounding_chemistry.ProfilingBench.add(<thermalfoundation:material:162>, <contenttweaker:foilinvar>*8, 3);
mods.rockhounding_chemistry.SlurryAgitators.add(<contenttweaker:agitatorinvar>);
<contenttweaker:agitatorinvar>.addTooltip("搅拌8组");
recipes.addShaped(<contenttweaker:agitatorinvar>, [[null, <contenttweaker:rodinvar>, null],[<contenttweaker:foilinvar>, <contenttweaker:rodinvar>, <contenttweaker:foilinvar>], [<contenttweaker:foilinvar>, <contenttweaker:rodinvar>, <contenttweaker:foilinvar>]]);

mods.rockhounding_chemistry.ProfilingBench.add(<thermalfoundation:material:160>, <contenttweaker:rodsteel>*4, 2);
mods.rockhounding_chemistry.ProfilingBench.add(<thermalfoundation:material:160>, <contenttweaker:foilsteel>*8, 3);
mods.rockhounding_chemistry.SlurryAgitators.add(<contenttweaker:agitatorsteel>);
<contenttweaker:agitatorsteel>.addTooltip("搅拌16组");
recipes.addShaped(<contenttweaker:agitatorsteel>, [[null, <contenttweaker:rodsteel>, null],[<contenttweaker:foilsteel>, <contenttweaker:rodsteel>, <contenttweaker:foilsteel>], [<contenttweaker:foilsteel>, <contenttweaker:rodsteel>, <contenttweaker:foilsteel>]]);

mods.rockhounding_chemistry.ProfilingBench.add(<enderio:item_alloy_ingot:6>, <contenttweaker:roddarksteel>*4, 2);
mods.rockhounding_chemistry.ProfilingBench.add(<enderio:item_alloy_ingot:6>, <contenttweaker:foildarksteel>*8, 3);
mods.rockhounding_chemistry.SlurryAgitators.add(<contenttweaker:agitatordarksteel>);
<contenttweaker:agitatordarksteel>.addTooltip("搅拌32组");
recipes.addShaped(<contenttweaker:agitatordarksteel>, [[null, <contenttweaker:roddarksteel>, null],[<contenttweaker:foildarksteel>, <contenttweaker:roddarksteel>, <contenttweaker:foildarksteel>], [<contenttweaker:foildarksteel>, <contenttweaker:roddarksteel>, <contenttweaker:foildarksteel>]]);

mods.rockhounding_chemistry.ProfilingBench.add(<rockhounding_chemistry:alloy_items_tech:37>, <contenttweaker:rodhydronalium>*4, 2);
mods.rockhounding_chemistry.ProfilingBench.add(<rockhounding_chemistry:alloy_items_tech:37>, <contenttweaker:foilhydronalium>*8, 3);
mods.rockhounding_chemistry.SlurryAgitators.add(<contenttweaker:agitatorhydronalium>);
<contenttweaker:agitatorhydronalium>.addTooltip("搅拌64组");
recipes.addShaped(<contenttweaker:agitatorhydronalium>, [[null, <contenttweaker:rodhydronalium>, null],[<contenttweaker:foilhydronalium>, <contenttweaker:rodhydronalium>, <contenttweaker:foilhydronalium>], [<contenttweaker:foilhydronalium>, <contenttweaker:rodhydronalium>, <contenttweaker:foilhydronalium>]]);


//mods.rockhounding_chemistry.ProfilingBench.add(<rockhounding_chemistry:alloy_items_tech:40>, <contenttweaker:agitatorhastelloy>, 6);
recipes.addShaped(<contenttweaker:agitatorhastelloy>, [[null, <rockhounding_chemistry:misc_items:27>, null],[<contenttweaker:hastelloyfoil>, <rockhounding_chemistry:misc_items:27>, <contenttweaker:hastelloyfoil>], [<contenttweaker:hastelloyfoil>, <rockhounding_chemistry:misc_items:27>, <contenttweaker:hastelloyfoil>]]);
mods.rockhounding_chemistry.SlurryAgitators.add(<contenttweaker:agitatorhastelloy>);
<contenttweaker:agitatorhastelloy>.addTooltip("搅拌128组");


mods.rockhounding_chemistry.ProfilingBench.add(<rockhounding_chemistry:alloy_items_tech:19>, <contenttweaker:hastelloyfoil>*8, 3);
mods.rockhounding_chemistry.ProfilingBench.add(<minecraft:gold_ingot>, <contenttweaker:goldfoil>*8, 3);

mods.thermalexpansion.Compactor.addStorageRecipe(<contenttweaker:goldfoil> * 4, <thermalfoundation:material:33>, 1500);
mods.thermalexpansion.Compactor.addStorageRecipe(<rockhounding_chemistry:misc_items:3> * 4, <thermalfoundation:material:32>, 1500);
mods.rockhounding_chemistry.ProfilingBench.add(<thermalfoundation:storage:4>, <contenttweaker:aluminumcasing>*20, 5);
mods.rockhounding_chemistry.ProfilingBench.add(<thermalfoundation:storage:6>, <contenttweaker:casingplatinum>*20, 5);

//input stack: the oredict-based items to be shaped
//mods.rockhounding_chemistry.ProfilingBench.add("blockGlass", <minecraft:empty_bottle>*4, 0);

//input stack: the input to remove
//mods.rockhounding_chemistry.ProfilingBench.removeByInput(<minecraft:iron_block>);
//input oredict: the oredict to remove
//mods.rockhounding_chemistry.ProfilingBench.removeByOredict("blockGlass");
//output stack: the output to remove
//mods.rockhounding_chemistry.ProfilingBench.removeByOutput(<minecraft:iron_ingot>);
//casting pattern: the pattern to remove
//mods.rockhounding_chemistry.ProfilingBench.removeByPattern(3);

##=======================================================
##CRYSTAL PULLING CRUCIBLE
##=======================================================
recipes.remove(<rockhounding_chemistry:machines_d:8>);
recipes.remove(<rockhounding_chemistry:misc_blocks_a:10>);
recipes.addShaped(<rockhounding_chemistry:misc_blocks_a:10>, [[<contenttweaker:casingplatinum>, <rockhounding_chemistry:misc_blocks_a:4>, <contenttweaker:casingplatinum>],[<rockhounding_chemistry:misc_blocks_a>, <minecraft:piston>, <rockhounding_chemistry:misc_blocks_a>], [<contenttweaker:casingplatinum>, <rockhounding_chemistry:misc_items:4>, <contenttweaker:casingplatinum>]]);
recipes.addShaped(<rockhounding_chemistry:machines_d:8>, [[<contenttweaker:casingplatinum>, <rockhounding_chemistry:misc_blocks_a>, <contenttweaker:casingplatinum>],[<actuallyadditions:block_testifi_bucks_white_wall>, <techreborn:part:1>, <actuallyadditions:block_testifi_bucks_white_wall>], [<rockhounding_chemistry:misc_items:8>, <actuallyadditions:block_testifi_bucks_white_wall>, <rockhounding_chemistry:misc_items:8>]]);


//base input: the base ingredient
//dopant: the dopant element
//output: the grown crystal
mods.rockhounding_chemistry.PullingCrucible.add(<mysticalagriculture:crafting:38>, <minecraft:glowstone_dust>, <minecraft:ghast_tear>);
//mods.rockhounding_chemistry.PullingCrucible.add(<minecraft:glowstone_dust>, <mysticalagriculture:crafting:38>, <minecraft:ghast_tear>);
mods.rockhounding_chemistry.PullingCrucible.add(<minecraft:skull:1>, <quark:soul_powder>, <minecraft:nether_star>);
//mods.rockhounding_chemistry.PullingCrucible.add(<quark:soul_powder>, <minecraft:skull:1>, <minecraft:nether_star>);
//mods.rockhounding_chemistry.PullingCrucible.add(<thermalfoundation:material:1028>, <actuallyadditions:item_crystal_empowered:4>, <environmentaltech:litherite_crystal>);

mods.rockhounding_chemistry.PullingCrucible.add(<rockhounding_chemistry:chemical_items:4>, <techreborn:dust:28>, <contenttweaker:lazurite_gem>);

//mods.rockhounding_chemistry.PullingCrucible.add("nuggetIron", <minecraft:glowstone_dust>, <minecraft:ghast_tear>);
//mods.rockhounding_chemistry.PullingCrucible.add(<minecraft:iron_nugget>, "dustGlowstone", <minecraft:ghast_tear>);
//mods.rockhounding_chemistry.PullingCrucible.add("nuggetIron", "dustGlowstone", <minecraft:ghast_tear>);
//input stack: the input to remove
//mods.rockhounding_chemistry.PullingCrucible.removeByInput(<minecraft:iron_nugget>);
//input oredict: the input oredict to remove
//mods.rockhounding_chemistry.PullingCrucible.removeByInputOredict("nuggetIron");
//dopant stack: the dopant to remove
//mods.rockhounding_chemistry.PullingCrucible.removeByDopant(<minecraft:glowstone_dust>);
//dopant oredict: the dopant oredict to remove
//mods.rockhounding_chemistry.PullingCrucible.removeByDopantOredict("dustGlowstone");
//output stack: the output to remove
//mods.rockhounding_chemistry.PullingCrucible.removeByOutput(<minecraft:ghast_tear>);

val colorName =
[
<rockhounding_chemistry:sulfate_shards:3>,
<rockhounding_chemistry:silicate_shards:16>,
<rockhounding_chemistry:arsenate_shards>,
<rockhounding_chemistry:arsenate_shards:4>,
<rockhounding_chemistry:arsenate_shards:3>,
<rockhounding_chemistry:sulfate_shards:12>,
<rockhounding_chemistry:chromate_shards:5>,
<rockhounding_chemistry:carbonate_shards>,
<rockhounding_chemistry:chromate_shards:4>,
<rockhounding_chemistry:sulfide_shards:11>,
<rockhounding_chemistry:sulfide_shards:21>,
<rockhounding_chemistry:sulfide_shards:22>,
<rockhounding_chemistry:sulfide_shards:23>,
<rockhounding_chemistry:oxide_shards:1>,
<rockhounding_chemistry:sulfide_shards:9>,
<rockhounding_chemistry:silicate_shards:3>,
<rockhounding_chemistry:carbonate_shards:3>,
<rockhounding_chemistry:oxide_shards:13>,
<rockhounding_chemistry:oxide_shards:3>,
<rockhounding_chemistry:borate_shards:4>,
<rockhounding_chemistry:vanadate_shards:2>,
<rockhounding_chemistry:arsenate_shards:1>,
<rockhounding_chemistry:oxide_shards:19>,
<rockhounding_chemistry:sulfate_shards:10>,
<rockhounding_chemistry:antimonate_shards:4>,
<rockhounding_chemistry:antimonate_shards:1>,
<rockhounding_chemistry:native_shards>,
<rockhounding_chemistry:native_shards:3>,
<rockhounding_chemistry:phosphate_shards:2>,
<rockhounding_chemistry:phosphate_shards:14>,
<rockhounding_chemistry:oxide_shards:9>,
<rockhounding_chemistry:carbonate_shards:4>,
<rockhounding_chemistry:silicate_shards:2>,
<rockhounding_chemistry:oxide_shards:4>,
<rockhounding_chemistry:silicate_shards:5>,
<rockhounding_chemistry:halide_shards:3>,
<rockhounding_chemistry:oxide_shards:27>,
<rockhounding_chemistry:silicate_shards:10>,
<rockhounding_chemistry:oxide_shards:25>,
<rockhounding_chemistry:sulfate_shards:9>,
<rockhounding_chemistry:sulfide_shards>
]
 as IItemStack[];

for item in colorName {
(item).addTooltip(format.darkGreen("过滤碎片"));
}
##########################################################################################
print("==================== end of mods rockhounding.zs ====================");
