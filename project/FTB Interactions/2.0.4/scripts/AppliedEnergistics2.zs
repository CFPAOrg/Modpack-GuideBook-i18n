import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.appliedenergistics2.Grinder;
import mods.gregtech.recipe.RecipeMap;
import crafttweaker.data.IData;
import crafttweaker.liquid.ILiquidStack;
import mods.thermalexpansion.Infuser;



print("---------------Applied Energistics 2 Start------------------");

val assembler = mods.gregtech.recipe.RecipeMap.getByName("assembler");
val laser = mods.gregtech.recipe.RecipeMap.getByName("laser_engraver");
val mixer = mods.gregtech.recipe.RecipeMap.getByName("mixer");
val macerator = mods.gregtech.recipe.RecipeMap.getByName("macerator");
val alloyer = mods.gregtech.recipe.RecipeMap.getByName("alloy_smelter");
val autoclave = mods.gregtech.recipe.RecipeMap.getByName("autoclave");
val lathe = mods.gregtech.recipe.RecipeMap.getByName("lathe");
val implosion = mods.gregtech.recipe.RecipeMap.getByName("implosion_compressor");

#reuse crystals
	<appliedenergistics2:material>.displayName = "二倍体多晶格晶体";
	<appliedenergistics2:material:1>.displayName = "充能等距多晶格晶体";
	<appliedenergistics2:material:1>.addTooltip(format.darkRed("在能量灌注机里充能二倍体多晶格晶体来制作"));

#remove recipes for crystals	
		recipes.remove(<appliedenergistics2:material>);
			
#move crystals to unique oredict
<ore:crystalCertusQuartz>.remove(<appliedenergistics2:material>);
<ore:crystalCertusQuartz>.add(gemCertus);

#skystone lense creation
	lathe.recipeBuilder()
		.inputs(<ore:plateSkystone>)
		.outputs(<contenttweaker:skystonelense>, <ore:dustSmallSkystone>.firstItem)
		.duration(50)
		.EUt(16)
		.buildAndRegister();	
	
#Ae2 quartz from nether stars and quartz dust
	alloyer.recipeBuilder()
		.inputs(<ore:lensNetherStar>,<ore:dustCertusQuartz>*4)
		.outputs(<appliedenergistics2:material> * 4)
		.duration(160)
		.EUt(38)
		.buildAndRegister();	

recipes.remove(<appliedenergistics2:charger>);
<appliedenergistics2:charger>.addTooltip(format.darkRed("使用能量灌注机。"));
	
	#skystone from GT Skystone
furnace.addRecipe(<appliedenergistics2:sky_stone_block>, <ore:skystone>);
	
	#smelt certus ore to flawed certus

furnace.addRecipe(<ore:gemFlawedCertusQuartz>.firstItem, <ore:oreCertusQuartz>);
	
	#skystone chest
recipes.remove(<appliedenergistics2:sky_stone_chest>);
assembler.recipeBuilder()
	.inputs(<ore:chest>, <ore:skystone>*4)
    .outputs(<appliedenergistics2:sky_stone_chest>)
    .duration(200)
    .EUt(16)
    .buildAndRegister();

	#skystone block chest
recipes.remove(<appliedenergistics2:smooth_sky_stone_chest>);
assembler.recipeBuilder()
	.inputs(<ore:chest>, <appliedenergistics2:smooth_sky_stone_block>*8)
    .outputs(<appliedenergistics2:smooth_sky_stone_chest>)
    .duration(200)
    .EUt(16)
    .buildAndRegister();	
	
	#quartz glass
recipes.remove(<appliedenergistics2:quartz_glass>);
assembler.recipeBuilder()
	.inputs(<ore:dustCertusQuartz>)
    .outputs(<appliedenergistics2:quartz_glass>)
	.fluidInputs([<liquid:glass> * 144])
    .duration(200)
    .EUt(16)
    .buildAndRegister();

	
	#remove and hide AE silicon
furnace.remove(<appliedenergistics2:material:5>);
mods.jei.JEI.hide(<appliedenergistics2:material:5>);
	
	#charged certus
mods.thermalexpansion.Infuser.addRecipe(<appliedenergistics2:material:1>, <appliedenergistics2:material>, 4000);

	#me drive
recipes.remove(<appliedenergistics2:drive>);
recipes.addShaped(<appliedenergistics2:drive>,[
	[<ore:plateSkystone>,<appliedenergistics2:material:24>,<ore:plateSkystone>],
	[<appliedenergistics2:part:16>,<ore:alloyUltimate>,<appliedenergistics2:part:16>],
	[<ore:plateSkystone>,<appliedenergistics2:material:24>,<ore:plateSkystone>]]);
	
	#fluix
mixer.recipeBuilder()
	.inputs(<ore:gemNetherQuartz>,<minecraft:redstone>, <ore:gemCertusQuartz>)
    .outputs(<appliedenergistics2:material:7> *2)
	.fluidInputs([<liquid:water> * 200])
    .duration(60)
    .EUt(48)
    .buildAndRegister();
	
	#macerate fluix
macerator.recipeBuilder()
    .inputs(<ore:crystalFluix>)
	.outputs(<appliedenergistics2:material:8>)
    .duration(40)
    .EUt(48)
    .buildAndRegister();	

	
	#dense energy cell - moved to miniaturization crafting
recipes.remove(<appliedenergistics2:dense_energy_cell>);
	
	#energy cell
recipes.remove(<appliedenergistics2:energy_cell>);
recipes.addShaped(<appliedenergistics2:energy_cell>,[
	[<ore:plateCertusQuartz>,<appliedenergistics2:part:16>,<ore:plateCertusQuartz>],
	[<appliedenergistics2:part:16>,<metaitem:battery.re.lv.lithium>,<appliedenergistics2:part:16>],
	[<ore:plateCertusQuartz>,<appliedenergistics2:part:16>,<ore:plateCertusQuartz>]
	]);
	
	#covered cables
recipes.removeShapeless(<appliedenergistics2:part:36>, 
	[<ore:blockWool>,<appliedenergistics2:part:16>]);
assembler.recipeBuilder()
	.inputs(<appliedenergistics2:part:16>)
	.notConsumable(<metaitem:circuit.integrated>.withTag({Configuration: 24}).or(<metaitem:circuit.integrated>))
    .outputs(<appliedenergistics2:part:36>)
	.fluidInputs([<liquid:polytetrafluoroethylene> * 5])
    .duration(200)
    .EUt(16)
	.buildAndRegister();

	#Creative Wireless AE Terminal
assembler.recipeBuilder()
	.inputs(<wct:wct>,<ae2wtlib:infinity_booster_card>*32, <ore:cableGtSingleOsmium>*4, <actuallyadditions:item_crystal:2>*2, <appliedenergistics2:dense_energy_cell>, <ore:circuitLudicrous>)
    .outputs(<wct:wct_creative>)
	.fluidInputs([<liquid:polytetrafluoroethylene> * 720])
    .duration(1000)
    .EUt(7196)
    .buildAndRegister();

	
	#crafting CPUs
recipes.remove(<appliedenergistics2:crafting_storage_1k>);
assembler.recipeBuilder()
	.inputs(<appliedenergistics2:crafting_unit>, <appliedenergistics2:material:35>)
	.notConsumable(<metaitem:circuit.integrated>.withTag({Configuration: 0}).or(<metaitem:circuit.integrated>))
    .outputs(<appliedenergistics2:crafting_storage_1k>)
	.fluidInputs([<liquid:polytetrafluoroethylene> * 144])
    .duration(200)
    .EUt(16)
    .buildAndRegister();
	
	recipes.remove(<appliedenergistics2:crafting_storage_4k>);
	assembler.recipeBuilder()
	.inputs(<appliedenergistics2:crafting_unit>, <appliedenergistics2:material:36>)
	.notConsumable(<metaitem:circuit.integrated>.withTag({Configuration: 0}).or(<metaitem:circuit.integrated>))
    .outputs(<appliedenergistics2:crafting_storage_4k>)
	.fluidInputs([<liquid:polytetrafluoroethylene> * 144])
    .duration(200)
    .EUt(16)
    .buildAndRegister();
	
	recipes.remove(<appliedenergistics2:crafting_storage_16k>);
	assembler.recipeBuilder()
	.inputs(<appliedenergistics2:crafting_unit>, <appliedenergistics2:material:37>)
	.notConsumable(<metaitem:circuit.integrated>.withTag({Configuration: 0}).or(<metaitem:circuit.integrated>))
    .outputs(<appliedenergistics2:crafting_storage_16k>)
	.fluidInputs([<liquid:polytetrafluoroethylene> * 144])
    .duration(200)
    .EUt(16)
    .buildAndRegister();
	
	recipes.remove(<appliedenergistics2:crafting_storage_64k>);
	assembler.recipeBuilder()
	.inputs(<appliedenergistics2:crafting_unit>, <appliedenergistics2:material:38>)
	.notConsumable(<metaitem:circuit.integrated>.withTag({Configuration: 0}).or(<metaitem:circuit.integrated>))
    .outputs(<appliedenergistics2:crafting_storage_64k>)
	.fluidInputs([<liquid:polytetrafluoroethylene> * 144])
    .duration(200)
    .EUt(16)
    .buildAndRegister();	
	
	
	#energy acceptor
recipes.remove(<appliedenergistics2:energy_acceptor>);
recipes.addShaped(<appliedenergistics2:energy_acceptor>,[
	[<ore:plateAluminium>,<appliedenergistics2:quartz_glass>,<ore:plateAluminium>],
	[<appliedenergistics2:quartz_glass>,<ore:alloyAdvanced>,<appliedenergistics2:quartz_glass>],
	[<ore:plateAluminium>,<appliedenergistics2:quartz_glass>,<ore:plateAluminium>]
	]);	
	
	#quartz fiber
recipes.remove(<appliedenergistics2:part:140>);
assembler.recipeBuilder()
	.inputs(<ore:stickCertusQuartz>)
    .outputs(<appliedenergistics2:part:140>)
	.fluidInputs([<liquid:glass> * 144])
    .duration(200)
    .EUt(16)
    .buildAndRegister();

recipes.remove(<appliedenergistics2:part:140>);
assembler.recipeBuilder()
	.inputs(<ore:stickNetherQuartz>)
    .outputs(<appliedenergistics2:part:140>)
	.fluidInputs([<liquid:glass> * 144])
    .duration(200)
    .EUt(16)
    .buildAndRegister();

	#quantum link chamber
recipes.remove(<appliedenergistics2:quantum_link>);
assembler.recipeBuilder()
	.inputs(<appliedenergistics2:quartz_glass>,<ore:pearlFluix>,<ore:alloyElite>)
    .outputs(<appliedenergistics2:quantum_link>)
	.fluidInputs([<liquid:redstone> * 576])
    .duration(225)
    .EUt(480)
    .buildAndRegister();
	
	#formation core
recipes.remove(<appliedenergistics2:material:43>);
laser.recipeBuilder()
	.inputs(<actuallyadditions:item_crystal>)
	.notConsumable(<contenttweaker:skystonelense>)
    .outputs(<appliedenergistics2:material:43>)
    .duration(80)
    .EUt(120)
    .buildAndRegister();
	
	#annihilation core	
recipes.remove(<appliedenergistics2:material:44>);
laser.recipeBuilder()
	.inputs(<actuallyadditions:item_crystal:1>)
	.notConsumable(<contenttweaker:skystonelense>)
    .outputs(<appliedenergistics2:material:44>)
    .duration(80)
    .EUt(120)
    .buildAndRegister();

	#terminal and crafting terminal
	recipes.remove(<appliedenergistics2:part:360>);
	recipes.remove(<appliedenergistics2:part:380>);

	recipes.addShaped(<appliedenergistics2:part:360>, 
	[[<ore:screwStainlessSteel>, <appliedenergistics2:part:380>, <ore:screwStainlessSteel>],
	[<ore:plateAluminium>, <logisticspipes:crafting_table>, <ore:plateAluminium>], 
	[<ore:screwStainlessSteel>, <ore:plateAluminium>, <ore:screwStainlessSteel>]]);

	recipes.addShaped(<appliedenergistics2:part:380>, 
	[[<ore:screwAluminium>, <ore:circuitGood>, <ore:screwAluminium>],
	[<actuallyadditions:item_crystal>, <ore:itemIlluminatedPanel>, <actuallyadditions:item_crystal:1>], 
	[<ore:screwAluminium>, <ore:plateSteel>, <ore:screwAluminium>]]);	
	
	#crafting unit
recipes.remove(<appliedenergistics2:crafting_unit>);
assembler.recipeBuilder()
	.inputs(<ore:plateStellarAlloy>*4, <appliedenergistics2:part:76>, <ore:circuitAdvanced>)
    .outputs(<appliedenergistics2:crafting_unit>)
	.fluidInputs([<fluid:redstone> * 576])
    .duration(350)
    .EUt(410)
    .buildAndRegister();		
		
	#storage buses
	recipes.remove(<appliedenergistics2:part:220>);
	recipes.remove(<appliedenergistics2:part:221>);

	recipes.addShaped(<appliedenergistics2:part:220>, 
	[[null, <minecraft:sticky_piston>, null],
	[<ore:plateQuartzite>, <appliedenergistics2:chest>, <ore:plateQuartzite>], 
	[null, <minecraft:piston>, null]]);

	recipes.addShaped(<appliedenergistics2:part:221>, 
	[[null, <minecraft:sticky_piston>, null],
	[<ore:plateLapis>, <appliedenergistics2:chest>, <ore:plateLapis>], 
	[null, <minecraft:piston>, null]]);

	
	#ME Tunnels 
	recipes.remove(<appliedenergistics2:part:460>);
	assembler.recipeBuilder()
	.inputs(<ore:platePolytetrafluoroethylene>, <appliedenergistics2:material:24>, <appliedenergistics2:part:76>)
    .outputs(<appliedenergistics2:part:460>)
	.fluidInputs([<fluid:redstone> * 144])
    .duration(350)
    .EUt(410)
    .buildAndRegister();		
	
	recipes.addShapeless(<appliedenergistics2:interface>, [<appliedenergistics2:part:440>]);

	#storage overhaul
	#4k - <appliedenergistics2:material:36>
	recipes.remove(<appliedenergistics2:material:36>);
	assembler.recipeBuilder()
	.inputs(<appliedenergistics2:material:35>*3, <ore:foilStainlessSteel>, <appliedenergistics2:quartz_glass>)
    .outputs(<appliedenergistics2:material:36>)
	.fluidInputs([<fluid:redstone> * 144])
    .duration(600)
    .EUt(16)
    .buildAndRegister();		
	
	#16k - 
	recipes.remove(<appliedenergistics2:material:37>);
	assembler.recipeBuilder()
	.inputs(<appliedenergistics2:material:36>*3, <ore:foilTitanium>, <appliedenergistics2:quartz_glass>)
    .outputs(<appliedenergistics2:material:37>)
	.fluidInputs([<fluid:redstone> * 144])
    .duration(600)
    .EUt(16)
    .buildAndRegister();	
	
	#64k - 
	recipes.remove(<appliedenergistics2:material:38>);
	assembler.recipeBuilder()
	.inputs(<appliedenergistics2:material:37>*3, <ore:foilPlatinum>, <appliedenergistics2:quartz_glass>)
    .outputs(<appliedenergistics2:material:38>)
	.fluidInputs([<fluid:redstone> * 144])
    .duration(600)
    .EUt(16)
    .buildAndRegister();		

	#4kfluid - 
	recipes.remove(<appliedenergistics2:material:55>);
	assembler.recipeBuilder()
	.inputs(<appliedenergistics2:material:54>*3, <ore:foilStainlessSteel>, <ore:plateLapis>)
    .outputs(<appliedenergistics2:material:55>)
	.fluidInputs([<fluid:redstone> * 144])
    .duration(600)
    .EUt(16)
    .buildAndRegister();		
	
	#16kfluid -
	recipes.remove(<appliedenergistics2:material:56>);
	assembler.recipeBuilder()
	.inputs(<appliedenergistics2:material:55>*3, <ore:foilTitanium>, <ore:plateLapis>)
    .outputs(<appliedenergistics2:material:56>)
	.fluidInputs([<fluid:redstone> * 144])
    .duration(600)
    .EUt(16)
	.buildAndRegister();	
	
	#64kfluid - 
	recipes.remove(<appliedenergistics2:material:57>);
	assembler.recipeBuilder()
	.inputs(<appliedenergistics2:material:56>*3, <ore:foilPlatinum>, <ore:plateLapis>)
    .outputs(<appliedenergistics2:material:57>)
	.fluidInputs([<fluid:redstone> * 144])
    .duration(600)
    .EUt(16)
	.buildAndRegister();	
	
	#4kessentia - 
	recipes.remove(<thaumicenergistics:essentia_component_4k>);
	assembler.recipeBuilder()
	.inputs(<thaumicenergistics:essentia_component_1k>*3, <ore:foilStainlessSteel>, <thaumcraft:salis_mundus> * 4)
    .outputs(<thaumicenergistics:essentia_component_4k>)
	.fluidInputs([<fluid:mana_fluid> * 250])
    .duration(600)
    .EUt(16)
    .buildAndRegister();			
	
	#16kessentia -
	recipes.remove(<thaumicenergistics:essentia_component_16k>);
	assembler.recipeBuilder()
	.inputs(<thaumicenergistics:essentia_component_4k>*3, <ore:foilTitanium>, <thaumcraft:salis_mundus> * 4)
    .outputs(<thaumicenergistics:essentia_component_16k>)
	.fluidInputs([<fluid:mana_fluid> * 250])
    .duration(600)
    .EUt(16)
	.buildAndRegister();		
	
	#64kessentia -
	recipes.remove(<thaumicenergistics:essentia_component_64k>);
	assembler.recipeBuilder()
	.inputs(<thaumicenergistics:essentia_component_16k>*3, <ore:foilPlatinum>, <thaumcraft:salis_mundus> * 4)
    .outputs(<thaumicenergistics:essentia_component_64k>)
	.fluidInputs([<fluid:mana_fluid> * 250])
    .duration(600)
    .EUt(16)
	.buildAndRegister();	
	
	#ae interface
	recipes.remove(<appliedenergistics2:interface>);
	assembler.recipeBuilder()
	.inputs(<ore:plateSkystone> *6, <appliedenergistics2:part:420>, <appliedenergistics2:material:1>)
    .outputs(<appliedenergistics2:interface>)
	.fluidInputs([<liquid:plastic> * 288])
    .EUt(480)
    .duration(225)
    .buildAndRegister();
	
	
	#illuminated panel
	recipes.remove(<appliedenergistics2:part:180>);
	assembler.recipeBuilder()
	.inputs(<appliedenergistics2:quartz_glass>*3, <ore:plateRedAlloy>, <ore:plateAluminium>)
    .outputs(<appliedenergistics2:part:180> * 3)
	.fluidInputs([<liquid:glowstone> * 144])
    .duration(200)
    .EUt(16)
    .buildAndRegister();
	
	
	#fluix pearl 
	recipes.remove(<appliedenergistics2:material:9>);
	mixer.recipeBuilder()
	.inputs(<ore:dustEnderPearl>,<ore:crystalPureFluix>)
    .outputs(<appliedenergistics2:material:9>)
	.fluidInputs([<liquid:helium> * 30])
    .duration(600)
    .EUt(48)
    .buildAndRegister();
	
	#glass cable
	recipes.remove(<appliedenergistics2:part:16>);
	assembler.recipeBuilder()
	.inputs(<appliedenergistics2:part:140>,<ore:dustFluix>*2)
    .outputs(<appliedenergistics2:part:16>)
	.fluidInputs([<liquid:plastic> * 36])
    .duration(200)
    .EUt(16)
    .buildAndRegister();
	
	#controller
	recipes.remove(<appliedenergistics2:controller>);
	
	#wrenches and knives
	recipes.remove(<appliedenergistics2:certus_quartz_wrench>);
	recipes.addShaped(<appliedenergistics2:certus_quartz_wrench>,[
	[<ore:crystalCertusQuartz>,null,<ore:crystalCertusQuartz>],
	[craftingToolHardHammer,<ore:crystalCertusQuartz>],
	[<ore:crystalCertusQuartz>,null,<ore:crystalCertusQuartz>]
	]);
	recipes.remove(<appliedenergistics2:certus_quartz_cutting_knife>);
	recipes.addShaped(<appliedenergistics2:certus_quartz_cutting_knife>,[
	[null,null,<ore:stickWood>],
	[craftingToolFile,<ore:stickWood>],
	[<ore:gemCertusQuartz>,craftingToolHardHammer]
	]);
	recipes.remove(<appliedenergistics2:nether_quartz_wrench>);
	recipes.addShaped(<appliedenergistics2:nether_quartz_wrench>,[
	[<ore:gemNetherQuartz>,null,<ore:gemNetherQuartz>],
	[craftingToolHardHammer,<ore:gemNetherQuartz>],
	[<ore:gemNetherQuartz>,null,<ore:gemNetherQuartz>]
	]);
	recipes.remove(<appliedenergistics2:nether_quartz_cutting_knife>);
	recipes.addShaped(<appliedenergistics2:nether_quartz_cutting_knife>,[
	[null, null, <ore:stickWood>],
	[craftingToolFile, <ore:stickWood>],
	[<ore:gemNetherQuartz>, craftingToolHardHammer]
	]);

	#wireless booster
	recipes.remove(<appliedenergistics2:material:42>);
	recipes.addShaped(<appliedenergistics2:material:42> * 2, 
	[[<ore:plateAluminium>, <enderio:item_material:15>, <ore:plateAluminium>],
	[<ore:wireFineRedAlloy>, <appliedenergistics2:material:9>, <ore:wireFineRedAlloy>], 
	[<ore:plateAluminium>, <ore:wireFineRedAlloy>, <ore:plateAluminium>]]);
	
	#vibration chamber
	mods.jei.JEI.removeAndHide(<appliedenergistics2:vibration_chamber>);
	mods.jei.JEI.removeAndHide(<appliedenergistics2:condenser>);
	
	#Molecular assembler rip
	mods.jei.JEI.removeAndHide(<appliedenergistics2:molecular_assembler>);
	
	#singularity
implosion.recipeBuilder()
    .inputs(<ore:compressed3xDustBedrock>)
	.property("explosives", 64)
    .outputs(<appliedenergistics2:material:47>)
    .duration(40)
    .EUt(24)
    .buildAndRegister();
	
	#printed circuits
	#calculation
	laser.recipeBuilder()
	.inputs(<ore:crystalPureCertusQuartz>)
	.notConsumable(<contenttweaker:skystonelense>)
    .outputs(<appliedenergistics2:material:16>)
    .duration(200)
    .EUt(120)
    .buildAndRegister();

	#logic
	laser.recipeBuilder()
	.inputs(<ore:plateRoseGold>)
	.notConsumable(<contenttweaker:skystonelense>)
    .outputs(<appliedenergistics2:material:18>)
    .duration(200)
    .EUt(120)
    .buildAndRegister();

	#engineering
	laser.recipeBuilder()
	.inputs(<ore:plateDiamond>)
	.notConsumable(<contenttweaker:skystonelense>)
    .outputs(<appliedenergistics2:material:17>)
    .duration(200)
    .EUt(120)
    .buildAndRegister();
	
	#silicon
laser.recipeBuilder()
	.inputs(<ore:waferSilicon>)
	.notConsumable(<contenttweaker:skystonelense>)
    .outputs(<appliedenergistics2:material:20>)
    .duration(200)
    .EUt(120)
    .buildAndRegister();

laser.recipeBuilder()
	.inputs(<metaitem:wafer.glowstone>)
	.notConsumable(<contenttweaker:skystonelense>)
    .outputs(<appliedenergistics2:material:20> *2)
    .duration(200)
    .EUt(480)
    .buildAndRegister();

laser.recipeBuilder()
	.inputs(<metaitem:wafer.naquadah>)
	.notConsumable(<contenttweaker:skystonelense>)
    .outputs(<appliedenergistics2:material:20> *4)
    .duration(200)
    .EUt(1920)
    .buildAndRegister();
	
	
	#processors
	#logic
	assembler.recipeBuilder()
	.inputs(<appliedenergistics2:material:18>, <appliedenergistics2:material:20>)
	.notConsumable(<metaitem:circuit.integrated>.withTag({Configuration: 0}).or(<metaitem:circuit.integrated>))
    .outputs(<appliedenergistics2:material:22>)
	.fluidInputs([<fluid:hydrochloric_acid> * 144])
    .duration(600)
    .EUt(16)
    .buildAndRegister();

	#calculation
	assembler.recipeBuilder()
	.inputs(<appliedenergistics2:material:16>, <appliedenergistics2:material:20>)
	.notConsumable(<metaitem:circuit.integrated>.withTag({Configuration: 0}).or(<metaitem:circuit.integrated>))
    .outputs(<appliedenergistics2:material:23>)
	.fluidInputs([<fluid:hydrochloric_acid> * 144])
    .duration(600)
    .EUt(16)
    .buildAndRegister();

	#engineering
	assembler.recipeBuilder()
	.inputs(<appliedenergistics2:material:17>, <appliedenergistics2:material:20>)
	.notConsumable(<metaitem:circuit.integrated>.withTag({Configuration: 0}).or(<metaitem:circuit.integrated>))
    .outputs(<appliedenergistics2:material:24>)
	.fluidInputs([<fluid:hydrochloric_acid> * 144])
    .duration(600)
    .EUt(16)
    .buildAndRegister();	
	
	#1k storage
	recipes.remove(<appliedenergistics2:material:35>);
	assembler.recipeBuilder()
	.inputs(<appliedenergistics2:material:22>, <ore:plateCertusQuartz>, <ore:cableGtSingleCopper> *2)
    .outputs(<appliedenergistics2:material:35>)
	.fluidInputs([<fluid:redstone> * 144])
    .duration(600)
    .EUt(16)
    .buildAndRegister();		

	#1k fluid storage
	recipes.remove(<appliedenergistics2:material:54>);
	assembler.recipeBuilder()
	.inputs(<appliedenergistics2:material:22>, <ore:plateCertusQuartz>, <ore:stickLapis> *4)
    .outputs(<appliedenergistics2:material:54>)
	.fluidInputs([<fluid:redstone> * 144])
    .duration(600)
    .EUt(16)
    .buildAndRegister();		
	
	#inscribers
	mods.jei.JEI.removeAndHide(<appliedenergistics2:inscriber>);
	
	#Inscriber plates
	mods.jei.JEI.removeAndHide(<appliedenergistics2:material:13>);
	mods.jei.JEI.removeAndHide(<appliedenergistics2:material:14>);
	mods.jei.JEI.removeAndHide(<appliedenergistics2:material:21>);
	mods.jei.JEI.removeAndHide(<appliedenergistics2:material:15>);
	mods.jei.JEI.removeAndHide(<appliedenergistics2:material:19>);
	
	#remove grinder
mods.jei.JEI.removeAndHide(<appliedenergistics2:grindstone>);
mods.jei.JEI.removeAndHide(<appliedenergistics2:crank>);
	
	<appliedenergistics2:sky_compass>.addTooltip(format.darkRed("陨石生成已被禁用，也用不上模板。陨石的话你能通过轨道激光钻获得。"));
	
	#remove ender pearl dust
	mods.jei.JEI.removeAndHide(<appliedenergistics2:material:46>);


print("----------------Applied Energistics 2 End-------------------");


print("---------------Volumetric flasks Start------------------");


var flasks as IItemStack[IData[]] = {
[64000,19] : <volumetricflask:volumetric_flask_64000>,
[32000,18] : <volumetricflask:volumetric_flask_32000>,
[16000,17] : <volumetricflask:volumetric_flask_16000>,
[8000,16] : <volumetricflask:volumetric_flask_8000>,
[4000,15] : <volumetricflask:volumetric_flask_4000>,
[2000,14] : <volumetricflask:volumetric_flask_2000>,
[1000,13] : <volumetricflask:volumetric_flask_1000>,
[300,12] : <volumetricflask:volumetric_flask_300>,
[250,11] : <volumetricflask:volumetric_flask_250>,
[144,10] : <volumetricflask:volumetric_flask_144>,
[133,9] : <volumetricflask:volumetric_flask_133>,
[100,8] : <volumetricflask:volumetric_flask_100>,
[72,7] : <volumetricflask:volumetric_flask_72>,
[50,6] : <volumetricflask:volumetric_flask_50>,
[36,5] : <volumetricflask:volumetric_flask_36>,
[33,4] : <volumetricflask:volumetric_flask_33>,
[32,3] : <volumetricflask:volumetric_flask_32>,
[18,2] : <volumetricflask:volumetric_flask_18>,
[16,1] : <volumetricflask:volumetric_flask_16>


};

for outputInfo, i in flasks {
	recipes.remove(i);

assembler.recipeBuilder()
	.inputs(<minecraft:glass_bottle>)
	.notConsumable(<metaitem:circuit.integrated>.withTag({Configuration: outputInfo[1]}))
    .outputs(i.withTag({}))
	.fluidInputs([<liquid:glass> * outputInfo[0]])
    .duration(20 * outputInfo[1])
    .EUt(48)
	.buildAndRegister();
	
}


print("---------------Volumetric flasks End------------------");


print("---------------Lazy AE Start------------------");
	#Pulse Centrifuge
	mods.jei.JEI.removeAndHide(<threng:machine:1>);
	
	#Circuit etcher
	mods.jei.JEI.removeAndHide(<threng:machine:2>);
	mods.jei.JEI.removeAndHide(<threng:machine:3>);
	mods.jei.JEI.removeAndHide(<threng:machine>);
	
	#carbonic mix
	recipes.remove(<threng:material:1>);

	assembler.recipeBuilder()
	.inputs(<ore:dustFluix>*2,<ore:dustSilicon>,<ore:dustTinyGallium>)
    .outputs(<threng:material:1>)
	.fluidInputs([<fluid:redstone> * 144])
    .duration(80)
    .EUt(16)
    .buildAndRegister();

	#speculation Core
	mixer.recipeBuilder()
	.inputs(<ore:dustSkystone>,<appliedenergistics2:material:6>, <threng:material:1>)
    .outputs(<threng:material:7>)
	.fluidInputs([<fluid:redstone> * 72])
    .duration(400)
    .EUt(16)
    .buildAndRegister();

	#resonating crystal
	mixer.recipeBuilder()
	.inputs(<appliedenergistics2:crystal_seed:600>*4, <ore:dustSkystone>, <ore:dustEnderPearl>)
    .outputs(<threng:material:5>*4)
	.fluidInputs([<fluid:redstone> * 144])
    .duration(400)
    .EUt(16)
    .buildAndRegister();


	#4x speculation core
	recipes.remove(<threng:material:9>);
	recipes.addShaped(<threng:material:9>,[
	[null,null,null],
	[<threng:material:8>,<metaitem:wafer.silicon>,<threng:material:8>],
	[null,null,null]]);
	
	#Fluix Steel
	furnace.remove(<threng:material>);
		alloyer.recipeBuilder()
		.inputs(<ore:ingotElectricalSteel>*4,<threng:material:1>)
		.outputs(<threng:material> * 4)
		.duration(360)
		.EUt(38)
		.buildAndRegister();	
		
	#massively Parralel processor
	assembler.recipeBuilder()
	.inputs(<threng:material:5>, <appliedenergistics2:material:20>)
	.notConsumable(<metaitem:circuit.integrated>.withTag({Configuration: 0}).or(<metaitem:circuit.integrated>))
    .outputs(<threng:material:6>)
	.fluidInputs([<fluid:hydrochloric_acid> * 144])
    .duration(300)
    .EUt(16)
    .buildAndRegister();	
	
	#speculative processor
	assembler.recipeBuilder()
	.inputs(<threng:material:13>, <appliedenergistics2:material:20>)
	.notConsumable(<metaitem:circuit.integrated>.withTag({Configuration: 0}).or(<metaitem:circuit.integrated>))
    .outputs(<threng:material:14>)
	.fluidInputs([<fluid:hydrochloric_acid> * 144])
    .duration(300)
    .EUt(16)
    .buildAndRegister();	

		#Mass Assembler
	recipes.remove(<threng:big_assembler:4>);
	recipes.remove(<threng:big_assembler:2>);

	#coprocessor
	recipes.addShaped(<threng:big_assembler:4>, 
	[[<threng:big_assembler>, <opencomputers:material:7>, <threng:big_assembler>],
	[<appliedenergistics2:part:16>, <threng:material:6>, <appliedenergistics2:part:16>], 
	[<threng:big_assembler>, <ore:circuitMedium>, <threng:big_assembler>]]);

	recipes.addShaped(<threng:big_assembler:2>, 
	[[<threng:big_assembler>, <opencomputers:component>, <threng:big_assembler>],
	[<appliedenergistics2:part:16>, <threng:material:4>, <appliedenergistics2:part:16>], 
	[<threng:big_assembler>, <appliedenergistics2:interface>, <threng:big_assembler>]]);
	

print("---------------Lazy Ae End------------------");