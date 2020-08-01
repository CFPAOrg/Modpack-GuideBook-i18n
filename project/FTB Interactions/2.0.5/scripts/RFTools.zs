import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.artisanworktables.builder.RecipeBuilder;

print("---------------RFTools Start------------------");

val assembler = mods.gregtech.recipe.RecipeMap.getByName("assembler");

	#Shape Card - Quarry Removal
var shapeCardDisabled as IItemStack[]= [
	<rftools:shape_card:2>,
	<rftools:shape_card:3>,
	<rftools:shape_card:4>,
	<rftools:shape_card:5>,
	<rftools:shape_card:6>,
	<rftools:shape_card:7>];

for i in shapeCardDisabled {
	mods.jei.JEI.removeAndHide(i);
}

    #Scanner Hull Replacement
recipes.remove(<rftools:scanner>);
recipes.addShaped(<rftools:scanner>, [
    [<rftools:infused_diamond>, <ore:gemEnderPearl>, <rftools:infused_diamond>],
    [<ore:gemNetherQuartz>, <meta_tile_entity:gregtech:hull.mv>, <ore:gemNetherQuartz>],
    [<rftools:infused_diamond>, <ore:dustRedstone>, <rftools:infused_diamond>]]);

	#remove power cells
mods.jei.JEI.removeAndHide(<rftools:powercell>);
mods.jei.JEI.removeAndHide(<rftools:powercell_advanced>);
mods.jei.JEI.removeAndHide(<rftools:powercell_simple>);
mods.jei.JEI.removeAndHide(<rftools:powercell_card>);
	
	
	#infused enderpearl
recipes.remove(<rftools:infused_enderpearl>);
assembler.recipeBuilder()
    .inputs(<ore:enderpearl>, <rftools:dimensional_shard>*8)
    .fluidInputs([<liquid:glowstone> * 144])
    .outputs(<rftools:infused_enderpearl>)
    .duration(40)
    .EUt(48)
    .buildAndRegister();	
	
	#infused diamond
recipes.remove(<rftools:infused_diamond>);
assembler.recipeBuilder()
    .inputs(<ore:gemDiamond>, <rftools:dimensional_shard>*8)
    .fluidInputs([<liquid:glowstone> * 144])
    .outputs(<rftools:infused_diamond>)
    .duration(40)
    .EUt(48)
    .buildAndRegister();	
	
	#machine base
recipes.remove(<rftools:machine_base>);
assembler.recipeBuilder()
    .inputs(<ore:plateSteel>, <ore:wireFineElectrum>*3)
    .outputs(<rftools:machine_base>)
    .duration(50)
    .EUt(16)
    .buildAndRegister();		
	
	#machine frame
mods.jei.JEI.removeAndHide(<rftools:machine_frame>);
	
	#Peace essence
recipes.remove(<rftools:peace_essence>);
assembler.recipeBuilder()
    .inputs(<astralsorcery:blockworldilluminator>, <enderio:item_broken_spawner>.withTag({entityId: "astralsorcery:entityflare"}), <ore:plateEnderium> *2 )
    .fluidInputs([<liquid:astralsorcery.liquidstarlight> * 2880])
    .outputs(<rftools:peace_essence>)
    .duration(400)
    .EUt(1920)
    .buildAndRegister();	
	
	#peaceful module 
recipes.remove(<rftools:peaceful_module>);
assembler.recipeBuilder()
    .inputs(<rftools:peace_essence>, <ore:waferSilicon>, <ore:wireFineElectrum> *4 )
    .fluidInputs([<liquid:redstone> * 576])
    .outputs(<rftools:peaceful_module>)
    .duration(6000)
    .EUt(480)
    .buildAndRegister();	
	
	#flight module
recipes.remove(<rftools:flight_module>);
assembler.recipeBuilder()
    .inputs(<ore:waferSilicon>, <ore:dustAerotheum> *2, <ore:wireFineElectrum> *4 )
    .fluidInputs([<liquid:redstone> * 576])
    .outputs(<rftools:flight_module>)
    .duration(6000)
    .EUt(28)
    .buildAndRegister();
	
	#regen module
recipes.remove(<rftools:regeneration_module>);
assembler.recipeBuilder()
    .inputs(<ore:waferSilicon>, <thaumicperiphery:malignant_heart>, <ore:wireFineElectrum> *4 )
    .fluidInputs([<liquid:redstone> * 576])
    .outputs(<rftools:regeneration_module>)
    .duration(6000)
    .EUt(28)
    .buildAndRegister();
	
	#regen+
recipes.remove(<rftools:regeneration_module>);
assembler.recipeBuilder()
    .inputs(<rftools:regeneration_module>, <bloodmagic:component:29>, <ore:wireFineChrome> *4 )
    .fluidInputs([<liquid:redstone> * 576])
    .outputs(<rftools:regenerationplus_module>)
    .duration(6000)
    .EUt(28)
    .buildAndRegister();
	
	#saturation module 
recipes.remove(<rftools:saturation_module>);
assembler.recipeBuilder()
    .inputs(<astralsorcery:itemcoloredlens:2>, <ore:waferSilicon>, <ore:wireFineElectrum> *4 )
    .fluidInputs([<liquid:redstone> * 576])
    .outputs(<rftools:saturation_module>)
    .duration(2500)
    .EUt(120)
    .buildAndRegister();	
	
	#saturation+
recipes.remove(<rftools:saturationplus_module>);
assembler.recipeBuilder()
    .inputs(<rftools:saturation_module>, <bloodmagic:component:29>, <ore:wireFineChrome> *4 )
    .fluidInputs([<liquid:redstone> * 576])
    .outputs(<rftools:saturationplus_module>)
    .duration(3000)
    .EUt(120)
    .buildAndRegister();
	
	#fortune module
recipes.remove(<rftools:luck_module>);
assembler.recipeBuilder()
    .inputs(<ore:waferSilicon>, <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 1 as short, id: 35}]}), <ore:wireFineElectrum> *4 )
    .fluidInputs([<liquid:redstone> * 576])
    .outputs(<rftools:luck_module>)
    .duration(2800)
    .EUt(28)
    .buildAndRegister();
	
	#feather falling
recipes.remove(<rftools:featherfalling_module>);
assembler.recipeBuilder()
    .inputs(<minecraft:feather>, <ore:waferSilicon>, <ore:wireFineElectrum> *4 )
    .fluidInputs([<liquid:redstone> * 576])
    .outputs(<rftools:featherfalling_module>)
    .duration(2500)
    .EUt(120)
    .buildAndRegister();	
	
	#feather falling+
recipes.remove(<rftools:featherfallingplus_module>);
assembler.recipeBuilder()
    .inputs(<rftools:featherfalling_module>, <bloodmagic:component:29>, <ore:wireFineChrome> *4 )
    .fluidInputs([<liquid:redstone> * 576])
    .outputs(<rftools:featherfallingplus_module>)
    .duration(3000)
    .EUt(120)
    .buildAndRegister();
	
	#water breathing module
recipes.remove(<rftools:waterbreathing_module>);
assembler.recipeBuilder()
    .inputs(<bloodmagic:component>, <ore:waferSilicon>, <ore:wireFineElectrum> *4 )
    .fluidInputs([<liquid:redstone> * 576])
    .outputs(<rftools:waterbreathing_module>)
    .duration(2500)
    .EUt(120)
    .buildAndRegister();	
	
	#night vision module
recipes.remove(<rftools:nightvision_module>);
assembler.recipeBuilder()
    .inputs(<metaitem:fluid_cell>.withTag({Fluid: {FluidName: "astralsorcery.liquidstarlight", Amount: 1000}}), <ore:waferSilicon>, <ore:wireFineElectrum> *4 )
    .fluidInputs([<liquid:redstone> * 576])
    .outputs(<rftools:nightvision_module>)
    .duration(2500)
    .EUt(120)
    .buildAndRegister();	
	
	#speed module
recipes.remove(<rftools:speed_module>);
assembler.recipeBuilder()
    .inputs(<metaitem:coin.chocolate>, <ore:waferSilicon>, <ore:wireFineElectrum> *4 )
    .fluidInputs([<liquid:redstone> * 576])
    .outputs(<rftools:speed_module>)
    .duration(2500)
    .EUt(120)
    .buildAndRegister();	
	
	#speed+ module
recipes.remove(<rftools:speedplus_module>);
assembler.recipeBuilder()
    .inputs(<rftools:speed_module>, <bloodmagic:component:29>, <ore:wireFineChrome> *4 )
    .fluidInputs([<liquid:redstone> * 576])
    .outputs(<rftools:speedplus_module>)
    .duration(3000)
    .EUt(120)
    .buildAndRegister();	
	
	#haste module
recipes.remove(<rftools:haste_module>);
assembler.recipeBuilder()
    .inputs(<bloodmagic:component:13>, <ore:waferSilicon>, <ore:wireFineElectrum> *4 )
    .fluidInputs([<liquid:redstone> * 576])
    .outputs(<rftools:haste_module>)
    .duration(2500)
    .EUt(120)
    .buildAndRegister();		

	#haste+ module
recipes.remove(<rftools:hasteplus_module>);
assembler.recipeBuilder()
    .inputs(<rftools:haste_module>, <bloodmagic:component:29>, <ore:wireFineChrome> *4 )
    .fluidInputs([<liquid:redstone> * 576])
    .outputs(<rftools:hasteplus_module>)
    .duration(3000)
    .EUt(120)
    .buildAndRegister();	
	
	#glowing module
recipes.remove(<rftools:glowing_module>);
assembler.recipeBuilder()
    .inputs(<astralsorcery:itemusabledust> *4, <ore:waferSilicon>, <ore:wireFineElectrum> *4 )
    .fluidInputs([<liquid:redstone> * 576])
    .outputs(<rftools:glowing_module>)
    .duration(2500)
    .EUt(120)
    .buildAndRegister();		

	#noTP module
recipes.remove(<rftools:noteleport_module>);
assembler.recipeBuilder()
    .inputs(<projecte:interdiction_torch>, <ore:waferSilicon>, <ore:wireFineElectrum> *4 )
    .fluidInputs([<liquid:redstone> * 576])
    .outputs(<rftools:noteleport_module>)
    .duration(2500)
    .EUt(120)
    .buildAndRegister();	
	
	#blindness module
recipes.remove(<rftools:blindness_module>);
assembler.recipeBuilder()
    .inputs(<minecraft:fermented_spider_eye>, <ore:waferSilicon>, <ore:wireFineElectrum> *4 )
    .fluidInputs([<liquid:redstone> * 576])
    .outputs(<rftools:blindness_module>)
    .duration(2500)
    .EUt(120)
    .buildAndRegister();	
	
	#weakness module
recipes.remove(<rftools:weakness_module>);
assembler.recipeBuilder()
    .inputs(<tconstruct:slime_congealed:4>, <ore:waferSilicon>, <ore:wireFineElectrum> *4 )
    .fluidInputs([<liquid:redstone> * 576])
    .outputs(<rftools:weakness_module>)
    .duration(2500)
    .EUt(120)
    .buildAndRegister();	
	
	#poison module
recipes.remove(<rftools:poison_module>);
assembler.recipeBuilder()
    .inputs(<minecraft:poisonous_potato>, <ore:waferSilicon>, <ore:wireFineElectrum> *4 )
    .fluidInputs([<liquid:redstone> * 576])
    .outputs(<rftools:poison_module>)
    .duration(2500)
    .EUt(120)
    .buildAndRegister();	
	
	#slowness module
recipes.remove(<rftools:slowness_module>);
assembler.recipeBuilder()
    .inputs(<minecraft:soul_sand>*4, <ore:waferSilicon>, <ore:wireFineElectrum> *4 )
    .fluidInputs([<liquid:redstone> * 576])
    .outputs(<rftools:slowness_module>)
    .duration(2500)
    .EUt(120)
    .buildAndRegister();		
		
	#environmental controller
recipes.remove(<rftools:environmental_controller>);
recipes.addShaped(<rftools:environmental_controller>, 
	[[<ore:plateDiamond>, <ore:circuitMedium>, <ore:plateDiamond>],
	[<rftools:infused_enderpearl>, <gregtech:machine:503>, <rftools:infused_enderpearl>], 
	[<ore:plateDiamond>, <libvulpes:coil0:2>, <ore:plateDiamond>]]);	
	
	#Storage Module - Tier 1
<rftools:storage_module>.addTooltip("升级时不保留库存。");
recipes.remove(<rftools:storage_module>);
assembler.recipeBuilder()
    .inputs(<ironchest:iron_gold_chest_upgrade>, <ore:circuitLow>)
    .outputs(<rftools:storage_module>)
    .duration(50)
    .EUt(16)
    .buildAndRegister();
	
	#Storage Module - Tier 2
<rftools:storage_module:1>.addTooltip("升级时不保留库存。");
recipes.remove(<rftools:storage_module:1>);
assembler.recipeBuilder()
    .inputs(<rftools:storage_module>, <ore:alloyAdvanced>)
    .outputs(<rftools:storage_module:1>)
    .duration(150)
    .EUt(16)
    .buildAndRegister();	
	
	#Storage Module - Tier 3
recipes.remove(<rftools:storage_module:2>);
assembler.recipeBuilder()
    .inputs(<rftools:storage_module:1>, <ore:alloyElite>)
    .outputs(<rftools:storage_module:2>)
    .duration(450)
    .EUt(16)
    .buildAndRegister();	
	
	#remote storage -  remove in favor of ae wireless or logistics remote earlier
mods.jei.JEI.removeAndHide(<rftools:remote_storage>);
	
	#syringes
mods.jei.JEI.removeAndHide(<rftools:syringe:*>);
	
	#modular storage
recipes.remove(<rftools:modular_storage>);
recipes.addShaped(<rftools:modular_storage>, 
	[[<ore:cableGtSingleRedAlloy>, <mekanism:machineblock:13>, <ore:cableGtSingleRedAlloy>],
	[<ore:plateNetherQuartz>, <gregtech:machine:501>, <ore:plateNetherQuartz>], 
	[<ore:cableGtSingleRedAlloy>, <ore:plateNetherQuartz>, <ore:cableGtSingleRedAlloy>]]);
	
	#crafter T1  
recipes.remove(<rftools:crafter1>);
assembler.recipeBuilder()
    .inputs(<avaritia:compressed_crafting_table>, <gregtech:machine:502>, <ore:circuitLow>)
    .outputs(<rftools:crafter1>)
    .duration(4500)
    .EUt(16)
    .buildAndRegister();
	
	#crafter T2 
recipes.remove(<rftools:crafter2>);
assembler.recipeBuilder()
    .inputs(<avaritia:compressed_crafting_table>, <gregtech:machine:503>, <ore:circuitLow>)
    .outputs(<rftools:crafter2>)
    .duration(4500)
    .EUt(16)
    .buildAndRegister();
	
	#crafter T3 
recipes.remove(<rftools:crafter3>);
assembler.recipeBuilder()
    .inputs(<avaritia:compressed_crafting_table>, <gregtech:machine:504>, <ore:circuitLow>)
    .outputs(<rftools:crafter3>)
    .duration(4500)
    .EUt(16)
    .buildAndRegister();
	

	#Teleportation
recipes.remove(<rftools:matter_transmitter>);
recipes.addShaped(<rftools:matter_transmitter>, 
	[[<ore:plateAluminium>, <rftools:infused_enderpearl>, <ore:plateAluminium>],
	[<ore:wireFineTitanium>, <gregtech:machine:503>, <ore:wireFineTitanium>], 
	[<ore:plateAluminium>, <ore:circuitAdvanced>, <ore:plateAluminium>]]);

recipes.remove(<rftools:matter_receiver>);
recipes.addShaped(<rftools:matter_receiver>, 
	[[<ore:plateAluminium>, <ore:circuitAdvanced>, <ore:plateAluminium>],
	[<ore:wireFineTitanium>, <gregtech:machine:503>, <ore:wireFineTitanium>], 
	[<ore:plateAluminium>, <rftools:infused_enderpearl>, <ore:plateAluminium>]]);

	#endergenic generator blocks
mods.jei.JEI.removeAndHide(<rftools:endergenic>);
mods.jei.JEI.removeAndHide(<rftools:pearl_injector>);
mods.jei.JEI.removeAndHide(<rftools:ender_monitor>);
	
	//recipes.remove();
	//recipes.addShaped(null, 
	//[[null, null, null],
	//[null, null, null], 
	//[null, null, null]]);
	
	#elevator
recipes.remove(<rftools:elevator>);
recipes.addShaped(<rftools:elevator>, 
	[[<extrautils2:endershard>, <ore:plateGold>, <extrautils2:endershard>],
	[<ore:plateRedAlloy>, <gregtech:machine:501>, <ore:plateRedAlloy>], 
	[<extrautils2:endershard>, <ore:plateGold>, <extrautils2:endershard>]]);
	
	#shield t1
recipes.remove(<rftools:shield_block1>);
assembler.recipeBuilder()
    .inputs(<rftools:shield_template_block>*8, <gregtech:machine:502>, <rftools:infused_diamond>)
    .outputs(<rftools:shield_block1>)
    .duration(4500)
    .EUt(16)
    .buildAndRegister();

	#shield t2
recipes.remove(<rftools:shield_block2>);
assembler.recipeBuilder()
    .inputs(<rftools:shield_template_block>*8, <gregtech:machine:503>, <rftools:infused_diamond>)
    .outputs(<rftools:shield_block2>)
    .duration(4500)
    .EUt(16)
    .buildAndRegister();

	#shield t3
recipes.remove(<rftools:shield_block3>);
assembler.recipeBuilder()
    .inputs(<rftools:shield_template_block>*8, <gregtech:machine:504>, <rftools:infused_diamond>)
    .outputs(<rftools:shield_block3>)
    .duration(4500)
    .EUt(16)
    .buildAndRegister();

	#shield t4
recipes.remove(<rftools:shield_block4>);
assembler.recipeBuilder()
    .inputs(<rftools:shield_template_block>*8, <gregtech:machine:505>, <rftools:infused_diamond>)
    .outputs(<rftools:shield_block4>)
    .duration(4500)
    .EUt(16)
    .buildAndRegister();
	
	#machine infuser 
recipes.remove(<rftools:machine_infuser>);
recipes.addShaped(<rftools:machine_infuser>, 
	[[<ore:plateSignalum>, <rftools:infused_diamond>, <ore:plateSignalum>],
	[<ore:plateSignalum>, <gregtech:machine:503>, <ore:plateSignalum>], 
	[<ore:plateSignalum>, <ore:circuitMedium>, <ore:plateSignalum>]]);

	#infused machine infuser
mods.jei.JEI.addItem(<rftools:machine_infuser>.withTag({infused: 256}));
assembler.recipeBuilder()
    .inputs(<rftools:dimensional_shard>*64, <rftools:machine_infuser>)
    .outputs(<rftools:machine_infuser>.withTag({infused: 256}))
    .duration(4500)
    .EUt(16)
    .buildAndRegister();
	
	#destination analyzer
recipes.remove(<rftools:destination_analyzer>);
recipes.addShaped(<rftools:destination_analyzer>, 
	[[<ore:platePlastic>, <ore:pearlEnderEye>, <ore:platePlastic>],
	[<ore:platePlastic>, <gregtech:machine_casing:2>, <ore:platePlastic>], 
	[<ore:platePlastic>, <ore:circuitLow>, <ore:platePlastic>]]);	
	
	#personal booster - just use environmental controller, it'd be gated the same
mods.jei.JEI.removeAndHide(<rftools:booster>);
	
	#matter booster
recipes.remove(<rftools:matter_booster>);
assembler.recipeBuilder()
    .inputs(<rftools:destination_analyzer>, <metaitem:component.smd.capacitor> *2)
    .outputs(<rftools:matter_booster>)
    .duration(2000)
    .EUt(16)
    .buildAndRegister();
	
	#Storage scanner 
recipes.remove(<rftools:storage_scanner>);
recipes.addShaped(<rftools:storage_scanner>, 
	[[<ore:screwAluminium>, <mekanism:reinforcedalloy>, <ore:screwAluminium>],
	[<ore:plateEnderPearl>, <gregtech:machine:503>, <ore:plateEnderPearl>], 
	[<ore:screwAluminium>, <ore:plateEnderPearl>, <ore:screwAluminium>]]);
	
	#space chamber block 
recipes.remove(<rftools:space_chamber>);
recipes.addShaped(<rftools:space_chamber>, 
	[[<ore:boltLapis>, <ore:blockGlassColorless>, <ore:boltLapis>],
	[<ore:blockGlassColorless>, <gregtech:machine_casing:1>, <ore:blockGlassColorless>], 
	[<ore:boltLapis>, <ore:blockGlassColorless>, <ore:boltLapis>]]);
	
	#spawner
mods.jei.JEI.removeAndHide(<rftools:spawner>); //redundant
mods.jei.JEI.removeAndHide(<rftools:matter_beamer>);
	
	#builder
recipes.remove(<rftools:builder>);
recipes.addShaped(<rftools:builder>, 
	[[<ore:screwThaumium>, <ore:circuitMedium>, <ore:screwThaumium>],
	[<ore:cableGtSingleAluminium>, <gregtech:machine:502>, <ore:cableGtSingleAluminium>], 
	[<ore:screwThaumium>, <ore:plateDiamond>, <ore:screwThaumium>]]);
	
	#storage tablet
mods.jei.JEI.removeAndHide(<rftools:storage_module:6>);
mods.jei.JEI.removeAndHide(<rftools:storage_module_tablet>);
	
	#charged porter - advanced
recipes.remove(<rftools:advanced_charged_porter>);	
assembler.recipeBuilder()
    .inputs(<rftools:charged_porter>, <rftools:infused_enderpearl> *2)
    .outputs(<rftools:advanced_charged_porter>)
	.fluidInputs([<liquid:redstone> * 576])
    .duration(2000)
    .EUt(16)
    .buildAndRegister();

    #charged porter
recipes.remove(<rftools:charged_porter>);
recipes.addShaped(<rftools:charged_porter>, 
	[[null, null, null],
	[<ore:screwStainlessSteel>, <rftools:screen>, <ore:screwStainlessSteel>], 
	[<ore:screwStainlessSteel>, <ore:alloyUltimate>, <ore:screwStainlessSteel>]]);

	#remove machine casings
	recipes.remove(<rftools:rf_monitor>);
	recipes.addShaped(<rftools:rf_monitor>, 	
	[[null, <minecraft:redstone_torch>, null],
	[<minecraft:redstone>, <gregtech:machine:501>, <minecraft:redstone>], 
	[null, <minecraft:redstone_torch>, null]]);
	
	recipes.remove(<rftools:locator>);
	recipes.addShaped(<rftools:locator>, 
	[[<minecraft:comparator>, <minecraft:ender_eye>, <minecraft:comparator>],
	[<ore:plateNetherQuartz>, <gregtech:machine:502>, <ore:plateNetherQuartz>], 
	[<rftools:infused_diamond>, <extrautils2:ingredients:2>, <rftools:infused_diamond>]]);

	recipes.remove(<rftools:block_protector>);
	recipes.addShaped(<rftools:block_protector>, 
	[[<draconicevolution:infused_obsidian>, <ore:circuitHigh>, <draconicevolution:infused_obsidian>],
	[<rftools:shield_template_block>, <gregtech:machine:503>, <rftools:shield_template_block>],
	[<draconicevolution:infused_obsidian>, <rftools:shield_template_block>, <draconicevolution:infused_obsidian>]]);

	
	
print("----------------RFTools End-------------------");