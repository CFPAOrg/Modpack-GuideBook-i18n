import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import mods.artisanworktables.builder.RecipeBuilder;
import mods.gregtech.material.MaterialRegistry;
import mods.gregtech.material.Material;

print("---------------Microcrafting Start------------------");

/* Templates
	#Artisan Worktables
RecipeBuilder.get("basic")
	.setMinimumTier(int minimumTier)
	.setMaximumTier(int maximumTier)
	.setShaped(IItemStack[])
	.setShapeless(IItemStack[])
	.setSecondaryIngredients(IIngredient[] secondaryIngredients)
	.setConsumeSecondaryIngredients(boolean consumeSecondaryIngredients)
	.setFluid(<liquid:water> * 250)
	.addTool(IIngredient tool, int damage)
	.addOutput(IItemStack output, @Optional int weight)
	.setExtraOutputOne(<minecraft:string>, 0.75)
	.create();
*/

print("------------------Block Recipes Start-----------------");
	#Slabs
var slabsChanged as IItemStack[IItemStack] = {
	<minecraft:wooden_slab:2> : <minecraft:planks:2>,
	<minecraft:wooden_slab:3> : <minecraft:planks:3>,
	<minecraft:wooden_slab:4> : <minecraft:planks:4>,
	<minecraft:wooden_slab:5> : <minecraft:planks:5>,
	<minecraft:stone_slab:1> : <minecraft:sandstone>,
	<minecraft:stone_slab:3> : <minecraft:cobblestone>,
	<minecraft:stone_slab:4> : <minecraft:brick_block>,
	<minecraft:stone_slab:5> : <minecraft:stonebrick>,
	<minecraft:stone_slab:6> : <minecraft:nether_brick>,
	<minecraft:stone_slab:7> : <minecraft:quartz_block>,
	<minecraft:wooden_slab> : <minecraft:planks>,
	<minecraft:wooden_slab:1> : <minecraft:planks:1>,
	<plants2:crystal_slab> : <plants2:crystal_planks>,
	<plants2:dark_crystal_slab> : <plants2:crystal_planks:1>,
	<plants2:ash_slab> : <plants2:planks>,
	<plants2:blaze_slab> : <plants2:planks:1>,
	<plants2:black_kauri_slab> : <plants2:planks:2>,
	<plants2:brazillian_pine_slab> : <plants2:planks:3>,
	<plants2:incense_cedar_slab> : <plants2:planks:4>,
	<plants2:murray_pine_slab> : <plants2:planks:5>,
	<thaumcraft:slab_greatwood> : <thaumcraft:plank_greatwood>,
	<thaumcraft:slab_silverwood> : <thaumcraft:plank_silverwood>
};

for slab, block in slabsChanged {
	recipes.remove(slab);

	recipes.addShaped(block, [
		[slab],
		[slab]]);

	RecipeBuilder.get("basic")
		.setShapeless([block])
		.addTool(<ore:toolSaw>, 5)
		.addOutput(slab*2)
		.create();
}
	
	#Add max damage values to saws
<microblockcbe:saw_stone>.maxDamage = 160;
<microblockcbe:saw_iron>.maxDamage = 320;
<microblockcbe:saw_diamond>.maxDamage = 480;

	#Combining Saws
recipes.addShapeless("stoneSawCombination", <microblockcbe:saw_stone>, [
	<microblockcbe:saw_stone>.anyDamage().marked("saw1").noReturn(), 
	<microblockcbe:saw_stone>.anyDamage().marked("saw2").noReturn()],
  	function(out, ins, cInfo) {
    	return ins.saw1.withDamage(max(0, 160 -((160 - ins.saw1.damage)+(160 - ins.saw2.damage))));
    	}, null);

recipes.addShapeless("ironSawCombination", <microblockcbe:saw_iron>, [
	<microblockcbe:saw_iron>.anyDamage().marked("saw1").noReturn(), 
	<microblockcbe:saw_iron>.anyDamage().marked("saw2").noReturn()],
  	function(out, ins, cInfo) {
    	return ins.saw1.withDamage(max(0, 320 -((320 - ins.saw1.damage)+(320 - ins.saw2.damage))));
    	}, null);

recipes.addShapeless("diamondSawCombination", <microblockcbe:saw_diamond>, [
	<microblockcbe:saw_diamond>.anyDamage().marked("saw1").noReturn(), 
	<microblockcbe:saw_diamond>.anyDamage().marked("saw2").noReturn()],
  	function(out, ins, cInfo) {
    	return ins.saw1.withDamage(max(0, 480 -((480 - ins.saw1.damage)+(480 - ins.saw2.damage))));
    	}, null);


print("-------------Block Recipes Initialized------------");

#################################################################

print("------------------Dust Recipes Start-----------------");
	#dustBronze
recipes.remove(<thermalfoundation:material:99>);
recipes.addShapeless(<thermalfoundation:material:99>,
	[<ore:dustCopper>, <ore:dustCopper>, <ore:dustCopper>, <ore:dustTin>]);

	#dustInvar
recipes.remove(<thermalfoundation:material:98>);
recipes.addShapeless(<thermalfoundation:material:98>,
	[<ore:dustIron>, <ore:dustIron>, <ore:dustNickel>]);

	#dustNickel
recipes.remove(<thermalfoundation:material:100>);
recipes.addShapeless(<thermalfoundation:material:100>,
	[<ore:dustCopper>, <ore:dustNickel>]);
	
	#dustConstantan
recipes.remove(<thermalfoundation:material:100>);


print("-------------Dust Recipes Initialized------------");

#################################################################

print("------------------Furnace Recipes Start-----------------");
var furnaceOresRecipesDisabled as IItemStack[IItemStack] = {
	<minecraft:coal_ore> : <minecraft:coal>,
	<minecraft:redstone_ore> : <minecraft:redstone>,
	<minecraft:lapis_ore> : <minecraft:dye:4>,
	<minecraft:diamond_ore> : <minecraft:diamond>,
	<minecraft:emerald_ore> : <minecraft:emerald>,
	<minecraft:quartz_ore> : <minecraft:quartz>,
	<minecraft:gold_ore> : <minecraft:gold_ingot>,
	<minecraft:iron_ore> : <minecraft:iron_ingot>,
	<thermalfoundation:ore> : <thermalfoundation:material:128>,
	<thermalfoundation:ore:1> : <thermalfoundation:material:129>,
	<thermalfoundation:ore:2> : <thermalfoundation:material:130>,
	<thermalfoundation:ore:3> : <thermalfoundation:material:131>,
	<thermalfoundation:ore:4> : <thermalfoundation:material:132>,
	<thermalfoundation:ore:8> : <thermalfoundation:material:136>,
	<actuallyadditions:block_misc:3> : <actuallyadditions:item_misc:5>,
	<astralsorcery:blockcustomsandore> : <astralsorcery:itemcraftingcomponent>,
	<astralsorcery:blockcustomore:1> : <astralsorcery:itemcraftingcomponent:1>,
	<mekanism:oreblock> : <mekanism:ingot:1>,
	<draconicevolution:draconium_ore> : <draconicevolution:draconium_ingot>,
	<draconicevolution:draconium_ore:1> : <draconicevolution:draconium_ingot>,
	<draconicevolution:draconium_ore:2> : <draconicevolution:draconium_ingot>,
	<thaumcraft:ore_amber> : <thaumcraft:amber>,
	<thaumcraft:ore_quartz> : <minecraft:quartz>,
	<thaumcraft:ore_cinnabar> : <thaumcraft:quicksilver>
	
};

for ore, ingot in furnaceOresRecipesDisabled {
	furnace.remove(ingot, ore);
}

	#constantan
	furnace.remove(<thermalfoundation:material:164>);
	recipes.remove(<thermalfoundation:material:164>);

var furnaceRecipesDisabled as IIngredient[] = [
	<ore:ingotIridium>,
	<ore:ingotMithril>,
	<ore:ingotCobalt>,
	<ore:ingotArdite>
	];

for i in furnaceRecipesDisabled {
	furnace.remove(i);
}

print("-------------Furnace Initialized------------");

#######################################################

print("-------------Gears Start------------");

print("--------------------------Gear Recipes Intialized -------------------------");


######################################################################################

print("--------------------------Plate Recipes Start -------------------------");


print("--------------------------Plate Recipes Intialized -------------------------");

##############################################################

print("------------------Wood Recipes Start-----------------");
var plankWoodNerfed as IItemStack[IItemStack] = {
	<minecraft:planks> : <minecraft:log>,
	<minecraft:planks:1> : <minecraft:log:1>,
	<minecraft:planks:2> : <minecraft:log:2>,
	<minecraft:planks:3> : <minecraft:log:3>,
	<minecraft:planks:4> : <minecraft:log2>,
	<minecraft:planks:5> : <minecraft:log2:1>,
	<integrateddynamics:menril_planks> : <integrateddynamics:menril_log>,
	<plants2:crystal_planks> : <plants2:crystal_log>,
	<plants2:crystal_planks:1> : <plants2:crystal_log:1>,
	<plants2:planks:2> : <plants2:log_0>,
	<plants2:planks:1> : <plants2:nether_log:1>,
	<plants2:planks:3> : <plants2:log_0:1>,
	<plants2:planks:4> : <plants2:log_0:2>,
	<plants2:planks:5> : <plants2:log_0:3>,
	<plants2:planks> : <plants2:nether_log>,
	<randomthings:spectreplank> : <randomthings:spectrelog>,
	<rustic:planks> : <rustic:log>,
	<thaumcraft:plank_greatwood> : <thaumcraft:log_greatwood>,
	<thaumcraft:plank_silverwood> : <thaumcraft:log_silverwood>,
	<traverse:fir_planks> : <traverse:fir_log>
	};

	#Recipe Removal
for plank, log in plankWoodNerfed {
	recipes.remove(plank);
}

	#Stick Nerf - Removing all stick crafting
for x in <ore:stickWood>.items {
	recipes.remove(x);
}
	#Worktable
for plank, log in plankWoodNerfed {
	RecipeBuilder.get("basic")
		.setShapeless([log])
		.addTool(<ore:toolSaw>, 15)
		.addOutput(plank*2)
		.create();
}


print("-------------Wood Recipes Initialized------------");


################################################################

print("----------------Microcrafting End-------------------");
