import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.artisanworktables.builder.RecipeBuilder;

print("---------------Primal Start------------------");

	#charcoal from low grade
	recipes.removeByRecipeName("primal_tech:recipe_charcoal");

    #Bone Tool Buffing
<primal_tech:bone_axe>.maxDamage = 158;
<primal_tech:bone_shovel>.maxDamage = 158;
<primal_tech:bone_shears>.maxDamage = 158;
<primal_tech:bone_sword>.maxDamage = 158;
<primal_tech:bone_pickaxe>.maxDamage = 158;

	#bone shard
 RecipeBuilder.get("basic")
	.setShapeless(
      [<minecraft:bone>])
    .addTool(<ore:toolSaw>, 10)
    .addOutput(<primal_tech:bone_shard> * 4)
    .create();

	#charcoal
 RecipeBuilder.get("basic")
	.setShapeless(
      [<primal_tech:charcoal_block>])
    .addTool(<ore:toolSaw>, 10)
    .addOutput(<actuallyadditions:item_misc:11> * 2)
    .create();

	#Bone Axe

recipes.remove(<primal_tech:bone_axe>);
recipes.addShaped(<primal_tech:bone_axe>, [
	[<ore:flakeBone>, <ore:flakeBone>],
	[<ore:flakeBone>, <ore:stickWood>]]);

	#
	
	#Disabled
var primalTechDisabled as IItemStack[] = [
	<primal_tech:work_stump>,
	<primal_tech:work_stump_upgraded>,
	<primal_tech:fibre_torch_lit>,
	<primal_tech:fibre_torch>,
	<primal_tech:rock>,
	<primal_tech:charcoal_hopper>,
	<primal_tech:bone_knife>,
	<primal_tech:stone_grill>
	];
for i in primalTechDisabled {
	mods.jei.JEI.removeAndHide(i);
}

	#twine
	recipes.remove(<primal_tech:twine>);
 RecipeBuilder.get("basic")
	.setShapeless(
      [<primal_tech:plant_fibres>,<primal_tech:plant_fibres>,<primal_tech:plant_fibres>])
    .addTool(<ore:toolShear>, 2)
    .addOutput(<primal_tech:twine>*2)
    .create();
	
	#Plant Fibres
recipes.remove(<primal_tech:plant_fibres>);
 RecipeBuilder.get("basic")
	.setShapeless(
      [<ore:plant>])
    .addTool(<ore:toolShear>, 1)
    .addOutput(<primal_tech:plant_fibres>)
    .create();

	#clay bucket
	furnace.addRecipe(<ceramics:clay_bucket>, <ceramics:unfired_clay>);

	#Water Powered Saw
	#mods.primaltech.WoodenBasin.addRecipe(IItemStack output, ILiquidStack inputFluid, IIngredient[] ingredients);
	
	#Water Basin
	#mods.primaltech.WoodenBasin.addRecipe(IItemStack output, <minecraft:water>, IIngredient[] ingredients);

	#mods.primaltech.StoneAnvil.addRecipe(IItemStack output, IIngredient input);

	#mods.primaltech.ClayKiln.addRecipe(IItemStack output, IIngredient input, int cookTime);

	#stick bundle
	recipes.remove(<primal_tech:stick_bundle>);
	recipes.addShaped(<primal_tech:stick_bundle>, 
	[[<ore:stickWood>, <ore:stringTwine>, <ore:stickWood>],
	[<ore:stickWood>, <ore:stickWood>, <ore:stickWood>], 
	[<ore:stickWood>, <ore:stringTwine>, <ore:stickWood>]]);
	
	#Stone Mallet
recipes.remove(<primal_tech:stone_mallet>);
recipes.addShaped(<primal_tech:stone_mallet>, [
	[null, <ore:cobblestone>, <ore:stickWood>],
	[null, <ore:stickWood>, <ore:cobblestone>],
	[<ore:stickWood>, null, null]]);


	#Whitling Sticks (readding this with NBT tags to prevent crashes)
recipes.remove(<primal_tech:fire_sticks>);
recipes.addShapeless(<primal_tech:fire_sticks>.withTag({"rubbingCount": 0,"animate": false}),
    [<ore:stickWood>, <ore:stickWood>]);

print("----------------Primal End-------------------");