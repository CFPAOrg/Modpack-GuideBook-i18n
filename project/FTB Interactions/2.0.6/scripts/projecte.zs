import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.artisanworktables.builder.RecipeBuilder;
import mods.thaumcraft.ArcaneWorkbench;
import mods.gregtech.recipe.RecipeMap;
import crafttweaker.block.IBlockProperties;
import crafttweaker.block.IBlockDefinition;
import crafttweaker.block.IBlock;
import mods.thaumcraft.Infusion;

print("---------------ProjectE Start------------------");


val mixer = mods.gregtech.recipe.RecipeMap.getByName("mixer");
val smallCharcoal = <actuallyadditions:item_misc:11>;
val blast_furnace = mods.gregtech.recipe.RecipeMap.getByName("blast_furnace");

	#remove Philo stone recipe
recipes.remove(<projecte:item.pe_philosophers_stone>);
mods.bloodmagic.AlchemyArray.addRecipe(<projecte:item.pe_philosophers_stone>, <projecte:item.pe_covalence_dust>, <cyberware:body_part:2>);

recipes.remove(<projecte:item.pe_transmutation_tablet>);
mods.bloodmagic.AlchemyArray.addRecipe(<projecte:item.pe_transmutation_tablet>,<projecte:item.pe_covalence_dust>, <projecte:transmutation_table>);

	#pacifist Philo
mods.bloodmagic.AlchemyArray.addRecipe(<projecte:item.pe_philosophers_stone>, <projecte:item.pe_covalence_dust>, <minecraft:emerald>);


	#remove repair talisman
	recipes.remove(<projecte:item.pe_repair_talisman>);
mods.thaumcraft.Infusion.registerRecipe("repairtalisman", "INFUSION", <projecte:item.pe_repair_talisman>, 9,
	[<aspect:fabrico> * 128, <aspect:alkimia> * 24, <aspect:potentia> * 128, <aspect:ordo> * 96 ],
	<projecte:item.pe_matter>,
	[<enderio:item_material:75>, <projecte:item.pe_covalence_dust:1>,<projecte:item.pe_covalence_dust:1>,<projecte:item.pe_covalence_dust:2>,<projecte:item.pe_covalence_dust:2>,
	<projecte:item.pe_covalence_dust>,<projecte:item.pe_covalence_dust>,<deepmoblearning:pristine_matter_ghast>]);
	
	#energy condensors
	recipes.remove(<projecte:condenser_mk2>);
	recipes.remove(<projecte:condenser_mk1>);

	#dark matter pedestal
	recipes.remove(<projecte:dm_pedestal>);
mods.astralsorcery.Altar.addConstellationAltarRecipe("interactions:dm_pedestal", <projecte:dm_pedestal>, 2200, 800, [
	<astralsorcery:itemcraftingcomponent:4>, <ore:plateTungsten>, <astralsorcery:itemcraftingcomponent:4>,
	<ore:plateTungsten>, <thaumcraft:recharge_pedestal>, <ore:plateTungsten>,
	<astralsorcery:itemcraftingcomponent:4>, <ore:plateNetherStar>, <astralsorcery:itemcraftingcomponent:4>,

	<projecte:item.pe_matter:1>,<projecte:item.pe_matter:1>,<projecte:item.pe_matter:1>,<projecte:item.pe_matter:1>,
	<actuallyadditions:block_misc>,<actuallyadditions:block_misc>,null,null,null,null,<appliedenergistics2:sky_stone_brick>, <appliedenergistics2:sky_stone_brick>]);

	#dark matter
recipes.remove(<projecte:item.pe_matter>);
recipes.remove(<projecte:matter_block>);
blast_furnace.recipeBuilder()
    .inputs(<actuallyadditions:item_crystal_empowered:3>, <ore:ingotVanadium>.firstItem * 4)
    .fluidInputs([<liquid:mana> * 2000])
    .outputs(<projecte:item.pe_matter>)
    .property("temperature", 3500)
    .duration(1800)
    .EUt(1920)
    .buildAndRegister();

	#red matter
recipes.remove(<projecte:item.pe_matter:1>);
blast_furnace.recipeBuilder()
    .inputs(<thaumcraft:ingot:1>, <projecte:item.pe_matter> * 4)
    .fluidInputs([<liquid:lifeessence> * 10000])
    .outputs(<projecte:item.pe_matter:1>)
    .property("temperature", 3500)
    .duration(1100)
    .EUt(7680)
    .buildAndRegister();

	#Red matter harvest level
	var redmatterBlock = <projecte:matter_block:1> as IBlock;
	redmatterBlock.definition.setHarvestLevel("pickaxe", 2);
	redmatterBlock.definition.hardness = 50;
	<projecte:matter_block:1>.hardness = 50;

	#red matter - fluid
blast_furnace.recipeBuilder()
	.inputs(<projecte:item.pe_matter:1>)
	.fluidInputs(<liquid:argon>*250)
    .fluidOutputs(<liquid:red_matter> * 144)
    .outputs(<ore:dustAsh>.firstItem)
    .property("temperature", 9001)
    .duration(1100)
    .EUt(30720)
    .buildAndRegister();

	
	mods.astralsorcery.Lightwell.addLiquefaction(<contenttweaker:infinityegg>, <liquid:red_matter>, 1, 200, 0);
	
	#projectE Armors
	recipes.remove(<projecte:item.pe_gem_armor_0>);
	recipes.remove(<projecte:item.pe_gem_armor_1>);
	recipes.remove(<projecte:item.pe_gem_armor_2>);
	recipes.remove(<projecte:item.pe_gem_armor_3>);
	recipes.remove(<projecte:item.pe_dm_armor_0>);
	recipes.remove(<projecte:item.pe_dm_armor_1>);
	recipes.remove(<projecte:item.pe_dm_armor_3>);
	recipes.remove(<projecte:item.pe_dm_armor_3>);
	recipes.remove(<projecte:item.pe_dm_armor_2>);

	#Gem armor
	recipes.addShaped(<projecte:item.pe_gem_armor_0>, 
	[[<ore:screwNeutronium>, <metaitem:field.generator.iv>, <ore:screwNeutronium>],
	[<projecte:item.pe_matter:1>, <projecte:item.pe_dm_armor_0>, <projecte:item.pe_matter:1>], 
	[<ore:screwNeutronium>, <projecte:item.pe_matter:1>, <ore:screwNeutronium>]]);

	recipes.addShaped(<projecte:item.pe_gem_armor_1>, 
	[[<ore:screwNeutronium>, <metaitem:field.generator.iv>, <ore:screwNeutronium>],
	[<projecte:item.pe_matter:1>, <projecte:item.pe_dm_armor_1>, <projecte:item.pe_matter:1>], 
	[<ore:screwNeutronium>, <projecte:item.pe_matter:1>, <ore:screwNeutronium>]]);

	recipes.addShaped(<projecte:item.pe_gem_armor_3>, 
	[[<ore:screwNeutronium>, <metaitem:field.generator.iv>, <ore:screwNeutronium>],
	[<projecte:item.pe_matter:1>, <projecte:item.pe_dm_armor_3>, <projecte:item.pe_matter:1>], 
	[<ore:screwNeutronium>, <projecte:item.pe_matter:1>, <ore:screwNeutronium>]]);

	recipes.addShaped(<projecte:item.pe_gem_armor_2>, 
	[[<ore:screwNeutronium>, <metaitem:field.generator.iv>, <ore:screwNeutronium>],
	[<projecte:item.pe_matter:1>, <projecte:item.pe_dm_armor_2>, <projecte:item.pe_matter:1>], 
	[<ore:screwNeutronium>, <projecte:item.pe_matter:1>, <ore:screwNeutronium>]]);

	#dark matter armor
	recipes.addShaped(<projecte:item.pe_dm_armor_0>, 
	[[<ore:screwTitanium>, <mekanism:atomicalloy>, <ore:screwTitanium>],
	[<projecte:item.pe_matter>, <minecraft:iron_boots>, <projecte:item.pe_matter>], 
	[<ore:screwTitanium>, <projecte:item.pe_matter>, <ore:screwTitanium>]]);

	recipes.addShaped(<projecte:item.pe_dm_armor_1>, 
	[[<ore:screwTitanium>, <mekanism:atomicalloy>, <ore:screwTitanium>],
	[<projecte:item.pe_matter>, <minecraft:iron_leggings>, <projecte:item.pe_matter>], 
	[<ore:screwTitanium>, <projecte:item.pe_matter>, <ore:screwTitanium>]]);

	recipes.addShaped(<projecte:item.pe_dm_armor_3>, 
	[[<ore:screwTitanium>, <mekanism:atomicalloy>, <ore:screwTitanium>],
	[<projecte:item.pe_matter>, <minecraft:iron_helmet>, <projecte:item.pe_matter>], 
	[<ore:screwTitanium>, <projecte:item.pe_matter>, <ore:screwTitanium>]]);

	recipes.addShaped(<projecte:item.pe_dm_armor_2>, 
	[[<ore:screwTitanium>, <mekanism:atomicalloy>, <ore:screwTitanium>],
	[<projecte:item.pe_matter>, <minecraft:iron_chestplate>, <projecte:item.pe_matter>], 
	[<ore:screwTitanium>, <projecte:item.pe_matter>, <ore:screwTitanium>]]);
	
	
	#relays
mods.jei.JEI.removeAndHide(<projecte:relay_mk3>);
mods.jei.JEI.removeAndHide(<projecte:relay_mk2>);

	#collectors
mods.jei.JEI.removeAndHide(<projecte:collector_mk3>);
mods.jei.JEI.removeAndHide(<projecte:collector_mk1>);
mods.jei.JEI.removeAndHide(<projecte:collector_mk2>);

	#mk1 relay
recipes.remove(<projecte:relay_mk1>);
mods.astralsorcery.Altar.addAttunementAltarRecipe("interactions:mk1relay", <projecte:relay_mk1>, 250, 600, [
	<deepmoblearning:soot_covered_plate>, <astralsorcery:itemcraftingcomponent:3>, <deepmoblearning:soot_covered_plate>,
	<deepmoblearning:soot_covered_plate>, <enderio:block_infinity_fog>, <deepmoblearning:soot_covered_plate>,
	<deepmoblearning:soot_covered_plate>, <astralsorcery:blockblackmarble>, <deepmoblearning:soot_covered_plate>,
	<projecte:item.pe_covalence_dust>,<projecte:item.pe_covalence_dust>,<projecte:item.pe_covalence_dust>,<projecte:item.pe_covalence_dust>
	]);

	#klein_star
recipes.remove(<projecte:item.pe_klein_star>);
recipes.addShaped(<projecte:item.pe_klein_star>,
	[[<thaumcraft:alumentum>, <ore:stickBrass>, <thaumcraft:alumentum>],
	[<thaumcraft:alumentum>, <ore:stickBrass>, <thaumcraft:alumentum>],
	[<thaumcraft:alumentum>, <ore:stickBrass>, <thaumcraft:alumentum>]]);

	#philostone shape crafts
	recipes.removeByRecipeName("projecte:conversions/emerald_to_diamond");
	recipes.removeByRecipeName("projecte:conversions/mobius_fuel_to_alchemical_coal");
	recipes.removeByRecipeName("projecte:conversions/diamond_to_iron");
	recipes.removeByRecipeName("projecte:conversions/gold_to_iron");
	recipes.removeByRecipeName("projecte:conversions/alchemical_coal_to_coal");
	recipes.removeByRecipeName("projecte:conversions/aeternalis_fuel_to_mobius_fuel");
	recipes.removeByRecipeName("projecte:conversions/diamond_to_emerald");
	recipes.removeByRecipeName("projecte:item.pe_fuel_0");
	recipes.removeByRecipeName("projecte:item.pe_fuel_1");
	recipes.removeByRecipeName("projecte:item.pe_fuel_2");
	
	
	#Alchemical bags
	recipes.removeByRecipeName("projecte:item.pe_alchemical_bag_0");
	<projecte:item.pe_alchemical_bag>.addTooltip(format.darkRed("无法制作，只能通过地牢战利品获得。"));
	<projecte:item.pe_fuel:1>.addTooltip(format.darkRed("无法制作，只能通过地牢战利品或奖励获得。"));

	#stealing redmatter block for our portal
	recipes.remove(<projecte:matter_block:1>);


	#remove furnaces
mods.jei.JEI.removeAndHide(<projecte:dm_furnace>);
mods.jei.JEI.removeAndHide(<projecte:rm_furnace>);

	#remove dowsing rods
mods.jei.JEI.removeAndHide(<projecte:item.pe_divining_rod_1>);
mods.jei.JEI.removeAndHide(<projecte:item.pe_divining_rod_2>);
mods.jei.JEI.removeAndHide(<projecte:item.pe_divining_rod_3>);

	#redmatter armor
	mods.jei.JEI.removeAndHide(<projecte:item.pe_rm_armor_2>);
	mods.jei.JEI.removeAndHide(<projecte:item.pe_rm_armor_1>);
	mods.jei.JEI.removeAndHide(<projecte:item.pe_rm_armor_0>);
	mods.jei.JEI.removeAndHide(<projecte:item.pe_rm_armor_3>);

	#gem armor
	recipes.remove(<projecte:item.pe_gem_armor_0>);
	recipes.remove(<projecte:item.pe_gem_armor_1>);
	recipes.remove(<projecte:item.pe_gem_armor_2>);
	recipes.remove(<projecte:item.pe_gem_armor_3>);

	#alchemical bags


	#alchemical chest
	mods.jei.JEI.removeAndHide(<projecte:alchemical_chest>);

	#medium covalence dust
	recipes.remove(<projecte:item.pe_covalence_dust:1>);
	RecipeBuilder.get("basic")
		.setShaped([
			[<projecte:item.pe_covalence_dust>, <minecraft:redstone>,<projecte:item.pe_covalence_dust>],
			[<minecraft:redstone>, <ore:dustBrass>, <minecraft:redstone>],
			[<projecte:item.pe_covalence_dust>, <minecraft:redstone>, <projecte:item.pe_covalence_dust>]])
		  .setFluid(<liquid:mana_fluid> * 250)
		  .addTool(<ore:artisanHammers>, 10)
		  .addOutput(<projecte:item.pe_covalence_dust:1>*9)
		  .create();

	#standard covalence dust
	recipes.remove(<projecte:item.pe_covalence_dust:0>);
	recipes.addShaped(<projecte:item.pe_covalence_dust> * 9, [
	[<ore:sand>,smallCharcoal,<ore:sand>],
	[smallCharcoal, <enderio:block_infinity_fog>, smallCharcoal],
	[<ore:sand>,smallCharcoal,<ore:sand>]]);


	#High Covalence Dust
	recipes.remove(<projecte:item.pe_covalence_dust:2>);
mixer.recipeBuilder()
    .inputs(<projecte:item.pe_covalence_dust:1>, <ore:dustGlowstone>, <ore:dustSapphire>, <ore:manaDiamond>)
    .fluidInputs([<liquid:astralsorcery.liquidstarlight> * 100])
	.outputs(<projecte:item.pe_covalence_dust:2>)
    .duration(160)
    .EUt(96)
    .buildAndRegister();

	#Medium Covalence Dust
	recipes.remove(<projecte:item.pe_covalence_dust:2>);
mixer.recipeBuilder()
    .inputs(<ore:dustRedstone>*4, <projecte:item.pe_covalence_dust>*4, <ore:dustBrass>)
    .fluidInputs([<liquid:mana_fluid> * 250])
	.outputs(<projecte:item.pe_covalence_dust:1> * 9)
    .duration(100)
    .EUt(48)
    .buildAndRegister();	
	
	#Low Covalence Dust from coal
mixer.recipeBuilder()
    .inputs(<minecraft:sand>*4, <enderio:block_infinity_fog>, <ore:dustCoal>)
	.outputs(<projecte:item.pe_covalence_dust>*9)
    .duration(80)
    .EUt(16)
    .buildAndRegister();

	#Low Covalence Dust from charcoal
mixer.recipeBuilder()
    .inputs(<minecraft:sand>*4, <enderio:block_infinity_fog>, <ore:dustCharcoal>)
	.outputs(<projecte:item.pe_covalence_dust>*9)
    .duration(160)
    .EUt(28)
    .buildAndRegister();


	#evertide Amulet
	recipes.remove(<projecte:item.pe_evertide_amulet>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("projecte:evertide", "", 100,
	[<aspect:aqua> * 15, <aspect:ordo> * 5, <aspect:perditio> * 5 ],
	<projecte:item.pe_evertide_amulet>,
		[[<ore:plateSilver>, <thaumcraft:everfull_urn>, <ore:plateSilver>],
		[<astralsorcery:itemcraftingcomponent>, <thaumcraft:baubles>, <astralsorcery:itemcraftingcomponent>],
		[<ore:plateSilver>, <ore:gemDiamond>, <ore:plateSilver>]
	]);

	#ProjectE Transmutation Removals



print("----------------ProjectE End-------------------");
