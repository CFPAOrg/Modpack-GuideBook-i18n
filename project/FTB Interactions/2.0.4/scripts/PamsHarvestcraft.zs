import mods.artisanworktables.builder.RecipeBuilder;
import mods.gregtech.recipe.RecipeMap;
import mods.gregtech.recipe.RecipeMaps;
import crafttweaker.item.IIngredient;
import crafttweaker.data.IData;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IItemTransformer;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;


print("---------------Pam's Harvestcraft Start------------------");
val centrifuge = mods.gregtech.recipe.RecipeMap.getByName("centrifuge");

val fruitBait = <harvestcraft:fruitbaititem>;
val grainBait = <harvestcraft:grainbaititem>;
val veggieBait = <harvestcraft:veggiebaititem>;
val cookingOil = <harvestcraft:oliveoilitem>;

	#pressed wax to ash
	furnace.addRecipe(<ore:dustAsh>.firstItem, <ore:materialPressedwax>);

	#Bait - Fish
recipes.remove(<harvestcraft:fishtrapbaititem>);
recipes.addShapeless(<harvestcraft:fishtrapbaititem> * 4, 
	[<ore:stringTwine>, <ore:stringTwine>, <ore:stringTwine>, <ore:listAllfishraw>]);

	#Bait - Fruit
recipes.remove(fruitBait);
recipes.addShapeless(fruitBait * 4, 
	[<ore:stringTwine>, <ore:stringTwine>, <ore:stringTwine>, <ore:listAllfruit>]);

	#Bait - Grain
recipes.remove(grainBait);
grainBait.addTooltip("能制造牛肉");
recipes.addShapeless(grainBait * 4, 
	[<ore:stringTwine>, <ore:stringTwine>, <ore:stringTwine>, <ore:listAllgrain>]);
recipes.addShapeless(grainBait * 4, 
	[<ore:stringTwine>, <ore:stringTwine>, <ore:stringTwine>, <ore:cropRice>]);

	#Bait - Veggie
recipes.remove(veggieBait);
veggieBait.addTooltip("不能制造牛肉。");
recipes.addShapeless(veggieBait * 4, 
	[<ore:stringTwine>, <ore:stringTwine>, <ore:stringTwine>, <ore:listAllveggie>]);

	#Bakeware - moving certain recipes from 
recipes.remove(<harvestcraft:bakedsweetpotatoitem>);
furnace.addRecipe(<harvestcraft:bakedsweetpotatoitem>, <harvestcraft:sweetpotatoitem>);

recipes.remove(<harvestcraft:toastitem>);
furnace.addRecipe(<harvestcraft:toastitem>, <minecraft:bread>);

    #Toast
furnace.remove(<actuallyadditions:item_food:10>);


recipes.remove(<harvestcraft:vanillabeanitem>, <harvestcraft:vanillaitem> );

	#Butter
recipes.remove(<harvestcraft:butteritem>);
mods.primaltech.WoodenBasin.addRecipe(<harvestcraft:butteritem> * 10, 
	<liquid:milk>, []);

	#Cheese
recipes.remove(<harvestcraft:cheeseitem>);
mods.primaltech.WoodenBasin.addRecipe(<harvestcraft:cheeseitem> * 10, 
	<liquid:milk>, [<ore:dustSalt>.firstItem]);

	#Dough
recipes.remove(<harvestcraft:doughitem>);
mods.primaltech.WoodenBasin.addRecipe(<harvestcraft:doughitem> * 4, 
	<liquid:water>, [<ore:dustWheat>.firstItem, <ore:dustSalt>.firstItem]);
mods.primaltech.WoodenBasin.addRecipe(<harvestcraft:doughitem> * 4, 
	<liquid:water>, [<harvestcraft:flouritem>, <ore:dustSalt>.firstItem]);
		
mods.primaltech.WoodenBasin.addRecipe(<harvestcraft:doughitem> * 4, 
	<liquid:water>, [<ore:dustWheat>.firstItem, dustGTSalt]);
mods.primaltech.WoodenBasin.addRecipe(<harvestcraft:doughitem> * 4, 
	<liquid:water>, [dustGTSalt, <harvestcraft:flouritem>]);

mods.gregtech.recipe.RecipeMap.getByName("mixer").recipeBuilder()
    .inputs([<ore:foodFlour>, <ore:dustSalt>])
    .fluidInputs([<liquid:water> * 100])
    .outputs(<harvestcraft:doughitem> *4)
    .duration(160)
    .EUt(16)
    .buildAndRegister();

	recipes.addShapeless(<harvestcraft:flouritem>, [<gregtech:meta_item_1:2345>]);

	#candles
recipes.remove(<harvestcraft:candledeco1>);
recipes.addShapeless(<harvestcraft:candledeco1> *4, [<ore:materialPressedwax>, <ore:string>]);


	#candleberry seed
mods.bloodmagic.AlchemyArray.addRecipe(<harvestcraft:candleberryseeditem>, <actuallyadditions:item_canola_seed>, <rustic:tallow>);

	#fresh milk from clay bucket
recipes.removeByRecipeName("harvestcraft:freshmilkitem_minecraft_milk_bucket");
RecipeBuilder.get("basic")
	.setShaped([
		[null, null, null],
		[null, <harvestcraft:potitem>.reuse(), null],
		[null, null, null]])
	.setFluid(<liquid:milk> * 1000)
	.addOutput(<harvestcraft:freshmilkitem> * 4)
	.create();
mods.gregtech.recipe.RecipeMap.getByName("fluid_solidifier").recipeBuilder()
  .fluidInputs([<liquid:milk> * 250])
  .notConsumable(<metaitem:shape.mold.cylinder>)
  .outputs(<harvestcraft:freshmilkitem>)
  .duration(80)
  .EUt(16)
  .buildAndRegister();

	#Fresh water
recipes.remove(<harvestcraft:freshwateritem>);
RecipeBuilder.get("basic")
	.setShaped([
		[null, null, null],
		[null, <harvestcraft:potitem>.reuse(), null],
		[null, null, null]])
	.setFluid(<liquid:water> * 500)
	.addOutput(<harvestcraft:freshwateritem>)
	.create();
mods.gregtech.recipe.RecipeMap.getByName("fluid_solidifier").recipeBuilder()
  .fluidInputs([<liquid:water> * 250])
  .notConsumable(<metaitem:shape.mold.cylinder>)
  .outputs(<harvestcraft:freshwateritem>)
  .duration(80)
  .EUt(16)
  .buildAndRegister();

	#Gardens
mods.rustic.Condenser.addRecipe(<harvestcraft:aridgarden>, <cyclicmagic:apple_emerald>, <minecraft:sapling:4>);
mods.rustic.Condenser.addRecipe(<harvestcraft:frostgarden>, <cyclicmagic:apple_emerald>, <minecraft:sapling:1>);
mods.rustic.Condenser.addRecipe(<harvestcraft:shadedgarden>, <cyclicmagic:apple_emerald>, <minecraft:sapling:5>);
mods.rustic.Condenser.addRecipe(<harvestcraft:soggygarden>, <cyclicmagic:apple_emerald>, <minecraft:sapling:2>);
mods.rustic.Condenser.addRecipe(<harvestcraft:tropicalgarden>, <cyclicmagic:apple_emerald>, <minecraft:sapling:3>);
mods.rustic.Condenser.addRecipe(<harvestcraft:windygarden>, <cyclicmagic:apple_emerald>, <minecraft:sapling>);

	#Grinder (removed only purpose is doubling of raw meats)
mods.jei.JEI.removeAndHide(<harvestcraft:grinder>);

	#Ground Meats and Mince Meats
mods.gregtech.recipe.RecipeMap.getByName("macerator").findRecipe(16, [<minecraft:beef>], []).remove();
mods.gregtech.recipe.RecipeMap.getByName("macerator").findRecipe(16, [<minecraft:porkchop>], []).remove();
mods.gregtech.recipe.RecipeMap.getByName("macerator").findRecipe(16, [<minecraft:rabbit>], []).remove();
mods.gregtech.recipe.RecipeMap.getByName("macerator").findRecipe(16, [<minecraft:chicken>], []).remove();

mods.gregtech.recipe.RecipeMap.getByName("macerator").findRecipe(16, [<minecraft:mutton>], []).remove();


var groundMeatMap as IItemStack[IIngredient] = {
	<harvestcraft:rawtofeakitem> | <minecraft:beef> : <harvestcraft:groundbeefitem>,
	<harvestcraft:rawtofickenitem> | <minecraft:chicken> : <harvestcraft:groundchickenitem>,
	<harvestcraft:rawtofuduckitem> | <harvestcraft:duckrawitem>: <harvestcraft:groundduckitem>,
	<minecraft:fish> |
	<minecraft:fish:1> |
	<minecraft:fish:2> |
	<minecraft:fish:3> |
	<minecraft:cod> |
	<minecraft:salmon> |
	<minecraft:clownfish> |
	<minecraft:pufferfish> |
	<harvestcraft:calamarirawitem> |
	<harvestcraft:anchovyrawitem> |
	<harvestcraft:bassrawitem> |
	<harvestcraft:carprawitem> |
	<harvestcraft:catfishrawitem> |
	<harvestcraft:charrrawitem> |
	<harvestcraft:grouperrawitem> |
	<harvestcraft:herringrawitem> |
	<harvestcraft:mudfishrawitem> |
	<harvestcraft:perchrawitem> |
	<harvestcraft:snapperrawitem> |
	<harvestcraft:tilapiarawitem> |
	<harvestcraft:troutrawitem> |
	<harvestcraft:tunarawitem> |
	<harvestcraft:walleyerawitem> |
	<harvestcraft:greenheartfishitem> |
	<harvestcraft:rawtofishitem> |
	<harvestcraft:sardinerawitem>
		: <harvestcraft:groundfishitem>,
	<harvestcraft:rawtofuttonitem> | <minecraft:mutton> : <harvestcraft:groundmuttonitem>,
	<harvestcraft:rawtofaconitem> | <minecraft:porkchop> : <harvestcraft:groundporkitem>,
	<harvestcraft:rawtofabbititem> | <minecraft:rabbit> : <harvestcraft:groundrabbititem>,
	<harvestcraft:rawtofurkeyitem> | <harvestcraft:turkeyrawitem> : <harvestcraft:groundturkeyitem>,
	<harvestcraft:rawtofenisonitem> | <harvestcraft:venisonrawitem> : <harvestcraft:groundvenisonitem>
};

for raw, ground in groundMeatMap {
	recipes.addShapeless(ground, [craftingToolKnife, craftingToolMortar, raw]);
	mods.gregtech.recipe.RecipeMap.getByName("macerator").recipeBuilder()
		.inputs([raw])
		.outputs([ground])
		.chancedOutput(ground, 7500, 1000)
		.duration(40)
		.EUt(16)
		.buildAndRegister();

	mods.gregtech.recipe.RecipeMap.getByName("macerator").recipeBuilder()
		.inputs([ground])
		.outputs([<ore:dustMeat>.firstItem])
		.duration(40)
		.EUt(16)
		.buildAndRegister();
}

	#presser revamp
var presserRecipes as IItemStack[][IIngredient] = {
	<ore:cropCherry>.firstItem : [<harvestcraft:cherryjuiceitem>, fruitBait ],
	<ore:cropPear>.firstItem : [<harvestcraft:pearjuiceitem>, fruitBait],
	<harvestcraft:soybeanitem> : [<harvestcraft:silkentofuitem>, grainBait],
	<minecraft:apple> : [<harvestcraft:applejuiceitem>, fruitBait],
	<harvestcraft:sunflowerseedsitem> : [cookingOil, grainBait],
	<harvestcraft:silkentofuitem> : [<harvestcraft:firmtofuitem>, <harvestcraft:soymilkitem>],
	<harvestcraft:persimmonitem> : [<harvestcraft:persimmonjuiceitem>, fruitBait],
	<harvestcraft:strawberryitem> : [<harvestcraft:strawberryjuiceitem>, fruitBait],
	<minecraft:pumpkin_seeds> : [cookingOil, grainBait],
	 <ore:cropGrape> : [<harvestcraft:grapejuiceitem>, fruitBait],
	<harvestcraft:almonditem> : [<harvestcraft:freshmilkitem>, grainBait],
	<harvestcraft:plumitem> : [<harvestcraft:plumjuiceitem>, fruitBait],
	<harvestcraft:starfruititem> : [<harvestcraft:starfruitjuiceitem>, fruitBait],
	<harvestcraft:blueberryitem> : [<harvestcraft:blueberryjuiceitem>, fruitBait],
	<minecraft:carrot> : [<harvestcraft:carrotjuiceitem>, grainBait],
	<harvestcraft:mustardseedsitem> : [cookingOil, grainBait],
	<harvestcraft:freshwateritem> : [<harvestcraft:bubblywateritem>, <harvestcraft:bubblywateritem>],
	<harvestcraft:papayaitem> : [<harvestcraft:papayajuiceitem>, fruitBait],
	<harvestcraft:apricotitem> : [<harvestcraft:apricotjuiceitem>, fruitBait],
	<harvestcraft:limeitem> : [<harvestcraft:limejuiceitem>, fruitBait],
	<harvestcraft:tealeafitem> : [cookingOil, grainBait],
	<harvestcraft:avocadoitem> : [cookingOil, veggieBait],
	<minecraft:pumpkin> : [cookingOil, veggieBait],
	<harvestcraft:kiwiitem> : [<harvestcraft:kiwijuiceitem>, fruitBait],
	<ore:cropOlive> : [cookingOil, fruitBait],
	<harvestcraft:blackberryitem> : [<harvestcraft:blackberryjuiceitem>, fruitBait],
	<harvestcraft:orangeitem> : [<harvestcraft:orangejuiceitem>, fruitBait],
	<harvestcraft:grapefruititem> : [<harvestcraft:grapefruitjuiceitem>, fruitBait],
	<harvestcraft:mangoitem> : [<harvestcraft:mangojuiceitem>, fruitBait],
	<harvestcraft:pomegranateitem> : [<harvestcraft:pomegranatejuiceitem>, fruitBait],
	<harvestcraft:cranberryitem> : [<harvestcraft:cranberryjuiceitem>, fruitBait],
	<harvestcraft:coconutitem> : [<harvestcraft:coconutmilkitem>, veggieBait],
	<harvestcraft:raspberryitem> : [<harvestcraft:raspberryjuiceitem>, fruitBait],
	<harvestcraft:sesameseedsseeditem> : [cookingOil, grainBait],
	<ore:itemHoneyComb> : [<harvestcraft:honeyitem>, <harvestcraft:beeswaxitem>],	 
	<harvestcraft:cactusfruititem> : [<harvestcraft:cactusfruitjuiceitem>, fruitBait],	 
	<harvestcraft:beetitem> : [<minecraft:sugar>, veggieBait],
	<harvestcraft:figitem> : [<harvestcraft:figjuiceitem>, fruitBait],
	<harvestcraft:waxcombitem> : [<harvestcraft:beeswaxitem>, <harvestcraft:beeswaxitem>],
	<harvestcraft:walnutitem> : [cookingOil, grainBait],
	<harvestcraft:cottonseeditem> : [cookingOil, grainBait],
	<harvestcraft:peachitem> : [<harvestcraft:peachjuiceitem>, fruitBait]
};

	#remove presser
mods.jei.JEI.removeAndHide(<harvestcraft:presser>);

for inputs, product in presserRecipes {
	centrifuge.recipeBuilder()
		.inputs(inputs)
		.outputs([product[0],product[1]])
		.duration(100)
		.EUt(8)
		.buildAndRegister();
}

	#Butter processing
	centrifuge.recipeBuilder()
		.fluidInputs([<liquid:milk> * 100])
		.outputs(<ore:foodButter>.firstItem)
		.duration(100)
		.EUt(12)
		.buildAndRegister();

	#Cheese processing
mods.gregtech.recipe.RecipeMap.getByName("mixer").recipeBuilder()
    .inputs([<ore:dustSalt>])
    .fluidInputs([<liquid:milk> * 1000])
    .outputs(<harvestcraft:cheeseitem> *10)
    .duration(300)
    .EUt(16)
    .buildAndRegister();	

	#Market
mods.jei.JEI.removeAndHide(<harvestcraft:market>);
	
	#remove hardened leather armor
mods.jei.JEI.removeAndHide(<harvestcraft:hardenedleatherhelmitem>);
mods.jei.JEI.removeAndHide(<harvestcraft:hardenedleatherchestitem>);
mods.jei.JEI.removeAndHide(<harvestcraft:hardenedleatherleggingsitem>);
mods.jei.JEI.removeAndHide(<harvestcraft:hardenedleatherbootsitem>);

	#Salt
<harvestcraft:saltitem>.addTooltip(format.darkRed("此物品已停用，请使用GTCE/Mekanism的替代品。"));
recipes.remove(<harvestcraft:saltitem>);
recipes.addShapeless(<ore:dustSalt>.firstItem, [<harvestcraft:saltitem>]);
RecipeBuilder.get("basic")
	.setShaped([
		[null, null, null],
		[null, <harvestcraft:wovencottonitem>.reuse(), null],
		[null, null, null]])
	.setFluid(<liquid:water> * 250)
	.addOutput(<ore:dustSalt>.firstItem)
	.create();

	#Shipping Bin
mods.jei.JEI.removeAndHide(<harvestcraft:shippingbin>);

	#Trap - Water
recipes.remove(<harvestcraft:watertrap>);
recipes.addShaped(<harvestcraft:watertrap>, 
	[[<ore:stickWood>, <minecraft:fishing_rod>, <ore:stickWood>],
	[<ore:stringTwine>, <ore:chest>, <ore:stringTwine>], 
	[<ore:stickWood>, <ore:stringTwine>, <ore:stickWood>]]);

	# silken tofu
RecipeBuilder.get("basic")
	.setShapeless([<harvestcraft:silkentofuitem>, <minecraft:bowl>.reuse()])
	.addTool(<ore:artisanHammers>, 2)
	.setFluid(<liquid:water>*50)
	.addOutput(<harvestcraft:firmtofuitem>)
	.create();
	
	#Firm tofu
RecipeBuilder.get("basic")
	.setShapeless([<ore:cropSoybean>, <minecraft:bowl>.reuse()])
	.addTool(<ore:artisanHammers>, 2)
	.setFluid(<liquid:water>*50)
	.addOutput(<harvestcraft:silkentofuitem>)
	.create();
	
	#Trap - Ground
<harvestcraft:groundtrap>.addTooltip(format.darkRed("需要在其侧边都放上原版的草方块或泥土。"));
recipes.remove(<harvestcraft:groundtrap>);	
recipes.addShaped(<harvestcraft:groundtrap>, 
	[[<ore:stickWood>, <ore:trapdoorWood>, <ore:stickWood>],
	[<ore:stringTwine>, <ore:chest>, <ore:stringTwine>], 
	[<ore:stickWood>, <ore:stringTwine>, <ore:stickWood>]]);

	#water filter
mods.jei.JEI.removeAndHide(<harvestcraft:waterfilter>);

	#wool
recipes.removeByRecipeName("harvestcraft:wool_0");

print("----------------Pam's Harvestcraft End-------------------");
