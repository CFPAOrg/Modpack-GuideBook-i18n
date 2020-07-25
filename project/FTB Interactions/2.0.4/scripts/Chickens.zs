import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.item.IIngredient;
import mods.artisanworktables.builder.RecipeBuilder;
import mods.gregtech.recipe.RecipeMap;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.block.IBlockDefinition;
import mods.thaumcraft.Infusion;
import crafttweaker.block.IBlockProperties;
import crafttweaker.block.IBlock;
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Block;
import mods.gregtech.recipe.RecipeMaps;

print("---------------Chickens Start------------------");


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
val laser = mods.gregtech.recipe.RecipeMap.getByName("laser_engraver");
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

val smartChicken = <roost:chicken>.withTag({Growth: 10, Chicken: "chickens:smartchicken", Gain: 10, Strength: 10});

#fix collector recipe
recipes.remove(<roost:collector>);
recipes.addShaped(<roost:collector>, [[<ore:plankWood>, null, <ore:plankWood>],[<ore:plankWood>, <minecraft:hopper>, <ore:plankWood>], [<ore:plankWood>, <ore:chestWood>, <ore:plankWood>]]);

<roost:chicken>.withTag({Growth: 1, Chicken: "chickens:smartchicken", Gain: 1, Strength: 1}).addTooltip(format.darkRed("用一本书右键一只鸡来创造它。"));


	#poreclain chicken
	val porcChicken = <roost:chicken>.withTag({Growth: 1, Chicken: "contenttweaker:porcelainchicken", Gain: 1, Strength: 1});

	RecipeBuilder.get("basic")
	.setShaped([
		[null, <minecraft:dye:15>, null],
		[<projecte:item.pe_covalence_dust>, smartChicken, <projecte:item.pe_covalence_dust>],
		[null, <minecraft:dye:15>, null]])
	.setFluid(<liquid:clay>*1000)
	.addOutput(porcChicken)
	.create();

#concrete chicken
	mixer.recipeBuilder()
	.inputs(smartChicken, <ore:itemInfinityGoop>)
	.outputs(<roost:chicken>.withTag({Growth: 1, Chicken: "contenttweaker:concretechicken", Gain: 1, Strength: 1}))
	.fluidInputs([<liquid:concrete> * 10000])
	.duration(1800)
	.EUt(30)
	.buildAndRegister();
	
#Concrete from egg
fluidExtractor.recipeBuilder()
	.inputs(<ore:enrichedEggConcrete> * 1)
	.fluidOutputs([<liquid:concrete> * 100])
	.duration(20)
	.EUt(18)
	.buildAndRegister();

val radonChicken = <roost:chicken>.withTag({Growth: 1, Chicken: "contenttweaker:radonchicken", Gain: 1, Strength: 1});

#Radon chicken
	mods.thaumcraft.Infusion.registerRecipe("radonChicken", "INFUSION", radonChicken, 6,
	[<aspect:volatus> * 32, <aspect:potentia> * 64, <aspect:desiderium> * 16, <aspect:alienis> * 16],
	smartChicken,
	[<ore:dustTinyPlutonium>.firstItem, <botania:manaresource:1>, <botania:manaresource:1>, <xreliquary:mob_ingredient:11>]);


#Rubbery Chicken
	mixer.recipeBuilder()
	.inputs(smartChicken, <enderio:block_infinity_fog>, <projecte:item.pe_covalence_dust:1>*4, <ore:dustRawRubber>*64)
	.outputs(<roost:chicken>.withTag({Growth: 1, Chicken: "contenttweaker:rubberychicken", Gain: 1, Strength: 1}))
	.fluidInputs([<liquid:sulfuric_acid> * 10000])
	.duration(600)
	.EUt(48)
	.buildAndRegister();	

chemReactor.recipeBuilder()
	.inputs(<ore:enrichedEggRubber>*9, <ore:dustSulfur>)
	.fluidOutputs([<liquid:rubber> * 1296])
    .duration(120)
    .EUt(18)
    .buildAndRegister();

furnace.addRecipe(<industrialforegoing:dryrubber>, <ore:enrichedEggRubber>);


#smog Chicken
	mixer.recipeBuilder()
	.inputs(smartChicken, <enderio:block_infinity_fog>, <ore:dustEntropyInfused>*16, <ore:dustCharcoal>*64)
	.outputs(<roost:chicken>.withTag({Growth: 1, Chicken: "contenttweaker:smogchicken", Gain: 1, Strength: 1}))
	.fluidInputs([<liquid:epoxid> * 1000])
	.duration(600)
	.EUt(24)
	.buildAndRegister();	
	
fluidExtractor.recipeBuilder()
	.inputs(<ore:enrichedEggSmog>)
	.fluidOutputs([<liquid:sludge> * 125])
    .duration(60)
    .EUt(12)
    .buildAndRegister();

	distillery.recipeBuilder()
	.fluidInputs([<liquid:sludge> * 1000])
	.notConsumable(integratedCircuit.withTag({Configuration: 0}))
	.fluidOutputs([<liquid:charcoal_byproducts> * 1000])
	.duration(60)
	.EUt(42)
	.buildAndRegister();

#spicey chicken
<roost:chicken>.withTag({Growth: 1, Chicken: "contenttweaker:spicechicken", Gain: 1, Strength: 1}).addTooltip(format.darkRed("只能通过战利品获得：在主世界的地牢中找到。"));
spinnyGoFast.recipeBuilder()
    .inputs(<ore:enrichedEggSpice>)
	.chancedOutput(<harvestcraft:gingeritem>, 5500, 1000)
	.chancedOutput(<harvestcraft:spiceleafitem>, 5500, 1000)
	.chancedOutput(<harvestcraft:mustardseedsitem>, 5500, 1000)
	.chancedOutput(<harvestcraft:currypowderitem>, 5500, 1000)
	.chancedOutput(<harvestcraft:vanillaitem>, 5500, 1000)
	.chancedOutput(<harvestcraft:cinnamonitem>, 5500, 1000)
	.duration(220)
	.EUt(8)
	.buildAndRegister();

#gassy chicken
spinnyGoFast.recipeBuilder()
	.inputs(<ore:enrichedEggGassy>)
	.fluidOutputs([<liquid:nitrogen> * 75,<liquid:oxygen> * 210,<liquid:argon> * 20,<liquid:noble_gases> * 20])
	.duration(10)
	.EUt(48)
	.buildAndRegister();
	
	
	#Chicken gasses
	#250mb 	Hydrogen = 1 egg + 20/t for 200 ticks 
	#250mb 	Oxygen = 1 egg + 20/t for 25 ticks 
	#250mb 	Nitrogen = 1 egg + 20/t for 30 ticks 
	
chemReactor.recipeBuilder()
	.inputs(<ore:enrichedEggGassy>)
	.notConsumable(integratedCircuit.withTag({Configuration: 0}))
	.fluidOutputs([<liquid:hydrogen> * 250])
    .duration(200)
    .EUt(20)
    .buildAndRegister();

chemReactor.recipeBuilder()
	.inputs(<ore:enrichedEggGassy>)
	.notConsumable(integratedCircuit.withTag({Configuration: 1}))
	.fluidOutputs([<liquid:oxygen> * 250])
    .duration(25)
    .EUt(20)
    .buildAndRegister();

chemReactor.recipeBuilder()
	.inputs(<ore:enrichedEggGassy>)
	.notConsumable(integratedCircuit.withTag({Configuration: 2}))
	.fluidOutputs([<liquid:nitrogen> * 250])
    .duration(30)
    .EUt(20)
    .buildAndRegister();


	
	chemical_bath.recipeBuilder()
	.inputs(smartChicken)
    .fluidInputs([<liquid:cryotheum> * 1000])
	.outputs(<roost:chicken>.withTag({Growth: 1, Chicken: "contenttweaker:gassychicken", Gain: 1, Strength: 1}))
	.duration(1000)
	.EUt(120)
	.buildAndRegister();


#Flourine chicken 

spinnyGoFast.recipeBuilder()
    .inputs(<ore:enrichedEggFluorine>)
	.fluidOutputs([<liquid:fluorine> * 20])
	.chancedOutput(<ore:dustTinyCalcium>.firstItem, 2500, 500)
	.duration(20)
	.EUt(42)
	.buildAndRegister();

	
	mixer.recipeBuilder()
	.inputs(smartChicken, <ore:itemInfinityGoop>, <thaumcraft:morphic_resonator>, <ore:dustBiotite>*16)
	.outputs(<roost:chicken>.withTag({Growth: 1, Chicken: "contenttweaker:fluorinechicken", Gain: 1, Strength: 1}))
	.fluidInputs([<liquid:fluorine> * 1000])
	.duration(600)
	.EUt(48)
	.buildAndRegister();
	

<forge:bucketfilled>.withTag({FluidName: "ender_distillation", Amount: 1000}).addTooltip(format.darkRed("可以在月球地牢中找到。"));
#Resonating chicken - 
	mixer.recipeBuilder()
	.inputs(smartChicken, <ore:itemInfinityGoop>, <rftools:infused_enderpearl>, <astralsorcery:itemcraftingcomponent:4>*2)
	.outputs(<roost:chicken>.withTag({Growth: 1, Chicken: "contenttweaker:resonatingchicken", Gain: 1, Strength: 1}))
	.fluidInputs([<liquid:ender_distillation> * 1000])
	.duration(600)
	.EUt(320)
	.buildAndRegister();

spinnyGoFast.recipeBuilder()
    .inputs(<ore:enrichedEggResonating>)
	.fluidOutputs([<liquid:ender_distillation> * 20])
	.chancedOutput(<ore:dustTinyEnderPearl>.firstItem, 4500, 500)
	.chancedOutput(<ore:dustTinyEnderium>.firstItem, 750, 500)
	.duration(100)
	.EUt(48)
	.buildAndRegister();

#Primal chicken - 
	mixer.recipeBuilder()
	.inputs(smartChicken, <ore:itemInfinityGoop>, <rftools:infused_enderpearl>, <ore:dustMana>*2)
	.outputs(<roost:chicken>.withTag({Growth: 1, Chicken: "contenttweaker:primalchicken", Gain: 1, Strength: 1}))
	.fluidInputs([<liquid:blue_vitriol_water_solution> * 1000])
	.duration(600)
	.EUt(320)
	.buildAndRegister();

spinnyGoFast.recipeBuilder()
    .inputs(<ore:enrichedEggPrimal>)
	.fluidOutputs([<liquid:deuterium> * 20])
	.chancedOutput(<ore:dustPyrotheum>.firstItem, 2500, 500)
	.chancedOutput(<ore:dustCryotheum>.firstItem, 2500, 500)
	.chancedOutput(<ore:dustAerotheum>.firstItem, 2500, 500)
	.chancedOutput(<ore:dustPetrotheum>.firstItem, 2500, 500)	
	.duration(100)
	.EUt(48)
	.buildAndRegister();


#fluix chicken
	mixer.recipeBuilder()
	.inputs(smartChicken, <ore:itemInfinityGoop>, <ore:dustAstralStarmetal>*2, <ore:crystalPureFluix>*64)
	.outputs(<roost:chicken>.withTag({Growth: 1, Chicken: "contenttweaker:fluixchicken", Gain: 1, Strength: 1}))
	.fluidInputs([<liquid:redstone> * 2592])
	.duration(600)
	.EUt(48)
	.buildAndRegister();
	
	compressor.recipeBuilder()
	.inputs(<ore:enrichedEggFluix>*16)
	.outputs(<appliedenergistics2:material:7>)
	.duration(100)
	.EUt(7)
	.buildAndRegister();

#canola chicken
	mixer.recipeBuilder()
	.inputs(smartChicken, <enderio:block_infinity_fog>, <actuallyadditions:item_misc:23>*64)
	.outputs(<roost:chicken>.withTag({Growth: 1, Chicken: "contenttweaker:canolachicken", Gain: 1, Strength: 1}))
	.fluidInputs([<liquid:astralsorcery.liquidstarlight> * 2000])
	.duration(600)
	.EUt(28)
	.buildAndRegister();


#polywhatsit chicken
	mixer.recipeBuilder()
	.inputs(smartChicken, <enderio:block_infinity_fog>*2, <ore:powderMana>,<ore:string>*16)
	.outputs(<roost:chicken>.withTag({Growth: 1, Chicken: "contenttweaker:polywhatsitchicken", Gain: 1, Strength: 1}))
	.duration(600)
	.EUt(28)
	.buildAndRegister();

fluidExtractor.recipeBuilder()
	.inputs(<ore:enrichedEggPolywhatsit>)
	.fluidOutputs([<liquid:polycaprolactam> * 10])
    .duration(4)
    .EUt(12)
    .buildAndRegister();	


#plastic chicken ->ethanol + egg = polyethylene 1 bucket 150k eu
	mixer.recipeBuilder()
	.inputs(smartChicken, <enderio:block_infinity_fog>*2, <ore:quicksilver>, <ore:itemRubber>*64)
	.outputs(<roost:chicken>.withTag({Growth: 1, Chicken: "contenttweaker:plasticchicken", Gain: 1, Strength: 1}))
	.fluidInputs([<liquid:plastic> * 2000])
	.duration(600)
	.EUt(28)
	.buildAndRegister();

chemReactor.recipeBuilder()
	.inputs(<ore:enrichedEggPlastic>*32)
	.fluidInputs([<liquid:ethanol> * 1000])
	.fluidOutputs([<liquid:plastic> * 1000])
    .duration(3000)
    .EUt(24)
    .buildAndRegister();

#Menril chicken
	mixer.recipeBuilder()
	.inputs(smartChicken, <enderio:block_infinity_fog>, <ore:powderMana>*2)
	.outputs(<roost:chicken>.withTag({Growth: 1, Chicken: "contenttweaker:menrilchicken", Gain: 1, Strength: 1}))
	.fluidInputs([<liquid:menrilresin> * 2000])
	.duration(600)
	.EUt(28)
	.buildAndRegister();


#apatite chicken
	mixer.recipeBuilder()
	.inputs(smartChicken, <ore:itemInfinityGoop>, <ore:gemExquisiteApatite>)
	.outputs(<roost:chicken>.withTag({Growth: 1, Chicken: "contenttweaker:apatitechicken", Gain: 1, Strength: 1}))
	.fluidInputs([<liquid:nacre_fluid> * 2000])
	.duration(600)
	.EUt(28)
	.buildAndRegister();
	
#vinteum chicken
	mixer.recipeBuilder()
	.inputs(smartChicken, <ore:itemInfinityGoop>, <ore:gemExquisiteVinteum>)
	.outputs(<roost:chicken>.withTag({Growth: 1, Chicken: "contenttweaker:vinteumchicken", Gain: 1, Strength: 1}))
	.fluidInputs([<liquid:blue_vitriol_water_solution> * 11000])
	.duration(600)
	.EUt(480)
	.buildAndRegister();	

spinnyGoFast.recipeBuilder()
    .inputs(<ore:enrichedEggVinteum>)
	.chancedOutput(<ore:dustTinyVinteum>.firstItem, 8500, 1000)
	.chancedOutput(<ore:dustTinyManasteel>.firstItem, 3500, 500)
	.chancedOutput(<ore:dustTinyRareEarth>.firstItem, 3000, 450)
	.duration(480)
	.EUt(48)
	.buildAndRegister();

#Bloody Chicken
	mixer.recipeBuilder()
	.inputs(smartChicken, <ore:itemInfinityGoop>, <bloodmagic:blood_shard:1>)
	.outputs(<roost:chicken>.withTag({Growth: 1, Chicken: "contenttweaker:bloodchicken", Gain: 1, Strength: 1}))
	.fluidInputs([<liquid:liquidnightmares> * 10000])
	.duration(1200)
	.EUt(48)
	.buildAndRegister();
	
	val asChicken = <roost:chicken>.withTag({Growth: 1, Chicken: "contenttweaker:astralchicken", Gain: 1, Strength: 1});
	
#Astral Chicken
	mods.astralsorcery.Altar.addAttunementAltarRecipe("interactions:astralchicken", asChicken, 300, 350, [
		<ore:gemAquamarine>, <enderio:block_infinity_fog>, <ore:gemAquamarine>,
		<enderio:block_infinity_fog>, smartChicken, <enderio:block_infinity_fog>,
		<ore:gemAquamarine>, <enderio:block_infinity_fog>, <ore:gemAquamarine>,
		<projecte:item.pe_covalence_dust>,<projecte:item.pe_covalence_dust>,<projecte:item.pe_covalence_dust>,<projecte:item.pe_covalence_dust>]);
	
	#astral egg for starlight
	mods.astralsorcery.Lightwell.addLiquefaction(<contenttweaker:astral_enriched_egg>, <liquid:astralsorcery.liquidstarlight>, 0.7, 10, 0);	
	
	
#Learned Chicken
	autoclave.recipeBuilder()
    .inputs(smartChicken)
    .fluidInputs([<liquid:xpjuice> * 10000])
    .outputs(<roost:chicken>.withTag({Growth: 1, Chicken: "contenttweaker:learningchicken", Gain: 1, Strength: 1}))
    .duration(8000)
    .EUt(24)
    .buildAndRegister();	
	
fluidExtractor.recipeBuilder()
	.inputs(<ore:enrichedEggLearning>)
	.fluidOutputs([<liquid:xpjuice> * 40])
    .duration(200)
    .EUt(12)
    .buildAndRegister();	
		


#Mana chicken

val manaChicken = <roost:chicken>.withTag({Growth: 1, Chicken: "contenttweaker:manachicken", Gain: 1, Strength: 1});

	mods.thaumcraft.Infusion.registerRecipe("manaChicken", "INFUSION", manaChicken, 8,
	[<aspect:volatus> * 32, <aspect:potentia> * 64, <aspect:praecantatio> * 48, <aspect:alienis> * 16],
	smartChicken,
	[<astralsorcery:itemcraftingcomponent:4>,<astralsorcery:itemcraftingcomponent:4>,<astralsorcery:itemcraftingcomponent:4>,<astralsorcery:itemcraftingcomponent:4>,<thermalfoundation:material:1028>,<thermalfoundation:material:1028>,<ore:gemFlawlessVinteum>.firstItem, <ore:gemFlawlessVinteum>.firstItem]);

	mods.astralsorcery.Lightwell.addLiquefaction(<ore:enrichedEggMana>.firstItem, <liquid:mana_fluid>, 0.7, 10, 0);	


#latticite chicken

val latticiteChicken = <roost:chicken>.withTag({Growth: 1, Chicken: "contenttweaker:latticitechicken", Gain: 1, Strength: 1});

	mods.thaumcraft.Infusion.registerRecipe("latticiteChicken", "INFUSION", latticiteChicken, 6,
	[<aspect:volatus> * 32, <aspect:potentia> * 64, <aspect:sensus> * 48, <aspect:alienis> * 16],
	smartChicken,
	[<draconicevolution:dislocator>,<fluxnetworks:flux>,<appliedenergistics2:material:1>,<appliedenergistics2:material:1>,<enderio:item_material:75>,<metaitem:quantumstar>]);


fluidExtractor.recipeBuilder()
	.inputs(<contenttweaker:latticite_enriched_egg> * 1)
	.fluidOutputs([<liquid:rawlatticite> * 20])
	.duration(10)
	.EUt(18)
	.buildAndRegister();

spinnyGoFast.recipeBuilder()
    .fluidInputs([<liquid:rawlatticite> * 100])
	.chancedOutput(<ore:dustTinyCertusQuartz>.firstItem, 3500, 500)
	.chancedOutput(<ore:dustTinyNetherQuartz>.firstItem, 3500, 500)
	.chancedOutput(<ore:dustTinyNetherStar>.firstItem, 50, 10)
	.duration(100)
	.EUt(8)
	.buildAndRegister();

	chemical_bath.recipeBuilder()
	.inputs(<appliedenergistics2:crystal_seed>)
    .fluidInputs([<liquid:rawlatticite> * 200])
	.outputs(<appliedenergistics2:material>)
	.duration(160)
	.EUt(48)
	.buildAndRegister();

#Graphite chicken

	macerator.recipeBuilder()
    .inputs(<ore:enrichedEggGraphite>)
	.outputs(<ore:dustTinyGraphite>.firstItem)
    .duration(80)
    .EUt(8)
    .buildAndRegister();

	mixer.recipeBuilder()
	.inputs(smartChicken, <ore:dustSmallGraphene>, <ore:dustNetherQuartz>, <ore:dustDiamond>)
	.outputs(<roost:chicken>.withTag({Growth: 1, Chicken: "contenttweaker:graphitechicken", Gain: 1, Strength: 1}))
	.duration(1000)
	.EUt(24)
	.buildAndRegister();

	
#Space Chicken
	mixer.recipeBuilder()
	.inputs(smartChicken, <ore:itemInfinityGoop>, <ore:dustSkystone>, <ore:dustStellarAlloy>)
	.outputs(<roost:chicken>.withTag({Growth: 1, Chicken: "contenttweaker:spacechicken", Gain: 1, Strength: 1}))
	.fluidInputs([<liquid:unstable_mana> * 10000])
	.duration(1200)
	.EUt(48)
	.buildAndRegister();
	
	macerator.recipeBuilder()
    .inputs(<contenttweaker:space_enriched_egg>)
	.outputs(<ore:dustTinyStarmetal>.firstItem)
    .duration(80)
    .EUt(8)
    .buildAndRegister();
	
	laser.recipeBuilder()
	.inputs(<contenttweaker:space_enriched_egg>*8)
	.notConsumable(<contenttweaker:skystonelense>)
    .outputs(<ore:gemSkystone>.firstItem)
    .duration(160)
    .EUt(120)
    .buildAndRegister();
	
	autoclave.recipeBuilder()
    .inputs(<contenttweaker:space_enriched_egg>)
    .fluidInputs([<liquid:astralsorcery.liquidstarlight> * 100])
    .outputs(<ore:gemQuartzBlack>.firstItem)
    .duration(800)
    .EUt(24)
    .buildAndRegister();	
	
#color chickens
	#Red
	RecipeBuilder.get("basic")
	.setShaped([
		[<ore:dyeRed>, <ore:dyeRed>, <ore:dyeRed>],
		[<ore:dyeRed>, smartChicken, <ore:dyeRed>],
		[<ore:dyeRed>, <ore:dyeRed>, <ore:dyeRed>]])
	.setFluid(<liquid:mana_fluid>*1000)
	.addOutput(<roost:chicken>.withTag({Growth: 1, Chicken: "chickens:redchicken", Gain: 1, Strength: 1}))
	.create();
	
	#blue
	RecipeBuilder.get("basic")
	.setShaped([
		[<ore:dyeBlue>, <ore:dyeBlue>, <ore:dyeBlue>],
		[<ore:dyeBlue>, smartChicken, <ore:dyeBlue>],
		[<ore:dyeBlue>, <ore:dyeBlue>, <ore:dyeBlue>]])
	.setFluid(<liquid:mana_fluid>*1000)
	.addOutput(<roost:chicken>.withTag({Growth: 1, Chicken: "chickens:bluechicken", Gain: 1, Strength: 1}))
	.create();
	
	#green
	RecipeBuilder.get("basic")
	.setShaped([
		[<ore:dyeGreen>, <ore:dyeGreen>, <ore:dyeGreen>],
		[<ore:dyeGreen>, smartChicken, <ore:dyeGreen>],
		[<ore:dyeGreen>, <ore:dyeGreen>, <ore:dyeGreen>]])
	.setFluid(<liquid:mana_fluid>*1000)
	.addOutput(<roost:chicken>.withTag({Growth: 1, Chicken: "chickens:greenchicken", Gain: 1, Strength: 1}))
	.create();
	
	#yellow
	RecipeBuilder.get("basic")
	.setShaped([
		[<ore:dyeYellow>, <ore:dyeYellow>, <ore:dyeYellow>],
		[<ore:dyeYellow>, smartChicken, <ore:dyeYellow>],
		[<ore:dyeYellow>, <ore:dyeYellow>, <ore:dyeYellow>]])
	.setFluid(<liquid:mana_fluid>*1000)
	.addOutput(<roost:chicken>.withTag({Growth: 1, Chicken: "chickens:yellowchicken", Gain: 1, Strength: 1}))
	.create();

val waterChiken = <roost:chicken>.withTag({Growth: 1, Chicken: "chickens:waterchicken", Gain: 1, Strength: 1});

	#Water Chicken
RecipeBuilder.get("basic")
	.setShaped([
		[null, <actuallyadditions:item_water_bowl>, null],
		[<projecte:item.pe_covalence_dust>, smartChicken, <projecte:item.pe_covalence_dust>],
		[null, <projecte:item.pe_covalence_dust>, null]])
	.setFluid(<liquid:water>*1000)
	.addOutput(waterChiken)
	.create();


#Vitriolic
fluidExtractor.recipeBuilder()
	.inputs(<ore:enrichedEggVitriolic> * 1)
	.fluidOutputs([<liquid:blue_vitriol_water_solution> * 500])
	.duration(100)
	.EUt(48)
	.buildAndRegister();

	<roost:chicken>.withTag({Growth: 1, Chicken: "contenttweaker:vitriolicchicken", Gain: 1, Strength: 1}).addTooltip(format.darkRed("只能通过战利品获得：在Euclydes星的广袤无垠的酸液海洋中找到。"));

#Nether wart chicken
<roost:chicken>.withTag({Growth: 1, Chicken: "chickens:netherwartchicken", Gain: 1, Strength: 1}).addTooltip(format.darkRed("只能通过战利品获得：在地狱的地牢中找到。"));

#water
recipes.addShapeless(<harvestcraft:freshwateritem>*2,[<chickens:liquid_egg>]);

var itemsDisabled as IItemStack[] = [
	<chickens:colored_egg:15>,
	<chickens:colored_egg:4>,
	<chickens:spawn_egg>.withTag({ChickenType: {id: "chickens:emeraldchicken"}}),
	<chickens:spawn_egg>.withTag({ChickenType: {id: "morechickens:rubychicken"}}),
	<chickens:spawn_egg>.withTag({ChickenType: {id: "morechickens:tungstenchicken"}}),
	<chickens:spawn_egg>.withTag({ChickenType: {id: "morechickens:topazchicken"}}),
	<chickens:spawn_egg>.withTag({ChickenType: {id: "chickens:redstonechicken"}}),
	<chickens:spawn_egg>.withTag({ChickenType: {id: "morechickens:tanzanitechicken"}}),
	<chickens:spawn_egg>.withTag({ChickenType: {id: "morechickens:cobaltchicken"}}),
	<chickens:spawn_egg>.withTag({ChickenType: {id: "morechickens:osmiumchicken"}}),
	<chickens:spawn_egg>.withTag({ChickenType: {id: "morechickens:enderiumchicken"}}),
	<chickens:spawn_egg>.withTag({ChickenType: {id: "morechickens:silverorechicken"}}),
	<chickens:spawn_egg>.withTag({ChickenType: {id: "chickens:bluechicken"}}),
	<chickens:spawn_egg>.withTag({ChickenType: {id: "morechickens:platinumchicken"}}),
	<chickens:spawn_egg>.withTag({ChickenType: {id: "morechickens:sapphirechicken"}}),
	<chickens:spawn_egg>.withTag({ChickenType: {id: "morechickens:nickelchicken"}}),
	<chickens:spawn_egg>.withTag({ChickenType: {id: "morechickens:tinchicken"}}),
	<chickens:spawn_egg>.withTag({ChickenType: {id: "chickens:goldchicken"}}),
	<chickens:spawn_egg>.withTag({ChickenType: {id: "morechickens:aluminumchicken"}}),
	<chickens:spawn_egg>.withTag({ChickenType: {id: "chickens:diamondchicken"}}),
	<chickens:spawn_egg>.withTag({ChickenType: {id: "morechickens:siliconchicken"}}),
	<chickens:spawn_egg>.withTag({ChickenType: {id: "chickens:ironchicken"}}),
	<chickens:spawn_egg>.withTag({ChickenType: {id: "morechickens:uraniumchicken"}}),
	<chickens:spawn_egg>.withTag({ChickenType: {id: "morechickens:copperchicken"}}),
	<chickens:spawn_egg>.withTag({ChickenType: {id: "morechickens:arditechicken"}}),
	<chickens:spawn_egg>.withTag({ChickenType: {id: "chickens:quartzchicken"}}),
	<chickens:spawn_egg>.withTag({ChickenType: {id: "morechickens:titaniumchicken"}}),
	<chickens:spawn_egg>.withTag({ChickenType: {id: "morechickens:sulfurchicken"}}),
	<chickens:spawn_egg>.withTag({ChickenType: {id: "morechickens:zincchicken"}}),
	<chickens:spawn_egg>.withTag({ChickenType: {id: "chickens:coalchicken"}}),
	<chickens:spawn_egg>.withTag({ChickenType: {id: "morechickens:iridiumchicken"}}),
	<chickens:spawn_egg>.withTag({ChickenType: {id: "morechickens:boopbeepchick"}}),
	<chickens:spawn_egg>.withTag({ChickenType: {id: "morechickens:mramericanchick"}}),
	<chickens:spawn_egg>.withTag({ChickenType: {id: "morechickens:funwaychick"}})
];

for i in itemsDisabled {
	mods.jei.JEI.removeAndHide(i);
}

val metallum = <thaumcraft:phial:1>.withTag({Aspects: [{amount: 10, key: "metallum"}]});
val vitreus = <thaumcraft:phial:1>.withTag({Aspects: [{amount: 10, key: "vitreus"}]});
val perditio = <thaumcraft:phial:1>.withTag({Aspects: [{amount: 10, key: "perditio"}]});
val bindingReagent = <bloodmagic:component:8>;
val voidCrystal = <actuallyadditions:item_crystal:3>;
val water = <botania:rune>;
val fire = <botania:rune:1>;
val earth = <botania:rune:2>;
val air = <botania:rune:3>;
val spring = <botania:rune:4>;
val summer = <botania:rune:5>;
val autumn = <botania:rune:6>;
val winter = <botania:rune:7>;
val mana = <botania:rune:8>;
val lust = <botania:rune:9>;
val gluttony = <botania:rune:10>;
val greed = <botania:rune:11>;
val sloth = <botania:rune:12>;
val wrath = <botania:rune:13>;
val envy = <botania:rune:14>;
val pride = <botania:rune:15>;


var eggRecipeMap as IItemStack[][string] = {
	"contenttweaker:apatitechicken" : [vitreus, sloth],
	"contenttweaker:graphitechicken" : [perditio, water]
};

		
	


print("---------------Chickens End------------------");