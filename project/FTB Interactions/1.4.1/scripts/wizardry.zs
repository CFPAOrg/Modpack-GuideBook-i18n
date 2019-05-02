import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.artisanworktables.builder.RecipeBuilder;
import mods.gregtech.recipe.RecipeMap;


print("---------------Wizardry Start------------------");
val mixer = mods.gregtech.recipe.RecipeMap.getByName("mixer");


	#Liquid Mana 
	mixer.recipeBuilder()
	.inputs(<thaumcraft:nitor_yellow>,<ore:dustVinteum>*6)
	.outputs(<botania:manaresource:23>)
	.fluidOutputs([<liquid:mana_fluid> * 6000])
	.fluidInputs([<liquid:menrilresin> * 6000])
    .duration(600)
    .EUt(48)
    .buildAndRegister();


	#nacre blocks
	recipes.remove(<wizardry:nacre_block>);
	RecipeBuilder.get("basic")
	.setShaped([
		[<ore:stone>,<ore:nuggetGold>,<ore:stone>],
		[<ore:nuggetGold>,<ore:stone>,<ore:nuggetGold>],
		[<ore:stone>,<ore:nuggetGold>,<ore:stone>]])
	.addTool(<ore:artisanHammers>, 5)
	.setFluid(<liquid:nacre_fluid>*1000)
	.addOutput(<wizardry:nacre_block>*4)
	.create();

mixer.recipeBuilder()
    .inputs(<ore:stone>*5,<ore:nuggetGold>*4)
    .fluidInputs([<liquid:nacre_fluid> * 500])
    .outputs(<wizardry:nacre_block> * 5)
    .duration(100)
    .EUt(18)
    .buildAndRegister();

print("----------------Wizardry End-------------------");
