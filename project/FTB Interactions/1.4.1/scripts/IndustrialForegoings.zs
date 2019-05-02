import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.artisanworktables.builder.RecipeBuilder;
import mods.contenttweaker.VanillaFactory;
import mods.thaumcraft.Infusion;
import mods.thaumcraft.ArcaneWorkbench;
import mods.thaumcraft.Crucible;
import mods.thaumcraft.SmeltingBonus;
import mods.gregtech.recipe.RecipeMap;
import mods.industrialforegoing.SludgeRefiner;

print("---------------Industrial Foregoing Start------------------");

val chemReactor = mods.gregtech.recipe.RecipeMap.getByName("chemical_reactor");


	#wither builder
	recipes.remove(<industrialforegoing:wither_builder>);
	recipes.addShaped(<industrialforegoing:wither_builder>, 
	[[<ore:platePlastic>, <ore:plateNetherStar>, <ore:platePlastic>],
	[<minecraft:skull:1>, <gregtech:machine:502>, <minecraft:skull:1>],
	[<minecraft:soul_sand>, <minecraft:soul_sand>, <minecraft:soul_sand>]]);

	#block placer
	recipes.remove(<industrialforegoing:block_placer>);
	recipes.addShaped(<industrialforegoing:block_placer>, 
	[[<ore:platePlastic>, <minecraft:dropper>, <ore:platePlastic>],
	[<minecraft:dropper>, <gregtech:machine:502>, <minecraft:dropper>], 
	[<ore:platePlastic>, <extrautils2:ingredients:1>, <ore:platePlastic>]]);


	#animal grower
recipes.remove(<industrialforegoing:animal_stock_increaser>);
recipes.addShaped(<industrialforegoing:animal_stock_increaser>, 
	[[<industrialforegoing:plastic>, <minecraft:golden_apple>, <industrialforegoing:plastic>],
	[<minecraft:golden_carrot>, <gregtech:machine:501>, <minecraft:golden_carrot>],
	 [<tconstruct:edible:2>, <ore:gearIron>, <tconstruct:edible:2>]]);

	#baby seperator 
recipes.remove(<industrialforegoing:animal_independence_selector>);
recipes.addShaped(<industrialforegoing:animal_independence_selector>,
	[[<ore:platePlastic>, <thermalfoundation:material:17>, <ore:platePlastic>],
	[<thermalfoundation:material:17>, <gregtech:machine:501>, <thermalfoundation:material:17>], 
	[<tconstruct:edible:2>, <ore:gearGold>, <tconstruct:edible:2>]]);

	#blink conveyor
	recipes.remove(<industrialforegoing:conveyor_upgrade:5>);
	recipes.addShaped(<industrialforegoing:conveyor_upgrade:5>, 
	[[<ore:plateIron>, <minecraft:ender_pearl>, <ore:plateIron>],
	[<ore:plateIron>, <minecraft:piston>, <ore:plateIron>], 
	[<ore:plateIron>, <ore:anyConveyor>, <ore:plateIron>]]);

	
	#Black Hole Tank
recipes.remove(<industrialforegoing:black_hole_tank>);
recipes.addShaped(<industrialforegoing:black_hole_tank>, 
	[[<ore:circuitInsane>, <metaitem:field.generator.ev>, <ore:circuitInsane>],
	[<ore:platePolytetrafluoroethylene>, <gregtech:machine:504>, <ore:platePolytetrafluoroethylene>], 
	[<ore:circuitInsane>, <ore:platePolytetrafluoroethylene>, <ore:circuitInsane>]]);

	#Black Hole Unit
recipes.remove(<industrialforegoing:black_hole_unit>);
recipes.addShaped(<industrialforegoing:black_hole_unit>, 
	[[<ore:circuitInsane>, <ore:platePolytetrafluoroethylene>, <ore:circuitInsane>],
	[<ore:platePolytetrafluoroethylene>, <gregtech:machine:504>, <ore:platePolytetrafluoroethylene>], 
	[<ore:circuitInsane>, <metaitem:field.generator.ev>, <ore:circuitInsane>]]);

	#black hole controller
recipes.remove(<industrialforegoing:black_hole_controller>);
recipes.addShaped(<industrialforegoing:black_hole_controller>, 
	[[<ore:platePolytetrafluoroethylene>, <ore:lensNetherStar>, <ore:platePolytetrafluoroethylene>],
	[<industrialforegoing:pink_slime_ingot>, <enderstorage:ender_storage>, <industrialforegoing:pink_slime_ingot>],
	[<ore:platePolytetrafluoroethylene>, <gregtech:machine:504>, <ore:platePolytetrafluoroethylene>]]);

	#dry rubber
recipes.remove(<industrialforegoing:dryrubber>);
	
	#raw rubber
RecipeBuilder.get("basic")
	.setShapeless([<gregtech:log>])
	.addTool(<ore:artisanHammers>, 5)
	.setFluid(<liquid:water>*250)
	.addOutput(<metaitem:rubber_drop>)
	.create();
	
	#dry rubber
mods.tconstruct.Drying.addRecipe(<industrialforegoing:dryrubber>,<metaitem:rubber_drop>, 250);
	
	#dry rubber from GT rubber
furnace.addRecipe(<industrialforegoing:dryrubber>, <ore:ingotRubber>);

	#conveyor
recipes.remove(<industrialforegoing:conveyor>);
recipes.addShaped(<industrialforegoing:conveyor> * 4, 
	[[<industrialforegoing:plastic>, <industrialforegoing:plastic>, <industrialforegoing:plastic>],
	[<ore:gearStone>, <projecte:item.pe_covalence_dust>, <ore:gearStone>], 
	[<industrialforegoing:plastic>, <industrialforegoing:plastic>, <industrialforegoing:plastic>]]);

	#conveyor upgrades
recipes.remove(<industrialforegoing:conveyor_upgrade>);
recipes.addShaped(<industrialforegoing:conveyor_upgrade>, 
	[[<ore:gearStone>, <industrialforegoing:plastic>, <ore:gearStone>],
	[<ore:gearStone>, <ore:slimeball>, <ore:gearStone>], 
	[<ore:gearStone>, <ore:anyConveyor>, <ore:gearStone>]]);

recipes.remove(<industrialforegoing:conveyor_upgrade:1>);	
recipes.addShaped(<industrialforegoing:conveyor_upgrade:1>, 
	[[<ore:gearStone>, <industrialforegoing:plastic>, <ore:gearStone>],
	[<ore:gearStone>, <primal_tech:wooden_hopper>, <ore:gearStone>], 
	[<ore:gearStone>, <ore:anyConveyor>, <ore:gearStone>]]);

recipes.remove(<industrialforegoing:conveyor_upgrade:2>);
recipes.addShaped(<industrialforegoing:conveyor_upgrade:2>, 
	[[<ore:gearStone>, <industrialforegoing:plastic>, <ore:gearStone>],
	[<ore:gearStone>, <enderio:block_painted_pressure_plate:1>, <ore:gearStone>], 
	[<ore:gearStone>, <ore:anyConveyor>, <ore:gearStone>]]);
	
recipes.remove(<industrialforegoing:conveyor_upgrade:4>);
recipes.addShaped(<industrialforegoing:conveyor_upgrade:4>, 
	[[<ore:gearStone>, <ore:fenceWood>, <ore:gearStone>],
	[<ore:gearStone>, <primal_tech:wooden_hopper>, <ore:gearStone>], 
	[<ore:gearStone>, <ore:anyConveyor>, <ore:gearStone>]]);
	
recipes.remove(<industrialforegoing:conveyor_upgrade:4>);
recipes.addShaped(<industrialforegoing:conveyor_upgrade:6>, 
	[[<ore:gearStone>, <ore:anyConveyor>, <ore:gearStone>],
	[<ore:gearStone>, <primal_tech:wooden_hopper>, <ore:gearStone>], 
	[<ore:gearStone>, <ore:anyConveyor>, <ore:gearStone>]]);
	
	#fluid pump
recipes.remove(<industrialforegoing:fluid_pump>);
recipes.addShaped(<industrialforegoing:fluid_pump>, 
	[[<industrialforegoing:plastic>, <thermalexpansion:tank>, <industrialforegoing:plastic>],
	[<minecraft:lava_bucket>, <gregtech:machine:501>, <minecraft:water_bucket>],
	[<industrialforegoing:plastic>, <ore:gearGold>, <industrialforegoing:plastic>]]);

	#Dye Mixer
recipes.remove(<industrialforegoing:dye_mixer>);
recipes.addShaped(<industrialforegoing:dye_mixer>, 
	[[<industrialforegoing:plastic>, <ore:dyeRed>, <industrialforegoing:plastic>],
	[<ore:dyeBlue>, <gregtech:machine:500>, <ore:dyeGreen>], 
	[<industrialforegoing:plastic>, <ore:gearGold>, <industrialforegoing:plastic>]]);

	#Mob detector
recipes.remove(<industrialforegoing:mob_detector>);
recipes.addShaped(<industrialforegoing:mob_detector>, 
	[[<industrialforegoing:plastic>, <industrialforegoing:plastic>, <industrialforegoing:plastic>],
	[<minecraft:repeater>, <minecraft:comparator>, <minecraft:repeater>],
	[<minecraft:observer>, <gregtech:machine_casing>, <minecraft:observer>]]);

	#Froster
recipes.remove(<industrialforegoing:froster>);
recipes.addShaped(<industrialforegoing:froster>, 
	[[<industrialforegoing:plastic>, <minecraft:ice>, <industrialforegoing:plastic>],
	[<minecraft:snowball>, <gregtech:machine_casing>, <minecraft:snowball>],
	[<industrialforegoing:plastic>, <ore:gearGold>, <industrialforegoing:plastic>]]);

	#Item Splitter
recipes.remove(<industrialforegoing:item_splitter>);
recipes.addShaped(<industrialforegoing:item_splitter>, 
	[[<industrialforegoing:plastic>, <minecraft:chest>, <industrialforegoing:plastic>],
	[<minecraft:hopper>, <gregtech:machine_casing>, <minecraft:hopper>],
	 [<industrialforegoing:plastic>, <ore:gearIron>, <industrialforegoing:plastic>]]);

	#Pink Slime
mods.gregtech.recipe.RecipeMap.getByName("alloy_smelter").recipeBuilder()
	.inputs([<ore:ingotPulsatingIron>.firstItem, <ore:slimeballPink>])
	.outputs(<industrialforegoing:pink_slime_ingot>)
	.EUt(48)
	.duration(400)
	.buildAndRegister();

	#Ranged Addons
recipes.remove(<industrialforegoing:range_addon>);
recipes.addShaped(<industrialforegoing:range_addon>, [
	[<thaumcraft:stone_arcane>, <ore:plateRubber>, <thaumcraft:stone_arcane>],
	[<thaumcraft:stone_arcane>, <ore:circuitLow>, <thaumcraft:stone_arcane>],
	[<thaumcraft:stone_arcane>, <ore:plateRubber>, <thaumcraft:stone_arcane>]]);

recipes.remove(<industrialforegoing:range_addon:1>);
recipes.addShaped(<industrialforegoing:range_addon:1>, [
	[<ore:plateLapis>, <ore:plateRubber>, <ore:plateLapis>],
	[<ore:plateLapis>, <industrialforegoing:range_addon>,<ore:plateLapis>],
	[<ore:plateLapis>, <ore:plateRubber>, <ore:plateLapis>]]);

recipes.remove(<industrialforegoing:range_addon:2>);
recipes.addShaped(<industrialforegoing:range_addon:2>, [
	[<ore:plateIron>, <ore:plateRubber>, <ore:plateIron>],
	[<ore:plateIron>, <industrialforegoing:range_addon:1>, <ore:plateIron>],
	[<ore:plateIron>, <ore:plateRubber>, <ore:plateIron>]]);

recipes.remove(<industrialforegoing:range_addon:3>);
recipes.addShaped(<industrialforegoing:range_addon:3>, [
	[<ore:plateTin>, <ore:platePlastic>, <ore:plateTin>],
	[<ore:plateTin>, <ore:circuitMedium>, <ore:plateTin>],
	[<ore:plateTin>, <ore:platePlastic>, <ore:plateTin>]]);

recipes.remove(<industrialforegoing:range_addon:4>);
recipes.addShaped(<industrialforegoing:range_addon:4>, [
	[<ore:plateCopper>, <ore:platePlastic>, <ore:plateCopper>],
	[<ore:plateCopper>, <industrialforegoing:range_addon:3>, <ore:plateCopper>],
	[<ore:plateCopper>, <ore:platePlastic>, <ore:plateCopper>]]);

recipes.remove(<industrialforegoing:range_addon:5>);
recipes.addShaped(<industrialforegoing:range_addon:5>, [
	[<ore:plateBronze>, <ore:platePlastic>, <ore:plateBronze>],
	[<ore:plateBronze>, <industrialforegoing:range_addon:4>, <ore:plateBronze>],
	[<ore:plateBronze>, <ore:platePlastic>, <ore:plateBronze>]]);

recipes.remove(<industrialforegoing:range_addon:6>);
recipes.addShaped(<industrialforegoing:range_addon:6>, [
	[<ore:plateSilver>, <ore:platePolytetrafluoroethylene>, <ore:plateSilver>],
	[<ore:plateSilver>, <ore:circuitHigh>, <ore:plateSilver>],
	[<ore:plateSilver>, <ore:platePolytetrafluoroethylene>, <ore:plateSilver>]]);

recipes.remove(<industrialforegoing:range_addon:7>);
recipes.addShaped(<industrialforegoing:range_addon:7>, [
	[<ore:plateGold>, <ore:platePolytetrafluoroethylene>, <ore:plateGold>],
	[<ore:plateGold>, <industrialforegoing:range_addon:6>, <ore:plateGold>],
	[<ore:plateGold>, <ore:platePolytetrafluoroethylene>, <ore:plateGold>]]);

recipes.remove(<industrialforegoing:range_addon:8>);
recipes.addShaped(<industrialforegoing:range_addon:8>, [
	[<ore:plateNetherQuartz>, <ore:platePolytetrafluoroethylene>, <ore:plateNetherQuartz>],
	[<ore:plateNetherQuartz>, <industrialforegoing:range_addon:7>, <ore:plateNetherQuartz>],
	[<ore:plateNetherQuartz>, <ore:platePolytetrafluoroethylene>, <ore:plateNetherQuartz>]]);

recipes.remove(<industrialforegoing:range_addon:9>);
recipes.addShaped(<industrialforegoing:range_addon:9>, [
	[<ore:plateDiamond>, <ore:plateStyreneButadieneRubber>, <ore:plateDiamond>],
	[<ore:plateDiamond>, <ore:circuitExtreme>, <ore:plateDiamond>],
	[<ore:plateDiamond>, <ore:plateStyreneButadieneRubber>, <ore:plateDiamond>]]);

recipes.remove(<industrialforegoing:range_addon:10>);
recipes.addShaped(<industrialforegoing:range_addon:10>, [
	[<ore:platePlatinum>, <ore:plateStyreneButadieneRubber>, <ore:platePlatinum>],
	[<ore:platePlatinum>, <industrialforegoing:range_addon:9>, <ore:platePlatinum>],
	[<ore:platePlatinum>, <ore:plateStyreneButadieneRubber>, <ore:platePlatinum>]]);

recipes.remove(<industrialforegoing:range_addon:11>);
recipes.addShaped(<industrialforegoing:range_addon:11>, [
	[<ore:plateEmerald>, <ore:plateStyreneButadieneRubber>, <ore:plateEmerald>],
	[<ore:plateEmerald>, <industrialforegoing:range_addon:10>, <ore:plateEmerald>],
	[<ore:plateEmerald>, <ore:plateStyreneButadieneRubber>, <ore:plateEmerald>]]);

	#Petrified Fuel Generator
/*
recipes.remove(<industrialforegoing:petrified_fuel_generator>);
recipes.addShaped(<industrialforegoing:petrified_fuel_generator>, [
	[<ore:wireGtSingleTin>, <ore:chestWood>, <ore:wireGtSingleTin>],
	[<ore:cableGtSingleTin>, <meta_tile_entity:gregtech:hull.lv>, <ore:cableGtSingleTin>],
	[<ore:wireGtSingleTin>, <ore:circuitLow>, <ore:wireGtSingleTin>]]);
*/
	#sludge refiner edits
SludgeRefiner.remove(<minecraft:soul_sand>);
SludgeRefiner.remove(<minecraft:clay>);
SludgeRefiner.remove(<minecraft:clay_ball>);
SludgeRefiner.remove(<minecraft:gravel>);
SludgeRefiner.remove(<minecraft:mycelium>);
SludgeRefiner.remove(<minecraft:dirt>);
SludgeRefiner.remove(<minecraft:sand>);
SludgeRefiner.remove(<minecraft:sand:1>);
SludgeRefiner.add(<thermalfoundation:material:864>, 25);
SludgeRefiner.add(<minecraft:gravel>, 20);
SludgeRefiner.add(<minecraft:clay_ball>, 25);
SludgeRefiner.add(<thermalfoundation:material:816>*3, 40);
SludgeRefiner.add(<minecraft:dirt>, 20);
SludgeRefiner.add(<minecraft:sand>, 10);
SludgeRefiner.add(<ore:dustTinyGlauconiteSand>.firstItem, 10);
SludgeRefiner.add(<ore:dustWood>.firstItem, 10);
	
	#sludge
chemReactor.recipeBuilder()
	.fluidInputs([<liquid:fermented_biomass> * 100, <liquid:oil> * 50])
	.fluidOutputs([<liquid:sludge> * 150])
    .duration(160)
    .EUt(16)
    .buildAndRegister();
	
	

		
print("----------------Industrial Foregoing End-------------------");