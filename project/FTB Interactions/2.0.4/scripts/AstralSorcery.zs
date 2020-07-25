import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.artisanworktables.builder.RecipeBuilder;
import mods.thaumcraft.ArcaneWorkbench;
import mods.thaumcraft.Infusion;
import mods.gregtech.recipe.RecipeMap;
import mods.astralsorcery.Utils;
import crafttweaker.block.IBlockProperties;
import crafttweaker.block.IBlockDefinition;
import crafttweaker.block.IBlock;
import mods.botaniatweaks.Agglomeration;
import mods.botaniatweaks.AgglomerationRecipe;
import mods.thermalexpansion.Insolator;

print("---------------Astral Sorcery Start------------------");


val autoclave = mods.gregtech.recipe.RecipeMap.getByName("autoclave");
val alloyer = mods.gregtech.recipe.RecipeMap.getByName("alloy_smelter");
val macerator = mods.gregtech.recipe.RecipeMap.getByName("macerator");

val starlightBucket = <forge:bucketfilled>.withTag({FluidName: "astralsorcery.liquidstarlight", Amount: 1000});
val starlightFluidStack = <liquid:astralsorcery.liquidstarlight>;
val resonatingGem = <astralsorcery:itemcraftingcomponent:4>;
val starmetalOre = <astralsorcery:blockcustomore:1>;
val rockCrystalOre = <astralsorcery:blockcustomore>;
val salisMundis = <thaumcraft:salis_mundus>;
val aquamarineGem = <astralsorcery:itemcraftingcomponent>;
val parchment = <astralsorcery:itemcraftingcomponent:5>;
val scribingTools = <thaumcraft:scribing_tools>;
val illuminationPowder = <astralsorcery:itemusabledust>;
val rockCrystal = mods.astralsorcery.Utils.getCrystalORIngredient(false, false);
val celestialCrystal = mods.astralsorcery.Utils.getCrystalORIngredient(true, false);
val attunedCelestialCrystal = mods.astralsorcery.Utils.getCrystalORIngredient(true,true);
val craftingLens = <astralsorcery:itemcraftingcomponent:3>;
val runedMarble = <astralsorcery:blockmarble:6>;
val sootyMarble = <astralsorcery:blockblackmarble>;



	#lightwell additions
	#nitor better than aquamarine
	mods.astralsorcery.Lightwell.addLiquefaction(<thaumcraft:nitor_yellow>, <liquid:astralsorcery.liquidstarlight>, 0.8, 12, 0);

	#nether star lense
	mods.astralsorcery.Lightwell.addLiquefaction(<ore:lensNetherStar>.firstItem, <liquid:astralsorcery.liquidstarlight>, 2, 500, 0);

	#Primordial Pearl
	mods.astralsorcery.Lightwell.addLiquefaction(<thaumcraft:primordial_pearl>, <liquid:astralsorcery.liquidstarlight>, 2.5, 2147480, 0);

	#infused wood tooltip
	<astralsorcery:blockinfusedwood>.addTooltip(format.darkRed("将原木投入星能液中来制作。"));

	#Mana diamond
	mods.astralsorcery.Lightwell.addLiquefaction(<botania:manaresource:2>, <liquid:astralsorcery.liquidstarlight>, 0.8, 100, 0);

	#dragonstone
	mods.astralsorcery.Lightwell.addLiquefaction(<botania:manaresource:9>, <liquid:astralsorcery.liquidstarlight>, 1, 150, 0);

	#flawless diamond
	mods.astralsorcery.Lightwell.addLiquefaction(<ore:gemFlawlessDiamond>.firstItem, <liquid:astralsorcery.liquidstarlight>, 1, 200, 0);

	#flawless sapphire
	mods.astralsorcery.Lightwell.addLiquefaction(<ore:gemFlawlessSapphire>.firstItem, <liquid:astralsorcery.liquidstarlight>, 1, 150, 0);

	#flawless Lapis
	mods.astralsorcery.Lightwell.addLiquefaction(<ore:gemFlawlessLapis>.firstItem, <liquid:astralsorcery.liquidstarlight>, 1, 150, 0);

	#flawless vinteum
	mods.astralsorcery.Lightwell.addLiquefaction(<ore:gemFlawlessVinteum>.firstItem, <liquid:astralsorcery.liquidstarlight>, 5, 200, 0);

	#lava from lava crystal
	mods.astralsorcery.Lightwell.addLiquefaction(<bloodmagic:lava_crystal>, <liquid:lava>, 1, 200, 0);

	#infused planks
	recipes.removeByRecipeName("astralsorcery:shapeless/infused_wood_planks");

	#resonating gem
	mods.astralsorcery.StarlightInfusion.removeInfusion(resonatingGem);
	Agglomeration.addRecipe(resonatingGem, [aquamarineGem, <ore:dustAstralStarmetal>.firstItem, <botania:manaresource:1>]);

	#remove vanilla ore processing, exchange for GT
	mods.astralsorcery.StarlightInfusion.removeInfusion(<minecraft:diamond>*4);
	mods.astralsorcery.StarlightInfusion.removeInfusion(<minecraft:emerald>*4);
	mods.astralsorcery.StarlightInfusion.removeInfusion(<minecraft:redstone_block>);
	mods.astralsorcery.StarlightInfusion.removeInfusion(<minecraft:lapis_block>);
	mods.astralsorcery.StarlightInfusion.removeInfusion(<minecraft:iron_ingot>*3);
	mods.astralsorcery.StarlightInfusion.removeInfusion(<minecraft:gold_ingot>*3);
	
	
	mods.astralsorcery.StarlightInfusion.addInfusion(<ore:oreDiamond>.firstItem, <minecraft:diamond>*4, false, 0.4, 200);
	mods.astralsorcery.StarlightInfusion.addInfusion(<ore:oreEmerald>.firstItem, <minecraft:emerald>*4, false, 0.4, 200);
	mods.astralsorcery.StarlightInfusion.addInfusion(<ore:oreRedstone>.firstItem, <minecraft:redstone_block>, false, 0.4, 200);
	mods.astralsorcery.StarlightInfusion.addInfusion(<ore:oreLapis>.firstItem, <minecraft:lapis_block>, false, 0.4, 200);
	
	#bismuth from stibnite
	mods.astralsorcery.LightTransmutation.addTransmutation(<ore:oreStibnite>.firstItem, <ore:oreBismuth>.firstItem, 250);
	mods.astralsorcery.LightTransmutation.addTransmutation(<ore:oreNetherrackStibnite>.firstItem, <ore:oreBismuth>.firstItem, 250);
	
	#infused wood
	mods.astralsorcery.StarlightInfusion.removeInfusion(<astralsorcery:blockinfusedwood:6>);

	#starlight Infuser
	mods.astralsorcery.Altar.removeAltarRecipe("astralsorcery:shaped/internal/altar/starlightinfuser");
	mods.astralsorcery.Altar.addAttunementAltarRecipe("astralsorcery:shaped/internal/altar/starlightinfuser", <astralsorcery:blockstarlightinfuser>, 320, 600, [
	<ore:screwThaumium>,<ore:plateElectrum>,<ore:screwThaumium>,
	<ore:plateElectrum>,starlightFluidStack,<ore:plateElectrum>,
	<ore:screwThaumium>,<ore:plateElectrum>,<ore:screwThaumium>,
	runedMarble,runedMarble,runedMarble,runedMarble]);

	#faint amaranth flower
	mods.thaumcraft.Infusion.registerRecipe("faintamaranth", "INFUSION", <astralsorcery:blockcustomflower>, 4, [<aspect:lux> * 32, <aspect:herba> * 32, <aspect:sensus> * 16], <randomthings:lotusseeds>,
	[<astralsorcery:itemcraftingcomponent>,<astralsorcery:itemcraftingcomponent>,<botania:petal:5>,<botania:petal:5>,<plants2:generic:6>,<plants2:generic:6>]);


	#Aquamarine
autoclave.recipeBuilder()
    .inputs(<ore:gemSapphire> * 1)
    .fluidInputs([<liquid:water> * 1000])
    .chancedOutput(aquamarineGem, 5000, 500)
    .duration(2000)
    .EUt(24)
    .buildAndRegister();
autoclave.recipeBuilder()
    .inputs(<ore:gemSapphire> * 1)
    .fluidInputs([<liquid:astralsorcery.liquidstarlight> * 10])
    .outputs(aquamarineGem * 1)
    .duration(100)
    .EUt(4)
    .buildAndRegister();


	#macerate starmetal
macerator.recipeBuilder()
    .inputs(starmetalOre)
	.outputs(<astralsorcery:itemcraftingcomponent:2> *2)
	.chancedOutput(<astralsorcery:itemcraftingcomponent:2>, 500, 100)
    .duration(40)
    .EUt(48)
    .buildAndRegister();

macerator.recipeBuilder()
    .inputs(<ore:ingotAstralStarmetal>)
	.outputs(<astralsorcery:itemcraftingcomponent:2>)
    .duration(40)
    .EUt(48)
    .buildAndRegister();

	#remove starmetal transmutation
	mods.astralsorcery.LightTransmutation.removeTransmutation(starmetalOre, false);

	#remove end stone
	mods.astralsorcery.LightTransmutation.removeTransmutation(<minecraft:end_stone>, false);
	mods.astralsorcery.LightTransmutation.addTransmutation(<advancedrocketry:moonturf_dark>, <minecraft:end_stone>, 250);
	mods.astralsorcery.LightTransmutation.addTransmutation(<advancedrocketry:moonturf>, <minecraft:end_stone>, 250);

	#shifting Star
	mods.astralsorcery.Altar.removeAltarRecipe("astralsorcery:shaped/internal/altar/tool_shiftstar");
	mods.astralsorcery.Altar.addAttunementAltarRecipe("astralsorcery:shaped/internal/altar/tool_shiftstar", <astralsorcery:itemshiftingstar>.withTag({astralsorcery: {}}), 500, 600, [
	runedMarble, <ore:gemDiamond>, runedMarble,
	illuminationPowder, starlightFluidStack,illuminationPowder,
	runedMarble, <ore:gemDiamond>, runedMarble,
	aquamarineGem, aquamarineGem, aquamarineGem, aquamarineGem]);

	#attunement Altar
	mods.astralsorcery.Altar.removeAltarRecipe("astralsorcery:shaped/attunementaltar");
	mods.astralsorcery.Altar.addAttunementAltarRecipe("astralsorcery:shaped/attunementaltar", <astralsorcery:blockattunementaltar>, 450, 600, [
	<ore:screwBrass>, rockCrystal, <ore:screwBrass>,
	aquamarineGem, <astralsorcery:itemshiftingstar>,aquamarineGem,
	runedMarble, <astralsorcery:blockattunementrelay>, runedMarble,
	aquamarineGem,aquamarineGem,aquamarineGem,aquamarineGem]);

	#runed marble
	mods.astralsorcery.Altar.removeAltarRecipe("astralsorcery:shaped/internal/altar/marble_runed");
	mods.chisel.Carving.removeVariation("marble", runedMarble);
	recipes.remove(runedMarble);
	mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("RunedMarble", "", 25, [<aspect:ordo> * 1 ], runedMarble *3,
	[[<ore:wireFineSteel>, <ore:wireFineSteel>, <ore:wireFineSteel>],
	[<ore:blockMarble>, <astralsorcery:blockmarble:4>, <ore:blockMarble>],
	[<ore:wireFineSteel>, <ore:wireFineSteel>, <ore:wireFineSteel>]]
	);

	#Spectral relay
	mods.astralsorcery.Altar.removeAltarRecipe("astralsorcery:shaped/internal/altar/attunementrelay");
	mods.astralsorcery.Altar.addDiscoveryAltarRecipe("astralsorcery:shaped/internal/altar/attunementrelay", <astralsorcery:blockattunementrelay>, 120, 600, [
	null, null, null,
	<ore:screwBrass>, <astralsorcery:itemcraftingcomponent:3>,<ore:screwBrass>,
	<astralsorcery:blockinfusedwood>, <astralsorcery:blockmarble:4>, <astralsorcery:blockinfusedwood>]);

	#Amulet Rerolll
	mods.astralsorcery.Altar.removeAltarRecipe("astralsorcery:shaped/internal/altar/enchantment_amulet_reroll");
	mods.astralsorcery.Altar.addAttunementAltarRecipe("astralsorcery:shaped/internal/altar/enchantment_amulet_reroll", <astralsorcery:itemenchantmentamulet>, 350, 300, [
	null,<astralsorcery:itemenchantmentamulet>,null,
	<ore:dustAstralStarmetal>, starlightFluidStack, <ore:dustAstralStarmetal>,
	null,null,null,null,
	aquamarineGem,aquamarineGem,null,null]);

	#constellations

	#discidia
	mods.astralsorcery.Altar.removeAltarRecipe("astralsorcery:shaped/internal/altar/constellationpaper/discidia");
mods.astralsorcery.Altar.addDiscoveryAltarRecipe("interactions:discidia", <astralsorcery:itemconstellationpaper>.withTag({astralsorcery: {constellationName: "astralsorcery.constellation.discidia"}}), 120, 200, [
	<ore:arrow>, salisMundis, <ore:arrow>,
	aquamarineGem, parchment, aquamarineGem,
	<ore:arrow>, scribingTools, <ore:arrow>]);

	#evorsio
	mods.astralsorcery.Altar.removeAltarRecipe("astralsorcery:shaped/internal/altar/constellationpaper/evorsio");
mods.astralsorcery.Altar.addDiscoveryAltarRecipe("interactions:evorsio", <astralsorcery:itemconstellationpaper>.withTag({astralsorcery: {constellationName: "astralsorcery.constellation.evorsio"}}), 120, 200, [
	<minecraft:stone_pickaxe>, salisMundis, <minecraft:stone_pickaxe>,
	aquamarineGem, parchment, aquamarineGem,
	<minecraft:stone_pickaxe>, scribingTools, <minecraft:stone_pickaxe>]);

	#octans
	mods.astralsorcery.Altar.removeAltarRecipe("astralsorcery:shaped/internal/altar/constellationpaper/octans");
mods.astralsorcery.Altar.addDiscoveryAltarRecipe("interactions:octans", <astralsorcery:itemconstellationpaper>.withTag({astralsorcery: {constellationName: "astralsorcery.constellation.octans"}}), 120, 200, [
	<ore:listAllfishraw>, salisMundis, <ore:listAllfishraw>,
	aquamarineGem, parchment, aquamarineGem,
	<ore:listAllfishraw>, scribingTools, <ore:listAllfishraw>]);

	#armara
	mods.astralsorcery.Altar.removeAltarRecipe("astralsorcery:shaped/internal/altar/constellationpaper/armara");
mods.astralsorcery.Altar.addDiscoveryAltarRecipe("interactions:armara", <astralsorcery:itemconstellationpaper>.withTag({astralsorcery: {constellationName: "astralsorcery.constellation.armara"}}), 120, 200, [
	<minecraft:shield>, salisMundis, <minecraft:shield>,
	aquamarineGem, parchment, aquamarineGem,
	<minecraft:shield>, scribingTools, <minecraft:shield>]);

	#lucerna
	mods.astralsorcery.Altar.removeAltarRecipe("astralsorcery:shaped/internal/altar/constellationpaper/lucerna");
	mods.astralsorcery.Altar.addDiscoveryAltarRecipe("interactions:lucerna", <astralsorcery:itemconstellationpaper>.withTag({astralsorcery: {constellationName: "astralsorcery.constellation.lucerna"}}), 120, 200, [
	illuminationPowder, salisMundis, illuminationPowder,
	aquamarineGem, parchment, aquamarineGem,
	illuminationPowder, scribingTools, illuminationPowder]);

	val speed = <minecraft:potion>.withTag({Potion: "minecraft:swiftness"});

	#Vicio
	mods.astralsorcery.Altar.removeAltarRecipe("astralsorcery:shaped/internal/altar/constellationpaper/vicio");
	mods.astralsorcery.Altar.addAttunementAltarRecipe("interactions:vicio", <astralsorcery:itemconstellationpaper>.withTag({astralsorcery: {constellationName: "astralsorcery.constellation.vicio"}}), 500, 300, [
	speed, salisMundis, speed,
	aquamarineGem, parchment, aquamarineGem,
	speed, scribingTools, speed,
	illuminationPowder,illuminationPowder,illuminationPowder,illuminationPowder]);

	#bootes
	mods.astralsorcery.Altar.removeAltarRecipe("astralsorcery:shaped/internal/altar/constellationpaper/bootes");
	mods.astralsorcery.Altar.addAttunementAltarRecipe("interactions:bootes", <astralsorcery:itemconstellationpaper>.withTag({astralsorcery: {constellationName: "astralsorcery.constellation.bootes"}}), 500, 300, [
	<minecraft:rabbit_foot>, salisMundis, <minecraft:rabbit_foot>,
	aquamarineGem, parchment, aquamarineGem,
	<minecraft:rabbit_foot>, scribingTools, <minecraft:rabbit_foot>,
	illuminationPowder,illuminationPowder,illuminationPowder,illuminationPowder]);

	#Pelotrio
	mods.astralsorcery.Altar.removeAltarRecipe("astralsorcery:shaped/internal/altar/constellationpaper/pelotrio");
mods.astralsorcery.Altar.addAttunementAltarRecipe("interactions:pelotrio", <astralsorcery:itemconstellationpaper>.withTag({astralsorcery: {constellationName: "astralsorcery.constellation.pelotrio"}}), 500, 300, [
	<astralsorcery:itemusabledust:1>, salisMundis, <astralsorcery:itemusabledust:1>,
	aquamarineGem, parchment, aquamarineGem,
	<astralsorcery:itemusabledust:1>, scribingTools, <astralsorcery:itemusabledust:1>,
	illuminationPowder,illuminationPowder,illuminationPowder,illuminationPowder]);

	#Fornax
	mods.astralsorcery.Altar.removeAltarRecipe("astralsorcery:shaped/internal/altar/constellationpaper/fornax");
mods.astralsorcery.Altar.addAttunementAltarRecipe("interactions:fornax", <astralsorcery:itemconstellationpaper>.withTag({astralsorcery: {constellationName: "astralsorcery.constellation.fornax"}}), 500, 300, [
	<bloodmagic:component:1>, salisMundis, <bloodmagic:component:1>,
	aquamarineGem, parchment, aquamarineGem,
	<bloodmagic:component:1>, scribingTools, <bloodmagic:component:1>,
	illuminationPowder,illuminationPowder,illuminationPowder,illuminationPowder]);

	#mineralis
	mods.astralsorcery.Altar.removeAltarRecipe("astralsorcery:shaped/internal/altar/constellationpaper/mineralis");
mods.astralsorcery.Altar.addConstellationAltarRecipe("interactions:mineralis", <astralsorcery:itemconstellationpaper>.withTag({astralsorcery: {constellationName: "astralsorcery.constellation.mineralis"}}), 2000, 400, [
	<ore:blockSkystone>, salisMundis, <ore:blockSkystone>,
	aquamarineGem, parchment, aquamarineGem,
	<ore:blockSkystone>, scribingTools, <ore:blockSkystone>,
	illuminationPowder,illuminationPowder,illuminationPowder,illuminationPowder,
	<ore:dustAstralStarmetal>,<ore:dustAstralStarmetal>,<ore:dustAstralStarmetal>,<ore:dustAstralStarmetal>, null, null, null, null]);

	#horologium
	mods.astralsorcery.Altar.removeAltarRecipe("astralsorcery:shaped/internal/altar/constellationpaper/horologium");
mods.astralsorcery.Altar.addConstellationAltarRecipe("interactions:aevitas", <astralsorcery:itemconstellationpaper>.withTag({astralsorcery: {constellationName: "astralsorcery.constellation.aevitas"}}), 2000, 400, [
	<bloodmagic:component:5>, salisMundis, <bloodmagic:component:5>,
	aquamarineGem, parchment, aquamarineGem,
	<bloodmagic:component:5>, scribingTools, <bloodmagic:component:5>,
	illuminationPowder,illuminationPowder,illuminationPowder,illuminationPowder,
	<thermalfoundation:fertilizer:2>,<thermalfoundation:fertilizer:2>,<thermalfoundation:fertilizer:2>,<thermalfoundation:fertilizer:2>, null, null, null, null]);

	#Aevitas
	mods.astralsorcery.Altar.removeAltarRecipe("astralsorcery:shaped/internal/altar/constellationpaper/aevitas");
mods.astralsorcery.Altar.addConstellationAltarRecipe("interactions:horologium", <astralsorcery:itemconstellationpaper>.withTag({astralsorcery: {constellationName: "astralsorcery.constellation.horologium"}}), 2000, 400, [
	<thaumcraft:mind>, salisMundis, <thaumcraft:mind>,
	aquamarineGem, parchment, aquamarineGem,
	<thaumcraft:mind>, scribingTools, <thaumcraft:mind>,
	illuminationPowder,illuminationPowder,illuminationPowder,illuminationPowder,
	<ore:dustAstralStarmetal>,<ore:dustAstralStarmetal>,<ore:dustAstralStarmetal>,<ore:dustAstralStarmetal>, null, null, null, null]);

	#Ulteria
mods.astralsorcery.Altar.removeAltarRecipe("astralsorcery:shaped/internal/altar/constellationpaper/ulteria");
mods.astralsorcery.Altar.addTraitAltarRecipe("interactions:ulteria",
	<astralsorcery:itemconstellationpaper>.withTag({astralsorcery: {constellationName: "astralsorcery.constellation.ulteria"}}), 4500, 400, [
	<bloodmagic:component:4>, salisMundis, <bloodmagic:component:4>,
	aquamarineGem, parchment, aquamarineGem,
	<bloodmagic:component:4>, scribingTools, <bloodmagic:component:4>,
	illuminationPowder,illuminationPowder,illuminationPowder,illuminationPowder,
	<ore:dustAstralStarmetal>, <ore:dustAstralStarmetal>, <ore:dustAstralStarmetal>, <ore:dustAstralStarmetal>,
	<ore:dustStellarAlloy>,<ore:dustStellarAlloy>, null, null, null, null, null, null,
	<ore:paper>]);

	val permutatio = <thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "permutatio"}]});

	#Gelu
mods.astralsorcery.Altar.removeAltarRecipe("astralsorcery:shaped/internal/altar/constellationpaper/gelu");
mods.astralsorcery.Altar.addTraitAltarRecipe("interactions:gelu",
	<astralsorcery:itemconstellationpaper>.withTag({astralsorcery: {constellationName: "astralsorcery.constellation.gelu"}}), 4500, 400, [
	<ore:dustCryotheum>, salisMundis, <ore:dustCryotheum>,
	aquamarineGem, parchment, aquamarineGem,
	<ore:dustCryotheum>, scribingTools, <ore:dustCryotheum>,
	illuminationPowder,illuminationPowder,illuminationPowder,illuminationPowder,
	<ore:dustAstralStarmetal>, <ore:dustAstralStarmetal>, <ore:dustAstralStarmetal>, <ore:dustAstralStarmetal>,
	<ore:dustStellarAlloy>,<ore:dustStellarAlloy>, null, null, null, null, null, null,
	<ore:paper>]);
	#Alcara
mods.astralsorcery.Altar.removeAltarRecipe("astralsorcery:shaped/internal/altar/constellationpaper/alcara");
mods.astralsorcery.Altar.addTraitAltarRecipe("interactions:crashtest",
	<astralsorcery:itemconstellationpaper>.withTag({astralsorcery: {constellationName: "astralsorcery.constellation.alcara"}}), 4500, 400, [
	permutatio, salisMundis, permutatio,
	aquamarineGem, parchment, aquamarineGem,
	permutatio, scribingTools, permutatio,
	illuminationPowder, illuminationPowder, illuminationPowder, illuminationPowder,
	<ore:dustAstralStarmetal>, <ore:dustAstralStarmetal>, <ore:dustAstralStarmetal>, <ore:dustAstralStarmetal>,
	<ore:dustStellarAlloy>,<ore:dustStellarAlloy>, null, null, null, null, null, null,
	<ore:paper>]);

	#Vorux
	mods.astralsorcery.Altar.removeAltarRecipe("astralsorcery:shaped/internal/altar/constellationpaper/vorux");
mods.astralsorcery.Altar.addTraitAltarRecipe("interactions:vorux", <astralsorcery:itemconstellationpaper>.withTag({astralsorcery: {constellationName: "astralsorcery.constellation.vorux"}}), 4500, 400, [
	<botania:tinyplanet>, salisMundis, <botania:tinyplanet>,
	aquamarineGem, parchment, aquamarineGem,
	<botania:tinyplanet>, scribingTools, <botania:tinyplanet>,
	illuminationPowder,illuminationPowder,illuminationPowder,illuminationPowder,
	<ore:dustAstralStarmetal>, <ore:dustAstralStarmetal>, <ore:dustAstralStarmetal>, <ore:dustAstralStarmetal>,
	<ore:dustStellarAlloy>,<ore:dustStellarAlloy>, null, null, null, null, null, null,
	<ore:paper>]);

	#perk crystal tooltips
	<astralsorcery:itemperkgem>.addTooltip(format.darkRed("将萤石和水晶石投入星能液中来制作。"));
	<astralsorcery:itemperkgem:1>.addTooltip(format.darkRed("将萤石和水晶石投入星能液中来制作。"));
	<astralsorcery:itemperkgem:2>.addTooltip(format.darkRed("将萤石和水晶石投入星能液中来制作。"));

#custom collector crystal for Astral sorcery
	val customCrystal = <astralsorcery:blockcollectorcrystal>.withTag({astralsorcery: {constellationName: "astralsorcery.constellation.aevitas", crystalProperties: {collectiveCapability: 80, size: 350, fract: 0, purity: 80, sizeOverride: -1}, collectorType: 0}});
	mods.jei.JEI.addItem(customCrystal);
	customCrystal.addTooltip(format.darkRed("一个粗制的人造天体水晶"));

mods.thaumcraft.Infusion.registerRecipe("asCrystal", "INFUSION", customCrystal, 5, 
	[<aspect:lux> * 64, <aspect:potentia> * 32, <aspect:sensus> * 16], 
	<astralsorcery:itemrockcrystalsimple>,
	[illuminationPowder, illuminationPowder, <projecte:item.pe_covalence_dust:1>, 
	<projecte:item.pe_covalence_dust:1>, aquamarineGem, aquamarineGem, 
	<forge:bucketfilled>.withTag({FluidName: "astralsorcery.liquidstarlight", Amount: 1000}), 
	<forge:bucketfilled>.withTag({FluidName: "astralsorcery.liquidstarlight", Amount: 1000})]);


	#Altars
	#Starlight Crafting Altar
	mods.astralsorcery.Altar.removeAltarRecipe("astralsorcery:shaped/internal/altar/upgrade_tier2");
	mods.astralsorcery.Altar.addDiscoveryAltarRecipe("astralsorcery:shaped/internal/altar/upgrade_tier2", <astralsorcery:blockaltar:1>, 120, 600, [
	<ore:plateThaumium>, rockCrystal, <ore:plateThaumium>,
	<astralsorcery:blockmarble:4>, starlightFluidStack, <astralsorcery:blockmarble:4>,
	<astralsorcery:blockmarble:2>, <ore:plateThaumium>, <astralsorcery:blockmarble:2>]);

	#Celestial Altar
	mods.astralsorcery.Altar.removeAltarRecipe("astralsorcery:shaped/internal/altar/upgrade_tier3");
	mods.astralsorcery.Altar.addAttunementAltarRecipe("astralsorcery:shaped/internal/altar/upgrade_tier3", <astralsorcery:blockaltar:2>, 500, 600, [
		aquamarineGem, null, aquamarineGem,
		aquamarineGem, rockCrystal, aquamarineGem,
		<astralsorcery:blockmarble:4>, <ore:plateSterlingSilver>, <astralsorcery:blockmarble:4>,
		<ore:plateSterlingSilver>,<ore:plateSterlingSilver>,<astralsorcery:blockmarble:4>,<astralsorcery:blockmarble:4>]);

	#starmetal tooltip
	<astralsorcery:blockcustomore:1>.addTooltip(format.darkRed("可用作坠星标位的催化剂。"));

	#Iredescent Altar
mods.astralsorcery.Altar.removeAltarRecipe("astralsorcery:shaped/internal/altar/upgrade_tier4");
mods.astralsorcery.Altar.addConstellationAltarRecipe("astralsorcery:shaped/internal/altar/upgrade_tier4", <astralsorcery:blockaltar:3>, 1500, 600, [
	runedMarble, salisMundis, runedMarble,
	<ore:plateStellarAlloy>, celestialCrystal, <ore:plateStellarAlloy>,
	runedMarble, <ore:lensNetherStar>, runedMarble,
	runedMarble,runedMarble,runedMarble,runedMarble,
	<appliedenergistics2:sky_stone_brick>,<appliedenergistics2:sky_stone_brick>,resonatingGem,resonatingGem,
	resonatingGem,resonatingGem, <appliedenergistics2:sky_stone_brick>, <appliedenergistics2:sky_stone_brick>]);

	#formation wand
mods.astralsorcery.Altar.removeAltarRecipe("astralsorcery:shaped/internal/altar/tool_architect");
mods.bloodmagic.AlchemyArray.addRecipe(<astralsorcery:itemarchitectwand>, <cyclicmagic:cyclic_wand_build>, <minecraft:obsidian>,"bloodmagic:textures/models/AlchemyArrays/shardoflaputa.png");

	#change harvest level of rock crystal ore
	var crystalOre = <astralsorcery:blockcustomore> as IBlock;
	crystalOre.definition.setHarvestLevel("pickaxe", 2);


	#Impulsion wand
	mods.astralsorcery.Altar.removeAltarRecipe("astralsorcery:shaped/internal/altar/tool_grapple");
	mods.astralsorcery.Altar.addAttunementAltarRecipe("astralsorcery:shaped/internal/altar/tool_grapple", <astralsorcery:itemgrapplewand>, 500, 600, [
		null, <projecte:item.pe_covalence_dust:1>, <ore:manaPearl>,
		<ore:manaPearl>, <ore:stickNetherQuartz>, <projecte:item.pe_covalence_dust:1>,
		<ore:stickNetherQuartz>, null, <tconstruct:edible:2>,
		null,null,<ore:stickNetherQuartz>,null]);

	#Conversion wand
	mods.astralsorcery.Altar.removeAltarRecipe("astralsorcery:shaped/internal/altar/tool_exchange");
	mods.astralsorcery.Altar.addAttunementAltarRecipe("astralsorcery:shaped/internal/altar/tool_exchange", <astralsorcery:itemexchangewand>, 500, 600, [
		null, null, <ore:gemDiamond>,
		<ore:gemDiamond>, <ore:stickAluminium>, <projecte:item.pe_covalence_dust:1>,
		<ore:stickAluminium>, null, <thaumcraft:morphic_resonator>,
		null,null,<ore:stickAluminium>,null]);

	#Ritual anchor
	mods.astralsorcery.Altar.removeAltarRecipe("astralsorcery:shaped/internal/altar/rituallink");
	mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("Ritual Link", "", 25, [<aspect:aer> * 3, <aspect:ignis> *3, <aspect:ordo> *3, <aspect:perditio> *3, <aspect:terra> *3], <astralsorcery:blockrituallink>*2,
	[[runedMarble, <ore:eyeofredstone>, runedMarble],
	[craftingLens, <ore:stickSterlingSilver>, craftingLens],
	[runedMarble, <ore:plateGold>, runedMarble]]
	);

	#Celestial Gateway
	mods.astralsorcery.Altar.removeAltarRecipe("astralsorcery:shaped/internal/altar/gateway");
	mods.astralsorcery.Altar.addAttunementAltarRecipe("astralsorcery:shaped/internal/altar/gateway", <astralsorcery:blockcelestialgateway>, 500, 600, [
		illuminationPowder, <lteleporters:endercrystal>, illuminationPowder,
		craftingLens, rockCrystal, craftingLens,
		runedMarble, <ore:manaPearl>, runedMarble,
		<projecte:item.pe_covalence_dust:1>,<projecte:item.pe_covalence_dust:1>,<projecte:item.pe_covalence_dust:1>,<projecte:item.pe_covalence_dust:1>]);

	val domicResonator = <astralsorcery:itemskyresonator>.withTag({astralsorcery: {enhanced: 1 as byte, selected_upgrade: 2, upgrades: [0, 2]}});
	#Domic resonator
	mods.astralsorcery.Altar.removeAltarRecipe("astralsorcery:shaped/internal/altar/resonator/structure");
	mods.astralsorcery.Altar.addAttunementAltarRecipe("astralsorcery:shaped/internal/altar/resonator/structure", domicResonator, 500, 600, [
		illuminationPowder, null, illuminationPowder,
		craftingLens, <astralsorcery:itemskyresonator>, craftingLens,
		<ore:dustAluminium>, null, <ore:dustAluminium>,
		illuminationPowder,illuminationPowder,<ore:dustAluminium>,<ore:dustAluminium>]);


	#manual sooty marble
mods.bloodmagic.AlchemyArray.addRecipe(sootyMarble, <astralsorcery:blockmarble>, <primal_tech:charcoal_block>, "bloodmagic:textures/models/AlchemyArrays/shardoflaputa.png");

	#Sooty Marble
mods.astralsorcery.Altar.removeAltarRecipe("astralsorcery:shaped/internal/altar/marble_black_raw");
recipes.remove(sootyMarble);
alloyer.recipeBuilder()
    .inputs(<ore:coal>, <astralsorcery:blockmarble>)
    .outputs(sootyMarble * 1)
    .duration(50)
    .EUt(4)
    .buildAndRegister();

	#Sooty Marble w/charcoal
alloyer.recipeBuilder()
    .inputs(<ore:charcoal>, <astralsorcery:blockmarble>)
    .outputs(sootyMarble * 1)
    .duration(75)
    .EUt(8)
    .buildAndRegister();


	#Vibrant infused via starlight
autoclave.recipeBuilder()
    .inputs(<astralsorcery:blockinfusedwood> * 1)
    .fluidInputs([<liquid:astralsorcery.liquidstarlight> * 1000])
    .outputs(<astralsorcery:blockinfusedwood:6> * 1)
    .duration(220)
    .EUt(48)
    .buildAndRegister();

	#Resonating Wand

	#hide shale (which is unobtainable)
mods.jei.JEI.removeAndHide(<astralsorcery:blockcustomsandore>);

RecipeBuilder.get("basic")
	.setShaped([
		[null, <ore:plateBrass>,<bloodmagic:monster_soul>],
		[null, <ore:stoneMarble>, <ore:plateBrass>],
		[<ore:stoneMarble>, null, null]])
	.setFluid(<liquid:mana_fluid> * 500)
	.addTool(<ore:toolSaw>, 10)
	.addOutput(<astralsorcery:itemwand>)
	.create();

  	#Luminous Crafting table
RecipeBuilder.get("basic")
	.setShaped([
		[<ore:stoneMarble>, sootyMarble, <ore:stoneMarble>],
		[<ore:stoneMarble>, <minecraft:crafting_table>, <ore:stoneMarble>],
		[<ore:stoneMarble>, null, <ore:stoneMarble>]])
	.setFluid(<liquid:mana_fluid> * 2000)
	.addTool(<ore:toolSaw>, 40)
	.addOutput(<astralsorcery:blockaltar>)
	.create();

	#Luminous Crafting Table - redundant recipe so that teammates can also unlock the progression
recipes.addShapeless(<astralsorcery:blockaltar>, [<astralsorcery:blockaltar>]);


mods.astralsorcery.Altar.removeAltarRecipe("astralsorcery:shaped/internal/altar/tool_basicwand");
mods.astralsorcery.Altar.addDiscoveryAltarRecipe("astralsorcery:shaped/internal/altar/tool_basicwand", <astralsorcery:itemwand>, 120, 200, [
	null, <ore:plateBrass>, <bloodmagic:monster_soul>,
	null, <ore:stoneMarble>, <ore:plateBrass>,
	<ore:stoneMarble>, null, null]);

	#illumination Powder
mods.astralsorcery.Altar.removeAltarRecipe("astralsorcery:shaped/internal/altar/illuminationpowder");
mods.astralsorcery.Altar.addDiscoveryAltarRecipe("astralsorcery:shaped/internal/altar/illuminationpowder", illuminationPowder*8, 120, 200, [
	<projecte:item.pe_covalence_dust:1>, <ore:dustGlass>, <projecte:item.pe_covalence_dust:1>,
	<ore:dustGlass>, salisMundis, <ore:dustGlass>,
	<projecte:item.pe_covalence_dust:1>, <ore:dustGlass>, <projecte:item.pe_covalence_dust:1>]);

	#Cave illuminator
mods.astralsorcery.Altar.removeAltarRecipe("astralsorcery:shaped/internal/altar/illuminator");
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("Cave Illuminator", "", 25, [<aspect:aer> * 15, <aspect:ignis> *15, <aspect:ordo> *15], <astralsorcery:blockworldilluminator>,
	[[<ore:plateBrass>, illuminationPowder, <ore:plateBrass>],
	[craftingLens, aquamarineGem, craftingLens],
	[<ore:plateBrass>, illuminationPowder, <ore:plateBrass>]]
	);

	#Lightwell
mods.astralsorcery.Altar.removeAltarRecipe("astralsorcery:shaped/internal/altar/lightwell");
mods.astralsorcery.Altar.addDiscoveryAltarRecipe("astralsorcery:shaped/internal/altar/lightwell", <astralsorcery:blockwell>, 120, 200, [
	runedMarble, <advancedrocketry:lens>, runedMarble,
	<astralsorcery:blockmarble:4>, rockCrystal, <astralsorcery:blockmarble:4>,
	<ore:plateIron>, runedMarble, <ore:plateIron>
	]);

	#Tree Beacon
mods.astralsorcery.Altar.removeAltarRecipe("astralsorcery:shaped/internal/altar/treebeacon");
mods.astralsorcery.Altar.addDiscoveryAltarRecipe("astralsorcery:shaped/internal/altar/treebeacon", <astralsorcery:blocktreebeacon>, 120, 200, [
	<integrateddynamics:menril_leaves>, craftingLens, <integrateddynamics:menril_leaves>,
	<integrateddynamics:menril_leaves>, <thaumcraft:sapling_greatwood>, <integrateddynamics:menril_leaves>,
	<integrateddynamics:menril_leaves>, <forge:bucketfilled>.withTag({FluidName: "astralsorcery.liquidstarlight", Amount: 1000}).reuse(), <integrateddynamics:menril_leaves>
	]);

	#neromatic Prime
mods.astralsorcery.Altar.removeAltarRecipe("astralsorcery:shaped/internal/altar/bore_head_liquid");
mods.thaumcraft.Infusion.registerRecipe("neromaticprime", "INFUSION", <astralsorcery:blockborehead>, 6,
	[<aspect:alienis> * 16, <aspect:potentia> * 24, <aspect:instrumentum> * 64, <aspect:vacuos> * 24, <aspect:praecantatio> * 12],
	<astralsorcery:blockcollectorcrystal>,
	[<bloodmagic:component:8>, <ore:gearRoseGold>, <appliedenergistics2:quartz_vibrant_glass>,
	<appliedenergistics2:quartz_vibrant_glass>, <mekanism:reinforcedalloy>, <astralsorcery:blockmarble:6>,
	<astralsorcery:blockmarble:6>,<astralsorcery:blockmarble:6>,<astralsorcery:blockmarble:6>,
	<astralsorcery:blockmarble:6>,<bloodmagic:component:17>,<astralsorcery:itemcraftingcomponent>]);


	#evershifting fountain
mods.astralsorcery.Altar.removeAltarRecipe("astralsorcery:shaped/internal/altar/bore_core");
mods.thaumcraft.Infusion.registerRecipe("evershiftingfountain", "INFUSION", <astralsorcery:blockbore>, 6,
	[<aspect:alienis> * 8, <aspect:potentia> * 32, <aspect:tenebrae> * 64, <aspect:vacuos> * 24, <aspect:praecantatio> * 12],
	<astralsorcery:blockwell>,
	[<astralsorcery:itemcraftingcomponent>, <astralsorcery:itemcraftingcomponent>, <projecte:item.pe_covalence_dust:2>,
	<projecte:item.pe_covalence_dust:2>, <astralsorcery:blockmarble:6>, <astralsorcery:blockmarble:6>,
	<astralsorcery:blockmarble:6>, <astralsorcery:blockmarble:6>, <ore:plateRoseGold>,
	<ore:plateRoseGold>, <ore:plateRoseGold>, <ore:plateRoseGold>,
	<astralsorcery:blockinfusedwood:5>, <astralsorcery:blockinfusedwood:5>, <astralsorcery:blockinfusedwood:5>, <astralsorcery:blockinfusedwood:5>]);


	#containment chalice
mods.astralsorcery.Altar.removeAltarRecipe("astralsorcery:shaped/internal/altar/chalice");
mods.thaumcraft.Infusion.registerRecipe("containmentchalice", "INFUSION", <astralsorcery:blockchalice>, 4,
	[<aspect:lux> * 16, <aspect:potentia> * 12, <aspect:sensus> * 8, <aspect:vacuos> * 12], <botania:pool>,
	[<botania:manaresource:1>, <astralsorcery:itemcraftingcomponent>, <astralsorcery:itemcraftingcomponent>,
	<thaumcraft:mechanism_complex>, <thaumcraft:mechanism_complex>, <ore:plateRoseGold>, <ore:plateRoseGold>]);

	#Written Expertise
mods.astralsorcery.Altar.removeAltarRecipe("astralsorcery:shaped/internal/altar/knowledgeshare");
mods.astralsorcery.Altar.addAttunementAltarRecipe("interactions:shaped/internal/altar/knowledgeshare", 
	<astralsorcery:itemknowledgeshare>.withTag({astralsorcery: {}}), 500, 300, [
            null, <ore:feather>, null,
            <ore:powderMana>, parchment, <ore:powderMana>,
            null, <ore:dyeBlack>, null,
            <astralsorcery:itemusabledust>, <astralsorcery:itemusabledust>, <astralsorcery:itemusabledust>, <astralsorcery:itemusabledust>]);

print("----------------Astral Sorcery End-------------------");
