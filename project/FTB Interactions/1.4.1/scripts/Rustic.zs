import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidStack;
import mods.artisanworktables.builder.RecipeBuilder;

print("---------------Rustic Start------------------");

	#fix recipe conflict with reinforcement and rustic chain
	recipes.remove(<rustic:chain>);
	recipes.addShapeless(<dmonsters:rebar>, [<rustic:chain>]);
	recipes.addShapeless(<rustic:chain>, [<dmonsters:rebar>]);


	#Alchemic Retort
recipes.remove(<rustic:retort>);
recipes.addShaped(<rustic:retort>, [[<ore:coloredTerracotta>, <ore:coloredTerracotta>, <ore:coloredTerracotta>],[<primal_tech:charcoal_block>, <actuallyadditions:item_misc:12>, <primal_tech:charcoal_block>], [<ore:coloredTerracotta>, <ore:coloredTerracotta>, <ore:coloredTerracotta>]]);

	#Alchemic Condenser
recipes.remove(<rustic:condenser>);
recipes.addShaped(<rustic:condenser>, [
	[null, <primal_tech:flint_block>, null],
	[<minecraft:brick_block>, <ceramics:clay_bucket>, <minecraft:brick_block>],
	[<minecraft:brick_block>, <ore:coloredTerracotta>, <minecraft:brick_block>]]);

#chain recipe
	recipes.remove(<rustic:chain>);	
		recipes.addShaped(<rustic:chain> * 12, 
	[[null, <minecraft:iron_ingot>, null],
	[null, <minecraft:iron_ingot>, null], 
	[null, <minecraft:iron_ingot>, null]]);
	
	#Beeswax
furnace.remove(<rustic:beeswax>);
furnace.addRecipe(<rustic:beeswax>, <ore:itemHoneyComb>);

	#cloud bluff
mods.bloodmagic.AlchemyArray.addRecipe(<rustic:cloudsbluff>, <projecte:item.pe_covalence_dust>, <rustic:chamomile>);

	#Honey
mods.rustic.CrushingTub.addRecipe(<liquid:honey> * 250, null, <harvestcraft:honeyitem>);
mods.rustic.CrushingTub.addRecipe(<liquid:honey> * 250, null, <harvestcraft:honeycombitem>);

	#Ironwood
recipes.removeByRecipeName("gtadditions:log_to_2_4xtile.rustic.planks@1");

#blaze powder from cindermotes
recipes.removeByRecipeName("rusticthaumaturgy:cindermote");
mods.thaumcraft.Crucible.registerRecipe("cindermote", "BASEALCHEMY", <rusticthaumaturgy:cindermote>, <plants2:generic:10>, [<aspect:alkimia> * 5, <aspect:ignis> * 3, <aspect:potentia> *1]);

	#mooncap mushroom
mods.bloodmagic.AlchemyArray.addRecipe(<rustic:mooncap_mushroom>, <projecte:item.pe_covalence_dust>, <minecraft:red_mushroom>);
	
	#GTCE Fluid Extractor
var rusticFluidMap as ILiquidStack[IIngredient] = {
	<harvestcraft:oliveoilitem> : <liquid:oliveoil> * 250,
	<ore:cropIronberry> : <liquid:ironberryjuice> * 250,
	<ore:cropWildberry> : <liquid:wildberryjuice> * 250,
	<ore:foodGrapejuice> : <liquid:grapejuice> * 250,
	<rusticthaumaturgy:viscap> : <liquid:viscous_wort> * 125,
	<thaumcraft:vishroom> : <liquid:viscous_wort> * 250,
	<rusticthaumaturgy:cindermote> : <liquid:cinderfire_wort> * 125,
	<thaumcraft:cinderpearl> : <liquid:cinderfire_wort> * 250,
	<rusticthaumaturgy:shimmerpetal> : <liquid:shimmerdew_wort> * 125,
	<thaumcraft:shimmerleaf> : <liquid:shimmerdew_wort> * 250
};

for input, fluidOutput in rusticFluidMap {
	mods.gregtech.recipe.RecipeMap.getByName("fluid_extractor").recipeBuilder()
	    .inputs([input])
		.fluidOutputs([fluidOutput])
		.duration(40)
		.EUt(30)
		.buildAndRegister();
}

	#remove apple sapling
mods.jei.JEI.hide(<rustic:sapling_apple>);
	
	#rustic honey to pam's honey
mods.tconstruct.Drying.addRecipe(<harvestcraft:honeyitem>, <ore:itemHoneyComb>, 800);
	
	#remove drying bin
mods.jei.JEI.removeAndHide(<rustic:evaporating_basin>);

	#tallow
recipes.addShapeless(<rustic:tallow> *4, [<thaumcraft:tallow>]);
mods.bloodmagic.AlchemyArray.addRecipe(<rustic:tallow>, <projecte:item.pe_covalence_dust>, <metaitem:rubber_drop>);


	
print("----------------Rustic End-------------------");