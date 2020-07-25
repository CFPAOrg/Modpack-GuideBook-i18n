import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.artisanworktables.builder.RecipeBuilder;
import mods.contenttweaker.VanillaFactory;
import mods.thaumcraft.Infusion;
import mods.thaumcraft.ArcaneWorkbench;
import mods.thaumcraft.Crucible;
import mods.thaumcraft.SmeltingBonus;
import mods.gregtech.recipe.RecipeMap;



print("---------------Thaumcraft Start------------------");

recipes.remove(<thaumcraft:plate>);
recipes.remove(<thaumcraft:plate> * 3);
recipes.remove(<thaumcraft:plate:2>);
recipes.remove(<thaumcraft:plate:2> * 3);
recipes.remove(<thaumcraft:plate:3>);
recipes.remove(<thaumcraft:plate:3> * 3);

val autoclave = mods.gregtech.recipe.RecipeMap.getByName("autoclave");
val rareEarth = <thaumcraft:nugget:10>;
val nacre = <wizardry:nacre_block>;
val blast_furnace = mods.gregtech.recipe.RecipeMap.getByName("blast_furnace");
val metalBender = mods.gregtech.recipe.RecipeMap.getByName("metal_bender");
val aaVoidCrystal = <actuallyadditions:item_crystal:3>;
val forgeHammer = mods.gregtech.recipe.RecipeMap.getByName("forge_hammer");
val assembler = mods.gregtech.recipe.RecipeMap.getByName("assembler");


	#advanced alchemical construct
	mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:metal_alchemical_advanced>);
	recipes.remove(<thaumcraft:metal_alchemical_advanced>);
	assembler.recipeBuilder()
		.inputs(<ore:plateIron>*4,<thaumcraft:tube_valve>*2,<thaumcraft:tube>*2,<thaumcraft:plank_greatwood>, <ore:plateVoid>*2, <thaumcraft:primordial_pearl>)
		.fluidInputs(<liquid:unstable_mana> * 3000)
		.outputs(<thaumcraft:metal_alchemical_advanced>)
		.duration(550)
		.EUt(480)
		.buildAndRegister();	

	#Celestial Notes
var celestialNotesTip as IItemStack[] = [
	<thaumcraft:celestial_notes>,
	<thaumcraft:celestial_notes:1>,
	<thaumcraft:celestial_notes:2>,
	<thaumcraft:celestial_notes:3>,
	<thaumcraft:celestial_notes:4>,
	<thaumcraft:celestial_notes:5>,
	<thaumcraft:celestial_notes:6>,
	<thaumcraft:celestial_notes:7>,
	<thaumcraft:celestial_notes:8>,
	<thaumcraft:celestial_notes:9>,
	<thaumcraft:celestial_notes:10>,
	<thaumcraft:celestial_notes:11>,
	<thaumcraft:celestial_notes:12>
	];
for i in celestialNotesTip {
	i.addTooltip("只能在星辉祭坛里制作。找遍天空也没有用！");
}

	#Fortress armor
	val tfHelm = <thaumcraft:fortress_helm>;
	val tfChest = <thaumcraft:fortress_chest>;
	val tfLeggings = <thaumcraft:fortress_legs>;
	
	mods.thaumcraft.Infusion.removeRecipe(tfHelm);
	mods.thaumcraft.Infusion.removeRecipe(tfChest);
	mods.thaumcraft.Infusion.removeRecipe(tfLeggings);
	
	mods.thaumcraft.Infusion.registerRecipe("tfHelmRecipe", "INFUSION", tfHelm, 6,
	[<aspect:metallum> * 64, <aspect:potentia> * 64, <aspect:praemunio> * 20, <aspect:desiderium> * 16, <aspect:alienis> * 16],
	<thaumcraft:thaumium_helm>,
	[<actuallyadditions:item_crystal:4>,<ore:plateThaumium>.firstItem,<ore:plateThaumium>.firstItem,<ore:plateRoseGold>.firstItem,<ore:plateRoseGold>.firstItem, <netherbackport:netheritescrap>, <netherbackport:netheritescrap>]);

	mods.thaumcraft.Infusion.registerRecipe("tfChestRecipe", "INFUSION", tfChest, 6,
	[<aspect:metallum> * 64, <aspect:potentia> * 64, <aspect:praemunio> * 20, <aspect:desiderium> * 16, <aspect:alienis> * 16],
	<thaumcraft:thaumium_chest>,
	[<actuallyadditions:item_crystal:4>,<ore:plateThaumium>.firstItem,<ore:plateThaumium>.firstItem,<ore:plateRoseGold>.firstItem,<ore:plateRoseGold>.firstItem, <netherbackport:netheritescrap>, <netherbackport:netheritescrap>]);


	mods.thaumcraft.Infusion.registerRecipe("tfLeggingsRecipe", "INFUSION", tfLeggings, 6,
	[<aspect:metallum> * 64, <aspect:potentia> * 64, <aspect:praemunio> * 20, <aspect:desiderium> * 16, <aspect:alienis> * 16],
	<thaumcraft:thaumium_legs>,
	[<actuallyadditions:item_crystal:4>,<ore:plateThaumium>.firstItem,<ore:plateThaumium>.firstItem,<ore:plateRoseGold>.firstItem,<ore:plateRoseGold>.firstItem, <netherbackport:netheritescrap>, <netherbackport:netheritescrap>]);

	#Thaumium Plate Conversion
recipes.addShapeless(plateGTThaumium,[<thaumcraft:plate:2>]);
recipes.addShapeless(<thaumcraft:plate:2>, [plateGTThaumium]);

	#Thaumium Ingot from Dust
dustGTThaumium.addTooltip("可以在土高炉或工业高炉中烧制。");
mods.gregtech.recipe.PBFRecipeBuilder.start()
    .input(dustGTThaumium)
    .output(<ore:ingotThaumium>.firstItem)
    .duration(250)
    .fuelAmount(2)
    .buildAndRegister();
blast_furnace.recipeBuilder()
    .inputs(dustGTThaumium)
    .outputs(<ore:ingotThaumium>.firstItem)
    .duration(160)
    .EUt(120)
    .buildAndRegister();

	#Brass Plate Conversion
recipes.addShapeless(plateGTBrass,[<thaumcraft:plate>]);
recipes.addShapeless(<thaumcraft:plate>, [plateGTBrass]);

	#hide uncraftable armors
mods.jei.JEI.hide(<thaumcraft:crimson_plate_legs>);
mods.jei.JEI.hide(<thaumcraft:crimson_boots>);
mods.jei.JEI.hide(<thaumcraft:crimson_robe_helm>);
mods.jei.JEI.hide(<thaumcraft:crimson_robe_chest>);
mods.jei.JEI.hide(<thaumcraft:crimson_robe_legs>);
mods.jei.JEI.hide(<thaumcraft:crimson_praetor_legs>);
mods.jei.JEI.hide(<thaumcraft:crimson_plate_chest>);
mods.jei.JEI.hide(<thaumcraft:crimson_praetor_chest>);

	#primordial pearl
mods.thaumcraft.Infusion.registerRecipe("primordialpearl", "INFUSION", <thaumcraft:primordial_pearl>, 13,
	[<aspect:alienis> * 64, <aspect:aer> * 10, <aspect:ignis> * 10, <aspect:terra> * 10, <aspect:aqua> * 10, <aspect:ordo> * 10, <aspect:perditio> * 10 ],
	<minecraft:nether_star>,
	[<thaumcraft:void_seed>,<thaumcraft:void_seed>,<bloodmagic:item_demon_crystal:4>,
	<bloodmagic:item_demon_crystal:4>,<bloodmagic:slate:4>,<bloodmagic:slate:4>,
	<ore:ingotTerrasteel>,<ore:ingotTerrasteel>,<astralsorcery:itemcelestialcrystal>,
	<astralsorcery:itemcelestialcrystal>,<botania:manaresource:9>, <astralsorcery:itemcraftingcomponent:4>,<astralsorcery:itemcraftingcomponent:4>]);

	#cheater thauminomicon

	mods.astralsorcery.Altar.addAttunementAltarRecipe("thaumcraft:cheaterthaum", <thaumcraft:thaumonomicon:1>, 300, 600, [
	<ore:dustDiamond>,<astralsorcery:itemperkgem:2>,<ore:dustDiamond>,
	<projecte:item.pe_covalence_dust:1>,<thaumcraft:thaumonomicon>,<projecte:item.pe_covalence_dust:1>,
	<ore:dustDiamond>,<projecte:item.pe_covalence_dust:1>,<ore:dustDiamond>,
	<thaumcraft:salis_mundus>,<thaumcraft:salis_mundus>,<thaumcraft:salis_mundus>,<thaumcraft:salis_mundus>]);
	
	#arcane stone
	recipes.remove(<thaumcraft:stone_arcane>);
	recipes.addShaped(<thaumcraft:stone_arcane>*4,
	[[nacre,nacre,nacre],
	[nacre,<ore:visCrystals>,nacre],
	[nacre,nacre,nacre]]);

	#silverwood sapling
mods.astralsorcery.LightTransmutation.addTransmutation(<thaumcraft:sapling_greatwood>, <thaumcraft:sapling_silverwood>, 75);

	#thaumium dust smelting
	furnace.addRecipe(<ore:ingotThaumium>.firstItem, <ore:dustThaumium>);

	
	#vis crystals from processed infused ores
	furnace.addRecipe(<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "aer"}]}), <ore:gemAerInfused>);
	furnace.addRecipe(<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "terra"}]}), <ore:gemTerraInfused>);
	furnace.addRecipe(<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "ignis"}]}), <ore:gemIgnisInfused>);
	furnace.addRecipe(<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "aqua"}]}), <ore:gemAquaInfused>);
	furnace.addRecipe(<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "ordo"}]}), <ore:gemOrdoInfused>);
	furnace.addRecipe(<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "perditio"}]}), <ore:gemEntropyInfused>);
	
	#thaumium armor
recipes.remove(<thaumcraft:thaumium_boots>);
recipes.remove(<thaumcraft:thaumium_legs>);
recipes.remove(<thaumcraft:thaumium_helm>);
recipes.remove(<thaumcraft:thaumium_chest>);
recipes.addShaped(<thaumcraft:thaumium_boots>, [
	[<ore:screwIron>, <astralsorcery:itemcraftingcomponent>, <ore:screwIron>],
	[<ore:plateThaumium>, <minecraft:leather_boots>, <ore:plateThaumium>],
	[<ore:screwIron>, <ore:plateThaumium>, <ore:screwIron>]]);
recipes.addShaped(<thaumcraft:thaumium_legs>, [
	[<ore:screwIron>, <astralsorcery:itemcraftingcomponent>, <ore:screwIron>],
	[<ore:plateThaumium>, <minecraft:leather_leggings>, <ore:plateThaumium>],
	[<ore:screwIron>, <ore:plateThaumium>, <ore:screwIron>]]);
recipes.addShaped(<thaumcraft:thaumium_chest>, [
	[<ore:screwIron>, <astralsorcery:itemcraftingcomponent>, <ore:screwIron>],
	[<ore:plateThaumium>, <minecraft:leather_chestplate>, <ore:plateThaumium>],
	[<ore:screwIron>, <ore:plateThaumium>, <ore:screwIron>]]);
recipes.addShaped(<thaumcraft:thaumium_helm>, [
	[<ore:screwIron>, <astralsorcery:itemcraftingcomponent>, <ore:screwIron>],
	[<ore:plateThaumium>, <minecraft:leather_helmet>, <ore:plateThaumium>],
	[<ore:screwIron>, <ore:plateThaumium>, <ore:screwIron>]]);

	#Void Armor
recipes.remove(<thaumcraft:void_boots>);
recipes.addShaped(<thaumcraft:void_boots>, [
	[<ore:screwManasteel>, <astralsorcery:itemcraftingcomponent>, <ore:screwManasteel>],
	[aaVoidCrystal, <minecraft:leather_boots>, aaVoidCrystal],
	[<ore:screwManasteel>, aaVoidCrystal, <ore:screwManasteel>]]);
recipes.remove(<thaumcraft:void_legs>);
recipes.addShaped(<thaumcraft:void_legs>, [
	[<ore:screwManasteel>, <astralsorcery:itemcraftingcomponent>, <ore:screwManasteel>],
	[aaVoidCrystal, <minecraft:leather_leggings>, aaVoidCrystal],
	[<ore:screwManasteel>, aaVoidCrystal, <ore:screwManasteel>]]);
recipes.remove(<thaumcraft:void_chest>);
recipes.addShaped(<thaumcraft:void_chest>, [
	[<ore:screwManasteel>, <astralsorcery:itemcraftingcomponent>, <ore:screwManasteel>],
	[aaVoidCrystal, <minecraft:leather_chestplate>, aaVoidCrystal],
	[<ore:screwManasteel>, aaVoidCrystal, <ore:screwManasteel>]]);
recipes.remove(<thaumcraft:void_helm>);
recipes.addShaped(<thaumcraft:void_helm>, [
	[<ore:screwManasteel>, <astralsorcery:itemcraftingcomponent>, <ore:screwManasteel>],
	[aaVoidCrystal, <minecraft:leather_helmet>, aaVoidCrystal],
	[<ore:screwManasteel>, aaVoidCrystal, <ore:screwManasteel>]]);

	#void Tools
recipes.remove(<thaumcraft:void_pick>);
recipes.addShaped(<thaumcraft:void_pick>,
	[[<actuallyadditions:item_crystal:3>, <actuallyadditions:item_crystal:3>, <actuallyadditions:item_crystal:3>],
	[null, <wizardry:wisdom_stick>, null],
	[null, <wizardry:wisdom_stick>, null]]);

recipes.remove(<thaumcraft:void_shovel>);
recipes.addShaped(<thaumcraft:void_shovel>,
	[[null, <actuallyadditions:item_crystal:3>, null],
	[null, <wizardry:wisdom_stick>, null],
	[null, <wizardry:wisdom_stick>, null]]);

recipes.remove(<thaumcraft:void_sword>);
recipes.addShaped(<thaumcraft:void_sword>,
	[[null, <actuallyadditions:item_crystal:3>, null],
	[null, <actuallyadditions:item_crystal:3>, null],
	[null, <wizardry:wisdom_stick>, null]]);

recipes.remove(<thaumcraft:void_axe>);
recipes.addShaped(<thaumcraft:void_axe>,
	[[<actuallyadditions:item_crystal:3>, <actuallyadditions:item_crystal:3>, null],
	[<actuallyadditions:item_crystal:3>, <wizardry:wisdom_stick>, null],
	 [null, <wizardry:wisdom_stick>, null]]);

recipes.remove(<thaumcraft:void_hoe>);
recipes.addShaped(<thaumcraft:void_hoe>,
	[[<actuallyadditions:item_crystal:3>, <actuallyadditions:item_crystal:3>, null],
	[null, <wizardry:wisdom_stick>, null],
	[null, <wizardry:wisdom_stick>, null]]);

	#quartz slivers
recipes.remove(<thaumcraft:nugget:9>);

mods.astralsorcery.Altar.addDiscoveryAltarRecipe("thaumcraft_sliver", <thaumcraft:nugget:9>, 12, 200, [
	<ore:gemChippedCertusQuartz>,null,null,null,null,null,null,null,null]);

mods.astralsorcery.Altar.addDiscoveryAltarRecipe("thaumcraft_sliver_quartzite", <thaumcraft:nugget:9>, 12, 200, [
	<ore:gemChippedQuartzite>,null,null,null,null,null,null,null,null]);

mods.astralsorcery.Altar.addDiscoveryAltarRecipe("thaumcraft_sliver_netherQuartz", <thaumcraft:nugget:9>, 12, 200, [
	<ore:gemChippedNetherQuartz>,null,null,null,null,null,null,null,null]);

	#cinnabar
mods.astralsorcery.Altar.addDiscoveryAltarRecipe("thaumcraft_cinnabar", <thaumcraft:quicksilver>, 50, 200, [
	<ore:gemCinnabar>,null,null,null,null,null,null,null,null]);


	#Amber from resin
autoclave.recipeBuilder()
    .inputs(<appliedenergistics2:crystal_seed>)
    .fluidInputs([<liquid:resin> * 100])
    .outputs(<thaumcraft:amber>* 1)
    .duration(200)
    .EUt(28)
    .buildAndRegister();

	#Cinnabar via autoclave
autoclave.recipeBuilder()
    .inputs(<ore:gemCinnabar> * 1)
    .fluidInputs([<liquid:astralsorcery.liquidstarlight> * 5])
    .outputs(<thaumcraft:quicksilver> * 3)
    .duration(180)
    .EUt(8)
    .buildAndRegister();


	#Slivers via autoclave
autoclave.recipeBuilder()
    .inputs(<ore:gemChippedCertusQuartz> * 1)
    .fluidInputs([<liquid:astralsorcery.liquidstarlight> * 5])
    .outputs(<thaumcraft:nugget:9> * 3)
    .duration(100)
    .EUt(4)
    .buildAndRegister();

autoclave.recipeBuilder()
    .inputs(<ore:gemChippedQuartzite> * 1)
    .fluidInputs([<liquid:astralsorcery.liquidstarlight> * 5])
    .outputs(<thaumcraft:nugget:9> * 3)
    .duration(100)
    .EUt(4)
    .buildAndRegister();

autoclave.recipeBuilder()
    .inputs(<ore:gemChippedNetherQuartz> * 1)
    .fluidInputs([<liquid:astralsorcery.liquidstarlight> * 5])
    .outputs(<thaumcraft:nugget:9> * 3)
    .duration(100)
    .EUt(4)
    .buildAndRegister();

	#greatwood tooltip
<thaumcraft:sapling_greatwood>.addTooltip(format.darkRed("种2x2的树苗才能长出宏伟木"));

	#enchanted fabric
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:fabric>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("thaumcraft:fabric", "", 5, [], <thaumcraft:fabric>,
	[[null, <ore:manaString>.firstItem, null],
	[<ore:manaString>.firstItem, <ore:blockRockwool>.firstItem, <ore:manaString>.firstItem],
	[null, <ore:manaString>.firstItem, null]
	]);

		#flux Lattice
	recipes.remove(<thaumcraft:condenser_lattice>);
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:condenser_lattice>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("thaumcraft:lattice", "FLUX", 100, [<aspect:aer> * 3, <aspect:terra> *3], <thaumcraft:condenser_lattice>,
	[[<ore:screwSilver>, <ore:plateThaumium>, <ore:screwSilver>],
	[<ore:plateCertusQuartz>, <thaumcraft:filter>, <ore:plateCertusQuartz>],
	[<ore:screwSilver>, <ore:plateThaumium>, <ore:screwSilver>]
	]);



	#vis Filters
recipes.remove(<thaumcraft:filter>);
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:filter>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("thaumcraft:filters", "TUBES", 15, [<aspect:aqua>], <thaumcraft:filter>*16,
	[[<ore:plateGold>, <ore:plateGold>, <ore:plateGold>],
	[<minecraft:carpet>, <thaumcraft:plank_silverwood>, <minecraft:carpet>],
	[<ore:plateGold>, <ore:plateGold>, <ore:plateGold>]]);

	#venting port
	recipes.remove(<thaumcraft:smelter_vent>);
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:smelter_vent>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("thaumcraft:venting", "TUBES", 75, [<aspect:aer>], <thaumcraft:smelter_vent>,
	[[<ore:screwSteel>, <ore:plateBrass>, <ore:screwSteel>],
	[<thaumcraft:filter>, <thaumcraft:metal_alchemical>, <thaumcraft:filter>],
	[<ore:screwSteel>, <ore:plateBrass>, <ore:screwSteel>]]);

	#flux condenser
recipes.remove(<thaumcraft:condenser>);
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:condenser>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("thaumcraft:condenser", "TUBES", 75, [<aspect:aer>], <thaumcraft:condenser>,
	[[<ore:screwSteel>, <ore:plateBrass>, <ore:screwSteel>],
	[<thaumcraft:condenser_lattice>, <thaumcraft:metal_alchemical>, <thaumcraft:condenser_lattice>],
	[<ore:screwSteel>, <ore:plateBrass>, <ore:screwSteel>]]);

	#essentia tubes
recipes.remove(<thaumcraft:tube>);
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:tube>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("thaumcraft:tubes", "TUBES", 10, [], <thaumcraft:tube> *8,
	[[null, <thaumcraft:quicksilver>, null],
	[<ore:plateIron>, <extrautils2:decorativeglass>, <ore:plateIron>],
	[null, <ore:stickBrass>, null]]);

	#workbench charger
	recipes.remove(<thaumcraft:arcane_workbench_charger>);
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:arcane_workbench_charger>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("thaumcraft:workbench_charger", "WORKBENCHCHARGER", 200, [<aspect:aer> * 3, <aspect:ordo> *3], <thaumcraft:arcane_workbench_charger>,
	[[null, <thaumcraft:vis_resonator>, null],
	[<astralsorcery:blockinfusedwood:2>, null, <astralsorcery:blockinfusedwood:2>],
	[<ore:plateSteel>, <thaumcraft:slab_greatwood>, <ore:plateSteel>]]);

	#charging pedestal
	recipes.remove(<thaumcraft:recharge_pedestal>);
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:recharge_pedestal>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("thaumcraft:recharged_pedestal", "RECHARGEPEDESTAL", 100, [<aspect:aer> * 5, <aspect:ordo> *5], <thaumcraft:recharge_pedestal>,
	[[null, <thaumcraft:vis_resonator>, null],
	[<ore:plateDiamond>, <ore:stickGold>, <ore:plateDiamond>],
	[<ore:slabNetherBrick>, <ore:slabNetherBrick>, <ore:slabNetherBrick>]]);

	#mirror glass
	recipes.remove(<thaumcraft:mirrored_glass>);
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:mirrored_glass>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("thaumcraft:mirror_glass", "MIRROR", 100, [<aspect:aqua> * 2, <aspect:ordo> *2], <thaumcraft:mirrored_glass>,
	[[null, <ore:quicksilver>, null],
	[<ore:quicksilver>, <ore:plateDiamond>, <ore:quicksilver>],
	[null, <ore:quicksilver>, null]]);

	#Golem bell
recipes.remove(<thaumcraft:golem_bell>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("thaumcraft:golem_bell", "", 10, [<aspect:ordo> * 1], <thaumcraft:golem_bell>,
	[[null, <ore:nuggetQuartz>, <ore:nuggetQuartz>],
	[null, <ore:nuggetQuartz>, <ore:nuggetQuartz>],
	[<ore:stickSilver>, null, null]]);


	#thaumometer
	recipes.remove(<thaumcraft:thaumometer>);
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:thaumometer>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("thaumometer", "", 20, [], <thaumcraft:thaumometer>,
	[[null, <ore:plateGold>, null],
	[<ore:plateGold>, <wizardry:orb:1>, <ore:plateGold>],
	[null, <ore:plateGold>, null]
	]);


# Add Crafting Recipe for Ancient Pillars, since forming them is bugged.
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("Ancient Pillar", "INFUSIONANCIENT", 100, [<aspect:ordo> *8], <thaumcraft:pillar_ancient> * 4, 
    [[<thaumcraft:stone_ancient>,<thaumcraft:stone_ancient>,<thaumcraft:stone_ancient>],
    [<thaumcraft:stone_ancient>,<thaumcraft:salis_mundus>,<thaumcraft:stone_ancient>],
    [<thaumcraft:stone_ancient>,<thaumcraft:stone_ancient>,<thaumcraft:stone_ancient>]]
    );
# Add Crafting Recipe for Eldritch Pillars, since forming them is bugged.
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("Eldritch Pillar", "INFUSIONELDRITCH", 200, [<aspect:ordo> *16], <thaumcraft:pillar_eldritch> * 4, 
    [[<thaumcraft:stone_eldritch_tile>,<thaumcraft:stone_eldritch_tile>,<thaumcraft:stone_eldritch_tile>],
    [<thaumcraft:stone_eldritch_tile>,<thaumcraft:salis_mundus>,<thaumcraft:stone_eldritch_tile>],
    [<thaumcraft:stone_eldritch_tile>,<thaumcraft:stone_eldritch_tile>,<thaumcraft:stone_eldritch_tile>]]
    );

	#void seed
mods.bloodmagic.TartaricForge.addRecipe(<thaumcraft:void_seed>*4,[<thaumcraft:ingot>,<actuallyadditions:block_misc:2>,<quark:black_ash>,<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "vitium"}]})], 500, 200);

	# Vis Shard transformation
mods.botania.PureDaisy.addRecipe(<ore:oreAerInfused>, <thaumcraft:crystal_aer>);
mods.botania.PureDaisy.addRecipe(<ore:oreIgnisInfused>, <thaumcraft:crystal_ignis>);
mods.botania.PureDaisy.addRecipe(<ore:oreAquaInfused>, <thaumcraft:crystal_aqua>);
mods.botania.PureDaisy.addRecipe(<ore:oreTerraInfused>, <thaumcraft:crystal_terra>);
mods.botania.PureDaisy.addRecipe(<ore:oreOrdoInfused>, <thaumcraft:crystal_ordo>);
mods.botania.PureDaisy.addRecipe(<ore:oreEntropyInfused>, <thaumcraft:crystal_perditio>);

	# Greatwood Sapling Transformation
mods.botania.PureDaisy.addRecipe(<minecraft:sapling>, <thaumcraft:sapling_greatwood>);

	#fix nature ore output smelting
furnace.remove(<thermalfoundation:material:128>*2);
furnace.remove(<thermalfoundation:material:129>*2);
furnace.remove(<thermalfoundation:material:130>*2);
furnace.remove(<thermalfoundation:material:131>*2);
furnace.addRecipe(<ore:ingotCopper>.firstItem *2 ,<thaumcraft:cluster:2>);
furnace.addRecipe(<ore:ingotTin>.firstItem *2 ,<thaumcraft:cluster:3>);
furnace.addRecipe(<ore:ingotSilver>.firstItem *2 ,<thaumcraft:cluster:4>);
furnace.addRecipe(<ore:ingotLead>.firstItem *2 ,<thaumcraft:cluster:5>);

	#tech method of rare earth
autoclave.recipeBuilder()
    .inputs(<ore:dustRareEarth> * 1)
    .fluidInputs([<liquid:astralsorcery.liquidstarlight> * 5])
    .outputs(<thaumcraft:nugget:10>)
    .duration(400)
    .EUt(48)
    .buildAndRegister();

	#salis mundis
RecipeBuilder.get("basic")
	.setShaped([
		[<projecte:item.pe_covalence_dust>, <projecte:item.pe_covalence_dust>, <projecte:item.pe_covalence_dust>],
		[<projecte:item.pe_covalence_dust>, <ore:visCrystals>, <projecte:item.pe_covalence_dust>],
		[<projecte:item.pe_covalence_dust>, <projecte:item.pe_covalence_dust>, <projecte:item.pe_covalence_dust>]])
	.addTool(<ore:artisanHammers>, 10)
	.setFluid(<liquid:mana_fluid>*250)
	.addOutput(<thaumcraft:salis_mundus>)
	.create();

	#table
recipes.remove(<thaumcraft:table_wood>);
RecipeBuilder.get("basic")
	.setShaped([
		[<thaumcraft:slab_greatwood>, <thaumcraft:slab_greatwood>, <thaumcraft:slab_greatwood>],
		[<astralsorcery:blockinfusedwood>, null, <astralsorcery:blockinfusedwood>],
		[<astralsorcery:blockinfusedwood>, null, <astralsorcery:blockinfusedwood>]])
	.addTool(<ore:toolSaw>, 10)
	.addOutput(<thaumcraft:table_wood>)
	.create();


	#Vis resonator
recipes.remove(<thaumcraft:vis_resonator>);
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:vis_resonator>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("visresonator", "", 50, [<aspect:aer>, <aspect:aqua>], <thaumcraft:vis_resonator>,
	[[null, <ore:plateSilver>, null],
	[<ore:plateSilver>, <ore:gemFlawedQuartzite>, <ore:plateSilver>],
	[null, <ore:plateSilver>, null]
	]);


	#Caster Gauntlet
recipes.remove(<thaumcraft:caster_basic>);
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:caster_basic>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("caster_basic", "", 100,
	[<aspect:aer>, <aspect:ignis>, <aspect:terra>, <aspect:aqua>, <aspect:ordo>, <aspect:perditio>],
	<thaumcraft:caster_basic>,
	[[<ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>],
	[<harvestcraft:hardenedleatheritem>, <thaumcraft:vis_resonator>, <harvestcraft:hardenedleatheritem>],
	[<harvestcraft:hardenedleatheritem>, <thaumcraft:thaumometer>, <harvestcraft:hardenedleatheritem>]
	]);


	#Essentia Smelter
recipes.remove(<thaumcraft:smelter_basic>);
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:smelter_basic>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("essential_smelter", "ESSENTIASMELTER", 50, [<aspect:ignis> * 5, <aspect:ordo> *5], <thaumcraft:smelter_basic>,
	[[<ore:plateBrass>, <thaumcraft:crucible>, <ore:plateBrass>],
	[<tconstruct:seared>, <gregtech:machine:501>, <tconstruct:seared>],
	[<ore:plateBrass>, <tconstruct:seared>, <ore:plateBrass>]
	]);

	#rare earths from diamond
autoclave.recipeBuilder()
    .inputs(<ore:crushedDiamond> * 1)
    .fluidInputs([<liquid:unstable_mana> * 250])
    .chancedOutput(rareEarth, 2500, 500)
    .duration(500)
    .EUt(24)
    .buildAndRegister();

	#rare earths from coal
autoclave.recipeBuilder()
    .inputs(<ore:crushedCoal> * 1)
    .fluidInputs([<liquid:unstable_mana> * 250])
    .chancedOutput(rareEarth, 500, 150)
    .duration(500)
    .EUt(24)
    .buildAndRegister();

	#rare earths from cinnabar
autoclave.recipeBuilder()
    .inputs(<ore:crushedCinnabar> * 1)
    .fluidInputs([<liquid:unstable_mana> * 250])
    .chancedOutput(rareEarth, 1500, 350)
    .duration(500)
    .EUt(24)
    .buildAndRegister();

	#rare earths from redstone
autoclave.recipeBuilder()
    .inputs(<ore:crushedRedstone> * 1)
    .fluidInputs([<liquid:unstable_mana> * 250])
    .chancedOutput(rareEarth, 1000, 250)
    .duration(500)
    .EUt(24)
    .buildAndRegister();

	//Adding Aspects
	<draconicevolution:draconium_dust>.setAspects([<aspect:draco>*5, <aspect:potentia>*5]);
	<wizardry:nacre_block>.setAspects([<aspect:ordo>*9]);
	<plants2:generic:5>.setAspects([<aspect:praecantatio>*3, <aspect:sensus>*1, <aspect:ordo>*1]);
	<plants2:generic:6>.setAspects([<aspect:praecantatio>*12, <aspect:sensus>*4, <aspect:ordo>*4]);
	<plants2:generic:7>.setAspects([<aspect:praecantatio>*3, <aspect:sensus>*1, <aspect:perditio>*1]);
	<plants2:generic:8>.setAspects([<aspect:praecantatio>*12, <aspect:sensus>*4, <aspect:perditio>*4]);
	
	//Crucible recipes
mods.thaumcraft.Crucible.removeRecipe(<thaumcraft:ingot>);
mods.thaumcraft.Crucible.registerRecipe("Thaumium", "BASEALCHEMY", <thaumcraft:ingot>, <ore:ingotSteel>, [<aspect:praecantatio> * 5, <aspect:terra> * 5]);
mods.thaumcraft.Crucible.registerRecipe("ThaumiumfromStainless", "BASEALCHEMY", <thaumcraft:ingot> *4, <ore:ingotStainlessSteel>.firstItem, [<aspect:praecantatio> * 5, <aspect:terra> * 5]);

	#void metal
	mods.thaumcraft.Crucible.removeRecipe(<thaumcraft:ingot:1>);
blast_furnace.recipeBuilder()
    .inputs(<bloodmagic:item_demon_crystal:2> * 4, <thaumcraft:void_seed>)
    .fluidInputs([<liquid:liquidnightmares> * 4000])
    .outputs(<thaumcraft:ingot:1>)
    .property("temperature", 1700)
    .duration(1500)
    .EUt(480)
    .buildAndRegister();

	#void metal plate
	metalBender.recipeBuilder()
    .inputs(<thaumcraft:ingot:1>)
	.notConsumable(<metaitem:circuit.integrated>.withTag({Configuration: 0}).or(<metaitem:circuit.integrated>))
    .outputs(<thaumcraft:plate:3>)
    .duration(85)
    .EUt(24)
    .buildAndRegister();


	#alumentum
	mods.thaumcraft.Crucible.removeRecipe(<thaumcraft:alumentum>);
	mods.thaumcraft.Crucible.registerRecipe("alumentum", "BASEALCHEMY", <thaumcraft:alumentum> * 9, <ore:gemCoke>, [<aspect:perditio> * 5, <aspect:terra> * 5, <aspect:ignis> * 10, <aspect:potentia> * 10]);

	#sword of the zephyr
	val aerCrystal = <thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "aer"}]});
	val swordZephyr = <thaumcraft:elemental_sword>.withTag({infench: [{lvl: 2 as short, id: 5 as short}]});
	mods.thaumcraft.Infusion.removeRecipe(swordZephyr);
	mods.thaumcraft.Infusion.registerRecipe("swordZephyr", "INFUSION", swordZephyr, 2, [<aspect:aer> * 30, <aspect:motus> * 30, <aspect:aversio> * 30], <plants2:dark_crystal_sword>,
	[<ore:lensDiamond>.firstItem,aerCrystal,aerCrystal,<thaumcraft:stone_arcane>,<thaumcraft:stone_arcane>,<thaumcraft:log_silverwood>]);


	#causality collapser
	mods.thaumcraft.Infusion.removeRecipe(<thaumcraft:causality_collapser>);
	<thaumcraft:causality_collapser>.addTooltip(format.darkRed("可合成咒波清理海绵来移除裂隙。"));

	#Block breaker golem seal
	mods.thaumcraft.Infusion.removeRecipe(<thaumcraft:seal:12>);
	mods.thaumcraft.Infusion.registerRecipe("breakerSeal", "INFUSION", <thaumcraft:seal:12>, 6, [<aspect:alienis> * 8, <aspect:potentia> * 10, <aspect:instrumentum> * 12], <thaumcraft:seal>,
	[<bloodmagic:sentient_shovel>, <bloodmagic:sentient_axe>, <bloodmagic:sentient_pickaxe>, <ore:foilAluminium>]);

	#flux remover glove
	mods.thaumcraft.Infusion.registerRecipe("fluxglove", "INFUSION", <thaumcraft:creative_flux_sponge>, 11, [<aspect:tenebrae> * 48, <aspect:potentia> * 12, <aspect:praecantatio> *20, <aspect:aqua> * 16, <aspect:aer> * 16, <aspect:terra> * 16, <aspect:ignis> * 16, <aspect:ordo> *16, <aspect:perditio>*16], <hotornot:mitts>,
	[<bloodmagic:component:4>,<thaumcraft:void_seed>,<thaumcraft:void_seed>,<astralsorcery:itemcraftingcomponent:4>,<astralsorcery:itemcraftingcomponent:4>,<thaumcraft:morphic_resonator>]);

	#infernal furnace bonuses
	val steelStack = <ore:nuggetSteel>.firstItem *2;
	val copperNug = <ore:nuggetCopper>.firstItem;
	val tinNug = <ore:nuggetTin>.firstItem;
	val leadNug = <ore:nuggetLead>.firstItem;
	val silverNug = <ore:nuggetSilver>.firstItem;
	val aluminiumStack = <ore:nuggetAluminium>.firstItem;



	#aluminium	
var aluminiumInfernal as IItemStack[]= [
	<gregtech:ore_aluminium_0>,
	<gregtech:ore_aluminium_0:1>,
	<gregtech:ore_aluminium_0:2>,
	<gregtech:ore_aluminium_0:3>,
	<gregtech:ore_aluminium_0:4>,
	<gregtech:ore_aluminium_0:5>,
	<gregtech:ore_aluminium_0:6>,
	<gregtech:ore_aluminium_0:7>,
	<gregtech:ore_aluminium_0:8>,
	<gregtech:ore_aluminium_0:9>,
	<gregtech:ore_aluminium_0:10>,
	<gregtech:ore_aluminium_0:11>,
	<gregtech:ore_aluminium_0:12>,
	<gregtech:ore_aluminium_0:13>
	];

for i in aluminiumInfernal {
	furnace.addRecipe(<thermalfoundation:material:864>, i);
	mods.thaumcraft.SmeltingBonus.addSmeltingBonus(i, aluminiumStack % 100);
	i.addTooltip("可以直接在炼狱熔炉或炼狱窑炉里熔炼成铝。");
}	
	


	
	mods.thaumcraft.SmeltingBonus.addSmeltingBonus(<enderio:item_alloy_endergy_ingot>, steelStack % 100);


	#Fix native ore cluser bonus smelting giving thaumcraft nuggets
		//Copper
	mods.thaumcraft.SmeltingBonus.removeSmeltingBonus(<thaumcraft:cluster:2>, <thaumcraft:nugget:1>);
	mods.thaumcraft.SmeltingBonus.addSmeltingBonus(<thaumcraft:cluster:2>, copperNug % 25);
		//Tin
	mods.thaumcraft.SmeltingBonus.removeSmeltingBonus(<thaumcraft:cluster:3>, <thaumcraft:nugget:2>);
	mods.thaumcraft.SmeltingBonus.addSmeltingBonus(<thaumcraft:cluster:3>, tinNug % 25);		
		//Silver
	mods.thaumcraft.SmeltingBonus.removeSmeltingBonus(<thaumcraft:cluster:4>, <thaumcraft:nugget:3>);
	mods.thaumcraft.SmeltingBonus.addSmeltingBonus(<thaumcraft:cluster:4>, silverNug % 25);	
		//Lead
	mods.thaumcraft.SmeltingBonus.removeSmeltingBonus(<thaumcraft:cluster:5>, <thaumcraft:nugget:5>);
	mods.thaumcraft.SmeltingBonus.addSmeltingBonus(<thaumcraft:cluster:5>, leadNug % 25);
	
	#celestial papers
	mods.astralsorcery.Altar.addAttunementAltarRecipe("thaumcraft:celestial_notes9", <thaumcraft:celestial_notes:9>, 300, 600, [
	null,<ore:dustLunar>,null,
	null,<astralsorcery:itemcraftingcomponent:5>,null,
	null,null,null,
	<ore:gemAquamarine>,<ore:gemAquamarine>,<ore:gemAquamarine>,<ore:gemAquamarine>]);

	mods.astralsorcery.Altar.addAttunementAltarRecipe("thaumcraft:celestial_notes10", <thaumcraft:celestial_notes:10>, 300, 600, [
	null,null,null,
	null,<astralsorcery:itemcraftingcomponent:5>,<ore:dustLunar>,
	null,null,null,
	<ore:gemAquamarine>,<ore:gemAquamarine>,<ore:gemAquamarine>,<ore:gemAquamarine>]);

	mods.astralsorcery.Altar.addAttunementAltarRecipe("thaumcraft:celestial_notes11", <thaumcraft:celestial_notes:11>, 300, 600, [
	null,null,null,
	null,<astralsorcery:itemcraftingcomponent:5>,null,
	null,null,<ore:dustLunar>,
	<ore:gemAquamarine>,<ore:gemAquamarine>,<ore:gemAquamarine>,<ore:gemAquamarine>]);

	mods.astralsorcery.Altar.addAttunementAltarRecipe("thaumcraft:celestial_notes12", <thaumcraft:celestial_notes:12>, 300, 600, [
	null,null,null,
	null,<astralsorcery:itemcraftingcomponent:5>,null,
	null,<ore:dustLunar>,null,
	<ore:gemAquamarine>,<ore:gemAquamarine>,<ore:gemAquamarine>,<ore:gemAquamarine>]);

	mods.astralsorcery.Altar.addAttunementAltarRecipe("thaumcraft:celestial_notes8", <thaumcraft:celestial_notes:8>, 300, 600, [
	null,null,null,
	null,<astralsorcery:itemcraftingcomponent:5>,null,
	<ore:dustLunar>,null,null,
	<ore:gemAquamarine>,<ore:gemAquamarine>,<ore:gemAquamarine>,<ore:gemAquamarine>]);

	mods.astralsorcery.Altar.addAttunementAltarRecipe("thaumcraft:celestial_notes7", <thaumcraft:celestial_notes:7>, 300, 600, [
	null,null,null,
	<ore:dustLunar>,<astralsorcery:itemcraftingcomponent:5>,null,
	null,null,null,
	<ore:gemAquamarine>,<ore:gemAquamarine>,<ore:gemAquamarine>,<ore:gemAquamarine>]);

	mods.astralsorcery.Altar.addAttunementAltarRecipe("thaumcraft:celestial_notes6", <thaumcraft:celestial_notes:6>, 300, 600, [
	<ore:dustLunar>,null,null,
	null,<astralsorcery:itemcraftingcomponent:5>,null,
	null,null,null,
	<ore:gemAquamarine>,<ore:gemAquamarine>,<ore:gemAquamarine>,<ore:gemAquamarine>]);

	mods.astralsorcery.Altar.addAttunementAltarRecipe("thaumcraft:celestial_notes5", <thaumcraft:celestial_notes:5>, 300, 600, [
	null,<ore:dustLunar>,null,
	null,<astralsorcery:itemcraftingcomponent:5>,null,
	null,<ore:dustLunar>,null,
	<ore:gemAquamarine>,<ore:gemAquamarine>,<ore:gemAquamarine>,<ore:gemAquamarine>]);

	#solar notes
	mods.astralsorcery.Altar.addAttunementAltarRecipe("thaumcraft:celestial_notes", <thaumcraft:celestial_notes>, 300, 600, [
	null,<ore:quartzSunny>,null,
	null,<astralsorcery:itemcraftingcomponent:5>,null,
	null,null,null,
	<ore:gemAquamarine>,<ore:gemAquamarine>,<ore:gemAquamarine>,<ore:gemAquamarine>]);

	mods.astralsorcery.Altar.addAttunementAltarRecipe("thaumcraft:celestial_notes1", <thaumcraft:celestial_notes:1>, 300, 600, [
	<ore:quartzSunny>,null,null,
	null,<astralsorcery:itemcraftingcomponent:5>,null,
	null,null,null,
	<ore:gemAquamarine>,<ore:gemAquamarine>,<ore:gemAquamarine>,<ore:gemAquamarine>]);

	mods.astralsorcery.Altar.addAttunementAltarRecipe("thaumcraft:celestial_notes2", <thaumcraft:celestial_notes:2>, 300, 600, [
	null,null,<ore:quartzSunny>,
	null,<astralsorcery:itemcraftingcomponent:5>,null,
	null,null,null,
	<ore:gemAquamarine>,<ore:gemAquamarine>,<ore:gemAquamarine>,<ore:gemAquamarine>]);

	mods.astralsorcery.Altar.addAttunementAltarRecipe("thaumcraft:celestial_notes3", <thaumcraft:celestial_notes:3>, 300, 600, [
	null,null,null,
	null,<astralsorcery:itemcraftingcomponent:5>,null,
	<ore:quartzSunny>,null,null,
	<ore:gemAquamarine>,<ore:gemAquamarine>,<ore:gemAquamarine>,<ore:gemAquamarine>]);

	mods.astralsorcery.Altar.addAttunementAltarRecipe("thaumcraft:celestial_notes4", <thaumcraft:celestial_notes:4>, 300, 600, [
	null,null,null,
	null,<astralsorcery:itemcraftingcomponent:5>,null,
	null,null,<ore:quartzSunny>,
	<ore:gemAquamarine>,<ore:gemAquamarine>,<ore:gemAquamarine>,<ore:gemAquamarine>]);

print("----------------Thaumcraft End-------------------");
