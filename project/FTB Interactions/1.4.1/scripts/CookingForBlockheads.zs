import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.artisanworktables.builder.RecipeBuilder;

print("---------------Cooking for Blockheads Start------------------");

	#cooking table
recipes.remove(<cookingforblockheads:cooking_table>);
recipes.addShaped(<cookingforblockheads:cooking_table>, [[<minecraft:stone>, <minecraft:obsidian>, <minecraft:stone>],[<minecraft:hardened_clay>, <ceramics:clay_bucket>.withTag({fluids: {FluidName: "lava", Amount: 1000}}), <minecraft:hardened_clay>], [<minecraft:hardened_clay>, <minecraft:hardened_clay>, <minecraft:hardened_clay>]]);

	#milk jar
	recipes.remove(<cookingforblockheads:milk_jar>);
		RecipeBuilder.get("basic")
	.setShaped([
		[<mekanism:basicblock:10>, <astralsorcery:blockinfusedwood:1>, <mekanism:basicblock:10>],
		[<mekanism:basicblock:10>, null, <mekanism:basicblock:10>],
		[<mekanism:basicblock:10>, <mekanism:basicblock:10>, <mekanism:basicblock:10>]])
	.setFluid(<liquid:milk>*1000)
	.addOutput(<cookingforblockheads:milk_jar>)
	.create();

	#tool rack
recipes.remove(<cookingforblockheads:tool_rack>);
recipes.addShaped(<cookingforblockheads:tool_rack>, [[null, null, null],[<ore:slabWood>, <ore:slabWood>, <ore:slabWood>], [<minecraft:string>, <ore:slimeball>, <minecraft:string>]]);

print("---------------Cooking for Blockheads End------------------");