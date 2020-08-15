import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.artisanworktables.builder.RecipeBuilder;
import mods.gregtech.recipe.RecipeMap;
import crafttweaker.events.IEventManager;
import crafttweaker.event.IBlockEvent;


print("------------------Misc Start---------------");

	#Books
recipes.remove(<actuallyadditions:item_booklet>);
recipes.remove(<botania:lexicon>);
recipes.remove(<cookingforblockheads:recipe_book>);
furnace.remove(<cookingforblockheads:recipe_book:1>);
furnace.remove(<cookingforblockheads:recipe_book:2>);
recipes.remove(<extrautils2:book>);
recipes.remove(<ftbquests:book>);
recipes.remove(<guideapi:bloodmagic-guide>);
recipes.remove(<guideapi:cyclicmagic-guide>);
recipes.remove(<industrialforegoing:book_manual>);
recipes.remove(<patchouli:guide_book>.withTag({"patchouli:book": "deepmoblearning:book"}));
recipes.remove(<projecte:item.pe_manual>);
recipes.remove(<rftools:rftools_manual>);
recipes.remove(<rftools:rftools_shape_manual>);
recipes.remove(<rustic:book>);
recipes.remove(<openblocks:info_book>);
recipes.remove(<tconstruct:book>);
recipes.remove(<spiceoflife:bookfoodjournal>);
recipes.remove(<wizardry:book>);
recipes.remove(<integrateddynamics:on_the_dynamics_of_integration>);

	#Chisels and stuff
recipes.remove(<littletiles:chisel>);
recipes.addShapeless(<chisel:chisel_iron>, [<littletiles:chisel>]);

recipes.remove(<architecturecraft:chisel>);
recipes.addShapeless(<architecturecraft:chisel>, [<chisel:chisel_iron>]);

recipes.addShapeless(<littletiles:chisel>, [<architecturecraft:chisel>]);


	#Cancel event to stop portal from breaking //Contributed by iComputerfreak
	events.onBlockBreak(function(event as crafttweaker.event.BlockBreakEvent) {
    if (event.block.definition.id == "dimensionalcontrol:dimensional_portal") {
        event.cancel();
    }
});

	#quark wither ash
	recipes.addShapeless(<quark:black_ash>, [<minecraft:skull:1>]);

	#Guides and Manuals
var books as IItemStack[] = [
	<actuallyadditions:item_booklet>,

	<botania:lexicon>.withTag({"knowledge.minecraft": 1 as byte, "knowledge.alfheim": 1 as byte, "knowledge.relic": 1 as byte}),

	<cookingforblockheads:recipe_book>,
	<cookingforblockheads:recipe_book:1>,
	<cookingforblockheads:recipe_book:2>,

	<extrautils2:book>,
	<ftbquests:book>,

	<draconicevolution:info_tablet>,
	
	<guideapi:bloodmagic-guide>,
	<guideapi:cyclicmagic-guide>,

	<industrialforegoing:book_manual>,

	<integrateddynamics:on_the_dynamics_of_integration>,

	<minecraft:book>,

	<patchouli:guide_book>.withTag({"patchouli:book": "deepmoblearning:book"}),
	
	<projecte:item.pe_manual>,

	<rftools:rftools_manual>,
	<rftools:rftools_shape_manual>,

	<rustic:book>,

	<tconstruct:book>,
	<spiceoflife:bookfoodjournal>,
	
	<openblocks:info_book>,
	<wizardry:book>
];

mods.chisel.Carving.addGroup("guideBooks");

for book in books {
	mods.chisel.Carving.addVariation("guideBooks", book);
}

	#LittleTiles Tools
var littleTilesTools as IItemStack[] = [
	<littletiles:wrench>,
	<littletiles:container>,
	<littletiles:screwdriver>,
	<littletiles:saw>,
	<littletiles:colortube>,
	<littletiles:chisel>
];

mods.chisel.Carving.addGroup("littleTiles");

for i in littleTilesTools {
	mods.chisel.Carving.addVariation("littleTiles", i);
}


#remove reinforcement recipe
recipes.removeByRecipeName("dmonsters:rebar");

mods.jei.JEI.removeAndHide(<pickletweaks:mortar_and_pestle>);

recipes.remove(<sonarcore:reinforcedstoneblock>); //removed, used as surface block on exoplanet
<sonarcore:reinforcedstoneblock>.displayName = "强化石头";
	
	#ArchitectureCraft Sawbench
recipes.remove(<architecturecraft:sawbench>);
recipes.addShaped(<architecturecraft:sawbench>, [
	[<ore:slabStone>, <primal_tech:flint_edged_disc>, <ore:slabStone>],
	[<ore:stickWood>, <architecturecraft:largepulley>, <ore:stickWood>],
	[<ore:stickWood>, <minecraft:wooden_pressure_plate>, <ore:stickWood>]]);




	#artifacts
<contenttweaker:overworldessencer>.displayName = "Euclydes Prime工件";
<contenttweaker:overworldessencer>.addTooltip(format.darkRed("用于发现和跃迁到Euclydes Prime星球。"));	
<contenttweaker:overworldessencel>.displayName = "Aurellia工件";
<contenttweaker:overworldessencel>.addTooltip(format.darkRed("用于发现和跃迁到Aurellia星球。"));
	
	
	#portal block from sonarcore
recipes.remove(<sonarcore:stablestoneblackrimmed_lightblue>);
<sonarcore:stablestoneblackrimmed_lightblue>.hardness = 50;
<sonarcore:stablestoneblackrimmed_lightblue>.displayName = "主世界传送门方块";
<sonarcore:stablestoneblackrimmed_lightblue>.addTooltip(format.darkRed("用于搭建传送到主世界的传送门。可以用凿子成动画版方块。"));

mods.chisel.Carving.addGroup("overworldPortals");
mods.chisel.Carving.addVariation("overworldPortals", <sonarcore:stablestoneblackrimmed_lightblue>);
mods.chisel.Carving.addVariation("overworldPortals", <contenttweaker:portalblockt>);
	
	#apotheosis bookshelf removed to fusion
	recipes.remove(<apotheosis:hellshelf>);
	
	#apotheosis xp bottles from materials
	recipes.remove(<minecraft:experience_bottle>);
	
	#Nether portal
recipes.remove(<sonarcore:stablestonerimmed_black>);
<sonarcore:stablestonerimmed_black>.displayName = "下界传送门方块";
<sonarcore:stablestonerimmed_black>.addTooltip(format.darkRed("用于搭建传送到下界的传送门。可以用凿子成动画版方块。"));
recipes.removeByRecipeName("sonarcore:tile.stablestoneblackrimmed_black22");

RecipeBuilder.get("basic")
	.setShaped([
		[<ore:gemFlawedQuartzite>, <ore:plateThaumium>, <ore:gemFlawedQuartzite>],
		[<ore:plateSteel>, <extrautils2:angelblock>, <ore:plateSteel>],
		[<ore:blockObsidian>, <ore:blockObsidian>, <ore:blockObsidian>]])
	.setFluid(<liquid:liquid_death>*100)
	.addTool(<ore:artisanHammers>, 10)
	.addOutput(<sonarcore:stablestonerimmed_black>)
	.create();	
	
mods.chisel.Carving.addGroup("netherPortals");
mods.chisel.Carving.addVariation("netherPortals", <sonarcore:stablestonerimmed_black>);
mods.chisel.Carving.addVariation("netherPortals", <contenttweaker:portalblockunt>);
	
	#miniature black hole for portal gun
recipes.remove(<portalgun:item_miniature_black_hole>);
recipes.addShaped(<portalgun:item_miniature_black_hole>, 
	[[<ore:dustEnderEye>, <ore:dustAstralStarmetal>, <ore:dustEnderEye>],
	[<ore:dustAstralStarmetal>, <ore:netherStar>, <ore:dustAstralStarmetal>], 
	[<ore:dustEnderEye>, <ore:dustAstralStarmetal>, <ore:dustEnderEye>]]);	

	#building gadgets
recipes.remove(<buildinggadgets:copypastetool>);
recipes.addShaped(<buildinggadgets:copypastetool>, 
	[[<ore:plateSteel>, <ore:circuitBasic>, <ore:plateSteel>],
	[<minecraft:ender_pearl>, <rftools:builder>, <minecraft:ender_pearl>], 
	[<ore:plateSteel>, <bloodmagic:component:3>, <ore:plateSteel>]]);

recipes.remove(<buildinggadgets:buildingtool>);
recipes.addShaped(<buildinggadgets:buildingtool>, 
	[[<ore:plateSteel>, <ore:alloyAdvanced>, <ore:plateSteel>],
	[<minecraft:ender_pearl>, <ore:circuitBasic>, <minecraft:ender_pearl>], 
	[<ore:plateSteel>, <metaitem:battery.re.lv.sodium>, <ore:plateSteel>]]);

recipes.remove(<buildinggadgets:exchangertool>);
recipes.addShaped(<buildinggadgets:exchangertool>, 
	[[<ore:plateSteel>, <ore:circuitBasic>, <ore:plateSteel>],
	[<minecraft:ender_pearl>, <ore:eyeofredstone>, <minecraft:ender_pearl>], 
	[<ore:ingotArdite>, <ore:plateSteel>, <ore:ingotArdite>]]);

recipes.remove(<buildinggadgets:destructiontool>);	
recipes.addShaped(<buildinggadgets:destructiontool>, 
	[[<ore:plateSteel>, <ore:circuitBasic>, <ore:plateSteel>],
	[<minecraft:ender_pearl>, <extrautils2:trashcan>, <minecraft:ender_pearl>], 
	[<ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>]]);

	#remove conflicting overworld portalblock
recipes.removeByRecipeName("sonarcore:tile.stablestone_lightblue43");
	
	#Microblock stone rod (identical oredict and recipe to tinkers)
recipes.removeByRecipeName("microblockcbe:stone_rod");
	
	#translocators
recipes.remove(<translocators:translocator_part>);
recipes.addShaped(<translocators:translocator_part> * 2, 
	[[<enderio:item_alloy_nugget:3>, <minecraft:ender_pearl>, <enderio:item_alloy_nugget:3>],
	[<enderio:item_alloy_nugget:3>, <minecraft:piston>, <enderio:item_alloy_nugget:3>], 
	[<enderio:item_alloy_nugget:3>, <ore:circuitPrimitive>, <enderio:item_alloy_nugget:3>]]);

recipes.remove(<translocators:translocator_part:1>);		
recipes.addShaped(<translocators:translocator_part:1> * 2, 
	[[<enderio:item_alloy_nugget:3>, <minecraft:ender_pearl>, <enderio:item_alloy_nugget:3>],
	[<enderio:item_alloy_nugget:3>, <minecraft:sticky_piston>, <enderio:item_alloy_nugget:3>], 
	[<enderio:item_alloy_nugget:3>, <ore:circuitPrimitive>, <enderio:item_alloy_nugget:3>]]);
	
RecipeBuilder.get("basic")
	.setShaped([
		[<xtones:reed>, <projecte:item.pe_covalence_dust>, <xtones:reed>],
		[<ore:blockSeared>, <chisel:paper>, <ore:blockSeared>],
		[<xtones:reed>, <projecte:item.pe_covalence_dust>, <xtones:reed>]])
	.setFluid(<liquid:lava>*100)
	.addTool(<ore:artisanHammers>, 10)
	.addOutput(<sonarcore:stablestoneblackrimmed_lightblue>)
	.create();

	#nature's compass
recipes.remove(<naturescompass:naturescompass>);
RecipeBuilder.get("basic")
	.setShaped([
		[<ore:plant>, <ore:botaniaPetals>, <ore:plant>],
		[<ore:botaniaPetals>, <minecraft:compass>, <ore:botaniaPetals>],
		[<ore:plant>, <ore:botaniaPetals>, <ore:plant>]])
	.setFluid(<liquid:menrilresin>*1000)
	.addTool(<ore:artisanHammers>, 10)
	.addOutput(<naturescompass:naturescompass>)
	.create();	
	
	#mitts
recipes.remove(<hotornot:mitts>);
recipes.addShaped(<hotornot:mitts>,[
	[<ore:materialCloth>,<harvestcraft:hardenedleatheritem>,<ore:materialCloth>],
	[<ore:materialCloth>,<ore:slimeball>,<ore:materialCloth>],
	[null,null,null]
	]);

	#Simple teleporters
furnace.remove(<lteleporters:endercrystal>);
recipes.remove(<lteleporters:teleporter>);

	#rockwool
furnace.remove(<thermalfoundation:rockwool:7>);
	
	  	#Ender Crystal
RecipeBuilder.get("basic")
	.setShaped([
		[null, <projecte:item.pe_covalence_dust>, null],
		[<projecte:item.pe_covalence_dust>, <extrautils2:endershard>, <projecte:item.pe_covalence_dust>],
		[null, <projecte:item.pe_covalence_dust>, null]])
	.setFluid(<liquid:mana_fluid> * 500)
	.addTool(<ore:artisanHammers>, 10)
	.addOutput(<lteleporters:endercrystal>)
	.create();

	#Teleporter
mods.astralsorcery.Altar.addDiscoveryAltarRecipe("simpleteleporters:teleporter", <lteleporters:teleporter>, 120, 200, [
	null, <ore:plateGold>, null,
	<lteleporters:endercrystal>, <astralsorcery:blockmarble:2>, <lteleporters:endercrystal>, 
	<astralsorcery:blockmarble:6>, <astralsorcery:blockmarble:6>, <astralsorcery:blockmarble:6>]);
		
	#little tiles storage block
	recipes.remove(<littletiles:ltstorageblocktile>);	
		
	#portalGun fuel
furnace.remove(<portalgun:item_dust_ender_pearl>);
mods.jei.JEI.removeAndHide(<portalgun:item_dust_ender_pearl>);
		
	#Quark chute
mods.jei.JEI.removeAndHide(<quark:chute>);

	#remove dinocreeper items
mods.jei.JEI.removeAndHide(<lcrdrfs:jetpack>);
mods.jei.JEI.removeAndHide(<lcrdrfs:jet_control_unit>);
mods.jei.JEI.removeAndHide(<lcrdrfs:jet_stabliser>);
mods.jei.JEI.removeAndHide(<lcrdrfs:jet_thruster>);
mods.jei.JEI.removeAndHide(<lcrdrfs:laser_grip>);
mods.jei.JEI.removeAndHide(<lcrdrfs:laser_lens_unit>);
mods.jei.JEI.removeAndHide(<lcrdrfs:empty_laser_blaster>);
mods.jei.JEI.removeAndHide(<lcrdrfs:laser_grip>);
mods.jei.JEI.removeAndHide(<lcrdrfs:laser_barrel>);
mods.jei.JEI.removeAndHide(<lcrdrfs:laser_blaster>);
mods.jei.JEI.removeAndHide(<lcrdrfs:spider_jetpack>);

#low grade charcoal nerf
furnace.setFuel(<primal_tech:charcoal_block>, 1360);
furnace.setFuel(<ore:gearWood>.firstItem, 400);

#wax nerf
furnace.setFuel(<harvestcraft:beeswaxitem>, 200);
furnace.setFuel(<harvestcraft:pressedwax>, 1800);	

print("-------------------Misc End----------------");