import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.artisanworktables.builder.RecipeBuilder;

print("---------------WaterStrainer Start------------------");

mods.jei.JEI.removeAndHide(<waterstrainer:strainer_survivalist_solid>);
mods.jei.JEI.removeAndHide(<waterstrainer:strainer_survivalist_reinforced>);
mods.jei.JEI.removeAndHide(<waterstrainer:strainer_survivalist_dense_solid>);
mods.jei.JEI.removeAndHide(<waterstrainer:strainer_survivalist_dense_reinforced>);

	#bait pot
	recipes.removeShaped(<waterstrainer:bait_pot>, [[null, <minecraft:iron_bars>, null],[null, <minecraft:flower_pot>, null], [null, null, null]]);
	recipes.addShaped(<waterstrainer:bait_pot>, [
    [null, <waterstrainer:net>, null], 
    [null, <ore:slimeball>, null], 
    [null, <ceramics:clay_bucket>.noReturn(), null]]);


  #Creative Bait
recipes.addShaped(<waterstrainer:super_worm>, [
  [<metaitem:stemcells>, <metaitem:stemcells>, <metaitem:stemcells>],
  [<metaitem:stemcells>, <waterstrainer:worm>, <metaitem:stemcells>],
  [<metaitem:stemcells>, <metaitem:stemcells>, <metaitem:stemcells>]]);

	#Strainer Base
recipes.remove(<waterstrainer:strainer_base>);
RecipeBuilder.get("basic")
	.addOutput(<waterstrainer:strainer_base>)
  	.setShaped([
  		[<ore:fenceWood>, null, <ore:fenceWood>],
  		[<ore:plankWood>, <primal_tech:wooden_hopper>, <ore:plankWood>],
  		[<ore:plankWood>, <ore:chest>, <ore:plankWood>]])
  	.addTool(<ore:artisanHammers>, 30)
  	.create();

  	#Net
recipes.remove(<waterstrainer:net>);
RecipeBuilder.get("basic")
	.addOutput(<waterstrainer:net>)
  	.setShaped([
  		[null, null, null],
  		[<ore:stringTwine>, <ore:stringTwine>, <ore:stringTwine>],
  		[null, null, null]])
  	.addTool(<ore:toolShear>, 2)
  	.create();
mods.gregtech.recipe.RecipeMap.getByName("assembler").recipeBuilder()
  .inputs([<ore:stringTwine> * 3])
  .outputs(<waterstrainer:net>)
  .property("circuit", 3)
  .duration(150)
  .EUt(8)
  .buildAndRegister();


  	#Net - Dense
recipes.remove(<waterstrainer:net:1>);
RecipeBuilder.get("basic")
	.addOutput(<waterstrainer:net:1>*2)
  	.setShaped([
  		[<ore:stringTwine>, <ore:stringTwine>, <ore:stringTwine>],
  		[<ore:stringTwine>, null, <ore:stringTwine>],
  		[<ore:stringTwine>, <ore:stringTwine>, <ore:stringTwine>]])
  	.addTool(<ore:toolShear>, 2)
  	.create();
mods.gregtech.recipe.RecipeMap.getByName("assembler").recipeBuilder()
  .inputs([<ore:stringTwine> * 8])
  .outputs(<waterstrainer:net:1> * 2)
  .property("circuit", 8)
  .duration(150)
  .EUt(8)
  .buildAndRegister();


  #Trowel
recipes.remove(<waterstrainer:garden_trowel>);
RecipeBuilder.get("basic")
  .addOutput(<waterstrainer:garden_trowel>)
    .setShaped([
      [null, null, <ore:stone>],
      [null, <tconstruct:shovel>.anyDamage().transformDamage(1), null],
      [<ore:stickWood>, null, null]])
    .addTool(<ore:artisanHammers>, 10)
    .create();
mods.gregtech.recipe.RecipeMap.getByName("assembler").recipeBuilder()
  .inputs([<ore:stone>, <minecraft:iron_shovel>])
  .outputs(<waterstrainer:garden_trowel>)
  .duration(150)
  .EUt(8)
  .buildAndRegister();


print("----------------WaterStrainer End-------------------");
