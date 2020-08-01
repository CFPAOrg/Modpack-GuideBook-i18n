import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidStack;
import mods.artisanworktables.builder.RecipeBuilder;
import mods.gregtech.recipe.RecipeMap;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.block.IBlockDefinition;
import mods.thaumcraft.Infusion;
import crafttweaker.game.IGame;

print("---------------Extra Utils 2Start------------------");

val alloyer = mods.gregtech.recipe.RecipeMap.getByName("alloy_smelter");
val blast_furnace = mods.gregtech.recipe.RecipeMap.getByName("blast_furnace");
val assembler = mods.gregtech.recipe.RecipeMap.getByName("assembler");
val chemReactor = mods.gregtech.recipe.RecipeMap.getByName("chemical_reactor");
val stoneBurnt = <extrautils2:decorativesolid:3>;
val quartzBurnt = <extrautils2:decorativesolid:7>;
val redstoneGlass = <extrautils2:decorativeglass:5>;


	#builders wands
	recipes.remove(<extrautils2:itembuilderswand>);
	mods.bloodmagic.AlchemyArray.addRecipe(<extrautils2:itembuilderswand>, <projecte:item.pe_covalence_dust>, <minecraft:stick>);
	mods.bloodmagic.AlchemyArray.addRecipe(<extrautils2:itemcreativebuilderswand>, <minecraft:nether_star>, <extrautils2:itembuilderswand>);


	#furnace
mods.jei.JEI.removeAndHide(<extrautils2:machine>.withTag({Type: "extrautils2:furnace"}));

	#crusher
mods.jei.JEI.removeAndHide(<extrautils2:machine>.withTag({Type: "extrautils2:crusher"}));

	#drums
mods.jei.JEI.removeAndHide(<extrautils2:drum:1>);
mods.jei.JEI.removeAndHide(<extrautils2:drum:2>);
mods.jei.JEI.removeAndHide(<extrautils2:drum:3>);
mods.jei.JEI.removeAndHide(<extrautils2:drum:4>);

	#deep dark portal
mods.jei.JEI.removeAndHide(<extrautils2:teleporter:1>);

	#ender shard
	mods.bloodmagic.AlchemyArray.addRecipe(<extrautils2:endershard>, <wizardry:devil_dust>, <tconstruct:shard>.withTag({Material: "obsidian"}));

	#Mass removal
	#mass disable

var exuDisable as IItemStack[]= [
	<extrautils2:snowglobe:1>,
	<extrautils2:trowel>,
	<extrautils2:passivegenerator:1>,
	<extrautils2:ingredients:13>,
	<extrautils2:passivegenerator:2>,
	<extrautils2:ingredients:4>,
	<extrautils2:passivegenerator:4>,
	<extrautils2:passivegenerator:5>,
	<extrautils2:passivegenerator:7>,
	<extrautils2:indexerremote>,
	<extrautils2:creativechest>,
	<extrautils2:interactionproxy>,
	<extrautils2:playerchest>,
	<extrautils2:chickenring:1>,
	<extrautils2:chickenring>,
	<extrautils2:passivegenerator:8>,
	<extrautils2:passivegenerator>,
	<extrautils2:passivegenerator:3>
	];

for i in exuDisable {
	mods.jei.JEI.removeAndHide(i);
}

	#sickle max durability nerf
//<extrautils2:sickle_stone>.maxDamage = 90;

	#mechanical miner - readd later
recipes.remove(<extrautils2:miner>);

	#mechanical user - readd later
recipes.remove(<extrautils2:user>);
recipes.addShaped(<extrautils2:user>,
	[[<metaitem:plate.advanced.alloy>, <mekanism:reinforcedalloy>, <metaitem:plate.advanced.alloy>],
	[<metaitem:robot.arm.mv>, <gregtech:machine_casing:2>, <metaitem:electric.motor.mv>],
	[<extrautils2:decorativesolid:3>, <metaitem:plate.advanced.alloy>, <extrautils2:decorativesolid:3>]]);

	#Angel block
	recipes.remove(<extrautils2:angelblock>);
	mods.astralsorcery.Altar.addAttunementAltarRecipe("interactions:angelblock", <extrautils2:angelblock>, 150, 600, [
		<ore:nuggetGold>, <ore:nuggetGold>, <ore:nuggetGold>,
		<ore:nuggetGold>, <ore:obsidian>, <ore:nuggetGold>,
		<ore:nuggetGold>, <ore:nuggetGold>, <ore:nuggetGold>,
		<ore:feather>,<ore:feather>,<ore:feather>,<ore:feather>]);

	#sunstone
	recipes.remove(<extrautils2:suncrystal:250>);
	mods.astralsorcery.Altar.addAttunementAltarRecipe("interactions:sunstone", <extrautils2:suncrystal:250>, 150, 600, [
		null,<astralsorcery:itemusabledust>,null,
		<astralsorcery:itemusabledust>,<ore:gemFlawlessDiamond>,<astralsorcery:itemusabledust>,
		null,<astralsorcery:itemusabledust>,null,
		<ore:dustGold>,<ore:dustGold>,<ore:dustGold>,<ore:dustGold>]);

	#Stoneburnt
	recipes.remove(stoneBurnt);
alloyer.recipeBuilder()
    .inputs(<thaumcraft:stone_arcane>, <ore:dustPyrotheum>)
    .outputs(stoneBurnt)
    .duration(60)
    .EUt(48)
    .buildAndRegister();

	#QuartzBurnt
alloyer.recipeBuilder()
    .inputs(<actuallyadditions:block_misc:2>, <ore:dustPyrotheum>)
    .outputs(quartzBurnt)
    .duration(60)
    .EUt(48)
    .buildAndRegister();

	#ez moonstone
	recipes.removeByRecipeName("extrautils2:moon_stone");

	#lunar dust
mods.botania.ManaInfusion.addAlchemy(<extrautils2:ingredients:3>, <minecraft:dye:4>, 15000);

	#redstone glass
alloyer.recipeBuilder()
    .inputs(<ore:wireFineRedAlloy> *3, <minecraft:glass>)
    .outputs(redstoneGlass)
    .duration(60)
    .EUt(48)
    .buildAndRegister();


	#boomerang
	recipes.remove(<extrautils2:boomerang>);
	recipes.addShaped(<extrautils2:boomerang>,
	[[null, <extrautils2:decorativesolidwood:1>, null],
	[<extrautils2:decorativesolidwood:1>, <ore:screwIronMagnetic>, <extrautils2:decorativesolidwood:1>],
	[null, craftingToolSaw, null]]);

	#flat transfer node
	recipes.remove(<extrautils2:flattransfernode>);
	recipes.addShaped(<extrautils2:flattransfernode> * 2,
	[[<minecraft:redstone>, <extrautils2:endershard>, <minecraft:redstone>],
	[<minecraft:stone_slab>, <minecraft:hopper>, <minecraft:stone_slab>],
	[null, <minecraft:stone_slab>, null]]);

	#flat fluid transfer node
	recipes.remove(<extrautils2:flattransfernode:1>);
	recipes.addShaped(<extrautils2:flattransfernode:1> * 2,
	[[<ore:gemLapis>, <extrautils2:endershard>, <ore:gemLapis>],
	[<minecraft:stone_slab>, <minecraft:hopper>, <minecraft:stone_slab>],
	[null, <minecraft:stone_slab>, null]]);


	#angel rings

	val discidiaStar = <astralsorcery:itemshiftingstar>.withTag({astralsorcery: {starAttunement: "astralsorcery.constellation.discidia"}});

	#Basic ring
	recipes.remove(<extrautils2:angelring>);
	mods.thaumcraft.Infusion.registerRecipe("angelring", "INFUSION", <extrautils2:angelring>, 15, [<aspect:alienis> * 64, <aspect:potentia> * 128, <aspect:volatus> * 48], <actuallyadditions:item_misc:6>,
	[<ore:plateVinteum>.firstItem,<ore:plateVinteum>.firstItem,<actuallyadditions:item_crystal_empowered:4>,<actuallyadditions:item_crystal_empowered:4>,<thaumcraft:primordial_pearl>,<metaitem:quantumeye>,<metaitem:quantumeye>]);

	#Kikoku
	recipes.remove(<extrautils2:lawsword>);
	mods.thaumcraft.Infusion.registerRecipe("kikoku", "INFUSION", <extrautils2:lawsword>, 12, [<aspect:aversio> * 48, <aspect:potentia> * 42, <aspect:tenebrae> * 24], <ore:toolHeadSwordDraconium>.firstItem,
	[<ore:plateVoid>,<ore:plateVoid>,<ore:stickStellarAlloy>,<ore:stickStellarAlloy>,discidiaStar,<metaitem:gravistar>]);

	#composite bow
	recipes.remove(<extrautils2:compoundbow>);
	assembler.recipeBuilder()
    .inputs(<metaitem:gravistar>,discidiaStar,<ore:stickDraconium>*3,<ore:manaString> *3)
	.fluidInputs(<liquid:glowstone> * 576)
    .outputs([<extrautils2:compoundbow>])
    .duration(150)
    .EUt(60)
    .buildAndRegister();

	#creative Mill
	assembler.recipeBuilder()
    .inputs(<ore:lensNetherStar>,<extrautils2:terraformer:8>, <ore:ingotUnstable>)
	.fluidInputs(<liquid:unstable_mana> * 10000)
    .outputs([<extrautils2:passivegenerator:6>])
    .duration(80)
    .EUt(30)
    .buildAndRegister();

	#Angelic ring
	recipes.remove(<extrautils2:angelring:4>);
	recipes.addShapeless(<extrautils2:angelring:4>, [<extrautils2:angelring>, <ore:nuggetGold>]);


	#leather ring
	recipes.remove(<extrautils2:angelring:3>);
	recipes.addShapeless(<extrautils2:angelring:3>, [<extrautils2:angelring>,<ore:leather>]);

	#Faery ring
	recipes.remove(<extrautils2:angelring:2>);
	recipes.addShapeless(<extrautils2:angelring:2>, [<extrautils2:angelring>,<ore:elvenPixieDust>]);

	#coal ring
	recipes.remove(<extrautils2:angelring:5>);
	recipes.addShapeless(<extrautils2:angelring:5>, [<extrautils2:angelring>,<ore:coal>]);

	#feather ring
	recipes.remove(<extrautils2:angelring:1>);
	recipes.addShapeless(<extrautils2:angelring:1>, [<extrautils2:angelring>,<ore:feather>]);

	#wireless transfer node
	recipes.remove(<extrautils2:powertransmitter>);
	assembler.recipeBuilder()
    .inputs(<extrautils2:ingredients>,<extrautils2:decorativesolid:3>,<ore:circuitMedium>)
    .outputs([<extrautils2:powertransmitter>])
    .duration(150)
    .EUt(60)
    .buildAndRegister();

	#lightsabers - light blue standard
	recipes.remove(<extrautils2:luxsaber>);
	assembler.recipeBuilder()
    .inputs(<ore:lensDiamond>,<ore:alloyAdvanced>,<ore:stickAluminium>)
    .outputs([<extrautils2:luxsaber>])
	.fluidInputs(<liquid:glowstone> * 576)
    .duration(350)
    .EUt(24)
    .buildAndRegister();

	#echanter
	recipes.remove(<extrautils2:machine>);
	recipes.addShaped(<extrautils2:machine>,
	[[null, <extrautils2:suncrystal>, null],
	[<minecraft:experience_bottle>, <gregtech:machine:502>, <minecraft:experience_bottle>],
	[<ore:plateSterlingSilver>, <ore:plateSterlingSilver>, <ore:plateSterlingSilver>]]);

	recipes.addShapeless(<extrautils2:luxsaber>, [<ore:anyLuxSaber>,<ore:paneGlassBlue>]);

	#pink luxSaber
	recipes.remove(<extrautils2:luxsaber:1>);
	recipes.addShapeless(<extrautils2:luxsaber:1>, [<ore:anyLuxSaber>,<ore:paneGlassPink>]);

	#luxSaber Red
	recipes.remove(<extrautils2:luxsaber:2>);
	recipes.addShapeless(<extrautils2:luxsaber:2>, [<ore:anyLuxSaber>,<ore:paneGlassRed>]);

	#luxSaber Yellow
	recipes.remove(<extrautils2:luxsaber:3>);
	recipes.addShapeless(<extrautils2:luxsaber:3>, [<ore:anyLuxSaber>,<ore:paneGlassYellow>]);

	#luxSaber Green
	recipes.remove(<extrautils2:luxsaber:4>);
	recipes.addShapeless(<extrautils2:luxsaber:4>, [<ore:anyLuxSaber>,<ore:paneGlassGreen>]);

	#luxSaber Cyan
	recipes.remove(<extrautils2:luxsaber:5>);
	recipes.addShapeless(<extrautils2:luxsaber:5>, [<ore:anyLuxSaber>,<ore:paneGlassCyan>]);

	#luxSaber White
	recipes.remove(<extrautils2:luxsaber:6>);
	recipes.addShapeless(<extrautils2:luxsaber:6>, [<ore:anyLuxSaber>,<ore:paneGlassWhite>]);

	#luxSaber Black
	recipes.remove(<extrautils2:luxsaber:7>);
	recipes.addShapeless(<extrautils2:luxsaber:7>, [<ore:anyLuxSaber>,<ore:paneGlassBlack>]);


	#opinium cores, we could do something with these later
recipes.remove(<extrautils2:opinium:8>);
recipes.remove(<extrautils2:opinium:7>);
recipes.remove(<extrautils2:opinium:6>);
recipes.remove(<extrautils2:opinium:5>);
recipes.remove(<extrautils2:opinium:4>);
recipes.remove(<extrautils2:opinium:3>);
recipes.remove(<extrautils2:opinium:2>);
recipes.remove(<extrautils2:opinium:1>);
recipes.remove(<extrautils2:opinium>);

	#generators
mods.jei.JEI.removeAndHide(<extrautils2:machine>.withTag({Type: "extrautils2:generator"}));
mods.jei.JEI.removeAndHide(<extrautils2:machine>.withTag({Type: "extrautils2:generator_dragonsbreath"}));
mods.jei.JEI.removeAndHide(<extrautils2:machine>.withTag({Type: "extrautils2:generator_slime"}));
mods.jei.JEI.removeAndHide(<extrautils2:machine>.withTag({Type: "extrautils2:generator_ender"}));
mods.jei.JEI.removeAndHide(<extrautils2:machine>.withTag({Type: "extrautils2:generator_potion"}));
mods.jei.JEI.removeAndHide(<extrautils2:machine>.withTag({Type: "extrautils2:generator_pink"}));
mods.jei.JEI.removeAndHide(<extrautils2:machine>.withTag({Type: "extrautils2:generator_overclock"}));
mods.jei.JEI.removeAndHide(<extrautils2:machine>.withTag({Type: "extrautils2:generator_tnt"}));
mods.jei.JEI.removeAndHide(<extrautils2:machine>.withTag({Type: "extrautils2:generator_survival"}));
mods.jei.JEI.removeAndHide(<extrautils2:machine>.withTag({Type: "extrautils2:generator_ice"}));
mods.jei.JEI.removeAndHide(<extrautils2:machine>.withTag({Type: "extrautils2:generator_enchant"}));
mods.jei.JEI.removeAndHide(<extrautils2:machine>.withTag({Type: "extrautils2:generator_redstone"}));
mods.jei.JEI.removeAndHide(<extrautils2:machine>.withTag({Type: "extrautils2:generator_lava"}));
mods.jei.JEI.removeAndHide(<extrautils2:machine>.withTag({Type: "extrautils2:generator_culinary"}));
mods.jei.JEI.removeAndHide(<extrautils2:machine>.withTag({Type: "extrautils2:generator_netherstar"}));
mods.jei.JEI.removeAndHide(<extrautils2:machine>.withTag({Type: "extrautils2:generator_death"}));
mods.jei.JEI.removeAndHide(<extrautils2:rainbowgenerator:2>);
mods.jei.JEI.removeAndHide(<extrautils2:rainbowgenerator:1>);
mods.jei.JEI.removeAndHide(<extrautils2:rainbowgenerator>);

	#Sandy glass from vitrified sand
	furnace.addRecipe(<extrautils2:decorativesolid:4>, <advancedrocketry:vitrifiedsand>);



	#upgrades
mods.jei.JEI.removeAndHide(<extrautils2:ingredients:6>);
mods.jei.JEI.removeAndHide(<extrautils2:ingredients:7>);
mods.jei.JEI.removeAndHide(<extrautils2:ingredients:8>);
mods.jei.JEI.removeAndHide(<extrautils2:ingredients:9>);
mods.jei.JEI.removeAndHide(<extrautils2:ingredients:15>);
mods.jei.JEI.removeAndHide(<extrautils2:ingredients:16>);

	#rainbow stone
recipes.addShaped(<extrautils2:decorativesolid:8> * 8, [
	[<minecraft:dye:5>, <minecraft:dye:6>, <minecraft:dye:7>],
	[<minecraft:dye:9>, stoneBurnt, <minecraft:dye:10>],
	[<minecraft:dye:12>, <minecraft:dye:13>, <minecraft:dye:14>]]);




	#evil metal
	<extrautils2:ingredients:17>.displayName = "堕落精灵锭";
	<extrautils2:simpledecorative:2>.displayName = "堕落精灵金属块";

	game.setLocalization("fluid.xu_evil_metal", "Corrupted Elven Metal");

	#unstable nugget
	recipes.remove(<extrautils2:unstableingots:1>);
blast_furnace.recipeBuilder()
    .inputs(<ore:dustTinyNetherStar>, <rftools:infused_diamond>)
    .fluidInputs([<liquid:pyrotheum> * 1000])
    .outputs(<extrautils2:unstableingots:1>)
    .property("temperature", 1700)
    .duration(1000)
    .EUt(480)
    .buildAndRegister();

blast_furnace.recipeBuilder()
    .inputs(<ore:netherStar>, <ore:ingotElvenElementium>*8)
    .fluidInputs([<liquid:liquidnightmares> * 8000])
    .outputs(<extrautils2:ingredients:17>*8)
    .property("temperature", 2700)
    .duration(2000)
    .EUt(1920)
    .buildAndRegister();

	#disable recipe for crafters
	recipes.remove(<extrautils2:analogcrafter>);
	recipes.remove(<extrautils2:crafter>);

	#redstone clock
	recipes.remove(<extrautils2:redstoneclock>);
	recipes.addShaped(<extrautils2:redstoneclock>,
	[[<ore:stone>, <minecraft:redstone>, <ore:stone>],
	[<minecraft:redstone>, <randomthings:advancedredstonetorch_on>, <minecraft:redstone>],
	[<ore:stone>, <wizardry:devil_dust>, <ore:stone>]]);

	#enchanted metal
blast_furnace.recipeBuilder()
    .inputs(<ore:dustLapis>*2, <ore:dustGold>)
    .fluidInputs([<liquid:xpjuice> * 1000])
    .outputs(<extrautils2:ingredients:12>)
    .property("temperature", 1350)
    .duration(220)
    .EUt(120)
    .buildAndRegister();

	#enchanted apples
	recipes.remove(<extrautils2:magicapple>);
chemReactor.recipeBuilder()
	.inputs(<ore:dustLapis>, <ore:cropApple>*8)
	.fluidInputs([<liquid:xpjuice> * 1000])
	.outputs(<extrautils2:magicapple>*8)
    .duration(160)
    .EUt(16)
    .buildAndRegister();


	#magical wood
chemReactor.recipeBuilder()
	.inputs(<ore:dustLapis>, <ore:bookshelf>)
	.fluidInputs([<liquid:xpjuice> * 500])
	.outputs(<extrautils2:decorativesolidwood:1>)
    .duration(160)
    .EUt(16)
    .buildAndRegister();


    #Spikes - Wooden
recipes.remove(<extrautils2:spike_wood>);
recipes.addShaped(<extrautils2:spike_wood> * 4, [
	[null, <minecraft:wooden_sword>, null],
	[<minecraft:wooden_sword>, <ore:plankWood>, <minecraft:wooden_sword>],
	[<ore:plankWood>, <ore:logWood>,<ore:plankWood>]]);

print("----------------Extra Utils 2 End-------------------");
