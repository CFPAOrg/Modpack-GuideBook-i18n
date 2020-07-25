import mods.artisanworktables.builder.RecipeBuilder;
import mods.gregtech.recipe.RecipeMap;
import mods.gregtech.recipe.RecipeMaps;
import crafttweaker.item.IIngredient;
import crafttweaker.data.IData;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IItemTransformer;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;


val blast_furnace = mods.gregtech.recipe.RecipeMap.getByName("blast_furnace");
val fluid_extractor = mods.gregtech.recipe.RecipeMap.getByName("fluid_extractor");
val mixer = mods.gregtech.recipe.RecipeMap.getByName("mixer");
val solidifier = mods.gregtech.recipe.RecipeMap.getByName("fluid_solidifier");
val chemical_bath = mods.gregtech.recipe.RecipeMap.getByName("chemical_bath");
val vacFreezer = mods.gregtech.recipe.RecipeMap.getByName("vacuum_freezer");
val alloyer = mods.gregtech.recipe.RecipeMap.getByName("alloy_smelter");
val assembler = mods.gregtech.recipe.RecipeMap.getByName("assembler");

print("---------------Logistic Pipes Start------------------");


recipes.remove(<logisticspipes:pipe_remote_orderer>);
recipes.remove(<logisticspipes:remote_orderer>);


#remote pipe orderer
	recipes.addShaped(<logisticspipes:pipe_remote_orderer>, 
	[[<ore:wireFineStainlessSteel>, <rftools:infused_enderpearl>, <ore:wireFineStainlessSteel>],
	[null, <logisticspipes:pipe_basic>, null], 
	[<ore:wireFineStainlessSteel>, <astralsorcery:itemcraftingcomponent:4>, <ore:wireFineStainlessSteel>]]);


#basic Pipes
recipes.remove(<logisticspipes:pipe_basic>);
recipes.addShapeless(<logisticspipes:pipe_basic>,[<logisticspipes:pipe_transport_basic>, <ore:wireFineRedAlloy>]);

#remote orderer
	recipes.addShaped(<logisticspipes:remote_orderer>, 
	[[<ore:platePlastic>, <rftools:infused_enderpearl>, <ore:platePlastic>],
	[<astralsorcery:itemcraftingcomponent:4>, <ore:blockGlass>, <astralsorcery:itemcraftingcomponent:4>], 
	[<ore:platePlastic>, <ore:circuitBasic>, <ore:platePlastic>]]);


#Blank module
recipes.remove(<logisticspipes:module_blank>);
	alloyer.recipeBuilder()
    .inputs(<ore:foilRedAlloy>, <ore:itemRubber>)
    .outputs(<logisticspipes:module_blank>*2)
    .duration(100)
    .EUt(12)
    .buildAndRegister();

#Basic chip
recipes.remove(<logisticspipes:chip_basic_raw>);
	alloyer.recipeBuilder()
    .inputs(<ore:circuitPrimitive>, <ore:wireFineRedAlloy>*2)
    .outputs(<logisticspipes:chip_basic_raw>*2)
    .duration(120)
    .EUt(16)
    .buildAndRegister();

#advanced chip
recipes.remove(<logisticspipes:chip_advanced_raw>);
	alloyer.recipeBuilder()
    .inputs(<logisticspipes:chip_basic_raw> *2, <ore:gemDiamond>)
    .outputs(<logisticspipes:chip_advanced_raw>*2)
    .duration(240)
    .EUt(16)
    .buildAndRegister();

#basic module
recipes.remove(<logisticspipes:upgrade_module_upgrade>);
assembler.recipeBuilder()
		.inputs(<logisticspipes:module_blank>*2, <logisticspipes:chip_advanced>, <ore:wireFineGold> *8)
		.outputs(<logisticspipes:upgrade_module_upgrade> * 8)
		.duration(240)
		.EUt(28)
		.buildAndRegister();


var clearNBT as IItemStack[] = [
<logisticspipes:module_item_sink>,
<logisticspipes:module_passive_supplier>,
<logisticspipes:module_extractor>,
<logisticspipes:module_item_sink_polymorphic>,
<logisticspipes:module_quick_sort>,
<logisticspipes:module_terminus>,
<logisticspipes:module_extractor_advanced>,
<logisticspipes:module_provider>,
<logisticspipes:module_item_sink_mod>,
<logisticspipes:module_item_sink_oredict>,
<logisticspipes:module_enchantment_sink>,
<logisticspipes:module_enchantment_sink_mk2>,
<logisticspipes:module_crafter>,
<logisticspipes:module_active_supplier>,
<logisticspipes:module_item_sink_creativetab>,
<logisticspipes:upgrade_sneaky_combination>,
<logisticspipes:upgrade_sneaky>,
<logisticspipes:upgrade_speed>,
<logisticspipes:upgrade_disconnection>,
<logisticspipes:upgrade_satellite_advanced>,
<logisticspipes:upgrade_fluid_crafting>,
<logisticspipes:upgrade_crafting_byproduct>,
<logisticspipes:upgrade_pattern>,
<logisticspipes:upgrade_fuzzy>,
<logisticspipes:upgrade_cc_remote_control>,
<logisticspipes:upgrade_crafting_monitoring>,
<logisticspipes:upgrade_opaque>,
<logisticspipes:upgrade_crafting_cleanup>,
<logisticspipes:upgrade_module_upgrade>,
<logisticspipes:upgrade_action_speed>,
<logisticspipes:upgrade_item_extraction>,
<logisticspipes:upgrade_item_stack_extraction>
];

for i in clearNBT {
recipes.addShapeless(i,[i]);
}

var modules as IItemStack[] = [

<logisticspipes:module_item_sink>,
<logisticspipes:module_passive_supplier>,
<logisticspipes:module_extractor>,
<logisticspipes:module_item_sink_polymorphic>,
<logisticspipes:module_quick_sort>,
<logisticspipes:module_enchantment_sink>,
<logisticspipes:module_enchantment_sink_mk2>,
<logisticspipes:module_crafter>,
<logisticspipes:module_active_supplier>,
<logisticspipes:module_item_sink_oredict>,
<logisticspipes:module_provider>,
<logisticspipes:module_item_sink_mod>,
<logisticspipes:module_terminus>
];
mods.chisel.Carving.addGroup("LPModules"); //Add LP Modules to Chisel
for i in modules {
	recipes.remove(i);
	i.addTooltip(format.darkRed("用凿子雕凿物品收纳模块。"));
mods.chisel.Carving.addVariation("LPModules", i);
}
mods.chisel.Carving.addVariation("LPModules", <logisticspipes:module_item_sink>);

#add itemsink recipe
assembler.recipeBuilder()
		.inputs(<logisticspipes:module_blank>*2, <logisticspipes:chip_advanced>,<ore:plateGraphite>,<ore:wireFineElectrum> *2)
		.outputs(<logisticspipes:module_item_sink> * 8)
		.duration(240)
		.EUt(28)
		.buildAndRegister();

#remove power provider modules
mods.jei.JEI.removeAndHide(<logisticspipes:upgrade_power_supplier_eu_ev>);
mods.jei.JEI.removeAndHide(<logisticspipes:upgrade_power_supplier_eu_hv>);
mods.jei.JEI.removeAndHide(<logisticspipes:upgrade_power_supplier_eu_mv>);
mods.jei.JEI.removeAndHide(<logisticspipes:upgrade_power_supplier_eu_lv>);
mods.jei.JEI.removeAndHide(<logisticspipes:upgrade_power_transportation>);
mods.jei.JEI.removeAndHide(<logisticspipes:upgrade_power_supplier_mj>);
mods.jei.JEI.removeAndHide(<logisticspipes:upgrade_power_supplier_rf>);


var upgrades as IItemStack[] = [
<logisticspipes:upgrade_sneaky_combination>,
<logisticspipes:upgrade_sneaky>,
<logisticspipes:upgrade_speed>,
<logisticspipes:upgrade_disconnection>,
<logisticspipes:module_item_sink_creativetab>,
<logisticspipes:upgrade_satellite_advanced>,
<logisticspipes:upgrade_fluid_crafting>,
<logisticspipes:upgrade_crafting_byproduct>,
<logisticspipes:upgrade_pattern>,
<logisticspipes:upgrade_fuzzy>,
<logisticspipes:upgrade_cc_remote_control>,
<logisticspipes:upgrade_crafting_monitoring>,
<logisticspipes:upgrade_opaque>,
<logisticspipes:upgrade_crafting_cleanup>,
<logisticspipes:upgrade_action_speed>,
<logisticspipes:upgrade_item_extraction>,
<logisticspipes:upgrade_item_stack_extraction>,
<logisticspipes:upgrade_lb.buffer_upgrade>

];
recipes.removeByRecipeName("logisticsbridge:recipes/buffer_upgrade");

mods.chisel.Carving.addGroup("LPUpgrades"); //Add LP Modules to Chisel
for i in upgrades {
	recipes.remove(i);
	i.addTooltip(format.darkRed("用凿子雕凿升级模块升级。"));
mods.chisel.Carving.addVariation("LPUpgrades", i);
}
mods.chisel.Carving.addVariation("LPUpgrades", <logisticspipes:upgrade_module_upgrade>);



#fpga Chip
recipes.remove(<logisticspipes:chip_fpga_raw>);
	alloyer.recipeBuilder()
    .inputs(<ore:circuitBasic>, <ore:wireFineGold>*2)
    .outputs(<logisticspipes:chip_fpga_raw>*2)
    .duration(280)
    .EUt(16)
    .buildAndRegister();

#Basic transport pipes
recipes.remove(<logisticspipes:pipe_transport_basic>);
recipes.addShaped(<logisticspipes:pipe_transport_basic> * 32, 
[[<ore:stickSteel>, <ore:wireGtSingleRedAlloy>, <ore:stickSteel>],
[<ore:stickSteel>, <metaitem:component.glass.tube>, <ore:stickSteel>], 
[<ore:stickSteel>, <ore:wireGtSingleRedAlloy>, <ore:stickSteel>]]);

#logistics pipe frames
recipes.remove(<logisticspipes:frame>);
	alloyer.recipeBuilder()
    .inputs(<gregtech:machine_casing:1>, <ore:foilRedAlloy>*2)
    .outputs(<logisticspipes:frame>)
    .duration(410)
    .EUt(16)
    .buildAndRegister();

#power junction
recipes.remove(<logisticspipes:power_junction>);
assembler.recipeBuilder()
		.inputs(<logisticspipes:frame>, <ore:circuitBasic>, <thermalfoundation:material:513>*2)
		.outputs(<logisticspipes:power_junction>)
		.duration(240)
		.EUt(18)
		.buildAndRegister();
		
#Crafting Table
recipes.remove(<logisticspipes:crafting_table>);
assembler.recipeBuilder()
		.inputs(<logisticspipes:frame>,<minecraft:crafting_table>,<ore:craftingPiston>*2, <ore:circuitBasic>)
		.outputs(<logisticspipes:crafting_table>)
		.duration(320)
		.EUt(24)
		.buildAndRegister();

#Fuzzy crafting table		
recipes.remove(<logisticspipes:crafting_table_fuzzy>);
assembler.recipeBuilder()
		.inputs(<logisticspipes:crafting_table>, <logisticspipes:chip_basic>)
		.outputs(<logisticspipes:crafting_table_fuzzy>)
		.duration(48)
		.EUt(24)
		.buildAndRegister();
	
print("----------------Logistic Pipes End-------------------");
