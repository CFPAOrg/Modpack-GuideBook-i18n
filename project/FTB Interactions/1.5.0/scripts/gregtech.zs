import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.item.IIngredient;
import mods.artisanworktables.builder.RecipeBuilder;
import mods.gregtech.recipe.RecipeMap;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.block.IBlockDefinition;
import crafttweaker.block.IBlockProperties;
import crafttweaker.block.IBlock;
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Block;
import mods.gregtech.recipe.RecipeMaps;


print("---------------Gregtech Start------------------");

val brewery = mods.gregtech.recipe.RecipeMap.getByName("brewer");
val extruder = mods.gregtech.recipe.RecipeMap.getByName("extruder");
val mixer = mods.gregtech.recipe.RecipeMap.getByName("mixer");
val implosion = mods.gregtech.recipe.RecipeMap.getByName("implosion_compressor");
val macerator = mods.gregtech.recipe.RecipeMap.getByName("macerator");
val assembler = mods.gregtech.recipe.RecipeMap.getByName("assembler");
val solidifier = mods.gregtech.recipe.RecipeMap.getByName("fluid_solidifier");
val chemReactor = mods.gregtech.recipe.RecipeMap.getByName("chemical_reactor");
val forgeHammer = mods.gregtech.recipe.RecipeMap.getByName("forge_hammer");
val fluidExtractor = mods.gregtech.recipe.RecipeMap.getByName("fluid_extractor");
val extractor = mods.gregtech.recipe.RecipeMap.getByName("extractor");
val compressor = mods.gregtech.recipe.RecipeMap.getByName("compressor");
val electrolyzer = mods.gregtech.recipe.RecipeMap.getByName("electrolyzer");
val spinnyGoFast = mods.gregtech.recipe.RecipeMap.getByName("centrifuge");
val blast_furnace = mods.gregtech.recipe.RecipeMap.getByName("blast_furnace");
val wiremill = mods.gregtech.recipe.RecipeMap.getByName("wiremill");
var fusionReactor = mods.gregtech.recipe.RecipeMap.getByName("fusion_reactor");
val chemical_bath = mods.gregtech.recipe.RecipeMap.getByName("chemical_bath");
val lathe = mods.gregtech.recipe.RecipeMap.getByName("lathe");
val cracker = mods.gregtech.recipe.RecipeMap.getByName("cracker");
val autoclave = mods.gregtech.recipe.RecipeMap.getByName("autoclave");
val vacfreezer = mods.gregtech.recipe.RecipeMap.getByName("vacuum_freezer");
val thermalCent = mods.gregtech.recipe.RecipeMap.getByName("thermal_centrifuge");
val cutting_saw = mods.gregtech.recipe.RecipeMap.getByName("cutting_saw");
val assembly_line = mods.gregtech.recipe.RecipeMap.getByName("assembly_line");
val distillery = mods.gregtech.recipe.RecipeMap.getByName("distillery");
val distillation_tower = mods.gregtech.recipe.RecipeMap.getByName("distillery");
	
recipes.addShaped(<gregtech:meta_tool:7>.withTag({"GT.ToolStats": {PrimaryMaterial: "rubber", MaxDurability: 256, DigSpeed: 4.0 as float, AttackDamage: 1.0 as float, HarvestLevel: 1}}), 
	[[<ore:itemRubber>, <ore:itemRubber>, null],
	#soft hammer
	[<ore:itemRubber>, <ore:itemRubber>, <ore:stickWood>], 
	[<ore:itemRubber>, <ore:itemRubber>, null]]);
	
mods.jei.JEI.addItem(<gregtech:meta_tool:7>.withTag({"GT.ToolStats": {PrimaryMaterial: "rubber", MaxDurability: 256, DigSpeed: 4.0 as float, AttackDamage: 1.0 as float, HarvestLevel: 1}}));
	


	#Lutetium in Thermal Centrifurge
thermalCent.findRecipe(60, 
	[<ore:crushedPurifiedThorium>.firstItem], 
	[null])
	.remove();
thermalCent.recipeBuilder()
	.inputs([<ore:crushedPurifiedThorium>])
	.outputs([<ore:crushedCentrifugedThorium>.firstItem, <ore:dustTinyLutetium>.firstItem * 3])
	.EUt(60)
	.duration(4600)
	.buildAndRegister();

	#awakened draconium
	forgeHammer.recipeBuilder()
	.inputs([<ore:blockDraconiumAwakened>])
	.outputs([<draconicevolution:draconic_ingot>*9])
	.EUt(24)
	.duration(20)
	.buildAndRegister();
	
	#remove duplicate wheat recipe
macerator.findRecipe(8, 
	[<minecraft:wheat>],
	[null])
	.remove();
	
	
	
	#Lutetium in Pulverizer
macerator.findRecipe(12, 
	[<ore:crushedCentrifugedThorium>.firstItem],
	[null])
	.remove();
macerator.recipeBuilder()
	.inputs([<ore:crushedPurifiedThorium>])
	.outputs([<ore:dustThorium>.firstItem])
	.chancedOutput(<ore:dustLutetium>.firstItem, 1400)
	.EUt(12)
	.duration(40)
	.buildAndRegister();
	
	#diamond sawblade recipe
recipes.remove(<ore:craftingDiamondBlade>.firstItem);
recipes.addShaped(<ore:craftingDiamondBlade>.firstItem, [
	[null, <ore:dustSmallDiamond>, null], 
	[<ore:dustSmallDiamond>, <ore:gearBrass>, <ore:dustSmallDiamond>], 
	[null, <ore:dustSmallDiamond>, null]]);

	#salt water
mixer.findRecipe(8, [<ore:itemSalt>.firstItem], [<liquid:water> * 1000]).remove();	

chemReactor.findRecipe(30, [<ore:dustNetherQuartz>.firstItem*3, <ore:dustSodium>.firstItem], [<liquid:water> * 1000]).remove();	

	#Salt water
chemReactor.recipeBuilder()
	.inputs(<ore:itemSalt>)
	.fluidInputs([<liquid:water> * 1000])
	.fluidOutputs([<liquid:salt_water> * 1000])
    .duration(160)
    .EUt(18)
    .buildAndRegister();
	
	
	#platinum sludge
chemReactor.findRecipe(30, [<ore:crushedPurifiedChalcopyrite>.firstItem], [<liquid:nitric_acid> * 1000]).remove();
chemReactor.findRecipe(30, [<ore:crushedPurifiedPentlandite>.firstItem], [<liquid:nitric_acid> * 1000]).remove();
chemReactor.findRecipe(30, [<ore:crushedPurifiedPentlandite>.firstItem], [<liquid:nitric_acid> * 1000]).remove();
spinnyGoFast.findRecipe(30, [<ore:dustPlatinumGroupSludge>.firstItem], [null]).remove();
mods.jei.JEI.removeAndHide(<ore:dustSmallPlatinumGroupSludge>.firstItem);
mods.jei.JEI.removeAndHide(<ore:dustPlatinumGroupSludge>.firstItem);
mods.jei.JEI.removeAndHide(<ore:dustTinyPlatinumGroupSludge>.firstItem);
mods.jei.JEI.removeAndHide(<ore:blockPlatinumGroupSludge>.firstItem);

	#useless basic laser engraver
mods.jei.JEI.removeAndHide(<meta_tile_entity:gregtech:laser_engraver.lv>);

	#Autoclave additions for missing gems 
var autoclaveGems as string[] = [
	"Topaz",
	"Tanzanite",
	"Almandine",
	"BlueTopaz",
	"Jasper",
	"GarnetRed",
	"GarnetYellow",
	"Vinteum"
	];

for input in autoclaveGems {
	var dust as IItemStack = oreDict["crushedPurified"~input].firstItem;
	var gem as IItemStack = oreDict["gem"~input].firstItem;
	
autoclave.recipeBuilder()
    .inputs(dust * 1)
    .fluidInputs([<liquid:water> * 1000])
    .chancedOutput(gem, 5000)
    .duration(2000)
    .EUt(24)
    .buildAndRegister();
	
autoclave.recipeBuilder()
    .inputs(dust * 1)
    .fluidInputs([<liquid:astralsorcery.liquidstarlight> * 10])
    .outputs(gem * 1)
    .duration(100)
    .EUt(4)
    .buildAndRegister();
	
}

	#Iron Bar Loop
macerator.findRecipe(8, [<minecraft:iron_bars>], []).remove();
macerator.recipeBuilder()
	.inputs(<minecraft:iron_bars>)
	.outputs(<ore:dustTinyIron>.firstItem * 3)
	.duration(80)
	.EUt(8)
	.buildAndRegister();

#steam turbine reicpe
	recipes.remove(<gregtech:machine:518>);
	recipes.addShaped(<gregtech:machine:518>, 
	[[<ore:circuitHigh>, <ore:gearSteel>, <ore:circuitHigh>],
	[<ore:gearSteel>, <gregtech:machine:504>, <ore:gearSteel>], 
	[<ore:plateVinteum>, <ore:gearSteel>, <ore:plateVinteum>]]);

	#Advanced Alloy
recipes.removeByRecipeName("gregtech:ingot_mixed_metal");

	#coal autoclave
autoclave.recipeBuilder()
	.inputs(<ore:dustCoal>)
	.fluidInputs([<liquid:water> * 1000])
	.chancedOutput(<minecraft:coal>, 5000)
	.duration(2000)
	.EUt(24)
	.buildAndRegister();
		
autoclave.recipeBuilder()
	.inputs(<ore:dustCoal>)
	.fluidInputs([<liquid:astralsorcery.liquidstarlight> * 10])
	.outputs(<minecraft:coal> * 1)
	.duration(100)
	.EUt(4)
	.buildAndRegister();	


	#Certus Quartz Rod (additional faster recipe)
lathe.recipeBuilder()
	.inputs(<ore:crystalPureCertusQuartz> * 4)
	.outputs(<ore:stickCertusQuartz>.firstItem)
	.duration(80)
	.EUt(30)
	.buildAndRegister();

	#Energium Autoclave - Liquid Starlight
autoclave.recipeBuilder()
	.inputs(<metaitem:energium_dust> * 9)
	.fluidInputs([<liquid:astralsorcery.liquidstarlight> * 225])
	.outputs(<metaitem:energy_crystal>)
	.duration(200)
	.EUt(120)
	.buildAndRegister();

	#Nether Quartz Rod (additional faster recipe)
lathe.recipeBuilder()
	.inputs(<ore:crystalPureNetherQuartz> * 4)
	.outputs(<ore:stickNetherQuartz>.firstItem)
	.duration(80)
	.EUt(30)
	.buildAndRegister();

#ender pearls
fluidExtractor.recipeBuilder()
	.inputs(<ore:enderpearl> * 1)
	.fluidOutputs([<liquid:ender> * 250])
	.duration(160)
	.EUt(18)
	.buildAndRegister();

#molten infinity
fluidExtractor.recipeBuilder()
	.inputs(<contenttweaker:infinityegg> * 1)
	.fluidOutputs([<liquid:infinity> * 144])
	.duration(80)
	.EUt(18)
	.buildAndRegister();	
	
spinnyGoFast.recipeBuilder()
    .fluidInputs([<liquid:liquid_air> * 53000])
	.fluidOutputs([<liquid:nitrogen> * 40000,<liquid:oxygen> * 11000,<liquid:argon> * 1000,<liquid:noble_gases> * 1000])
	.duration(1484)
	.EUt(30)
	.buildAndRegister();

	#ferric turf
spinnyGoFast.recipeBuilder()
    .inputs(<advancedrocketry:hotturf>)
	.chancedOutput(<ore:dustSilicon>.firstItem, 8500)
	.chancedOutput(<ore:dustSmallIron>.firstItem, 5500)
	.chancedOutput(<ore:dustSmallUranium>.firstItem, 3500)
	.chancedOutput(<ore:dustSmallPlutonium>.firstItem, 3000)
	.chancedOutput(<ore:dustSmallNaquadah>.firstItem, 1500)
	.chancedOutput(<ore:dustTinyPlutonium241>.firstItem, 500)
	.fluidOutputs([<liquid:sludge> * 100])
	.duration(480)
	.EUt(30)
	.buildAndRegister();	
	
	#Flour
mods.primaltech.StoneAnvil.addRecipe(<ore:dustWheat>.firstItem, <minecraft:wheat>);

	#Ashes
RecipeBuilder.get("basic")
	.setShapeless([<primal_tech:charcoal_block>])
	.addTool(<ore:artisanHammers>, 10)
	.addOutput(<ore:dustAsh>.firstItem)
	.create();

	#Bronze hull
recipes.remove(<gregtech:machine_casing:11>);
recipes.addShaped(<gregtech:machine_casing:11>,
	[[<ore:plateBronze>, <ore:plateBrass>, <ore:plateBronze>],
	[<ore:plateBronze>, craftingToolHardHammer, <ore:plateBronze>],
	[<minecraft:brick_block>, <minecraft:brick_block>, <minecraft:brick_block>]]);

	#Bronze Hull
recipes.remove(<gregtech:machine_casing:10>);
recipes.addShaped(<gregtech:machine_casing:10>,[
	[<ore:plateBronze>, <ore:plateBronze>, <ore:plateBronze>],
	[<ore:plateBrass>, craftingToolHardHammer, <ore:plateBrass>],
	[<ore:plateBronze>, <ore:plateBronze>, <ore:plateBronze>]]);

	#Biomass (Alternate)
brewery.recipeBuilder()
    .inputs(<ore:botaniaPetals> * 1)
    .fluidInputs([<liquid:water> * 100])
    .fluidOutputs([<liquid:biomass> * 120])
    .duration(800)
    .EUt(3)
    .buildAndRegister();

	#Boiler upgraes
	#Bronze to steel
assembler.recipeBuilder()
		.inputs(<gregtech:metal_casing>, <ore:plateSteel> *2)
		.outputs(<gregtech:metal_casing:4>)
		.duration(50)
		.EUt(8)
		.buildAndRegister();

assembler.recipeBuilder()
		.inputs(<meta_tile_entity:gregtech:large_boiler.bronze>, <ore:cableGtSingleCopper> *4, <ore:circuitHigh> *4)
		.outputs(<meta_tile_entity:gregtech:large_boiler.steel>)
		.duration(50)
		.EUt(8)
		.buildAndRegister();

assembler.recipeBuilder()
		.inputs(<gregtech:boiler_firebox_casing>, <ore:plateSteel> *2)
		.outputs(<gregtech:boiler_firebox_casing:1>)
		.duration(50)
		.EUt(8)
		.buildAndRegister();

assembler.recipeBuilder()
		.inputs(<gregtech:boiler_casing>, <ore:plateSteel> *5)
		.outputs(<gregtech:boiler_casing:1>)
		.duration(50)
		.EUt(8)
		.buildAndRegister();

	#steel to Titanium
assembler.recipeBuilder()
		.inputs(<gregtech:metal_casing:4>, <ore:plateTitanium> *2)
		.outputs(<gregtech:metal_casing:6>)
		.duration(100)
		.EUt(8)
		.buildAndRegister();

assembler.recipeBuilder()
		.inputs(<meta_tile_entity:gregtech:large_boiler.steel>, <ore:cableGtSingleGold> *4, <ore:circuitInsane> *4)
		.outputs(<meta_tile_entity:gregtech:large_boiler.titanium>)
		.duration(100)
		.EUt(8)
		.buildAndRegister();

	assembler.recipeBuilder()
		.inputs(<gregtech:boiler_firebox_casing:1>, <ore:plateTitanium> *2)
		.outputs(<gregtech:boiler_firebox_casing:2>)
		.duration(50)
		.EUt(8)
		.buildAndRegister();

	assembler.recipeBuilder()
		.inputs(<gregtech:boiler_casing:1>, <ore:plateTitanium> *5)
		.outputs(<gregtech:boiler_casing:2>)
		.duration(50)
		.EUt(8)
		.buildAndRegister();

	#Titanium to Tungsten
assembler.recipeBuilder()
		.inputs(<gregtech:metal_casing:6>, <ore:plateTungstenSteel> *2)
		.outputs(<gregtech:metal_casing:7>)
		.duration(100)
		.EUt(8)
		.buildAndRegister();

assembler.recipeBuilder()
		.inputs(<meta_tile_entity:gregtech:large_boiler.titanium>, <ore:cableGtSingleAluminium> *4, <ore:circuitLudicrous> *4)
		.outputs(<meta_tile_entity:gregtech:large_boiler.tungsten>)
		.duration(150)
		.EUt(8)
		.buildAndRegister();

assembler.recipeBuilder()
		.inputs(<gregtech:boiler_firebox_casing:2>, <ore:plateTungstenSteel> *2)
		.outputs(<gregtech:boiler_firebox_casing:3>)
		.duration(150)
		.EUt(8)
		.buildAndRegister();

assembler.recipeBuilder()
		.inputs(<gregtech:boiler_casing:2>, <ore:plateTungstenSteel> *2)
		.outputs(<gregtech:boiler_casing:3>)
		.duration(150)
		.EUt(8)
		.buildAndRegister();

	#Turbine Upgrades
assembler.recipeBuilder()
		.inputs(<gregtech:turbine_casing:5>, <ore:plateTitanium> *2)
		.outputs(<gregtech:turbine_casing:4>)
		.duration(100)
		.EUt(8)
		.buildAndRegister();

assembler.recipeBuilder()
		.inputs(<gregtech:turbine_casing:4>, <ore:plateTungstenSteel> *2)
		.outputs(<gregtech:turbine_casing:6>)
		.duration(150)
		.EUt(8)
		.buildAndRegister();

	#cryogenic oxygen and hydrogen
	vacfreezer.recipeBuilder()
	.inputs(<ore:dustBlizz>)
    .fluidInputs([<liquid:oxygen> * 10000])
	.fluidOutputs([<liquid:cryogenicoxygen> * 1000])
	.duration(50)
	.EUt(120)
	.buildAndRegister();
	
	#cryogenic oxygen and hydrogen
vacfreezer.recipeBuilder()
	.inputs(<ore:dustBlizz>)
    .fluidInputs([<liquid:hydrogen> * 10000])
	.fluidOutputs([<liquid:cryogenichydrogen> * 1000])
	.duration(50)
	.EUt(120)
	.buildAndRegister();	
		
	#Removing Ash Centrifuge into byproducts
spinnyGoFast.findRecipe(30, [<ore:dustAsh>.firstItem], [null]).remove();

	#Adding Add to Carbon Dust Centrifurge
spinnyGoFast.recipeBuilder()
	.inputs(<ore:dustAsh>)
	.outputs(<ore:dustCarbon>.firstItem)
	.duration(24)
	.EUt(30)
	.buildAndRegister();

	#Diamond from graphite
implosion.recipeBuilder()
    .inputs(<ore:ingotGraphite> *3)
	.property("explosives", 2)
	.outputs(<minecraft:diamond>)
    .duration(40)
    .EUt(32)
    .buildAndRegister();

	#Diamond from diamond dust
implosion.recipeBuilder()
    .inputs(<ore:dustDiamond> *3)
	.property("explosives", 1)
	.outputs(<minecraft:diamond>)
    .duration(40)
    .EUt(32)
    .buildAndRegister();

	#remove duplicate diamond nugget
recipes.removeByRecipeName("gregtech:nugget_disassembling_diamond");
	
	#fix gold dust
recipes.removeByRecipeName("gregtech:plate_to_dust_gold");
recipes.removeShaped(<ore:dustGold>.firstItem,
	[[null,<ore:plateGold>,null],
	[null, craftingToolMortar,null],
	[null,null,null]]);
	recipes.addShaped(<ore:dustGold>.firstItem,
	[[null,<ore:ingotGold>,null],
	[null, craftingToolMortar,null],
	[null,null,null]]);

	#fix iron dust
recipes.removeByRecipeName("gregtech:plate_to_dust_iron");
recipes.removeShaped(<ore:dustIron>.firstItem,
	[[null,<ore:plateIron>,null],
	[null, craftingToolMortar,null],
	[null,null,null]]);
recipes.addShaped(<ore:dustIron>.firstItem,
	[[null,<ore:ingotIron>,null],
	[null, craftingToolMortar,null],
	[null,null,null]]);

	#Fine Wire Fix
var fineWireMaterials as string[] = [
	"Chrome",
	"Darmstadtium",
	"Palladium",
	"Brass",
	"Invar",
	"Magnalium",
	"Epoxid",
	"StainlessSteel",
	"TinAlloy",
	"Ultimet",
	"Bronze",
	"WroughtIron",
	"Osmiridium",
	"SterlingSilver",
	"RoseGold",
	"BlackBronze",
	"BismuthBronze",
	"CobaltBrass",
	"NeodymiumMagnetic",
	"TungstenCarbide",
	"VanadiumSteel",
	"Hsse",
	"Hsss",
	"Neutronium",
	"Iridium"
	];

for name in fineWireMaterials {
	var rod as IItemStack = oreDict["stick"~name].firstItem;
	var fine as IItemStack = oreDict["wireFine"~name].firstItem;

    wiremill.recipeBuilder()
    	.inputs(rod)
    	.outputs(fine*2)
    	.EUt(24)
    	.duration(80)
    	.buildAndRegister();
}

	#Honey
fluidExtractor.recipeBuilder()
	.inputs(<harvestcraft:honeyitem>)
	.fluidOutputs([<liquid:honey> * 250])
	.duration(100)
	.EUt(30)
	.buildAndRegister();

	#rubber sapling
mods.bloodmagic.AlchemyArray.addRecipe(<gregtech:sapling>, <actuallyadditions:item_misc:12>, <minecraft:sapling>);
mods.bloodmagic.AlchemyArray.addRecipe(<gregtech:sapling>, <minecraft:slime_ball>, <minecraft:sapling>);
mods.bloodmagic.AlchemyArray.addRecipe(<gregtech:sapling>, <tconstruct:edible:3>, <minecraft:sapling>);

	#marble
furnace.addRecipe(<gregtech:mineral>, <gregtech:mineral:4>);

	#ore transmutations
<gregtech:ore_thorium_0>.addTooltip(format.darkRed("通过将焦黑石英块作为催化剂的坠星标位仪式获得。"));
<actuallyadditions:block_misc:2>.addTooltip(format.darkRed("可用作坠星标位的催化剂。"));
<gregtech:ore_uranium_0>.addTooltip(format.darkRed("通过星辉转化钍矿获得。"));

	#Pump - LV
assembler.recipeBuilder()
	.inputs([<ore:cableGtSingleTin>, <ore:ringPaper> * 2, <ore:pipeMediumBronze>, <metaitem:electric.motor.lv>])
	.fluidInputs([<liquid:tin> * 628])
	.outputs(<metaitem:electric.pump.lv>)
	.EUt(15)
	.duration(1200)
	.buildAndRegister();

assembler.recipeBuilder()
	.inputs([<ore:cableGtSingleTin>, <ore:ringRubber> * 2, <ore:pipeMediumBronze>, motorLV])
	.fluidInputs([<liquid:tin> * 628])
	.outputs(pumpLV)
	.EUt(15)
	.duration(600)
	.buildAndRegister();

assembler.recipeBuilder()
	.inputs([<ore:cableGtSingleTin>, <ore:ringStyreneButadieneRubber> * 2, <ore:pipeMediumBronze>, motorLV])
	.fluidInputs([<liquid:tin> * 628])
	.outputs(pumpLV)
	.EUt(15)
	.duration(300)
	.buildAndRegister();

	#Pump - MV
assembler.recipeBuilder()
	.inputs([<ore:cableGtSingleCopper>, <ore:ringRubber> * 2, <ore:pipeMediumSteel>, <metaitem:electric.motor.mv>])
	.fluidInputs([<liquid:bronze> * 628])
	.outputs(pumpMV)
	.EUt(60)
	.duration(1200)
	.buildAndRegister();

assembler.recipeBuilder()
	.inputs([<ore:cableGtSingleCopper>, <ore:ringStyreneButadieneRubber> * 2, <ore:pipeMediumSteel>, motorMV])
	.fluidInputs([<liquid:bronze> * 628])
	.outputs(pumpMV)
	.EUt(60)
	.duration(600)
	.buildAndRegister();

assembler.recipeBuilder()
	.inputs([<ore:cableGtSingleCopper>, <ore:ringSiliconRubber> * 2, <ore:pipeMediumSteel>, motorMV])
	.fluidInputs([<liquid:bronze> * 628])
	.outputs(pumpMV)
	.EUt(60)
	.duration(300)
	.buildAndRegister();

	#Pump - HV
assembler.recipeBuilder()
	.inputs([<ore:cableGtSingleGold>, <ore:ringRubber> * 2, <ore:pipeMediumStainlessSteel>, motorHV])
	.fluidInputs([<liquid:bronze> * 628])
	.outputs(pumpHV)
	.EUt(240)
	.duration(1200)
	.buildAndRegister();

assembler.recipeBuilder()
	.inputs([<ore:cableGtSingleGold>, <ore:ringStyreneButadieneRubber> * 2, <ore:pipeMediumStainlessSteel>, motorHV])
	.fluidInputs([<liquid:bronze> * 628])
	.outputs(pumpHV)
	.EUt(240)
	.duration(600)
	.buildAndRegister();

assembler.recipeBuilder()
	.inputs([<ore:cableGtSingleGold>, <ore:ringSiliconRubber> * 2, <ore:pipeMediumStainlessSteel>, motorHV])
	.fluidInputs([<liquid:bronze> * 628])
	.outputs(pumpHV)
	.EUt(240)
	.duration(300)
	.buildAndRegister();

	#Pump - EV
assembler.recipeBuilder()
	.inputs([<ore:cableGtSingleAluminium>, <ore:ringRubber> * 2, <ore:pipeMediumTitanium>, motorEV])
	.fluidInputs([<liquid:stainless_steel> * 628])
	.outputs(pumpEV)
	.EUt(960)
	.duration(1200)
	.buildAndRegister();

assembler.recipeBuilder()
	.inputs([<ore:cableGtSingleAluminium>, <ore:ringStyreneButadieneRubber> * 2, <ore:pipeMediumTitanium>, motorEV])
	.fluidInputs([<liquid:stainless_steel> * 628])
	.outputs(pumpEV)
	.EUt(960)
	.duration(600)
	.buildAndRegister();

assembler.recipeBuilder()
	.inputs([<ore:cableGtSingleAluminium>, <ore:ringSiliconRubber> * 2, <ore:pipeMediumTitanium>, motorEV])
	.fluidInputs([<liquid:stainless_steel> * 628])
	.outputs(pumpEV)
	.EUt(960)
	.duration(300)
	.buildAndRegister();

	#Pump - IV
assembler.recipeBuilder()
	.inputs([<ore:cableGtSingleTungsten>, <ore:ringRubber> * 2, <ore:pipeMediumTungstenSteel>, motorIV])
	.fluidInputs([<liquid:tungsten_steel> * 628])
	.outputs(pumpIV)
	.EUt(3840)
	.duration(1200)
	.buildAndRegister();

assembler.recipeBuilder()
	.inputs([<ore:cableGtSingleTungsten>, <ore:ringStyreneButadieneRubber> * 2, <ore:pipeMediumTungstenSteel>, motorIV])
	.fluidInputs([<liquid:tungsten_steel> * 628])
	.outputs(pumpIV)
	.EUt(3840)
	.duration(600)
	.buildAndRegister();

assembler.recipeBuilder()
	.inputs([<ore:cableGtSingleTungsten>, <ore:ringSiliconRubber> * 2, <ore:pipeMediumTungstenSteel>, motorIV])
	.fluidInputs([<liquid:tungsten_steel> * 628])
	.outputs(pumpIV)
	.EUt(3840)
	.duration(300)
	.buildAndRegister();

	#Enderium
vacfreezer.findRecipe(120, [<ore:ingotHotEnderium>.firstItem], [null])
	.remove();
vacfreezer.recipeBuilder()
	.inputs(<ore:ingotHotEnderium>)
	.outputs(<gregtech:meta_item_1:10800>)
	.duration(280)
	.EUt(120)
	.buildAndRegister();




	#concrete dust fix
	//compressor.findRecipe(800, [<ore:dustConcrete>.firstItem * 9], null).remove(); Goddamnit Ga.
	recipes.remove(<gregtech:concrete>);

	#Concrete_powder
solidifier.findRecipe(8, [<metaitem:shape.mold.block>], [<liquid:concrete> * 1296]).remove();
solidifier.recipeBuilder()
    .fluidInputs([<liquid:concrete> * 1296])
	.notConsumable(<metaitem:shape.mold.block>)
	.outputs(<gregtech:concrete> * 9)
	.duration(300)
	.EUt(14)
	.buildAndRegister();

    #Distllation Tower
recipes.remove(<meta_tile_entity:gregtech:distillation_tower>);
recipes.addShaped(<meta_tile_entity:gregtech:distillation_tower>, [
	[<ore:circuitHigh>, <ore:pipeLargeStainlessSteel>, <ore:circuitHigh>],
	[<metaitem:electric.pump.hv>, <meta_tile_entity:gregtech:hull.hv>, <metaitem:electric.pump.hv>],
	[<ore:circuitHigh>, <ore:pipeLargeStainlessSteel>, <ore:circuitHigh>]]);

	distillery.findRecipe(5120, [<gregtech:meta_item_1:32766>.withTag({Configuration: 1})], [<fluid:wood_gas>*1000]).remove();
	distillery.recipeBuilder()
	.fluidInputs([<liquid:wood_gas> * 1000])
	.notConsumable(integratedCircuit.withTag({Configuration: 1}))
	.fluidOutputs([<liquid:ethylene> * 200])
	.duration(80)
	.EUt(64)
	.buildAndRegister();
	
	
	#Ender Dust
macerator.findRecipe(8, [<minecraft:ender_pearl>], null).remove();
macerator.recipeBuilder()
    .inputs(<minecraft:ender_pearl>)
	.outputs(<ore:dustEnderPearl>.firstItem)
    .duration(40)
    .EUt(8)
    .buildAndRegister();
	
#remove base recipes and add back in oredicted glass
macerator.findRecipe(240, [<minecraft:glass>], null).remove();
macerator.recipeBuilder()
    .inputs(<ore:blockGlass>)
	.outputs(<ore:dustGlass>.firstItem)
    .duration(30)
    .EUt(8)
    .buildAndRegister();

	#Energy Output Hatch - MV
recipes.addShaped(<meta_tile_entity:gregtech:energy_hatch.output.mv>, [
	[<ore:cableGtDoubleRedAlloy>,<thaumcraft:mechanism_complex>,<ore:cableGtDoubleRedAlloy>],
	[<ore:plateGraphite>, <meta_tile_entity:gregtech:energy_hatch.output.lv>,<ore:plateGraphite>],
	[<ore:plateNetherQuartz>, <metaitem:component.small.coil>,<ore:plateNetherQuartz>]]);

	#Electronic Best Friend
recipes.remove(<meta_tile_entity:gregtech:electric_blast_furnace>);
recipes.addShaped(<meta_tile_entity:gregtech:electric_blast_furnace>,[
	[<ore:plateGraphite>, <gregtech:machine:50>, <ore:plateGraphite>],
	[<ore:plateGraphite>, <gregtech:metal_casing:2>, <ore:plateGraphite>],
	[<ore:cableGtSingleTin>, <ore:circuitLow>, <ore:cableGtSingleTin>]]);

	#Flint Axe (adding to JEI manually)
val starterAxe = <gregtech:meta_tool:3>.withTag({
	"GT.ToolStats": {
		PrimaryMaterial: "flint", 
		MaxDurability: 55, 
		DigSpeed: 6.0 as float, 
		AttackDamage: 1.0 as float, 
		HarvestLevel: 1}
	});
mods.jei.JEI.addItem(starterAxe);

	#Glass Dust
recipes.addShapeless(<ore:dustGlass>.firstItem, [<ore:blockGlass>, craftingToolMortar]);

	#iron hammer in artisan
val ironHammer = <gregtech:meta_tool:6>.withTag({
	CraftingComponents: [
		{id: "gregtech:meta_item_2",
		Count: 1 as byte,
		Damage: 5033 as short},
	{id: "minecraft:stick", Count: 1 as byte, Damage: 0 as short}],
	"GT.ToolStats": {PrimaryMaterial: "iron", HandleMaterial: "wood"}});

mods.jei.JEI.addItem(ironHammer);
ironHammer.addTooltip(format.darkRed("最初的铁锻造锤，可以在基础工作台中合成。"));
RecipeBuilder.get("basic")
	.setShaped([
		[<ore:ingotIron>, <ore:ingotIron>, null],
		[<ore:ingotIron>, <ore:ingotIron>, <ore:stickWood>],
		[<ore:ingotIron>, <ore:ingotIron>, null]])
	.addTool(<ore:artisanHammers>, 10)
	.addOutput(ironHammer)
	.create();


/*
	#fix weird rod recipes
var weirdRods as IItemStack[IItemStack] = {
	<ore:ingotAmericium>.firstItem:<ore:stickAmericium>.firstItem,
	<ore:ingotIron>.firstItem:<ore:stickIron>.firstItem,
	<ore:ingotDarmstadtium>.firstItem:<ore:stickDarmstadtium>.firstItem,
	<ore:ingotTitanium>.firstItem:<ore:stickTitanium>.firstItem,
	<ore:ingotBronze>.firstItem:<ore:stickBronze>.firstItem,
	<ore:ingotMagnalium>.firstItem:<ore:stickMagnalium>.firstItem,
	<ore:ingotStainlessSteel>.firstItem:<ore:stickStainlessSteel>.firstItem,
	<ore:ingotWroughtIron>.firstItem:<ore:stickWroughtIron>.firstItem,
	<ore:ingotHssg>.firstItem:<ore:stickHssg>.firstItem,
	<ore:ingotHsse>.firstItem:<ore:stickHsse>.firstItem,
	<ore:ingotNeutronium>.firstItem:<ore:stickNeutronium>.firstItem,
	<ore:ingotTungstenSteel>.firstItem:<ore:stickTungstenSteel>.firstItem,
	<ore:ingotNeodymiumMagnetic>.firstItem:<ore:stickNeodymiumMagnetic>.firstItem,
	};

for i,z in weirdRods {
	recipes.remove(z);
	recipes.addShaped(z, [
		[null, craftingToolFile, null],
		[null,i,null],
		[null,null,null]]);
}
*/
val ironFile = <gregtech:meta_tool:9>.withTag({
	CraftingComponents: [
		{id: "gregtech:meta_item_1", Count: 1 as byte, Damage: 12033 as short},
	{id: "minecraft:stick", Count: 1 as byte, Damage: 0 as short}],
	"GT.ToolStats": {PrimaryMaterial: "iron", HandleMaterial: "wood"}});

	mods.jei.JEI.addItem(ironFile);
	ironFile.addTooltip(format.darkRed("最初的铁锉，可以在基础工作台中合成。"));

	#iron hammer in artisan
RecipeBuilder.get("basic")
	.setShaped([
		[null, <ore:ingotIron>, null],
		[null, <ore:ingotIron>, null],
		[null, <ore:stickWood>, null]])
	.addTool(<ore:artisanHammers>, 10)
	.addOutput(ironFile)
	.create();

	#Remove Steam Electrolysis
electrolyzer.findRecipe(30, [], [<liquid:steam> * 3000]).remove();

	#Remove rubber smelting recipe
furnace.remove(<metaitem:rubber_drop>);

	#galium dust
mods.botania.ManaInfusion.addAlchemy(<ore:dustTinyGallium>.firstItem, <ore:dustBauxite>.firstItem, 5000);

	#Mozanite with Lutetium

spinnyGoFast.recipeBuilder()
	.inputs(<ore:crushedPurifiedMonazite>)
	.outputs(<ore:crushedCentrifugedMonazite>.firstItem)
	.chancedOutput(<ore:dustSmallLutetium>.firstItem, 2500)
	.chancedOutput(<ore:dustTinyNeodymium>.firstItem*3, 10000)
    .duration(1160)
    .EUt(60)
    .buildAndRegister();

	#alternate glue recipe
spinnyGoFast.recipeBuilder()
	.fluidInputs([<liquid:sap> * 100])
	.fluidOutputs([<liquid:glue> * 100])
	.chancedOutput(<thermalfoundation:material:832>, 500)
    .duration(300)
    .EUt(8)
    .buildAndRegister();


	#new Glycol production
chemReactor.recipeBuilder()
	.inputs(<ore:dustTinySodiumHydroxide>)
	.fluidInputs([<liquid:water> * 500, <liquid:fish_oil> * 500])
	.fluidOutputs([<liquid:glycerol> * 1000])
    .duration(600)
    .EUt(30)
    .buildAndRegister();

chemReactor.recipeBuilder()
	.inputs(<ore:dustTinySodiumHydroxide>)
	.fluidInputs([<liquid:water> * 500, <liquid:seed_oil> * 500])
	.fluidOutputs([<liquid:glycerol> * 1000])
    .duration(600)
    .EUt(30)
    .buildAndRegister();

	#Infused NitroDiesel
chemReactor.recipeBuilder()
	.inputs(<ore:dustTinyLithium>)
	.fluidInputs([<liquid:nitro_fuel> * 10000, <liquid:astralsorcery.liquidstarlight> * 5000])
	.fluidOutputs([<liquid:infused_nitrofuel> * 10000])
    .duration(80)
    .EUt(120)
    .buildAndRegister();

	#Potassium Nitrate
chemical_bath.recipeBuilder()
	.inputs(<ore:dustPotassium>)
	.fluidInputs([<liquid:nitric_acid> * 144])
	.outputs(<ore:dustNiter>.firstItem)
    .duration(160)
    .EUt(18)
    .buildAndRegister();

	#Lithium Chloride
chemReactor.recipeBuilder()
	.fluidInputs([<liquid:liquidlithium> * 100, <liquid:chlorine> * 100])
	.fluidOutputs([<liquid:lithiumchloride> * 200])
    .duration(20)
    .EUt(16)
    .buildAndRegister();

	#Lithium
chemReactor.recipeBuilder()
	.inputs(<ore:dustPotassium>)
	.fluidInputs([<liquid:lithiumchloride> * 1000])
	.fluidOutputs([<liquid:potassiumchloride> * 500])
	.outputs(<ore:dustLithium>.firstItem)
    .duration(250)
    .EUt(16)
    .buildAndRegister();

	#recover potassium
electrolyzer.recipeBuilder()
	.fluidInputs([<liquid:potassiumchloride> * 1000])
	.fluidOutputs([<liquid:chlorine> * 1000])
	.outputs(<ore:dustPotassium>.firstItem)
    .duration(850)
    .EUt(16)
    .buildAndRegister();

	#rubber from resin
chemReactor.recipeBuilder()
	.inputs(<ore:dustSulfur>)
	.fluidInputs([<liquid:resin> * 100])
	.fluidOutputs([<liquid:rubber> * 1296])
    .duration(600)
    .EUt(16)
    .buildAndRegister();

extractor.findRecipe(307200, [<minecraft:egg>], []).remove();

	#menril crystals
extractor.recipeBuilder()
    .inputs(<integrateddynamics:menril_log>)
    .outputs(<ore:crystalMenril>.firstItem*4)
    .duration(20)
    .EUt(8)
    .buildAndRegister();	
	
	
	#stemcells
mixer.recipeBuilder()
    .inputs(<harvestcraft:soymilkitem>,<minecraft:egg>,<minecraft:sugar>*2, <enderio:item_material:75>)
    .fluidInputs([<liquid:lifeessence> * 1000])
    .outputs(<metaitem:stemcells>)
    .duration(800)
    .EUt(320)
    .buildAndRegister();
	

	#iron hammer head
recipes.remove(<ore:toolHeadHammerIron>.firstItem);
recipes.addShaped(<ore:toolHeadHammerIron>.firstItem,[
	[<ore:ingotiron>,<ore:ingotiron>,null],
	[<ore:ingotiron>,<ore:ingotiron>,craftingToolHardHammer],
	[<ore:ingotiron>,<ore:ingotiron>,null]]);

	#Multi-Smelter
recipes.remove(<meta_tile_entity:gregtech:multi_furnace>);
recipes.addShaped(<meta_tile_entity:gregtech:multi_furnace>, [
	[<meta_tile_entity:gregtech:electric_furnace.lv>, <gregtech:metal_casing:2>, <meta_tile_entity:gregtech:electric_furnace.lv>],
	[<ore:circuitHigh>, <gregtech:metal_casing:2>, <ore:circuitHigh>],
	[<ore:cableGtSingleAnnealedCopper>, <ore:circuitHigh>, <ore:cableGtSingleAnnealedCopper>]]);

	#Primitive blast bricks
recipes.remove(<gregtech:metal_casing:1>);
RecipeBuilder.get("basic")
	.setShaped([
		[<metaitem:brick.fireclay>, <metaitem:brick.fireclay>, null],
		[<metaitem:brick.fireclay>, <metaitem:brick.fireclay>, null],
		[null, null, null]])
	.setFluid(<liquid:creosote>*50)
	.addTool(<ore:artisanHammers>, 10)
	.addOutput(	<gregtech:metal_casing:1>)
	.create();

	#Rocket Fuel Removal (no ammonia chain)
chemReactor.findRecipe(388,
	[integratedCircuit.withTag({Configuration: 1})],
	[<liquid:oxygen> * 500, <liquid:hydrogen> * 3000, <liquid:nitrogen_dioxide> * 1000]).remove();

mixer.findRecipe(960,
	[],
	[<liquid:oxygen> * 1000, <liquid:dimethylhidrazine> * 1000]).remove();	

mixer.findRecipe(16,
	[],
	[<liquid:oxygen> * 1000, <liquid:dimethylhidrazine> * 1000]).remove();	
	
mixer.findRecipe(960,
	[],
	[<liquid:dinitrogen_tetroxide> * 1000, <liquid:dimethylhidrazine> * 1000]).remove();	
	
mixer.findRecipe(960,
	[],
	[<liquid:dinitrogen_tetroxide> * 1000, <liquid:dimethylhidrazine> * 1000]).remove();		

chemReactor.findRecipe(388000,
	[<gregtech:meta_item_1:32766>.withTag({Configuration: 1})],
	[<liquid:oxygen> * 500, <liquid:hydrogen> * 3000, <liquid:nitrogen_dioxide> * 1000]).remove();	
	
chemReactor.recipeBuilder()
	.fluidInputs([<liquid:cryogenicoxygen> * 1000, <liquid:cryogenichydrogen> * 1000])
	.fluidOutputs([<liquid:rocket_fuel> * 1000])
    .duration(220)
    .EUt(48)
    .buildAndRegister();
	
	#Removing Methane from Apples
spinnyGoFast.findRecipe(5, [<minecraft:apple>], []).remove();
	
	#remove redundant GT coke brick
recipes.removeByRecipeName("gtadditions:coke_brick");
mods.jei.JEI.hide(<metaitem:compressed.coke.clay>);
mods.jei.JEI.hide(<gtadditions:ga_multiblock_casing>);
	
	#Salt
mods.gregtech.recipe.RecipeMap.getByName("fluid_solidifier").recipeBuilder()
	.fluidInputs([<liquid:brine> * 144])
	.notConsumable(<metaitem:shape.mold.ball>)
	.outputs(<ore:dustSalt>.firstItem)
    .duration(600)
    .EUt(16)
    .buildAndRegister();
	
	#neutronium
	fusionReactor.findRecipe(19660800,
	[],
	[<liquid:americium> * 16, <liquid:naquadria> * 16]).remove();			

	fusionReactor.recipeBuilder()
	.fluidInputs([<liquid:americium> * 16, <liquid:naquadria>*16])
    .fluidOutputs(<liquid:neutronium> * 2)
    .duration(200)
    .EUt(61440)
    .property("eu_to_start", 1000000)
    .buildAndRegister();

	
	#Max Rotor holder recipe
	recipes.remove(<gregtech:machine:819>);
	recipes.addShaped(<gregtech:machine:819>, 
	[[<ore:wireGtHexSuperconductor>, <draconicevolution:draconic_core>, <ore:wireGtHexSuperconductor>],
	[<ore:wireGtHexSuperconductor>, <ore:gearHsss>, <ore:wireGtHexSuperconductor>], 
	[<ore:wireGtHexSuperconductor>, <ore:wireGtHexSuperconductor>, <ore:wireGtHexSuperconductor>]]);

   #Steam Alloy Smelter
recipes.remove(<gregtech:machine:17>);
recipes.addShaped(<gregtech:machine:17>, [
	[<ore:pipeSmallBronze>, <ore:pipeSmallBronze>, <ore:pipeSmallBronze>],
	[<minecraft:brick_block>, <gregtech:machine_casing:11>, <minecraft:brick_block>],
	[<ore:pipeSmallBronze>, <ore:pipeSmallBronze>, <ore:pipeSmallBronze>]]);

   #Steam Alloy Smelter - High Pressure
recipes.remove(<gregtech:machine:18>);
recipes.addShaped(<gregtech:machine:18>, [
	[<ore:pipeSmallSteel>, <ore:pipeSmallSteel>, <ore:pipeSmallSteel>],
	[<minecraft:brick_block>, <gregtech:machine_casing:13>, <minecraft:brick_block>],
	[<ore:pipeSmallSteel>, <ore:pipeSmallSteel>, <ore:pipeSmallSteel>]]);

   #Steam Coal Boiler
recipes.remove(<gregtech:machine:1>);
recipes.addShaped(<gregtech:machine:1>, [
	[<ore:plateBronze>, <ore:plateBronze>, <ore:plateBronze>],
	[<ore:plateBronze>, craftingToolHardHammer, <ore:plateBronze>],
	[<minecraft:brick_block>, <minecraft:brick_block>, <minecraft:brick_block> ]]);

	#Steam Coal Boiler - High Pressure
recipes.remove(<gregtech:machine:2>);
recipes.addShaped(<gregtech:machine:2>, [
	[<ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>],
	[<ore:plateSteel>, craftingToolHardHammer, <ore:plateSteel>],
	[<minecraft:brick_block>, <minecraft:brick_block>, <minecraft:brick_block>]]);

	#Steam Furnace
recipes.remove(<gregtech:machine:15>);
recipes.addShaped(<gregtech:machine:15>,[
	[<ore:pipeSmallBronze>, <ore:pipeSmallBronze>, <ore:pipeSmallBronze>],
	[<ore:pipeSmallBronze>, <gregtech:machine_casing:11>, <ore:pipeSmallBronze>],
	[<ore:pipeSmallBronze>, <minecraft:brick_block>, <ore:pipeSmallBronze>]]);

	#Steam Furnace - High Pressure
recipes.remove(<gregtech:machine:16>);
recipes.addShaped(<gregtech:machine:16>,[
	[<ore:pipeSmallSteel>, <ore:pipeSmallSteel>, <ore:pipeSmallSteel>],
	[<ore:pipeSmallSteel>, <gregtech:machine_casing:13>, <ore:pipeSmallSteel>],
	[<ore:pipeSmallSteel>, <minecraft:brick_block>, <ore:pipeSmallSteel>]]);

	#steel boiler fix
recipes.remove(<gregtech:machine_casing:13>);
recipes.addShaped(<gregtech:machine_casing:13>,
	[[<ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>],
	[<ore:plateBrass>, craftingToolHardHammer, <ore:plateBrass>],
	[<minecraft:brick_block>, <minecraft:brick_block>, <minecraft:brick_block>]]);

	#new coke oven hatch recipe
recipes.remove(<meta_tile_entity:gregtech:coke_oven_hatch>);
recipes.addShaped(<meta_tile_entity:gregtech:coke_oven_hatch>, [
	[null, null, null],
	[<minecraft:bucket>, <gregtech:metal_casing:8>, <minecraft:bucket>], 
	[null, null, null]]);

	
	#coke brick mining levels
var cokeOven = <gregtech:machine:526> as IBlock;
cokeOven.definition.setHarvestLevel("pickaxe", 1);

var cokeOvenCasing = <gregtech:metal_casing:8> as IBlock;
cokeOvenCasing.definition.setHarvestLevel("pickaxe", 1);
	
var cokeOvenInterface = <gregtech:machine:527> as IBlock;
cokeOvenInterface.definition.setHarvestLevel("pickaxe", 1);	
	
    #Steel Ingot
<ore:ingotSteel>.firstItem.addTooltip(format.darkRed("可在土高炉中制造"));
// findRecipe(long voltage, IItemHandlerModifiable inputs, IMultipleTankHandler/List<FluidStack> fluidInputs)
RecipeMap.getByName("blast_furnace").findRecipe(120, [<ore:ingotIron>.firstItem], [<liquid:oxygen> * 1000]).remove();
RecipeMap.getByName("blast_furnace").recipeBuilder()
	.inputs([<ore:ingotIron>.firstItem, <ore:dustTinyCarbon>.firstItem | <ore:dustTinyCoal>.firstItem])
	.fluidInputs(<liquid:oxygen> * 1000)
	.outputs([<ore:ingotSteel>.firstItem, <ore:dustSmallDarkAsh>.firstItem])
	.duration(500)
	.EUt(120)
	.buildAndRegister();

RecipeMap.getByName("blast_furnace").findRecipe(120, [<ore:ingotPigIron>.firstItem], [<liquid:oxygen> * 1000]).remove();
RecipeMap.getByName("blast_furnace").recipeBuilder()
	.inputs([<ore:ingotPigIron>.firstItem, <ore:dustTinyCarbon>.firstItem | <ore:dustTinyCoal>.firstItem])
	.fluidInputs(<liquid:oxygen> * 1000)
	.outputs([<ore:ingotSteel>.firstItem, <ore:dustSmallDarkAsh>.firstItem])
	.duration(100)
	.EUt(120)
	.buildAndRegister();

RecipeMap.getByName("blast_furnace").findRecipe(120, [<ore:ingotWroughtIron>.firstItem], [<liquid:oxygen> * 1000]).remove();
RecipeMap.getByName("blast_furnace").recipeBuilder()
	.inputs([<ore:ingotWroughtIron>.firstItem, <ore:dustTinyCarbon>.firstItem | <ore:dustTinyCoal>.firstItem])
	.fluidInputs(<liquid:oxygen> * 1000)
	.outputs([<ore:ingotSteel>.firstItem, <ore:dustSmallDarkAsh>.firstItem])
	.duration(100)
	.EUt(120)
	.buildAndRegister();

	#gravistar
autoclave.findRecipe(3686400, [<minecraft:nether_star>], [<liquid:neutronium> * 288]).remove();
RecipeMap.getByName("blast_furnace").recipeBuilder()
	.inputs([<ore:ingotCosmicNeutronium>, <ore:dustNetherStar>])
	.fluidInputs(<liquid:helium> * 2000)
	.outputs([<metaitem:gravistar>])
	.duration(500)
	.property("temperature", 7200)
	.EUt(480)
	.buildAndRegister();	
	
	#Tanks
mods.jei.JEI.removeAndHide(<gregtech:machine:811>);
mods.jei.JEI.removeAndHide(<gregtech:machine:812>);
mods.jei.JEI.removeAndHide(<gregtech:machine:813>);
mods.jei.JEI.removeAndHide(<gregtech:machine:814>);
mods.jei.JEI.removeAndHide(<gregtech:machine:815>);
mods.jei.JEI.removeAndHide(<gregtech:machine:816>);

	#Vacuum Freezer
recipes.remove(<gregtech:machine:512>);
recipes.addShaped(<gregtech:machine:512>, [
	[<metaitem:electric.pump.hv>,<metaitem:electric.pump.hv>,<metaitem:electric.pump.hv>],
	[<ore:alloyUltimate>,<gregtech:metal_casing:3>,<ore:alloyUltimate>],
	[<ore:cableGtSingleGold>,<ore:alloyUltimate>,<ore:cableGtSingleGold>]]);

	#wood gear
recipes.remove(<ore:gearWood>.firstItem);
recipes.addShaped(<ore:gearWood>.firstItem, [
	[null,<ore:stickWood>,null],
	[<ore:stickWood>,null,<ore:stickWood>],
	[null,<ore:stickWood>,null]]);

/////////////////////////////////////////////////////
	#Furnace Removals
var gtFurnaceRemovals as string[][IIngredient] = {
	<ore:coal> : ["Coal"],
	<ore:dustChromite> : ["Chromite"],
	<ore:dustGlauconite> : ["Glauconite"],
	<ore:dustGalena> : ["Galena"],
	<ore:dustGrossular> : ["Grossular"],
	<ore:dustIlmenite> : ["Ilmenite"],
	<ore:dustLepidolite> : ["Lepidolite"],
	<ore:dustPhosphor> : ["Phosphor"],
	<ore:dustRedstone> : ["Redstone"],
	<ore:dustScheelite> : ["Scheelite"],
	<ore:dustSpessartine> : ["Spessartine"],
	<ore:dustSoapstone> : ["Soapstone"],
	<ore:dustSpodumene> : ["Spodumene"],
	<ore:dustSulfur> : ["Sulfur"],
	<ore:dustTalc> : ["Talc"],
	<ore:dustTantalite> : ["Tantalite"],
	<ore:dustTennantite> : ["Tennantite"],
	<ore:dustTungstate> : ["Tungstate"],
	<ore:dustUraninite> : ["Uraninite"],
	<ore:dustVanadiumMagnetite> : ["VanadiumMagnetite"],
	<ore:ingotAntimony> : ["Stibnite"],
	<ore:ingotBeryllium> : ["Beryllium"],
	<ore:ingotBismuth> : ["Bismuth"],
	<ore:ingotCobalt> : ["Cobalt"],
	<ore:ingotCopper> : [
		"Copper",
		"Tetrahedrite",
		"Malachite",
		"Chalcopyrite",
		"Chalcocite",
		"Tenorite",
		"Bornite",
		"Cuprite"
	],
	<ore:ingotGold>: ["Gold"],
	<ore:ingotGraphite> : ["Graphite"],
	<ore:ingotIron> : [
		"Iron",
		"YellowLimonite",
		"Pyrite",
		"BandedIron",
		"Magnetite",
		"BrownLimonite"
	],
	<ore:ingotLithium> : ["Lithium"],
	<ore:ingotMolybdenum> : ["Molybdenum"],
	<ore:ingotNickel> : [
		"Garnierite",
		"Nickel",
		"Pentlandite"
	],
	<ore:ingotPlatinum> : [
		"Platinum",
		"Cooperite"
	],
	<ore:ingotLead> : ["Lead"],
	<ore:ingotMagnesium> : ["Magnesite"],
	<ore:ingotManganese>: ["Pyrolusite"],
	<ore:ingotSilver> : ["Silver"],
	<ore:ingotTin> : [
		"Tin",
		"Cassiterite",
		"CassiteriteSand",
	],
	<ore:ingotThorium> : ["Thorium"],
	<ore:ingotUranium235> : ["Uranium235"],
	<ore:ingotUranium> : ["Uranium"],
	<ore:ingotZinc> : ["Sphalerite", "Zinc"],

	<ore:gemAerInfused> : ["AerInfused"],
	<ore:gemAlmandine> : ["Almandine"],
	<ore:gemAmethyst> : ["Amethyst"],
	<ore:gemApatite> : ["Apatite"],
	<ore:gemAquaInfused> : ["AquaInfused"],
	<ore:gemCertusQuartz>: ["CertusQuartz"],
	<ore:gemCinnabar> : ["Cinnabar"],
	<ore:gemDiamond> : ["Diamond"],
	<ore:gemEmerald> : ["Emerald"],
	<ore:gemEntropyInfused> : ["EntropyInfused"],
	<ore:gemGarnetRed> : ["GarnetRed"],
	<ore:gemIgnisInfused> : ["IgnisInfused"],
	<ore:gemLapis> : ["Lapis"],
	<ore:gemLignite> : ["Lignite"],
	<ore:gemOpal> : ["Opal"],
	<ore:gemMonazite> : ["Monazite"],
	<ore:gemOlivine> : ["Olivine"],
	<ore:gemOrdoInfused> : ["OrdoInfused"],
	<ore:gemQuartzite> : ["Quarzite"],
	<ore:gemRuby> : ["Ruby"],
	<ore:gemRutile> : ["Rutile"],
	<ore:gemSapphire> : ["Sapphire"],
	<ore:gemSodalite> : ["Sodalite"],
	<ore:gemTerraInfused> : ["TerraInfused"],
	<ore:gemGreenSapphire> : ["GreenSapphire"],
};

for furnaceOutput, furnaceInputs in gtFurnaceRemovals {
	for i in furnaceInputs {
		furnace.remove(furnaceOutput, oreDict["ore" +i]);
		furnace.remove(furnaceOutput, oreDict["oreBasalt" +i]);
		furnace.remove(furnaceOutput, oreDict["oreBlackgranite" +i]);
		furnace.remove(furnaceOutput, oreDict["oreEndstone" +i]);
		furnace.remove(furnaceOutput, oreDict["oreGravel" +i]);
		furnace.remove(furnaceOutput, oreDict["oreMarble" +i]);
		furnace.remove(furnaceOutput, oreDict["oreNetherrack" +i]);
		furnace.remove(furnaceOutput, oreDict["oreRedgranite" +i]);
		furnace.remove(furnaceOutput, oreDict["oreSand" +i]);
	}
}


#flawed gemShapecraft removal
var gemDisable as IItemStack[]= [
	<ore:gemFlawedAlmandine>.firstItem,
	<ore:gemFlawedBlueTopaz>.firstItem,
	<ore:gemFlawedCertusQuartz>.firstItem,
	<ore:gemFlawedRuby>.firstItem,
	<ore:gemFlawedSapphire>.firstItem,
	<ore:gemFlawedSodalite>.firstItem,
	<ore:gemFlawedTanzanite>.firstItem,
	<ore:gemFlawedTopaz>.firstItem,
	<ore:gemFlawedNetherQuartz>.firstItem,
	<ore:gemFlawedQuartzite>.firstItem,
	<ore:gemFlawedJasper>.firstItem,
	<ore:gemFlawedGlass>.firstItem,
	<ore:gemFlawedLignite>.firstItem,
	<ore:gemFlawedOlivine>.firstItem,
	<ore:gemFlawedOpal>.firstItem,
	<ore:gemFlawedAmethyst>.firstItem,
	<ore:gemFlawedLapis>.firstItem,
	<ore:gemFlawedApatite>.firstItem,
	<ore:gemFlawedGarnetRed>.firstItem,
	<ore:gemFlawedGarnetYellow>.firstItem,
	<ore:gemFlawedVinteum>.firstItem,
	<ore:gemFlawedMonazite>.firstItem,
	<ore:gemFlawedSkystone>.firstItem,
	<ore:gemFlawedCinnabar>.firstItem,
	<ore:gemFlawedCoal>.firstItem,
	<ore:gemFlawedEmerald>.firstItem,
	<ore:gemFlawedDiamond>.firstItem,
	<ore:gemFlawedGreenSapphire>.firstItem,
	<ore:gemFlawedRutile>.firstItem,
	<ore:gemFlawedLazurite>.firstItem
	];

for i in gemDisable {
	recipes.remove(i);
}


	#Starter Cables being Added to Assembler
var carpetCableFixSingle as IOreDictEntry[IOreDictEntry] = {
		<ore:wireGtSingleTin> : <ore:cableGtSingleTin>,
		<ore:wireGtSingleRedAlloy> : <ore:cableGtSingleRedAlloy>,
		<ore:wireGtSingleCobalt> : <ore:cableGtSingleCobalt>,
		<ore:wireGtSingleSolderingAlloy> : <ore:cableGtSingleSolderingAlloy>,
		<ore:wireGtSingleZinc> : <ore:cableGtSingleZinc>,
		<ore:cableGtSingleLead> : <ore:wireGtSingleLead>
		};
for input, output in carpetCableFixSingle {
	assembler.recipeBuilder()
		.inputs(input.firstItem)
		.property("circuit", 24)
		.fluidInputs(<liquid:rubber> * 144)
		.outputs(output.firstItem)
		.duration(150)
		.EUt(8)
		.buildAndRegister();
}

var carpetCableFixDouble as IOreDictEntry[IOreDictEntry] = {
		<ore:wireGtDoubleTin> : <ore:cableGtDoubleTin>,
		<ore:wireGtDoubleRedAlloy> : <ore:cableGtDoubleRedAlloy>,
		<ore:wireGtDoubleCobalt> : <ore:cableGtDoubleCobalt>,
		<ore:wireGtDoubleSolderingAlloy> : <ore:cableGtDoubleSolderingAlloy>,
		<ore:wireGtDoubleZinc> : <ore:cableGtDoubleZinc>,
		 <ore:wireGtDoubleLead> : <ore:cableGtDoubleLead>
	};
for input, output in carpetCableFixDouble {
	assembler.recipeBuilder()
		.inputs(input.firstItem)
		.fluidInputs(<liquid:rubber> * 288)
		.property("circuit", 24)
		.outputs(output.firstItem)
		.duration(150)
		.EUt(8)
		.buildAndRegister();
}

var carpetCableFixQuadruple as IOreDictEntry[IOreDictEntry] = {
		<ore:wireGtQuadrupleTin> : <ore:cableGtQuadrupleTin>,
		<ore:wireGtQuadrupleRedAlloy>: <ore:cableGtQuadrupleRedAlloy>,
		<ore:wireGtQuadrupleCobalt> : <ore:cableGtQuadrupleCobalt>,
		<ore:wireGtQuadrupleSolderingAlloy> : <ore:cableGtQuadrupleSolderingAlloy>,
		<ore:wireGtQuadrupleZinc> : <ore:cableGtQuadrupleZinc>,
		<ore:cableGtQuadrupleLead> : <ore:wireGtQuadrupleLead>
};
for input, output in carpetCableFixQuadruple {
	assembler.recipeBuilder()
		.inputs(input.firstItem)
		.fluidInputs(<liquid:rubber> * 576)
		.property("circuit", 24)
		.outputs(output.firstItem)
		.duration(150)
		.EUt(8)
		.buildAndRegister();
}

var carpetCableFixOctal as IOreDictEntry[IOreDictEntry] = {
		<ore:wireGtOctalTin> : <ore:cableGtOctalTin>,
		<ore:wireGtOctalRedAlloy> : <ore:cableGtOctalRedAlloy>,
		<ore:wireGtOctalCobalt> : <ore:cableGtOctalCobalt>,
		<ore:wireGtOctalSolderingAlloy> : <ore:cableGtOctalSolderingAlloy>,
		<ore:wireGtOctalZinc> : <ore:cableGtOctalZinc>,
		<ore:cableGtOctalLead> : <ore:wireGtOctalLead>
};
for input, output in carpetCableFixOctal {
	assembler.recipeBuilder()
		.inputs(input.firstItem)
		.fluidInputs(<liquid:rubber> * 1152)
		.property("circuit", 24)
		.outputs(output.firstItem)
		.duration(150)
		.EUt(8)
		.buildAndRegister();
}

var carpetCableFixHex as IOreDictEntry[IOreDictEntry] = {
		<ore:wireGtHexTin> : <ore:cableGtHexTin>,
		<ore:wireGtHexRedAlloy> : <ore:cableGtHexRedAlloy>,
		<ore:wireGtHexCobalt> : <ore:cableGtHexCobalt>,
		<ore:wireGtHexSolderingAlloy> : <ore:cableGtHexSolderingAlloy>,
		<ore:wireGtHexZinc> : <ore:cableGtHexZinc>,
		<ore:cableGtHexLead> : <ore:wireGtHexLead>
};
for input, output in carpetCableFixHex {
	assembler.recipeBuilder()
		.inputs(input.firstItem)
		.fluidInputs(<liquid:rubber> * 2304)
		.property("circuit", 24)
		.outputs(output.firstItem)
		.duration(150)
		.EUt(8)
		.buildAndRegister();
}

	#uranium processing
chemReactor.recipeBuilder()
	.inputs(<ore:dustUranium235>)
	.fluidInputs([<liquid:hydrofluoric_acid> * 60])
	.fluidOutputs([<liquid:uraniumhexafluoride> * 2000])
    .duration(120)
    .EUt(480)
    .buildAndRegister();

	#remove small dust to nugget casting
<ore:nuggetCobalt>.remove(<tconstruct:nuggets>);
furnace.remove(<ore:nuggetCobalt>.firstItem, <ore:dustTinyCobalt>.firstItem);
mods.tconstruct.Casting.removeTableRecipe(<ore:nuggetOsmium>.firstItem);

	#Uranium from Thorium transmutation
	mods.astralsorcery.LightTransmutation.addTransmutation(<ore:oreThorium>.firstItem, <gregtech:ore_uranium_0>, 300);

	#super conductor cable covered
assembler.recipeBuilder()
	.inputs(<ore:wireGtSingleSuperconductor>, <ore:wireFineOsmium>)
	.fluidInputs([<liquid:polytetrafluoroethylene> * 100])
	.notConsumable(<metaitem:circuit.integrated>.withTag({Configuration: 24}))
	.outputs(<ore:cableGtSingleSuperconductor>.firstItem)
    .duration(120)
    .EUt(480)
    .buildAndRegister();

#mekanism hydrogen and oxygen
chemReactor.recipeBuilder()
	.notConsumable(<metaitem:circuit.integrated>.withTag({Configuration: 1}))
	.fluidInputs([<liquid:oxygen> * 1000])
	.fluidOutputs([<liquid:liquidoxygen> * 1000])
    .duration(20)
    .EUt(28)
    .buildAndRegister();

chemReactor.recipeBuilder()
	.notConsumable(<metaitem:circuit.integrated>.withTag({Configuration: 1}))
	.fluidInputs([<liquid:hydrogen> * 1000])
	.fluidOutputs([<liquid:liquidhydrogen> * 1000])
    .duration(20)
    .EUt(28)
    .buildAndRegister();


#Iron rod crafted
recipes.remove(<ore:stickIron>.firstItem);
recipes.addShaped(<ore:stickIron>.firstItem,
	[[craftingToolFile, null, null],
	[null, <ore:ingotIron>, null],
	[null, null, null]]);

#smelt to flawed quartzite
furnace.addRecipe(<ore:gemFlawedQuartzite>.firstItem, <ore:oreQuartzite>);
	
#Gold rod crafted
recipes.remove(<ore:stickGold>.firstItem);
recipes.addShaped(<ore:stickGold>.firstItem,
	[[craftingToolFile, null, null],
	[null, <ore:ingotGold>, null],
	[null, null, null]]);

	#Cracker Recipes Re-Add
var hydrogenCrackerMap as ILiquidStack[ILiquidStack] = {
	<liquid:butadiene> : <liquid:hydrocracked_butadiene>,
	<liquid:butene>  : <liquid:hydrocracked_butene>,
	<liquid:gas> : <liquid:hydrocracked_gas>,
	<liquid:heavy_fuel> : <liquid:hydrocracked_heavy_fuel>,
	<liquid:naphtha> : <liquid:hydrocracked_naphtha>,
	<liquid:butane> : <liquid:hydrocracked_butane>,
	<liquid:light_fuel> : <liquid:hydrocracked_light_fuel>,
	<liquid:propane> : <liquid:hydrocracked_propane>,
	<liquid:propene> : <liquid:hydrocracked_propene>,
	<liquid:ethylene> : <liquid:hydrocracked_ethylene>,
	<liquid:ethane> : <liquid:hydrocracked_ethane>
};

for gas, gasCracked in hydrogenCrackerMap {
	cracker.recipeBuilder()
		.fluidInputs([<liquid:hydrogen> * 2000, gas * 1000])
		.fluidOutputs(gasCracked * 1000)
		.duration(40)
		.EUt(120)
		.buildAndRegister();
}

var steamCrackerMap as ILiquidStack[ILiquidStack] = {
	<liquid:butadiene> : <liquid:steamcracked_butadiene>,
	<liquid:butene>  : <liquid:steamcracked_butene>,
	<liquid:gas> : <liquid:steamcracked_gas>,
	<liquid:heavy_fuel> : <liquid:cracked_heavy_fuel>,
	<liquid:naphtha> : <liquid:steamcracked_naphtha>,
	<liquid:butane> : <liquid:steamcracked_butane>,
	<liquid:light_fuel> : <liquid:cracked_light_fuel>,
	<liquid:propane> : <liquid:steamcracked_propane>,
	<liquid:propene> : <liquid:steamcracked_propene>,
	<liquid:ethylene> : <liquid:steamcracked_ethylene>,
	<liquid:ethane> : <liquid:steamcracked_ethane>
};

for gas, gasCracked in steamCrackerMap {
	cracker.recipeBuilder()
		.fluidInputs([<liquid:steam> * 2000, gas * 1000])
		.fluidOutputs(gasCracked * 1000)
		.duration(40)
		.EUt(120)
		.buildAndRegister();
}





	#high tier circuits
	#Neuro CPU
assembly_line.findRecipe(80000, [<ore:foilSiliconRubber>.firstItem * 64, <metaitem:stemcells> * 8, <metaitem:component.glass.tube> * 8, 
	<ore:plateGold>.firstItem * 8, <ore:plateStainlessSteel>.firstItem * 4, <metaitem:board.wetware>],
	[<liquid:sterilized_growth_medium> * 250, <liquid:uumatter> * 100, <liquid:water> * 250, <liquid:lava> * 1000])
	.remove();
assembly_line.recipeBuilder()
	.inputs([<ore:foilSiliconRubber>.firstItem * 64, <waterstrainer:super_worm>, <metaitem:component.glass.tube> * 8, 
	<ore:plateGold>.firstItem * 8, <ore:plateStainlessSteel>.firstItem * 4, <metaitem:board.wetware>])
	.fluidInputs([<liquid:sterilized_growth_medium> * 250, <liquid:positive_matter> * 50, <liquid:neutral_matter> * 50])
	.outputs([<metaitem:processor.neuro>])
	.duration(200)
	.EUt(30720)
	.buildAndRegister();

	# Wetware supercomputer - <gregtech:meta_item_2:32500> - <metaitem:circuit.wetware_super_computer>
assembler.findRecipe(13760000, [<ore:wireFineYttriumBariumCuprate>.firstItem *6, <metaitem:component.smd.diode>*4, 
	<metaitem:plate.nor_memory_chip> *4, <metaitem:plate.random_access_memory>*4, <ore:circuitUltimate>.firstItem*3, <metaitem:board.wetware>*2], [<liquid:tin> * 288]).remove();
assembler.findRecipe(13760000, [<ore:wireFineYttriumBariumCuprate>.firstItem *6, <metaitem:component.smd.diode>*4, 
	<metaitem:plate.nor_memory_chip> *4, <metaitem:plate.random_access_memory>*4, <ore:circuitUltimate>.firstItem*3, <metaitem:board.wetware>*2], [<liquid:soldering_alloy> * 144]).remove();
	
assembly_line.recipeBuilder()
	.inputs(<ore:wireFineYttriumBariumCuprate>.firstItem *6, <metaitem:component.smd.diode>*4, 
	<metaitem:plate.nor_memory_chip> *4, <metaitem:plate.random_access_memory>*4, <ore:circuitUltimate>.firstItem*3, <metaitem:processor.neuro>*2)
    .outputs(<metaitem:circuit.wetware_super_computer>)
	.fluidInputs([<liquid:tin> * 288])
    .duration(400)
    .EUt(34400)
    .buildAndRegister();
		
assembly_line.recipeBuilder()
	.inputs(<ore:wireFineYttriumBariumCuprate>.firstItem *6, <metaitem:component.smd.diode>*4, 
	<metaitem:plate.nor_memory_chip> *4, <metaitem:plate.random_access_memory>*4, <ore:circuitUltimate>.firstItem*3, <metaitem:processor.neuro>*2)
    .outputs(<metaitem:circuit.wetware_super_computer>)
	.fluidInputs([<liquid:soldering_alloy> * 144])
    .duration(400)
    .EUt(34400)
    .buildAndRegister();
	
	#Wetware assembly - <gregtech:meta_item_2:32499> - <metaitem:circuit.wetware_assembly> - <ore:circuitUltimate>
assembler.findRecipe(13760000, [<ore:wireFineYttriumBariumCuprate>.firstItem *6, <metaitem:component.small_coil>*4, <metaitem:component.smd.capacitor>*4, 
	<metaitem:plate.random_access_memory>*4, <metaitem:circuit.wetware_processor>*2, <metaitem:board.wetware>], [<liquid:tin> * 288]).remove();

assembler.findRecipe(13760000, [<ore:wireFineYttriumBariumCuprate>.firstItem *6, <metaitem:component.small_coil>*4, <metaitem:component.smd.capacitor>*4, 
	<metaitem:plate.random_access_memory>*4, <metaitem:circuit.wetware_processor>*2, <metaitem:board.wetware>], [<liquid:soldering_alloy> * 144]).remove();	

assembly_line.recipeBuilder()
	.inputs(<ore:wireFineYttriumBariumCuprate>.firstItem *6, <metaitem:component.small_coil>*4, <metaitem:component.smd.capacitor>*4, 
	<metaitem:plate.random_access_memory>*4, <metaitem:circuit.wetware_processor>*2, <metaitem:processor.neuro>)
    .outputs(<metaitem:circuit.wetware_assembly>)
	.fluidInputs([<liquid:soldering_alloy> * 144])
    .duration(400)
    .EUt(34400)
    .buildAndRegister();	
	
assembly_line.recipeBuilder()
	.inputs(<ore:wireFineYttriumBariumCuprate>.firstItem *6, <metaitem:component.small_coil>*4, <metaitem:component.smd.capacitor>*4, 
	<metaitem:plate.random_access_memory>*4, <metaitem:circuit.wetware_processor>*2, <metaitem:processor.neuro>)
    .outputs(<metaitem:circuit.wetware_assembly>)
	.fluidInputs([<liquid:tin> * 288])
    .duration(400)
    .EUt(34400)
    .buildAndRegister();	
		

	#wetware processor - <gregtech:meta_item_2:32498> - <ore:circuitMaster> 
assembler.findRecipe(6560000, [<metaitem:component.smd.capacitor>*2,<metaitem:component.smd.transistor>*2, 
	<ore:wireFineYttriumBariumCuprate>.firstItem *2, <metaitem:board.wetware>,
	<metaitem:crystal.central_processing_unit>, <metaitem:plate.nano_central_processing_unit> ], 
	[<liquid:soldering_alloy> * 144]).remove();		
assembler.findRecipe(6560000, [<metaitem:component.smd.capacitor>*2,<metaitem:component.smd.transistor>*2, 
	<ore:wireFineYttriumBariumCuprate>.firstItem *2, <metaitem:board.wetware>,
	<metaitem:crystal.central_processing_unit>, <metaitem:plate.nano_central_processing_unit> ], 
	[<liquid:tin> * 288]).remove();		

assembly_line.recipeBuilder()
	.inputs(<metaitem:component.smd.capacitor>*2,<metaitem:component.smd.transistor>*2, <metaitem:component.smd.diode>, <ore:wireFineYttriumBariumCuprate>.firstItem *2, <metaitem:processor.neuro>,
	<metaitem:crystal.central_processing_unit>, <metaitem:plate.nano_central_processing_unit>)
    .outputs(<metaitem:circuit.wetware_processor>)
	.fluidInputs([<liquid:tin> * 288])
    .duration(200)
    .EUt(30720)
    .buildAndRegister();

assembly_line.recipeBuilder()
	.inputs(<metaitem:component.smd.capacitor>*2,<metaitem:component.smd.transistor>*2, <metaitem:component.smd.diode>, <ore:wireFineYttriumBariumCuprate>.firstItem *2, <metaitem:processor.neuro>,
	<metaitem:crystal.central_processing_unit>, <metaitem:plate.nano_central_processing_unit>)
    .outputs(<metaitem:circuit.wetware_processor>)
	.fluidInputs([<liquid:soldering_alloy> * 144])
    .duration(200)
    .EUt(30720)
    .buildAndRegister();

	#uranium dust from thorium
	mods.botania.ManaInfusion.addAlchemy(<ore:dustSmallUranium>.firstItem, <ore:dustThorium>, 500);

	#Wooden form
RecipeBuilder.get("basic")
	.setShapeless([<ore:slabWood>])
	.addTool(<ore:toolSaw>, 5)
	.addOutput(<metaitem:wooden_form.empty> * 2)
	.create();
cutting_saw.recipeBuilder()
	.inputs([<ore:slabWood>])
	.fluidInputs([<liquid:water> * 5])
	.outputs([<metaitem:wooden_form.empty> * 2])
	.EUt(8)
	.duration(400)
	.buildAndRegister();

	#add basalt to chisel group
	mods.chisel.Carving.addVariation("basalt", <gregtech:mineral:14>);
	mods.chisel.Carving.addVariation("basalt", <gregtech:mineral:7>);
	mods.chisel.Carving.addVariation("basalt", <gregtech:mineral:3>);
	mods.chisel.Carving.addVariation("basalt", <gregtech:mineral:2>);
	mods.chisel.Carving.addVariation("basalt", <gregtech:mineral:15>);
	
	
	#damascus steel dust
	recipes.addShapeless(<ore:dustDamascusSteel>.firstItem * 4, [<ore:dustIron>,<ore:dustSteel>,<ore:dustSteel>,<ore:dustSteel>]);
	
	#rotor stack size
	<ore:rotorChrome>.firstItem.maxStackSize = 64;
	<ore:rotorBronze>.firstItem.maxStackSize = 64;
	<ore:rotorIridium>.firstItem.maxStackSize = 64;
	<ore:rotorDarmstadtium>.firstItem.maxStackSize = 64;
	<ore:rotorOsmium>.firstItem.maxStackSize = 64;
	<ore:rotorTin>.firstItem.maxStackSize = 64;
	<ore:rotorTitanium>.firstItem.maxStackSize = 64;
	<ore:rotorSteel>.firstItem.maxStackSize = 64;
	<ore:rotorTungstenSteel>.firstItem.maxStackSize = 64;
	<ore:rotorSteelMagnetic>.firstItem.maxStackSize = 64;
	<ore:rotorHssg>.firstItem.maxStackSize = 64;
	<ore:rotorEnderium>.firstItem.maxStackSize = 64;
	<ore:rotorDraconium>.firstItem.maxStackSize = 64;
	<ore:rotorNeutronium>.firstItem.maxStackSize = 64;
	<ore:rotorStainlessSteel>.firstItem.maxStackSize = 64;
	<ore:rotorHsse>.firstItem.maxStackSize = 64;
	
	#higher tier superconductor cabling
	recipes.addShapeless(<ore:cableGtHexSuperconductor>.firstItem, [<ore:cableGtOctalSuperconductor>,<ore:cableGtOctalSuperconductor>]);
	recipes.addShapeless(<ore:cableGtOctalSuperconductor>.firstItem, [<ore:cableGtQuadrupleSuperconductor>,<ore:cableGtQuadrupleSuperconductor>]);
	recipes.addShapeless(<ore:cableGtQuadrupleSuperconductor>.firstItem, [<ore:cableGtDoubleSuperconductor>,<ore:cableGtDoubleSuperconductor>]);
	recipes.addShapeless(<ore:cableGtDoubleSuperconductor>.firstItem, [<ore:cableGtSingleSuperconductor>,<ore:cableGtSingleSuperconductor>]);

	#gtfo solar panels
	recipes.remove(<metaitem:cover.solar.panel>);
	recipes.addShaped(<metaitem:cover.solar.panel>, [[<ore:plateSilicon>, <ore:plateGlass>, <ore:plateSilicon>],[<ore:plateAluminium>, <contenttweaker:infinityegg>, <ore:plateAluminium>], [<ore:plateAluminium>, <ore:plateAluminium>, <ore:plateAluminium>]]);

	
	#fix for manual cable crafting
	recipes.addShapeless(<ore:cableGtHexAluminium>.firstItem, [<ore:cableGtOctalAluminium>,<ore:cableGtOctalAluminium>]);
	recipes.addShapeless(<ore:cableGtOctalAluminium>.firstItem, [<ore:cableGtQuadrupleAluminium>,<ore:cableGtQuadrupleAluminium>]);
	recipes.addShapeless(<ore:cableGtQuadrupleAluminium>.firstItem, [<ore:cableGtDoubleAluminium>,<ore:cableGtDoubleAluminium>]);
	recipes.addShapeless(<ore:cableGtDoubleAluminium>.firstItem, [<ore:cableGtSingleAluminium>,<ore:cableGtSingleAluminium>]);
	recipes.addShapeless(<ore:cableGtOctalAluminium>.firstItem *2, [<ore:cableGtHexAluminium>]);
	recipes.addShapeless(<ore:cableGtQuadrupleAluminium>.firstItem *2, [<ore:cableGtOctalAluminium>]);
	recipes.addShapeless(<ore:cableGtDoubleAluminium>.firstItem *2, [<ore:cableGtQuadrupleAluminium>]);
	recipes.addShapeless(<ore:cableGtSingleAluminium>.firstItem *2, [<ore:cableGtDoubleAluminium>]);

	recipes.addShapeless(<ore:cableGtHexAnnealedCopper>.firstItem, [<ore:cableGtOctalAnnealedCopper>,<ore:cableGtOctalAnnealedCopper>]);
	recipes.addShapeless(<ore:cableGtOctalAnnealedCopper>.firstItem, [<ore:cableGtQuadrupleAnnealedCopper>,<ore:cableGtQuadrupleAnnealedCopper>]);
	recipes.addShapeless(<ore:cableGtQuadrupleAnnealedCopper>.firstItem, [<ore:cableGtDoubleAnnealedCopper>,<ore:cableGtDoubleAnnealedCopper>]);
	recipes.addShapeless(<ore:cableGtDoubleAnnealedCopper>.firstItem, [<ore:cableGtSingleAnnealedCopper>,<ore:cableGtSingleAnnealedCopper>]);
	recipes.addShapeless(<ore:cableGtOctalAnnealedCopper>.firstItem *2, [<ore:cableGtHexAnnealedCopper>]);
	recipes.addShapeless(<ore:cableGtQuadrupleAnnealedCopper>.firstItem *2, [<ore:cableGtOctalAnnealedCopper>]);
	recipes.addShapeless(<ore:cableGtDoubleAnnealedCopper>.firstItem *2, [<ore:cableGtQuadrupleAnnealedCopper>]);
	recipes.addShapeless(<ore:cableGtSingleAnnealedCopper>.firstItem *2, [<ore:cableGtDoubleAnnealedCopper>]);

	recipes.addShapeless(<ore:cableGtHexBlackSteel>.firstItem, [<ore:cableGtOctalBlackSteel>,<ore:cableGtOctalBlackSteel>]);
	recipes.addShapeless(<ore:cableGtOctalBlackSteel>.firstItem, [<ore:cableGtQuadrupleBlackSteel>,<ore:cableGtQuadrupleBlackSteel>]);
	recipes.addShapeless(<ore:cableGtQuadrupleBlackSteel>.firstItem, [<ore:cableGtDoubleBlackSteel>,<ore:cableGtDoubleBlackSteel>]);
	recipes.addShapeless(<ore:cableGtDoubleBlackSteel>.firstItem, [<ore:cableGtSingleBlackSteel>,<ore:cableGtSingleBlackSteel>]);
	recipes.addShapeless(<ore:cableGtOctalBlackSteel>.firstItem *2, [<ore:cableGtHexBlackSteel>]);
	recipes.addShapeless(<ore:cableGtQuadrupleBlackSteel>.firstItem *2, [<ore:cableGtOctalBlackSteel>]);
	recipes.addShapeless(<ore:cableGtDoubleBlackSteel>.firstItem *2, [<ore:cableGtQuadrupleBlackSteel>]);
	recipes.addShapeless(<ore:cableGtSingleBlackSteel>.firstItem *2, [<ore:cableGtDoubleBlackSteel>]);

	recipes.addShapeless(<ore:cableGtHexCobalt>.firstItem, [<ore:cableGtOctalCobalt>,<ore:cableGtOctalCobalt>]);
	recipes.addShapeless(<ore:cableGtOctalCobalt>.firstItem, [<ore:cableGtQuadrupleCobalt>,<ore:cableGtQuadrupleCobalt>]);
	recipes.addShapeless(<ore:cableGtQuadrupleCobalt>.firstItem, [<ore:cableGtDoubleCobalt>,<ore:cableGtDoubleCobalt>]);
	recipes.addShapeless(<ore:cableGtDoubleCobalt>.firstItem, [<ore:cableGtSingleCobalt>,<ore:cableGtSingleCobalt>]);
	recipes.addShapeless(<ore:cableGtOctalCobalt>.firstItem *2, [<ore:cableGtHexCobalt>]);
	recipes.addShapeless(<ore:cableGtQuadrupleCobalt>.firstItem *2, [<ore:cableGtOctalCobalt>]);
	recipes.addShapeless(<ore:cableGtDoubleCobalt>.firstItem *2, [<ore:cableGtQuadrupleCobalt>]);
	recipes.addShapeless(<ore:cableGtSingleCobalt>.firstItem *2, [<ore:cableGtDoubleCobalt>]);

	recipes.addShapeless(<ore:cableGtHexCopper>.firstItem, [<ore:cableGtOctalCopper>,<ore:cableGtOctalCopper>]);
	recipes.addShapeless(<ore:cableGtOctalCopper>.firstItem, [<ore:cableGtQuadrupleCopper>,<ore:cableGtQuadrupleCopper>]);
	recipes.addShapeless(<ore:cableGtQuadrupleCopper>.firstItem, [<ore:cableGtDoubleCopper>,<ore:cableGtDoubleCopper>]);
	recipes.addShapeless(<ore:cableGtDoubleCopper>.firstItem, [<ore:cableGtSingleCopper>,<ore:cableGtSingleCopper>]);
	recipes.addShapeless(<ore:cableGtOctalCopper>.firstItem *2, [<ore:cableGtHexCopper>]);
	recipes.addShapeless(<ore:cableGtQuadrupleCopper>.firstItem *2, [<ore:cableGtOctalCopper>]);
	recipes.addShapeless(<ore:cableGtDoubleCopper>.firstItem *2, [<ore:cableGtQuadrupleCopper>]);
	recipes.addShapeless(<ore:cableGtSingleCopper>.firstItem *2, [<ore:cableGtDoubleCopper>]);

	recipes.addShapeless(<ore:cableGtHexCupronickel>.firstItem, [<ore:cableGtOctalCupronickel>,<ore:cableGtOctalCupronickel>]);
	recipes.addShapeless(<ore:cableGtOctalCupronickel>.firstItem, [<ore:cableGtQuadrupleCupronickel>,<ore:cableGtQuadrupleCupronickel>]);
	recipes.addShapeless(<ore:cableGtQuadrupleCupronickel>.firstItem, [<ore:cableGtDoubleCupronickel>,<ore:cableGtDoubleCupronickel>]);
	recipes.addShapeless(<ore:cableGtDoubleCupronickel>.firstItem, [<ore:cableGtSingleCupronickel>,<ore:cableGtSingleCupronickel>]);
	recipes.addShapeless(<ore:cableGtOctalCupronickel>.firstItem *2, [<ore:cableGtHexCupronickel>]);
	recipes.addShapeless(<ore:cableGtQuadrupleCupronickel>.firstItem *2, [<ore:cableGtOctalCupronickel>]);
	recipes.addShapeless(<ore:cableGtDoubleCupronickel>.firstItem *2, [<ore:cableGtQuadrupleCupronickel>]);
	recipes.addShapeless(<ore:cableGtSingleCupronickel>.firstItem *2, [<ore:cableGtDoubleCupronickel>]);

	recipes.addShapeless(<ore:cableGtHexDuranium>.firstItem, [<ore:cableGtOctalDuranium>,<ore:cableGtOctalDuranium>]);
	recipes.addShapeless(<ore:cableGtOctalDuranium>.firstItem, [<ore:cableGtQuadrupleDuranium>,<ore:cableGtQuadrupleDuranium>]);
	recipes.addShapeless(<ore:cableGtQuadrupleDuranium>.firstItem, [<ore:cableGtDoubleDuranium>,<ore:cableGtDoubleDuranium>]);
	recipes.addShapeless(<ore:cableGtDoubleDuranium>.firstItem, [<ore:cableGtSingleDuranium>,<ore:cableGtSingleDuranium>]);
	recipes.addShapeless(<ore:cableGtOctalDuranium>.firstItem *2, [<ore:cableGtHexDuranium>]);
	recipes.addShapeless(<ore:cableGtQuadrupleDuranium>.firstItem *2, [<ore:cableGtOctalDuranium>]);
	recipes.addShapeless(<ore:cableGtDoubleDuranium>.firstItem *2, [<ore:cableGtQuadrupleDuranium>]);
	recipes.addShapeless(<ore:cableGtSingleDuranium>.firstItem *2, [<ore:cableGtDoubleDuranium>]);

	recipes.addShapeless(<ore:cableGtHexElectrum>.firstItem, [<ore:cableGtOctalElectrum>,<ore:cableGtOctalElectrum>]);
	recipes.addShapeless(<ore:cableGtOctalElectrum>.firstItem, [<ore:cableGtQuadrupleElectrum>,<ore:cableGtQuadrupleElectrum>]);
	recipes.addShapeless(<ore:cableGtQuadrupleElectrum>.firstItem, [<ore:cableGtDoubleElectrum>,<ore:cableGtDoubleElectrum>]);
	recipes.addShapeless(<ore:cableGtDoubleElectrum>.firstItem, [<ore:cableGtSingleElectrum>,<ore:cableGtSingleElectrum>]);
	recipes.addShapeless(<ore:cableGtOctalElectrum>.firstItem *2, [<ore:cableGtHexElectrum>]);
	recipes.addShapeless(<ore:cableGtQuadrupleElectrum>.firstItem *2, [<ore:cableGtOctalElectrum>]);
	recipes.addShapeless(<ore:cableGtDoubleElectrum>.firstItem *2, [<ore:cableGtQuadrupleElectrum>]);
	recipes.addShapeless(<ore:cableGtSingleElectrum>.firstItem *2, [<ore:cableGtDoubleElectrum>]);

	recipes.addShapeless(<ore:cableGtHex Gold>.firstItem, [<ore:cableGtOctal Gold>,<ore:cableGtOctal Gold>]);
	recipes.addShapeless(<ore:cableGtOctal Gold>.firstItem, [<ore:cableGtQuadruple Gold>,<ore:cableGtQuadruple Gold>]);
	recipes.addShapeless(<ore:cableGtQuadruple Gold>.firstItem, [<ore:cableGtDouble Gold>,<ore:cableGtDouble Gold>]);
	recipes.addShapeless(<ore:cableGtDouble Gold>.firstItem, [<ore:cableGtSingle Gold>,<ore:cableGtSingle Gold>]);
	recipes.addShapeless(<ore:cableGtOctal Gold>.firstItem *2, [<ore:cableGtHex Gold>]);
	recipes.addShapeless(<ore:cableGtQuadruple Gold>.firstItem *2, [<ore:cableGtOctal Gold>]);
	recipes.addShapeless(<ore:cableGtDouble Gold>.firstItem *2, [<ore:cableGtQuadruple Gold>]);
	recipes.addShapeless(<ore:cableGtSingle Gold>.firstItem *2, [<ore:cableGtDouble Gold>]);

	recipes.addShapeless(<ore:cableGtHexGraphene>.firstItem, [<ore:cableGtOctalGraphene>,<ore:cableGtOctalGraphene>]);
	recipes.addShapeless(<ore:cableGtOctalGraphene>.firstItem, [<ore:cableGtQuadrupleGraphene>,<ore:cableGtQuadrupleGraphene>]);
	recipes.addShapeless(<ore:cableGtQuadrupleGraphene>.firstItem, [<ore:cableGtDoubleGraphene>,<ore:cableGtDoubleGraphene>]);
	recipes.addShapeless(<ore:cableGtDoubleGraphene>.firstItem, [<ore:cableGtSingleGraphene>,<ore:cableGtSingleGraphene>]);
	recipes.addShapeless(<ore:cableGtOctalGraphene>.firstItem *2, [<ore:cableGtHexGraphene>]);
	recipes.addShapeless(<ore:cableGtQuadrupleGraphene>.firstItem *2, [<ore:cableGtOctalGraphene>]);
	recipes.addShapeless(<ore:cableGtDoubleGraphene>.firstItem *2, [<ore:cableGtQuadrupleGraphene>]);
	recipes.addShapeless(<ore:cableGtSingleGraphene>.firstItem *2, [<ore:cableGtDoubleGraphene>]);

	recipes.addShapeless(<ore:cableGtHexHssg>.firstItem, [<ore:cableGtOctalHssg>,<ore:cableGtOctalHssg>]);
	recipes.addShapeless(<ore:cableGtOctalHssg>.firstItem, [<ore:cableGtQuadrupleHssg>,<ore:cableGtQuadrupleHssg>]);
	recipes.addShapeless(<ore:cableGtQuadrupleHssg>.firstItem, [<ore:cableGtDoubleHssg>,<ore:cableGtDoubleHssg>]);
	recipes.addShapeless(<ore:cableGtDoubleHssg>.firstItem, [<ore:cableGtSingleHssg>,<ore:cableGtSingleHssg>]);
	recipes.addShapeless(<ore:cableGtOctalHssg>.firstItem *2, [<ore:cableGtHexHssg>]);
	recipes.addShapeless(<ore:cableGtQuadrupleHssg>.firstItem *2, [<ore:cableGtOctalHssg>]);
	recipes.addShapeless(<ore:cableGtDoubleHssg>.firstItem *2, [<ore:cableGtQuadrupleHssg>]);
	recipes.addShapeless(<ore:cableGtSingleHssg>.firstItem *2, [<ore:cableGtDoubleHssg>]);

	recipes.addShapeless(<ore:cableGtHexIron>.firstItem, [<ore:cableGtOctalIron>,<ore:cableGtOctalIron>]);
	recipes.addShapeless(<ore:cableGtOctalIron>.firstItem, [<ore:cableGtQuadrupleIron>,<ore:cableGtQuadrupleIron>]);
	recipes.addShapeless(<ore:cableGtQuadrupleIron>.firstItem, [<ore:cableGtDoubleIron>,<ore:cableGtDoubleIron>]);
	recipes.addShapeless(<ore:cableGtDoubleIron>.firstItem, [<ore:cableGtSingleIron>,<ore:cableGtSingleIron>]);
	recipes.addShapeless(<ore:cableGtOctalIron>.firstItem *2, [<ore:cableGtHexIron>]);
	recipes.addShapeless(<ore:cableGtQuadrupleIron>.firstItem *2, [<ore:cableGtOctalIron>]);
	recipes.addShapeless(<ore:cableGtDoubleIron>.firstItem *2, [<ore:cableGtQuadrupleIron>]);
	recipes.addShapeless(<ore:cableGtSingleIron>.firstItem *2, [<ore:cableGtDoubleIron>]);

	recipes.addShapeless(<ore:cableGtHexKanthal>.firstItem, [<ore:cableGtOctalKanthal>,<ore:cableGtOctalKanthal>]);
	recipes.addShapeless(<ore:cableGtOctalKanthal>.firstItem, [<ore:cableGtQuadrupleKanthal>,<ore:cableGtQuadrupleKanthal>]);
	recipes.addShapeless(<ore:cableGtQuadrupleKanthal>.firstItem, [<ore:cableGtDoubleKanthal>,<ore:cableGtDoubleKanthal>]);
	recipes.addShapeless(<ore:cableGtDoubleKanthal>.firstItem, [<ore:cableGtSingleKanthal>,<ore:cableGtSingleKanthal>]);
	recipes.addShapeless(<ore:cableGtOctalKanthal>.firstItem *2, [<ore:cableGtHexKanthal>]);
	recipes.addShapeless(<ore:cableGtQuadrupleKanthal>.firstItem *2, [<ore:cableGtOctalKanthal>]);
	recipes.addShapeless(<ore:cableGtDoubleKanthal>.firstItem *2, [<ore:cableGtQuadrupleKanthal>]);
	recipes.addShapeless(<ore:cableGtSingleKanthal>.firstItem *2, [<ore:cableGtDoubleKanthal>]);

	recipes.addShapeless(<ore:cableGtHexLead>.firstItem, [<ore:cableGtOctalLead>,<ore:cableGtOctalLead>]);
	recipes.addShapeless(<ore:cableGtOctalLead>.firstItem, [<ore:cableGtQuadrupleLead>,<ore:cableGtQuadrupleLead>]);
	recipes.addShapeless(<ore:cableGtQuadrupleLead>.firstItem, [<ore:cableGtDoubleLead>,<ore:cableGtDoubleLead>]);
	recipes.addShapeless(<ore:cableGtDoubleLead>.firstItem, [<ore:cableGtSingleLead>,<ore:cableGtSingleLead>]);
	recipes.addShapeless(<ore:cableGtOctalLead>.firstItem *2, [<ore:cableGtHexLead>]);
	recipes.addShapeless(<ore:cableGtQuadrupleLead>.firstItem *2, [<ore:cableGtOctalLead>]);
	recipes.addShapeless(<ore:cableGtDoubleLead>.firstItem *2, [<ore:cableGtQuadrupleLead>]);
	recipes.addShapeless(<ore:cableGtSingleLead>.firstItem *2, [<ore:cableGtDoubleLead>]);

	recipes.addShapeless(<ore:cableGtHexNaquadah>.firstItem, [<ore:cableGtOctalNaquadah>,<ore:cableGtOctalNaquadah>]);
	recipes.addShapeless(<ore:cableGtOctalNaquadah>.firstItem, [<ore:cableGtQuadrupleNaquadah>,<ore:cableGtQuadrupleNaquadah>]);
	recipes.addShapeless(<ore:cableGtQuadrupleNaquadah>.firstItem, [<ore:cableGtDoubleNaquadah>,<ore:cableGtDoubleNaquadah>]);
	recipes.addShapeless(<ore:cableGtDoubleNaquadah>.firstItem, [<ore:cableGtSingleNaquadah>,<ore:cableGtSingleNaquadah>]);
	recipes.addShapeless(<ore:cableGtOctalNaquadah>.firstItem *2, [<ore:cableGtHexNaquadah>]);
	recipes.addShapeless(<ore:cableGtQuadrupleNaquadah>.firstItem *2, [<ore:cableGtOctalNaquadah>]);
	recipes.addShapeless(<ore:cableGtDoubleNaquadah>.firstItem *2, [<ore:cableGtQuadrupleNaquadah>]);
	recipes.addShapeless(<ore:cableGtSingleNaquadah>.firstItem *2, [<ore:cableGtDoubleNaquadah>]);

	recipes.addShapeless(<ore:cableGtHexNaquadahAlloy>.firstItem, [<ore:cableGtOctalNaquadahAlloy>,<ore:cableGtOctalNaquadahAlloy>]);
	recipes.addShapeless(<ore:cableGtOctalNaquadahAlloy>.firstItem, [<ore:cableGtQuadrupleNaquadahAlloy>,<ore:cableGtQuadrupleNaquadahAlloy>]);
	recipes.addShapeless(<ore:cableGtQuadrupleNaquadahAlloy>.firstItem, [<ore:cableGtDoubleNaquadahAlloy>,<ore:cableGtDoubleNaquadahAlloy>]);
	recipes.addShapeless(<ore:cableGtDoubleNaquadahAlloy>.firstItem, [<ore:cableGtSingleNaquadahAlloy>,<ore:cableGtSingleNaquadahAlloy>]);
	recipes.addShapeless(<ore:cableGtOctalNaquadahAlloy>.firstItem *2, [<ore:cableGtHexNaquadahAlloy>]);
	recipes.addShapeless(<ore:cableGtQuadrupleNaquadahAlloy>.firstItem *2, [<ore:cableGtOctalNaquadahAlloy>]);
	recipes.addShapeless(<ore:cableGtDoubleNaquadahAlloy>.firstItem *2, [<ore:cableGtQuadrupleNaquadahAlloy>]);
	recipes.addShapeless(<ore:cableGtSingleNaquadahAlloy>.firstItem *2, [<ore:cableGtDoubleNaquadahAlloy>]);

	recipes.addShapeless(<ore:cableGtHexNichrome>.firstItem, [<ore:cableGtOctalNichrome>,<ore:cableGtOctalNichrome>]);
	recipes.addShapeless(<ore:cableGtOctalNichrome>.firstItem, [<ore:cableGtQuadrupleNichrome>,<ore:cableGtQuadrupleNichrome>]);
	recipes.addShapeless(<ore:cableGtQuadrupleNichrome>.firstItem, [<ore:cableGtDoubleNichrome>,<ore:cableGtDoubleNichrome>]);
	recipes.addShapeless(<ore:cableGtDoubleNichrome>.firstItem, [<ore:cableGtSingleNichrome>,<ore:cableGtSingleNichrome>]);
	recipes.addShapeless(<ore:cableGtOctalNichrome>.firstItem *2, [<ore:cableGtHexNichrome>]);
	recipes.addShapeless(<ore:cableGtQuadrupleNichrome>.firstItem *2, [<ore:cableGtOctalNichrome>]);
	recipes.addShapeless(<ore:cableGtDoubleNichrome>.firstItem *2, [<ore:cableGtQuadrupleNichrome>]);
	recipes.addShapeless(<ore:cableGtSingleNichrome>.firstItem *2, [<ore:cableGtDoubleNichrome>]);

	recipes.addShapeless(<ore:cableGtHexNickel>.firstItem, [<ore:cableGtOctalNickel>,<ore:cableGtOctalNickel>]);
	recipes.addShapeless(<ore:cableGtOctalNickel>.firstItem, [<ore:cableGtQuadrupleNickel>,<ore:cableGtQuadrupleNickel>]);
	recipes.addShapeless(<ore:cableGtQuadrupleNickel>.firstItem, [<ore:cableGtDoubleNickel>,<ore:cableGtDoubleNickel>]);
	recipes.addShapeless(<ore:cableGtDoubleNickel>.firstItem, [<ore:cableGtSingleNickel>,<ore:cableGtSingleNickel>]);
	recipes.addShapeless(<ore:cableGtOctalNickel>.firstItem *2, [<ore:cableGtHexNickel>]);
	recipes.addShapeless(<ore:cableGtQuadrupleNickel>.firstItem *2, [<ore:cableGtOctalNickel>]);
	recipes.addShapeless(<ore:cableGtDoubleNickel>.firstItem *2, [<ore:cableGtQuadrupleNickel>]);
	recipes.addShapeless(<ore:cableGtSingleNickel>.firstItem *2, [<ore:cableGtDoubleNickel>]);

	recipes.addShapeless(<ore:cableGtHexNiobiumTitanium>.firstItem, [<ore:cableGtOctalNiobiumTitanium>,<ore:cableGtOctalNiobiumTitanium>]);
	recipes.addShapeless(<ore:cableGtOctalNiobiumTitanium>.firstItem, [<ore:cableGtQuadrupleNiobiumTitanium>,<ore:cableGtQuadrupleNiobiumTitanium>]);
	recipes.addShapeless(<ore:cableGtQuadrupleNiobiumTitanium>.firstItem, [<ore:cableGtDoubleNiobiumTitanium>,<ore:cableGtDoubleNiobiumTitanium>]);
	recipes.addShapeless(<ore:cableGtDoubleNiobiumTitanium>.firstItem, [<ore:cableGtSingleNiobiumTitanium>,<ore:cableGtSingleNiobiumTitanium>]);
	recipes.addShapeless(<ore:cableGtOctalNiobiumTitanium>.firstItem *2, [<ore:cableGtHexNiobiumTitanium>]);
	recipes.addShapeless(<ore:cableGtQuadrupleNiobiumTitanium>.firstItem *2, [<ore:cableGtOctalNiobiumTitanium>]);
	recipes.addShapeless(<ore:cableGtDoubleNiobiumTitanium>.firstItem *2, [<ore:cableGtQuadrupleNiobiumTitanium>]);
	recipes.addShapeless(<ore:cableGtSingleNiobiumTitanium>.firstItem *2, [<ore:cableGtDoubleNiobiumTitanium>]);

	recipes.addShapeless(<ore:cableGtHexOsmium>.firstItem, [<ore:cableGtOctalOsmium>,<ore:cableGtOctalOsmium>]);
	recipes.addShapeless(<ore:cableGtOctalOsmium>.firstItem, [<ore:cableGtQuadrupleOsmium>,<ore:cableGtQuadrupleOsmium>]);
	recipes.addShapeless(<ore:cableGtQuadrupleOsmium>.firstItem, [<ore:cableGtDoubleOsmium>,<ore:cableGtDoubleOsmium>]);
	recipes.addShapeless(<ore:cableGtDoubleOsmium>.firstItem, [<ore:cableGtSingleOsmium>,<ore:cableGtSingleOsmium>]);
	recipes.addShapeless(<ore:cableGtOctalOsmium>.firstItem *2, [<ore:cableGtHexOsmium>]);
	recipes.addShapeless(<ore:cableGtQuadrupleOsmium>.firstItem *2, [<ore:cableGtOctalOsmium>]);
	recipes.addShapeless(<ore:cableGtDoubleOsmium>.firstItem *2, [<ore:cableGtQuadrupleOsmium>]);
	recipes.addShapeless(<ore:cableGtSingleOsmium>.firstItem *2, [<ore:cableGtDoubleOsmium>]);

	recipes.addShapeless(<ore:cableGtHexPlatinum>.firstItem, [<ore:cableGtOctalPlatinum>,<ore:cableGtOctalPlatinum>]);
	recipes.addShapeless(<ore:cableGtOctalPlatinum>.firstItem, [<ore:cableGtQuadruplePlatinum>,<ore:cableGtQuadruplePlatinum>]);
	recipes.addShapeless(<ore:cableGtQuadruplePlatinum>.firstItem, [<ore:cableGtDoublePlatinum>,<ore:cableGtDoublePlatinum>]);
	recipes.addShapeless(<ore:cableGtDoublePlatinum>.firstItem, [<ore:cableGtSinglePlatinum>,<ore:cableGtSinglePlatinum>]);
	recipes.addShapeless(<ore:cableGtOctalPlatinum>.firstItem *2, [<ore:cableGtHexPlatinum>]);
	recipes.addShapeless(<ore:cableGtQuadruplePlatinum>.firstItem *2, [<ore:cableGtOctalPlatinum>]);
	recipes.addShapeless(<ore:cableGtDoublePlatinum>.firstItem *2, [<ore:cableGtQuadruplePlatinum>]);
	recipes.addShapeless(<ore:cableGtSinglePlatinum>.firstItem *2, [<ore:cableGtDoublePlatinum>]);

	recipes.addShapeless(<ore:cableGtHexRedAlloy>.firstItem, [<ore:cableGtOctalRedAlloy>,<ore:cableGtOctalRedAlloy>]);
	recipes.addShapeless(<ore:cableGtOctalRedAlloy>.firstItem, [<ore:cableGtQuadrupleRedAlloy>,<ore:cableGtQuadrupleRedAlloy>]);
	recipes.addShapeless(<ore:cableGtQuadrupleRedAlloy>.firstItem, [<ore:cableGtDoubleRedAlloy>,<ore:cableGtDoubleRedAlloy>]);
	recipes.addShapeless(<ore:cableGtDoubleRedAlloy>.firstItem, [<ore:cableGtSingleRedAlloy>,<ore:cableGtSingleRedAlloy>]);
	recipes.addShapeless(<ore:cableGtOctalRedAlloy>.firstItem *2, [<ore:cableGtHexRedAlloy>]);
	recipes.addShapeless(<ore:cableGtQuadrupleRedAlloy>.firstItem *2, [<ore:cableGtOctalRedAlloy>]);
	recipes.addShapeless(<ore:cableGtDoubleRedAlloy>.firstItem *2, [<ore:cableGtQuadrupleRedAlloy>]);
	recipes.addShapeless(<ore:cableGtSingleRedAlloy>.firstItem *2, [<ore:cableGtDoubleRedAlloy>]);

	recipes.addShapeless(<ore:cableGtHexSilver>.firstItem, [<ore:cableGtOctalSilver>,<ore:cableGtOctalSilver>]);
	recipes.addShapeless(<ore:cableGtOctalSilver>.firstItem, [<ore:cableGtQuadrupleSilver>,<ore:cableGtQuadrupleSilver>]);
	recipes.addShapeless(<ore:cableGtQuadrupleSilver>.firstItem, [<ore:cableGtDoubleSilver>,<ore:cableGtDoubleSilver>]);
	recipes.addShapeless(<ore:cableGtDoubleSilver>.firstItem, [<ore:cableGtSingleSilver>,<ore:cableGtSingleSilver>]);
	recipes.addShapeless(<ore:cableGtOctalSilver>.firstItem *2, [<ore:cableGtHexSilver>]);
	recipes.addShapeless(<ore:cableGtQuadrupleSilver>.firstItem *2, [<ore:cableGtOctalSilver>]);
	recipes.addShapeless(<ore:cableGtDoubleSilver>.firstItem *2, [<ore:cableGtQuadrupleSilver>]);
	recipes.addShapeless(<ore:cableGtSingleSilver>.firstItem *2, [<ore:cableGtDoubleSilver>]);

	recipes.addShapeless(<ore:cableGtHexSolderingAlloy>.firstItem, [<ore:cableGtOctalSolderingAlloy>,<ore:cableGtOctalSolderingAlloy>]);
	recipes.addShapeless(<ore:cableGtOctalSolderingAlloy>.firstItem, [<ore:cableGtQuadrupleSolderingAlloy>,<ore:cableGtQuadrupleSolderingAlloy>]);
	recipes.addShapeless(<ore:cableGtQuadrupleSolderingAlloy>.firstItem, [<ore:cableGtDoubleSolderingAlloy>,<ore:cableGtDoubleSolderingAlloy>]);
	recipes.addShapeless(<ore:cableGtDoubleSolderingAlloy>.firstItem, [<ore:cableGtSingleSolderingAlloy>,<ore:cableGtSingleSolderingAlloy>]);
	recipes.addShapeless(<ore:cableGtOctalSolderingAlloy>.firstItem *2, [<ore:cableGtHexSolderingAlloy>]);
	recipes.addShapeless(<ore:cableGtQuadrupleSolderingAlloy>.firstItem *2, [<ore:cableGtOctalSolderingAlloy>]);
	recipes.addShapeless(<ore:cableGtDoubleSolderingAlloy>.firstItem *2, [<ore:cableGtQuadrupleSolderingAlloy>]);
	recipes.addShapeless(<ore:cableGtSingleSolderingAlloy>.firstItem *2, [<ore:cableGtDoubleSolderingAlloy>]);

	recipes.addShapeless(<ore:cableGtHexSteel>.firstItem, [<ore:cableGtOctalSteel>,<ore:cableGtOctalSteel>]);
	recipes.addShapeless(<ore:cableGtOctalSteel>.firstItem, [<ore:cableGtQuadrupleSteel>,<ore:cableGtQuadrupleSteel>]);
	recipes.addShapeless(<ore:cableGtQuadrupleSteel>.firstItem, [<ore:cableGtDoubleSteel>,<ore:cableGtDoubleSteel>]);
	recipes.addShapeless(<ore:cableGtDoubleSteel>.firstItem, [<ore:cableGtSingleSteel>,<ore:cableGtSingleSteel>]);
	recipes.addShapeless(<ore:cableGtOctalSteel>.firstItem *2, [<ore:cableGtHexSteel>]);
	recipes.addShapeless(<ore:cableGtQuadrupleSteel>.firstItem *2, [<ore:cableGtOctalSteel>]);
	recipes.addShapeless(<ore:cableGtDoubleSteel>.firstItem *2, [<ore:cableGtQuadrupleSteel>]);
	recipes.addShapeless(<ore:cableGtSingleSteel>.firstItem *2, [<ore:cableGtDoubleSteel>]);

	recipes.addShapeless(<ore:cableGtHexSuperconductor>.firstItem, [<ore:cableGtOctalSuperconductor>,<ore:cableGtOctalSuperconductor>]);
	recipes.addShapeless(<ore:cableGtOctalSuperconductor>.firstItem, [<ore:cableGtQuadrupleSuperconductor>,<ore:cableGtQuadrupleSuperconductor>]);
	recipes.addShapeless(<ore:cableGtQuadrupleSuperconductor>.firstItem, [<ore:cableGtDoubleSuperconductor>,<ore:cableGtDoubleSuperconductor>]);
	recipes.addShapeless(<ore:cableGtDoubleSuperconductor>.firstItem, [<ore:cableGtSingleSuperconductor>,<ore:cableGtSingleSuperconductor>]);
	recipes.addShapeless(<ore:cableGtOctalSuperconductor>.firstItem *2, [<ore:cableGtHexSuperconductor>]);
	recipes.addShapeless(<ore:cableGtQuadrupleSuperconductor>.firstItem *2, [<ore:cableGtOctalSuperconductor>]);
	recipes.addShapeless(<ore:cableGtDoubleSuperconductor>.firstItem *2, [<ore:cableGtQuadrupleSuperconductor>]);
	recipes.addShapeless(<ore:cableGtSingleSuperconductor>.firstItem *2, [<ore:cableGtDoubleSuperconductor>]);

	recipes.addShapeless(<ore:cableGtHexTin>.firstItem, [<ore:cableGtOctalTin>,<ore:cableGtOctalTin>]);
	recipes.addShapeless(<ore:cableGtOctalTin>.firstItem, [<ore:cableGtQuadrupleTin>,<ore:cableGtQuadrupleTin>]);
	recipes.addShapeless(<ore:cableGtQuadrupleTin>.firstItem, [<ore:cableGtDoubleTin>,<ore:cableGtDoubleTin>]);
	recipes.addShapeless(<ore:cableGtDoubleTin>.firstItem, [<ore:cableGtSingleTin>,<ore:cableGtSingleTin>]);
	recipes.addShapeless(<ore:cableGtOctalTin>.firstItem *2, [<ore:cableGtHexTin>]);
	recipes.addShapeless(<ore:cableGtQuadrupleTin>.firstItem *2, [<ore:cableGtOctalTin>]);
	recipes.addShapeless(<ore:cableGtDoubleTin>.firstItem *2, [<ore:cableGtQuadrupleTin>]);
	recipes.addShapeless(<ore:cableGtSingleTin>.firstItem *2, [<ore:cableGtDoubleTin>]);

	recipes.addShapeless(<ore:cableGtHexTitanium>.firstItem, [<ore:cableGtOctalTitanium>,<ore:cableGtOctalTitanium>]);
	recipes.addShapeless(<ore:cableGtOctalTitanium>.firstItem, [<ore:cableGtQuadrupleTitanium>,<ore:cableGtQuadrupleTitanium>]);
	recipes.addShapeless(<ore:cableGtQuadrupleTitanium>.firstItem, [<ore:cableGtDoubleTitanium>,<ore:cableGtDoubleTitanium>]);
	recipes.addShapeless(<ore:cableGtDoubleTitanium>.firstItem, [<ore:cableGtSingleTitanium>,<ore:cableGtSingleTitanium>]);
	recipes.addShapeless(<ore:cableGtOctalTitanium>.firstItem *2, [<ore:cableGtHexTitanium>]);
	recipes.addShapeless(<ore:cableGtQuadrupleTitanium>.firstItem *2, [<ore:cableGtOctalTitanium>]);
	recipes.addShapeless(<ore:cableGtDoubleTitanium>.firstItem *2, [<ore:cableGtQuadrupleTitanium>]);
	recipes.addShapeless(<ore:cableGtSingleTitanium>.firstItem *2, [<ore:cableGtDoubleTitanium>]);

	recipes.addShapeless(<ore:cableGtHexTungsten>.firstItem, [<ore:cableGtOctalTungsten>,<ore:cableGtOctalTungsten>]);
	recipes.addShapeless(<ore:cableGtOctalTungsten>.firstItem, [<ore:cableGtQuadrupleTungsten>,<ore:cableGtQuadrupleTungsten>]);
	recipes.addShapeless(<ore:cableGtQuadrupleTungsten>.firstItem, [<ore:cableGtDoubleTungsten>,<ore:cableGtDoubleTungsten>]);
	recipes.addShapeless(<ore:cableGtDoubleTungsten>.firstItem, [<ore:cableGtSingleTungsten>,<ore:cableGtSingleTungsten>]);
	recipes.addShapeless(<ore:cableGtOctalTungsten>.firstItem *2, [<ore:cableGtHexTungsten>]);
	recipes.addShapeless(<ore:cableGtQuadrupleTungsten>.firstItem *2, [<ore:cableGtOctalTungsten>]);
	recipes.addShapeless(<ore:cableGtDoubleTungsten>.firstItem *2, [<ore:cableGtQuadrupleTungsten>]);
	recipes.addShapeless(<ore:cableGtSingleTungsten>.firstItem *2, [<ore:cableGtDoubleTungsten>]);

	recipes.addShapeless(<ore:cableGtHexTungstenSteel>.firstItem, [<ore:cableGtOctalTungstenSteel>,<ore:cableGtOctalTungstenSteel>]);
	recipes.addShapeless(<ore:cableGtOctalTungstenSteel>.firstItem, [<ore:cableGtQuadrupleTungstenSteel>,<ore:cableGtQuadrupleTungstenSteel>]);
	recipes.addShapeless(<ore:cableGtQuadrupleTungstenSteel>.firstItem, [<ore:cableGtDoubleTungstenSteel>,<ore:cableGtDoubleTungstenSteel>]);
	recipes.addShapeless(<ore:cableGtDoubleTungstenSteel>.firstItem, [<ore:cableGtSingleTungstenSteel>,<ore:cableGtSingleTungstenSteel>]);
	recipes.addShapeless(<ore:cableGtOctalTungstenSteel>.firstItem *2, [<ore:cableGtHexTungstenSteel>]);
	recipes.addShapeless(<ore:cableGtQuadrupleTungstenSteel>.firstItem *2, [<ore:cableGtOctalTungstenSteel>]);
	recipes.addShapeless(<ore:cableGtDoubleTungstenSteel>.firstItem *2, [<ore:cableGtQuadrupleTungstenSteel>]);
	recipes.addShapeless(<ore:cableGtSingleTungstenSteel>.firstItem *2, [<ore:cableGtDoubleTungstenSteel>]);

	recipes.addShapeless(<ore:cableGtHexVanadiumGallium>.firstItem, [<ore:cableGtOctalVanadiumGallium>,<ore:cableGtOctalVanadiumGallium>]);
	recipes.addShapeless(<ore:cableGtOctalVanadiumGallium>.firstItem, [<ore:cableGtQuadrupleVanadiumGallium>,<ore:cableGtQuadrupleVanadiumGallium>]);
	recipes.addShapeless(<ore:cableGtQuadrupleVanadiumGallium>.firstItem, [<ore:cableGtDoubleVanadiumGallium>,<ore:cableGtDoubleVanadiumGallium>]);
	recipes.addShapeless(<ore:cableGtDoubleVanadiumGallium>.firstItem, [<ore:cableGtSingleVanadiumGallium>,<ore:cableGtSingleVanadiumGallium>]);
	recipes.addShapeless(<ore:cableGtOctalVanadiumGallium>.firstItem *2, [<ore:cableGtHexVanadiumGallium>]);
	recipes.addShapeless(<ore:cableGtQuadrupleVanadiumGallium>.firstItem *2, [<ore:cableGtOctalVanadiumGallium>]);
	recipes.addShapeless(<ore:cableGtDoubleVanadiumGallium>.firstItem *2, [<ore:cableGtQuadrupleVanadiumGallium>]);
	recipes.addShapeless(<ore:cableGtSingleVanadiumGallium>.firstItem *2, [<ore:cableGtDoubleVanadiumGallium>]);

	recipes.addShapeless(<ore:cableGtHexYttriumBariumCuprate>.firstItem, [<ore:cableGtOctalYttriumBariumCuprate>,<ore:cableGtOctalYttriumBariumCuprate>]);
	recipes.addShapeless(<ore:cableGtOctalYttriumBariumCuprate>.firstItem, [<ore:cableGtQuadrupleYttriumBariumCuprate>,<ore:cableGtQuadrupleYttriumBariumCuprate>]);
	recipes.addShapeless(<ore:cableGtQuadrupleYttriumBariumCuprate>.firstItem, [<ore:cableGtDoubleYttriumBariumCuprate>,<ore:cableGtDoubleYttriumBariumCuprate>]);
	recipes.addShapeless(<ore:cableGtDoubleYttriumBariumCuprate>.firstItem, [<ore:cableGtSingleYttriumBariumCuprate>,<ore:cableGtSingleYttriumBariumCuprate>]);
	recipes.addShapeless(<ore:cableGtOctalYttriumBariumCuprate>.firstItem *2, [<ore:cableGtHexYttriumBariumCuprate>]);
	recipes.addShapeless(<ore:cableGtQuadrupleYttriumBariumCuprate>.firstItem *2, [<ore:cableGtOctalYttriumBariumCuprate>]);
	recipes.addShapeless(<ore:cableGtDoubleYttriumBariumCuprate>.firstItem *2, [<ore:cableGtQuadrupleYttriumBariumCuprate>]);
	recipes.addShapeless(<ore:cableGtSingleYttriumBariumCuprate>.firstItem *2, [<ore:cableGtDoubleYttriumBariumCuprate>]);

	recipes.addShapeless(<ore:cableGtHexZinc>.firstItem, [<ore:cableGtOctalZinc>,<ore:cableGtOctalZinc>]);
	recipes.addShapeless(<ore:cableGtOctalZinc>.firstItem, [<ore:cableGtQuadrupleZinc>,<ore:cableGtQuadrupleZinc>]);
	recipes.addShapeless(<ore:cableGtQuadrupleZinc>.firstItem, [<ore:cableGtDoubleZinc>,<ore:cableGtDoubleZinc>]);
	recipes.addShapeless(<ore:cableGtDoubleZinc>.firstItem, [<ore:cableGtSingleZinc>,<ore:cableGtSingleZinc>]);
	recipes.addShapeless(<ore:cableGtOctalZinc>.firstItem *2, [<ore:cableGtHexZinc>]);
	recipes.addShapeless(<ore:cableGtQuadrupleZinc>.firstItem *2, [<ore:cableGtOctalZinc>]);
	recipes.addShapeless(<ore:cableGtDoubleZinc>.firstItem *2, [<ore:cableGtQuadrupleZinc>]);
	recipes.addShapeless(<ore:cableGtSingleZinc>.firstItem *2, [<ore:cableGtDoubleZinc>]);

	//Small Gear Via Extruder
	recipes.addShaped(<contenttweaker:smallgearextrudershape>, [
		[<metaitem:shape.empty>,null,null],
		[null,<gregtech:meta_tool:13>,null], 
		[null,null,null]]);

	extruder.recipeBuilder().inputs([<ore:ingotSteel>]).notConsumable(<contenttweaker:smallgearextrudershape>).outputs([<ore:gearSmallSteel>.firstItem]).duration(130).EUt(64).buildAndRegister();    
	//steel  small gear
	extruder.recipeBuilder().inputs([<ore:ingotAluminium>]).notConsumable(<contenttweaker:smallgearextrudershape>).outputs([<ore:gearSmallAluminium>.firstItem]).duration(130).EUt(64).buildAndRegister();    
	//aluminium  small gear
	extruder.recipeBuilder().inputs([<ore:ingotStainlessSteel>]).notConsumable(<contenttweaker:smallgearextrudershape>).outputs([<ore:gearSmallStainlessSteel>.firstItem]).duration(130).EUt(64).buildAndRegister();    
	//stainless steel small gear
	extruder.recipeBuilder().inputs([<ore:ingotTitanium>]).notConsumable(<contenttweaker:smallgearextrudershape>).outputs([<ore:gearSmallTitanium>.firstItem]).duration(130).EUt(64).buildAndRegister();    
	//titanium small gear
	extruder.recipeBuilder().inputs([<ore:ingotTungstenSteel>]).notConsumable(<contenttweaker:smallgearextrudershape>).outputs([<ore:gearSmallTungstenSteel>.firstItem]).duration(130).EUt(64).buildAndRegister();    //tungstensteel small gear
	
print("----------------Gregtech End-------------------");
