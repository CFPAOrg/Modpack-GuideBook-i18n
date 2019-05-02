import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.artisanworktables.builder.RecipeBuilder;

print("---------------scannable Start------------------");

	#Remove and hide
mods.jei.JEI.removeAndHide(<scannable:module_ore_common>);
mods.jei.JEI.removeAndHide(<scannable:module_animal>);
mods.jei.JEI.removeAndHide(<scannable:module_monster>);
mods.jei.JEI.removeAndHide(<scannable:module_structure>);
mods.jei.JEI.removeAndHide(<scannable:module_entity>);
mods.jei.JEI.removeAndHide(<scannable:module_fluid>);

	#rare ore scanner
recipes.remove(<scannable:module_ore_rare>);
RecipeBuilder.get("basic")
	.setShaped([
      [<projecte:item.pe_covalence_dust>, <projecte:item.pe_covalence_dust>, <projecte:item.pe_covalence_dust>],
      [<projecte:item.pe_covalence_dust>, <scannable:module_blank>, <projecte:item.pe_covalence_dust>],
      [<projecte:item.pe_covalence_dust>, <projecte:item.pe_covalence_dust>, <projecte:item.pe_covalence_dust>]])
    .addTool(<ore:artisanHammers>, 10)
    .addOutput(<scannable:module_ore_rare>)
    .create();

	#range module
recipes.remove(<scannable:module_range>);
RecipeBuilder.get("basic")
	.setShaped([
      [<projecte:item.pe_covalence_dust>, <ore:enderpearl>, <projecte:item.pe_covalence_dust>],
      [<projecte:item.pe_covalence_dust>, <scannable:module_blank>, <projecte:item.pe_covalence_dust>],
      [<projecte:item.pe_covalence_dust>, <projecte:item.pe_covalence_dust>, <projecte:item.pe_covalence_dust>]])
    .addTool(<ore:artisanHammers>, 10)
    .addOutput(<scannable:module_range>)
    .create();
	
	#range module
recipes.remove(<scannable:module_block>);
RecipeBuilder.get("basic")
	.setShaped([
      [<projecte:item.pe_covalence_dust>, <ore:blockPlastic>, <projecte:item.pe_covalence_dust>],
      [<projecte:item.pe_covalence_dust>, <scannable:module_blank>, <projecte:item.pe_covalence_dust>],
      [<projecte:item.pe_covalence_dust>, <projecte:item.pe_covalence_dust>, <projecte:item.pe_covalence_dust>]])
    .addTool(<ore:artisanHammers>, 10)
    .addOutput(<scannable:module_block>)
    .create();

	
print("----------------scannable End-------------------");