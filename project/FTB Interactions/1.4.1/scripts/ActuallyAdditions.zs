import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.artisanworktables.builder.RecipeBuilder;
import mods.gregtech.recipe.RecipeMap;
import mods.thermalexpansion.Insolator;
import mods.botaniatweaks.Agglomeration;
import mods.thaumcraft.ArcaneWorkbench;
import mods.botaniatweaks.AgglomerationRecipe;
import mods.soulus.Composer;

print("---------------Actually Additions Start------------------");

val macerator = mods.gregtech.recipe.RecipeMap.getByName("macerator");
val assembler = mods.gregtech.recipe.RecipeMap.getByName("assembler");
val chemReactor = mods.gregtech.recipe.RecipeMap.getByName("chemical_reactor");
val chemicalBath = mods.gregtech.recipe.RecipeMap.getByName("chemical_bath");
val mixer = mods.gregtech.recipe.RecipeMap.getByName("mixer");
val distillationTower = mods.gregtech.recipe.RecipeMap.getByName("distillation_tower");
val distillery = mods.gregtech.recipe.RecipeMap.getByName("distillery");
val compressor = mods.gregtech.recipe.RecipeMap.getByName("compressor");
val forgeHammer = mods.gregtech.recipe.RecipeMap.getByName("forge_hammer");

	#black quartz
recipes.remove(<actuallyadditions:block_misc:2>);
compressor.recipeBuilder()
    .inputs(<ore:gemQuartzBlack>*4)
	.outputs(<actuallyadditions:block_misc:2>)
    .duration(40)
    .EUt(8)
    .buildAndRegister();
	
forgeHammer.recipeBuilder()
    .inputs(<actuallyadditions:block_misc:2>)
	.outputs(<ore:gemQuartzBlack>.firstItem *4)
    .duration(100)
    .EUt(24)
    .buildAndRegister();
	
 #ender pearl deblockify
forgeHammer.recipeBuilder()
    .inputs(<actuallyadditions:block_misc:6>)
	.outputs(<minecraft:ender_pearl> *4)
    .duration(100)
    .EUt(24)
    .buildAndRegister();

	#Bat Wing
	#Smart Chicken
Composer.recipe("batwing",<actuallyadditions:item_misc:15>)
		.setTime(1)
		.setShaped([
			[<harvestcraft:hardenedleatheritem>, null, <harvestcraft:hardenedleatheritem>],
			[null, <botania:manaresource:1>, null],
			[null, <bloodmagic:component:8>, null]])
		.setMobsRequired({ "minecraft:bat": 1})
		.create();	
	
	#Crafter on a Stick
mods.jei.JEI.removeAndHide(<actuallyadditions:item_crafter_on_a_stick>);
mods.jei.JEI.removeAndHide(<actuallyadditions:block_leaf_generator>);
mods.jei.JEI.removeAndHide(<actuallyadditions:block_player_interface>);
mods.jei.JEI.removeAndHide(<actuallyadditions:block_coal_generator>);
mods.jei.JEI.removeAndHide(<actuallyadditions:block_oil_generator>);
mods.jei.JEI.hide(<actuallyadditions:item_food:17>);
furnace.remove(<actuallyadditions:item_food:17>);
	#Cheese
mods.jei.JEI.removeAndHide(<actuallyadditions:item_food>);

	#lenses
mods.jei.JEI.removeAndHide(<actuallyadditions:item_misc:18>);
mods.jei.JEI.removeAndHide(<actuallyadditions:item_color_lens>);
mods.jei.JEI.removeAndHide(<actuallyadditions:item_explosion_lens>);
mods.jei.JEI.removeAndHide(<actuallyadditions:item_damage_lens>);
mods.jei.JEI.removeAndHide(<actuallyadditions:item_more_damage_lens>);
mods.jei.JEI.removeAndHide(<actuallyadditions:item_disenchanting_lens>);

	#crystalized canola - 4800 eu
chemicalBath.recipeBuilder()
	.inputs(<actuallyadditions:item_canola_seed>)
	.fluidInputs([<liquid:menrilresin> * 50])
    .outputs(<actuallyadditions:item_misc:23>)
    .duration(200)
    .EUt(24)
    .buildAndRegister();

	#crystalized oil bucket - 480 eu
mixer.recipeBuilder()
	.inputs(<actuallyadditions:item_misc:23>)
	.fluidInputs([<liquid:oil> * 1000])
	.fluidOutputs([<liquid:crystaloil> * 1500])
    .duration(20)
    .EUt(24)
    .buildAndRegister();	

#crystalized oil should produce light fuel/heavy fuel 57 light fuel, 18 heavy fuel
distillery.recipeBuilder()
	.notConsumable(<metaitem:circuit.integrated>.withTag({Configuration: 0}))
	.fluidInputs([<liquid:crystaloil> * 50])
	.fluidOutputs([<liquid:light_fuel> * 57])
    .duration(20)
    .EUt(24)
    .buildAndRegister();	

distillery.recipeBuilder()
	.notConsumable(<metaitem:circuit.integrated>.withTag({Configuration: 1}))
	.fluidInputs([<liquid:crystaloil> * 50])
	.fluidOutputs([<liquid:heavy_fuel> * 18])
    .duration(20)
    .EUt(24)
    .buildAndRegister();	
	
#empowered canola - 48k eu
chemReactor.recipeBuilder()
	.inputs(<actuallyadditions:item_misc:23>*32, <enderio:block_infinity_fog>)
	.fluidInputs([<liquid:astralsorcery.liquidstarlight> * 1000])
    .outputs(<actuallyadditions:item_misc:24>*32)
    .duration(100)
    .EUt(480)
    .buildAndRegister();
	
	#empowered oil - 960 eu
	#crystalized oil bucket - 480 eu
mixer.recipeBuilder()
	.inputs(<actuallyadditions:item_misc:24>)
	.fluidInputs([<liquid:crystaloil> * 1000])
	.fluidOutputs([<liquid:empoweredoil> * 1500])
    .duration(20)
    .EUt(48)
    .buildAndRegister();	

	distillery.recipeBuilder()
	.notConsumable(<metaitem:circuit.integrated>.withTag({Configuration: 1}))
	.fluidInputs([<liquid:empoweredoil> * 50])
	.fluidOutputs([<liquid:fuel> * 90])
    .duration(20)
    .EUt(24)
    .buildAndRegister();	
	
	distillationTower.recipeBuilder()
	.fluidInputs([<liquid:empoweredoil> * 50])
	.fluidOutputs([<liquid:fuel> * 90, <liquid:sulfuric_naphtha> *28, <liquid:sulfuric_gas> * 80])
    .duration(20)
    .EUt(96)
    .buildAndRegister();		
	
	#teleport staff
	recipes.remove(<actuallyadditions:item_tele_staff>);
	recipes.addShaped(<actuallyadditions:item_tele_staff>, 
	[[null, <actuallyadditions:item_crystal:2>, <actuallyadditions:block_misc:6>],
	[null, <appliedenergistics2:material:9>, null], 
	[<botania:manaresource:13>, <metaitem:battery.re.hv.sodium>, null]]);
	
	#vertical digger
mods.jei.JEI.removeAndHide(<actuallyadditions:block_miner>);

	#ring
recipes.remove(<actuallyadditions:item_misc:6>);
	assembler.recipeBuilder()
	.inputs(<ore:wireFineElectrum>*2, <ore:ringRoseGold>)
	.fluidInputs([<liquid:glowstone> * 1000])
    .outputs(<actuallyadditions:item_misc:6>)
    .duration(100)
    .EUt(48)
    .buildAndRegister();
	
	#Toast o' Chocolate
recipes.remove(<actuallyadditions:item_food:19>);
recipes.addShapeless(<actuallyadditions:item_food:19>, [<harvestcraft:toastitem>, <ore:foodChocolatebar>]);
	
	#invis
recipes.remove(<actuallyadditions:item_potion_ring:8>);
mods.astralsorcery.Altar.addAttunementAltarRecipe("interactions:aainvisring", <actuallyadditions:item_potion_ring:8>, 350, 200, [
	<minecraft:fermented_spider_eye>, <botania:manaresource:17>, <minecraft:fermented_spider_eye>,
	<botania:manaresource:17>, <ore:ringBrass>, <botania:manaresource:17>,
	<minecraft:fermented_spider_eye>, <botania:manaresource:17>, <minecraft:fermented_spider_eye>,
	<ore:powderMana>, <ore:powderMana>, <ore:powderMana>,<ore:powderMana>]);	
	
	#resistance
recipes.remove(<actuallyadditions:item_potion_ring:5>);
mods.astralsorcery.Altar.addAttunementAltarRecipe("interactions:aaresistancering", <actuallyadditions:item_potion_ring:5>, 350, 200, [
	<enderio:block_infinity_fog>, <botania:manaresource:17>, <enderio:block_infinity_fog>,
	<botania:manaresource:17>, <ore:ringBrass>, <botania:manaresource:17>,
	<enderio:block_infinity_fog>, <botania:manaresource:17>, <enderio:block_infinity_fog>,
	<ore:powderMana>, <ore:powderMana>, <ore:powderMana>,<ore:powderMana>]);	
	
	#strength
recipes.remove(<actuallyadditions:item_potion_ring:2>);
mods.astralsorcery.Altar.addAttunementAltarRecipe("interactions:aastrengthring", <actuallyadditions:item_potion_ring:2>, 350, 200, [
	<minecraft:blaze_rod>, <botania:manaresource:17>, <minecraft:blaze_rod>,
	<botania:manaresource:17>, <ore:ringBrass>, <botania:manaresource:17>,
	<minecraft:blaze_rod>, <botania:manaresource:17>, <minecraft:blaze_rod>,
	<ore:powderMana>, <ore:powderMana>, <ore:powderMana>,<ore:powderMana>]);
	
	#haste
recipes.remove(<actuallyadditions:item_potion_ring:1>);
mods.astralsorcery.Altar.addAttunementAltarRecipe("interactions:aahasteing", <actuallyadditions:item_potion_ring:1>, 350, 200, [
	<botania:manacookie>, <botania:manaresource:17>, <botania:manacookie>,
	<botania:manaresource:17>, <ore:ringBrass>, <botania:manaresource:17>,
	<botania:manacookie>, <botania:manaresource:17>, <botania:manacookie>,
	<ore:powderMana>, <ore:powderMana>, <ore:powderMana>,<ore:powderMana>]);
	
	#speed
recipes.remove(<actuallyadditions:item_potion_ring>);
mods.astralsorcery.Altar.addAttunementAltarRecipe("interactions:aaspeedring", <actuallyadditions:item_potion_ring>, 350, 200, [
	<harvestcraft:honeyitem>, <botania:manaresource:17>, <harvestcraft:honeyitem>,
	<botania:manaresource:17>, <ore:ringBrass>, <botania:manaresource:17>,
	<harvestcraft:honeyitem>, <botania:manaresource:17>, <harvestcraft:honeyitem>,
	<ore:powderMana>, <ore:powderMana>, <ore:powderMana>,<ore:powderMana>]);

	#water breathing
recipes.remove(<actuallyadditions:item_potion_ring:7>);
mods.astralsorcery.Altar.addAttunementAltarRecipe("interactions:aawaterbreathingring", <actuallyadditions:item_potion_ring:7>, 350, 200, [
	<minecraft:pufferfish>, <botania:manaresource:17>, <minecraft:pufferfish>,
	<botania:manaresource:17>, <ore:ringBrass>, <botania:manaresource:17>,
	<minecraft:pufferfish>, <botania:manaresource:17>, <minecraft:pufferfish>,
	<ore:powderMana>, <ore:powderMana>, <ore:powderMana>,<ore:powderMana>]);

	#fire resistance
recipes.remove(<actuallyadditions:item_potion_ring:6>);
mods.astralsorcery.Altar.addAttunementAltarRecipe("interactions:aafireresistancering", <actuallyadditions:item_potion_ring:6>, 350, 200, [
	<minecraft:magma_cream>, <botania:manaresource:19>, <minecraft:magma_cream>,
	<botania:manaresource:19>, <actuallyadditions:item_misc:6>, <botania:manaresource:19>,
	<minecraft:magma_cream>, <botania:manaresource:19>, <minecraft:magma_cream>,
	<ore:powderMana>, <ore:powderMana>, <ore:powderMana>,<ore:powderMana>]);

	#growth
recipes.remove(<actuallyadditions:item_growth_ring>);
mods.astralsorcery.Altar.addAttunementAltarRecipe("interactions:aagrowthring", <actuallyadditions:item_growth_ring>, 350, 200, [
	<ore:bonemeal>, <botania:manaresource:17>, <ore:bonemeal>,
	<botania:manaresource:17>, <ore:ringBrass>, <botania:manaresource:17>,
	<ore:bonemeal>, <botania:manaresource:17>, <ore:bonemeal>,
	<ore:powderMana>, <ore:powderMana>, <ore:powderMana>,<ore:powderMana>]);

	#regeneration
recipes.remove(<actuallyadditions:item_potion_ring:4>);
mods.astralsorcery.Altar.addAttunementAltarRecipe("interactions:aaregenerationring", <actuallyadditions:item_potion_ring:4>, 350, 200, [
	<deepmoblearning:pristine_matter_ghast>, <botania:manaresource:19>, <deepmoblearning:pristine_matter_ghast>,
	<botania:manaresource:19>, <actuallyadditions:item_misc:6>, <botania:manaresource:19>,
	<deepmoblearning:pristine_matter_ghast>, <botania:manaresource:19>, <deepmoblearning:pristine_matter_ghast>,
	<ore:powderMana>, <ore:powderMana>, <ore:powderMana>,<ore:powderMana>]);

	#water banning
recipes.remove(<actuallyadditions:item_water_removal_ring>);
mods.astralsorcery.Altar.addAttunementAltarRecipe("interactions:aawaterbanningring", <actuallyadditions:item_water_removal_ring>, 350, 200, [
	<openblocks:sponge>, <botania:manaresource:19>, <openblocks:sponge>,
	<botania:manaresource:19>, <actuallyadditions:item_misc:6>, <botania:manaresource:19>,
	<openblocks:sponge>, <botania:manaresource:19>, <openblocks:sponge>,
	<ore:powderMana>, <ore:powderMana>, <ore:powderMana>,<ore:powderMana>]);

	#magnet ring
recipes.remove(<actuallyadditions:item_suction_ring>);
mods.astralsorcery.Altar.addAttunementAltarRecipe("interactions:aamagnetring", <actuallyadditions:item_suction_ring>, 350, 200, [
	<ore:boltIronMagnetic>, <botania:manaresource:17>, <ore:boltIronMagnetic>,
	<botania:manaresource:17>, <ore:ringBrass>, <botania:manaresource:17>,
	<ore:boltIronMagnetic>, <botania:manaresource:17>, <ore:boltIronMagnetic>,
	<ore:powderMana>, <ore:powderMana>, <ore:powderMana>,<ore:powderMana>]);

	#jump boost
recipes.remove(<actuallyadditions:item_potion_ring:3>);
mods.astralsorcery.Altar.addAttunementAltarRecipe("interactions:aajumpboostring", <actuallyadditions:item_potion_ring:3>, 350, 200, [
	<minecraft:rabbit_hide>, <botania:manaresource:17>, <minecraft:rabbit_hide>,
	<botania:manaresource:17>, <ore:ringBrass>, <botania:manaresource:17>,
	<minecraft:rabbit_hide>, <botania:manaresource:17>, <minecraft:rabbit_hide>,
	<ore:powderMana>, <ore:powderMana>, <ore:powderMana>,<ore:powderMana>]);

	#night vision
	recipes.remove(<actuallyadditions:item_potion_ring:9>);
	mods.astralsorcery.Altar.addAttunementAltarRecipe("interactions:aanightvisionring", <actuallyadditions:item_potion_ring:9>, 350, 200, [
	<minecraft:golden_carrot>, <botania:manaresource:17>, <minecraft:golden_carrot>,
	<botania:manaresource:17>, <ore:ringBrass>, <botania:manaresource:17>,
	<minecraft:golden_carrot>, <botania:manaresource:17>, <minecraft:golden_carrot>,
	<ore:powderMana>, <ore:powderMana>, <ore:powderMana>,<ore:powderMana>]);
	
	#remove advanced rings, readd below with new recipes

	#speed
	recipes.remove(<actuallyadditions:item_potion_ring_advanced>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("AA Speed Ring", "", 15, [<aspect:ordo> *2], <actuallyadditions:item_potion_ring_advanced>, 
	[[null,<ore:elvenDragonstone>,null],
	[<ore:foilSterlingSilver>,null,<ore:foilSterlingSilver>],
	[null,<ore:elvenDragonstone>,null]]
	);
	
	#haste
	recipes.remove(<actuallyadditions:item_potion_ring_advanced:1>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("AA Haste Ring", "", 15, [<aspect:ordo> *2], <actuallyadditions:item_potion_ring_advanced:1>, 
	[[null,<ore:elvenDragonstone>,null],
	[<ore:foilSterlingSilver>,null,<ore:foilSterlingSilver>],
	[null,<ore:elvenDragonstone>,null]]
	);
	
	#strength
	recipes.remove(<actuallyadditions:item_potion_ring_advanced:2>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("AA Strength Ring", "", 15, [<aspect:ordo> *2], <actuallyadditions:item_potion_ring_advanced:2>, 
	[[null,<ore:elvenDragonstone>,null],
	[<ore:foilStainlessSteel>,null,<ore:foilStainlessSteel>],
	[null,<ore:elvenDragonstone>,null]]
	);
	
	#jump boost
	recipes.remove(<actuallyadditions:item_potion_ring_advanced:3>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("AA Jump boost Ring", "", 15, [<aspect:ordo> *2], <actuallyadditions:item_potion_ring_advanced:3>, 
	[[null,<ore:elvenDragonstone>,null],
	[<ore:foilSterlingSilver>,null,<ore:foilSterlingSilver>],
	[null,<ore:elvenDragonstone>,null]]
	);
	
	#Regeneration
	recipes.remove(<actuallyadditions:item_potion_ring_advanced:4>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("AA Invis Ring", "", 15, [<aspect:ordo> *2], <actuallyadditions:item_potion_ring_advanced:8>, 
	[[null,<ore:elvenDragonstone>,null],
	[<ore:foilStainlessSteel>,null,<ore:foilStainlessSteel>],
	[null,<ore:elvenDragonstone>,null]]
	);
	
	#Resistance
	recipes.remove(<actuallyadditions:item_potion_ring_advanced:5>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("AA Resistance Ring", "", 15, [<aspect:ordo> *2], <actuallyadditions:item_potion_ring_advanced:5>, 
	[[null,<ore:elvenDragonstone>,null],
	[<ore:foilStainlessSteel>,null,<ore:foilStainlessSteel>],
	[null,<ore:elvenDragonstone>,null]]
	);
	
	#Fire Resistance
	recipes.remove(<actuallyadditions:item_potion_ring_advanced:6>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("AA Fire resistance Ring", "", 15, [<aspect:ordo> *2], <actuallyadditions:item_potion_ring_advanced:6>, 
	[[null,<ore:elvenDragonstone>,null],
	[<ore:foilSterlingSilver>,null,<ore:foilSterlingSilver>],
	[null,<ore:elvenDragonstone>,null]]
	);
	
	#water breathing
	recipes.remove(<actuallyadditions:item_potion_ring_advanced:7>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("AA water breathing Ring", "", 15, [<aspect:ordo> *2], <actuallyadditions:item_potion_ring_advanced:7>, 
	[[null,<ore:elvenDragonstone>,null],
	[<ore:foilSterlingSilver>,null,<ore:foilSterlingSilver>],
	[null,<ore:elvenDragonstone>,null]]
	);
	
	#Invisibility
	recipes.remove(<actuallyadditions:item_potion_ring_advanced:8>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("AA Invis Ring", "", 15, [<aspect:ordo> *2], <actuallyadditions:item_potion_ring_advanced:8>, 
	[[null,<ore:elvenDragonstone>,null],
	[<ore:foilSterlingSilver>,null,<ore:foilSterlingSilver>],
	[null,<ore:elvenDragonstone>,null]]
	);
	
	#Night vision
	recipes.remove(<actuallyadditions:item_potion_ring_advanced:9>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("AA Night vision Ring", "", 15, [<aspect:ordo> *2], <actuallyadditions:item_potion_ring_advanced:9>, 
	[[null,<ore:manaPearl>,null],
	[<ore:foilSterlingSilver>,null,<ore:foilSterlingSilver>],
	[null,<ore:manaPearl>,null]]
	);
	
	#reconstructor
mods.jei.JEI.removeAndHide(<actuallyadditions:block_atomic_reconstructor>);

	#Fluid collector
	recipes.remove(<actuallyadditions:block_fluid_collector>);
	recipes.addShaped(<actuallyadditions:block_fluid_collector>, [
	[<ore:plateSteel>,<ore:plateSteel>,<ore:plateSteel>],
	[<minecraft:bucket>,<metaitem:electric.pump.mv>,<minecraft:bucket>],
	[<ore:plateSteel>,<ore:plateSteel>,<ore:plateSteel>]]);
	
	
	#mass removals
var removedItems as IItemStack[] = [
	<actuallyadditions:block_fermenting_barrel>,
	<actuallyadditions:item_misc:1>,
	<actuallyadditions:item_misc:21>,
	<actuallyadditions:item_misc:22>,
	<actuallyadditions:block_compost>,
	<actuallyadditions:block_tiny_torch>,
	<actuallyadditions:block_furnace_solar>,
	<actuallyadditions:block_fishing_net>,
	<actuallyadditions:block_heat_collector>,
	<actuallyadditions:block_ranged_collector>,
	<actuallyadditions:block_giant_chest>,
	<actuallyadditions:block_giant_chest_medium>,
	<actuallyadditions:block_giant_chest_large>,
	<actuallyadditions:item_crate_keeper>,
	<actuallyadditions:item_chest_to_crate_upgrade>,
	<actuallyadditions:block_grinder>,
	<actuallyadditions:block_grinder_double>,
	<actuallyadditions:block_energizer>,
	<actuallyadditions:block_enervator>,
	<actuallyadditions:item_small_to_medium_crate_upgrade>,
	<actuallyadditions:item_medium_to_large_crate_upgrade>,
	<actuallyadditions:item_engineer_goggles_advanced>,
	<actuallyadditions:item_bag>,
	<actuallyadditions:block_laser_relay>,
	<actuallyadditions:block_laser_relay_advanced>,
	<actuallyadditions:block_lava_factory_controller>,
	<actuallyadditions:block_misc:7>,
	<actuallyadditions:block_canola_press>,
	<actuallyadditions:block_misc:9>,
	<actuallyadditions:block_laser_relay_extreme>,
	<actuallyadditions:block_farmer>,
	<actuallyadditions:block_empowerer>,
	<actuallyadditions:block_display_stand>,
	<actuallyadditions:block_laser_relay_item>,
	<actuallyadditions:block_bio_reactor>,
	<actuallyadditions:block_misc:8>
	];

for i in removedItems {
	mods.jei.JEI.removeAndHide(i);
}	
	
	#experience solidifier
	recipes.remove(<actuallyadditions:block_xp_solidifier>);
recipes.addShaped(<actuallyadditions:item_filling_wand>, [
	[<ore:screwAluminium>,<ore:ingotVibrantAlloy>,<ore:screwAluminium>],
	[<actuallyadditions:item_crystal_empowered:2>,<gregtech:machine_casing:2>,<actuallyadditions:item_crystal_empowered:2>],
	[<ore:screwAluminium>,<ore:ingotVibrantAlloy>,<ore:screwAluminium>]]);
		
	
	#fireworks box 
	recipes.remove(<actuallyadditions:block_firework_box>);
recipes.addShaped(<actuallyadditions:block_firework_box>, [
	[<minecraft:gunpowder>,<minecraft:fireworks>,<minecraft:gunpowder>],
	[<ore:stickWood>,<minecraft:noteblock>,<ore:stickWood>],
	[<ore:plateSteel>,<ore:plateSteel>,<ore:plateSteel>]]);	
	
	#feeder
	recipes.remove(<actuallyadditions:block_feeder>);
recipes.addShaped(<actuallyadditions:block_feeder>, [
	[<astralsorcery:blockinfusedwood>,<metaitem:circuit.vacuum.tube>,<astralsorcery:blockinfusedwood>],
	[<minecraft:golden_carrot>,<gregtech:machine_casing>,<minecraft:golden_carrot>],
	[<astralsorcery:blockinfusedwood>,<ore:plateIron>,<astralsorcery:blockinfusedwood>]]);	
		
	
	#coffee maker 
	recipes.remove(<actuallyadditions:block_coffee_machine>);
recipes.addShaped(<actuallyadditions:block_coffee_machine>, [
	[null,<actuallyadditions:item_coffee_beans>,null],
	[<ore:cableGtSingleRedAlloy>,<gregtech:machine_casing:1>,<ore:cableGtSingleRedAlloy>],
	[<ore:plateNetherQuartz>,<astralsorcery:blockblackmarble>,<ore:plateNetherQuartz>]]);	
	
	
	#empowered crystals
	//output, input array
	#restonia
	Agglomeration.addRecipe(<actuallyadditions:item_crystal_empowered>, [<actuallyadditions:item_crystal>, <ore:gemFlawlessRuby>.firstItem, <botania:manaresource:1>]);
	#palis
	Agglomeration.addRecipe(<actuallyadditions:item_crystal_empowered:1>, [<actuallyadditions:item_crystal:1>, <ore:gemFlawlessLapis>.firstItem, <botania:manaresource:1>]);
	#diamante
	Agglomeration.addRecipe(<actuallyadditions:item_crystal_empowered:2>, [<actuallyadditions:item_crystal:2>, <ore:gemFlawlessDiamond>.firstItem, <botania:manaresource:1>]);
	#emeradic
	Agglomeration.addRecipe(<actuallyadditions:item_crystal_empowered:4>, [<actuallyadditions:item_crystal:4>, <ore:gemFlawlessEmerald>.firstItem, <botania:manaresource:1>]);
	#void
	Agglomeration.addRecipe(<actuallyadditions:item_crystal_empowered:3>, [<actuallyadditions:item_crystal:3>, <ore:gemFlawlessCoal>.firstItem, <botania:manaresource:1>]);
	#enoria
	Agglomeration.addRecipe(<actuallyadditions:item_crystal_empowered:5>, [<actuallyadditions:item_crystal:5>, <ore:gemFlawlessCertusQuartz>.firstItem, <botania:manaresource:1>]);
	
	#Basic Coil
	recipes.remove(<actuallyadditions:item_misc:7>);
	assembler.recipeBuilder()
	.inputs(<ore:cableGtSingleRedAlloy>*4, <ore:stickQuartzite>)
    .outputs(<actuallyadditions:item_misc:7>)
    .duration(100)
    .EUt(48)
    .buildAndRegister();
	
	#breaker
	recipes.remove(<actuallyadditions:block_breaker>);
	assembler.recipeBuilder()
	.inputs(<gregtech:machine_casing:2>, <actuallyadditions:item_crystal:3>)
  .notConsumable(<metaitem:circuit.integrated>.withTag({Configuration: 8}))
    .outputs(<actuallyadditions:block_breaker>)
    .duration(250)
    .EUt(16)
    .buildAndRegister();	

	#placer
recipes.remove(<actuallyadditions:block_placer>);
recipes.addShaped(<actuallyadditions:block_placer>, [
	[null, <thaumcraft:seal:5>, null],
	[robotArmMV, <meta_tile_entity:gregtech:hull.mv>, pumpMV],
	[null, <thermalexpansion:tank>, null]]);
	
	#lamp controller
	recipes.remove(<actuallyadditions:block_lamp_powerer>);
recipes.addShaped(<actuallyadditions:block_lamp_powerer>*4, [
	[null,<ore:circuitBasic>,null],
	[<ore:cableGtSingleRedAlloy>,<gregtech:machine_casing:1>,<ore:cableGtSingleRedAlloy>],
	[<ore:plateIron>,<ore:plateIron>,<ore:plateIron>]]);	
	
	#filler
	recipes.remove(<actuallyadditions:item_filling_wand>);
recipes.addShaped(<actuallyadditions:item_filling_wand>, [
	[null,<ore:circuitGood>,null],
	[<actuallyadditions:item_crystal:2>,<scannable:scanner>,<actuallyadditions:item_crystal:2>],
	[<ore:plateAluminium>,<ore:plateAluminium>,<ore:plateAluminium>]]);
	
	#wrench
	recipes.remove(<actuallyadditions:item_laser_wrench>);
recipes.addShaped(<actuallyadditions:item_laser_wrench>, [
	[<ore:plateIron>,null,<ore:plateIron>],
	[null,<ore:ingotAluminium>,null],
	[null,<ore:plateIron>,null]]);
	
	#Advanced Coil
	recipes.remove(<actuallyadditions:item_misc:8>);
	assembler.recipeBuilder()
	.inputs(<ore:cableGtSingleGold> * 4, <actuallyadditions:item_misc:7>)
    .outputs(<actuallyadditions:item_misc:8>)
    .duration(250)
    .EUt(48)
    .buildAndRegister();

	#Advanced item laser
	recipes.remove(<actuallyadditions:block_laser_relay_item_whitelist>);
	assembler.recipeBuilder()
	.inputs(<ore:plateTungsten>*2,<ore:alloyUltimate>,<actuallyadditions:item_crystal:4>)
    .outputs(<actuallyadditions:block_laser_relay_item_whitelist> * 2)
    .duration(1000)
    .EUt(48)
    .buildAndRegister();
	
	#Fluid laser
	recipes.remove(<actuallyadditions:block_laser_relay_fluids>);
	assembler.recipeBuilder()
	.inputs(<ore:plateTungsten>*2,<ore:alloyUltimate>,<actuallyadditions:item_crystal:1>)
    .outputs(<actuallyadditions:block_laser_relay_fluids> * 2)
    .duration(1000)
    .EUt(48)
    .buildAndRegister();
	
	#crystals
	#restonia
	mods.thermalexpansion.Insolator.addRecipe(<actuallyadditions:block_crystal_cluster_redstone>, <minecraft:redstone>, <bloodmagic:item_demon_crystal>, 40000, <actuallyadditions:item_crystal_shard>*3, 25);	

	#palis
	mods.thermalexpansion.Insolator.addRecipe(<actuallyadditions:block_crystal_cluster_lapis>, <ore:dustLapis>.firstItem, <bloodmagic:item_demon_crystal>, 40000, <actuallyadditions:item_crystal_shard:1>*3, 25);	

	#diamante
	mods.thermalexpansion.Insolator.addRecipe(<actuallyadditions:block_crystal_cluster_diamond>, <ore:dustDiamond>.firstItem, <bloodmagic:item_demon_crystal>, 40000, <actuallyadditions:item_crystal_shard:2>*3, 25);

	#emeradic
	mods.thermalexpansion.Insolator.addRecipe(<actuallyadditions:block_crystal_cluster_emerald>, <ore:dustEmerald>.firstItem, <bloodmagic:item_demon_crystal>, 40000, <actuallyadditions:item_crystal_shard:4>*3, 25);

	#void
	mods.thermalexpansion.Insolator.addRecipe(<actuallyadditions:block_crystal_cluster_coal>, <ore:dustCoal>.firstItem, <bloodmagic:item_demon_crystal>, 40000, <actuallyadditions:item_crystal_shard:3>*3, 25);	

	#enori
	mods.thermalexpansion.Insolator.addRecipe(<actuallyadditions:block_crystal_cluster_iron>, <ore:dustIron>.firstItem, <bloodmagic:item_demon_crystal>, 40000, <actuallyadditions:item_crystal_shard:5>*3, 25);	


	#restonia
	mods.thermalexpansion.Insolator.addRecipe(<actuallyadditions:item_crystal_shard>, <minecraft:redstone>, <ore:dustTinyGallium>.firstItem, 40000, null, 25);	

	#palis
	mods.thermalexpansion.Insolator.addRecipe(<actuallyadditions:item_crystal_shard:1>, <ore:dustLapis>.firstItem, <ore:dustTinyGallium>.firstItem, 40000, null, 25);	

	#diamante
	mods.thermalexpansion.Insolator.addRecipe(<actuallyadditions:item_crystal_shard:2>, <ore:dustDiamond>.firstItem, <ore:dustTinyGallium>.firstItem, 40000, null, 25);

	#emeradic
	mods.thermalexpansion.Insolator.addRecipe(<actuallyadditions:item_crystal_shard:4>, <ore:dustEmerald>.firstItem, <ore:dustTinyGallium>.firstItem, 40000, null, 25);

	#void
	mods.thermalexpansion.Insolator.addRecipe(<actuallyadditions:item_crystal_shard:3>, <ore:dustCoal>.firstItem, <ore:dustTinyGallium>.firstItem, 40000, null, 25);	

	#enori
	mods.thermalexpansion.Insolator.addRecipe(<actuallyadditions:item_crystal_shard:5>, <ore:dustIron>.firstItem, <ore:dustTinyGallium>.firstItem, 40000, null, 25);	

	
	#remove foods, values too high and redundant with pams
	mods.jei.JEI.removeAndHide(<actuallyadditions:item_food:6>);
	mods.jei.JEI.removeAndHide(<actuallyadditions:item_food:7>);
	mods.jei.JEI.removeAndHide(<actuallyadditions:item_food:1>);
	mods.jei.JEI.removeAndHide(<actuallyadditions:item_food:14>);
	mods.jei.JEI.removeAndHide(<actuallyadditions:item_food:10>);
	mods.jei.JEI.removeAndHide(<actuallyadditions:item_food:8>);
	
	#remove black quartz armor
	mods.jei.JEI.removeAndHide(<actuallyadditions:item_helm_quartz>);
	mods.jei.JEI.removeAndHide(<actuallyadditions:item_chest_quartz>);
	mods.jei.JEI.removeAndHide(<actuallyadditions:item_pants_quartz>);
	mods.jei.JEI.removeAndHide(<actuallyadditions:item_boots_quartz>);
	


	#AA Drills and drill augments
var aaDrills as IItemStack[] = [
	<actuallyadditions:item_drill_upgrade_speed>,
	<actuallyadditions:item_drill_upgrade_speed_ii>,
	<actuallyadditions:item_drill_upgrade_speed_iii>,
	<actuallyadditions:item_drill_upgrade_silk_touch>,
	<actuallyadditions:item_drill_upgrade_fortune>,
	<actuallyadditions:item_drill_upgrade_three_by_three>,
	<actuallyadditions:item_drill_upgrade_block_placing>,
	<actuallyadditions:item_drill_upgrade_five_by_five>,
	<actuallyadditions:item_drill:0>,
	<actuallyadditions:item_drill:1>,
	<actuallyadditions:item_drill:2>,
	<actuallyadditions:item_drill:3>,
	<actuallyadditions:item_drill:4>,
	<actuallyadditions:item_drill:5>,
	<actuallyadditions:item_drill:6>,
	<actuallyadditions:item_drill:7>,
	<actuallyadditions:item_drill:8>,
	<actuallyadditions:item_drill:9>,
	<actuallyadditions:item_drill:10>,
	<actuallyadditions:item_drill:11>,
	<actuallyadditions:item_drill:12>,
	<actuallyadditions:item_drill:13>,
	<actuallyadditions:item_drill:14>,
	<actuallyadditions:item_drill:15>
	];

	#Remove all AA drills
for i in aaDrills {
	mods.jei.JEI.removeAndHide(i);
}

	#AA Batteries
	var aaBatteries as IItemStack[] = [	
	<actuallyadditions:item_battery_quintuple>,
	<actuallyadditions:battery_quintuple_bauble>,
	<actuallyadditions:battery_triple_bauble>,
	<actuallyadditions:battery_quadruple_bauble>,
	<actuallyadditions:battery_double_bauble>,
	<actuallyadditions:item_battery_double>,
	<actuallyadditions:block_battery_box>,
	<actuallyadditions:item_battery_quintuple>,
	<actuallyadditions:battery_bauble>,
	<actuallyadditions:item_battery_triple>,
	<actuallyadditions:item_battery_quadruple>,
	<actuallyadditions:item_battery>,
	<actuallyadditions:battery_quintuple_bauble>
	];

	#Remove all AA batteries
	for i in aaBatteries {
		mods.jei.JEI.removeAndHide(i);
	}
	
	
	#Baguette
mods.jei.JEI.removeAndHide(<actuallyadditions:item_food:15>);

	#Bacon
mods.jei.JEI.removeAndHide(<actuallyadditions:item_food:20>);

	#Cheese
recipes.remove(<actuallyadditions:item_food>);
recipes.addShapeless(<actuallyadditions:item_food>, 
	[<minecraft:milk_bucket>, <ore:dustSalt>]);

	#Chocolate Cake
recipes.remove(<actuallyadditions:item_food:8>);
recipes.addShaped(<actuallyadditions:item_food:8>, [
	[<ceramics:clay_bucket:1>, <ore:FoodHeavyCream>, <ceramics:clay_bucket:1>],
	[<ore:foodDough>, <ore:foodChocolatebar>, <ore:foodDough>],
	[<ore:egg>, <ore:foodDough>, <minecraft:sugar>]]);

recipes.addShaped(<actuallyadditions:item_food:8>, [
	[<minecraft:milk_bucket>, <ore:FoodHeavyCream>, <minecraft:milk_bucket>],
	[<ore:foodDough>, <ore:foodChocolatebar>, <ore:foodDough>],
	[<ore:egg>, <ore:foodDough>, <minecraft:sugar>]]);

	#Crates - not removing yet cause I like to use it for creative testing
recipes.remove(<actuallyadditions:block_giant_chest>);
recipes.remove(<actuallyadditions:block_giant_chest_medium>);
recipes.remove(<actuallyadditions:block_giant_chest_large>);

	#Dough
mods.jei.JEI.removeAndHide(<actuallyadditions:item_misc:4>);

	#Furnace
mods.jei.JEI.removeAndHide(<actuallyadditions:block_furnace_double>);
	
	#Hamburger
mods.jei.JEI.removeAndHide(<actuallyadditions:item_food:13>);

	#Lens of Miner
mods.jei.JEI.removeAndHide(<actuallyadditions:item_mining_lens>);

	#ObsidiaN
var obsidianDisabled as IItemStack[] = [
	<actuallyadditions:item_pickaxe_obsidian>,
	<actuallyadditions:item_axe_obsidian>,
	<actuallyadditions:item_shovel_obsidian>,
	<actuallyadditions:item_sword_obsidian>,
	<actuallyadditions:item_hoe_obsidian>,
	<actuallyadditions:obsidian_paxel>];


for i in obsidianDisabled {
	recipes.remove(i);	
	mods.jei.JEI.removeAndHide(i);
}

	#Rice Dough
recipes.remove(<actuallyadditions:item_misc:9>);
RecipeBuilder.get("basic")
	.setShaped([
      [<ore:cropRice>, <ore:cropRice>, null],
      [<ore:cropRice>, <ore:dustSalt>, null],
      [null, null, null]])
    .setFluid(<liquid:water> * 1000)
    .addOutput(<actuallyadditions:item_misc:9>*2)
    .create();
	
	#rice slimeball
	recipes.remove(<actuallyadditions:item_misc:12>);
RecipeBuilder.get("basic")
	.setShapeless([<ore:cropRice>])
    .setFluid(<liquid:water> * 250)
    .addOutput(<actuallyadditions:item_misc:12>)
    .create();
		
	#Spaghetti
recipes.remove(<actuallyadditions:item_food:6>);
recipes.addShaped(<actuallyadditions:item_food:6>, [
	[null, null, null],
	[<actuallyadditions:item_food:7>, <actuallyadditions:item_food:7>, <actuallyadditions:item_food:7>],
	[null, <ore:foodTomatosoup>, null]]);

	#Submarine Sandwich
recipes.remove(<actuallyadditions:item_food:11>);
RecipeBuilder.get("basic")
	.setShaped([
      [null, <ore:foodCheese>, <ore:paper>],
      [<ore:foodMeat>, <minecraft:bread>, null],
      [<ore:paper>, <ore:foodCheese>, <ore:paper>]])
    .setFluid(<liquid:water> * 1000)
    .addOutput(<actuallyadditions:item_food:11>)
    .create();

	#Toast
mods.jei.JEI.removeAndHide(<actuallyadditions:item_food:10>);

	#Void Sack
mods.jei.JEI.removeAndHide(<actuallyadditions:item_void_bag>);


	#black quartz processing
macerator.recipeBuilder()
    .inputs(<actuallyadditions:block_misc:3>)
	.outputs(<ore:dustQuartzBlack>.firstItem *2)
    .duration(40)
    .EUt(8)
    .buildAndRegister();	

macerator.recipeBuilder()
    .inputs(<ore:gemQuartzBlack>)
	.outputs(<ore:dustQuartzBlack>.firstItem)
    .duration(40)
    .EUt(8)
    .buildAndRegister();	

print("----------------Actually Additions End-------------------");