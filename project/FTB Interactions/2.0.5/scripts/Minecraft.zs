#priority 10
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.artisanworktables.builder.RecipeBuilder;
import mods.thaumcraft.SalisMundus;

print("---------------Minecraft Start------------------");

val fluidExtractor = mods.gregtech.recipe.RecipeMap.getByName("fluid_extractor");
val compressor = mods.gregtech.recipe.RecipeMap.getByName("compressor");
val hardenedLeather = <harvestcraft:hardenedleatheritem>;
val solidifier = mods.gregtech.recipe.RecipeMap.getByName("fluid_solidifier");
val mixer = mods.gregtech.recipe.RecipeMap.getByName("mixer");
val macerator = mods.gregtech.recipe.RecipeMap.getByName("macerator");
val forgeHammer = mods.gregtech.recipe.RecipeMap.getByName("forge_hammer");

	#concrete
var concreteRecipes as IItemStack[IIngredient] = {
	<ore:dyeWhite> : <minecraft:concrete>,
	<ore:dyeLightGray> : <minecraft:concrete:8>,
	<ore:dyeGray> : <minecraft:concrete:7>,
	<ore:dyePink> : <minecraft:concrete:6>,
	<ore:dyeLime> : <minecraft:concrete:5>,
	<ore:dyeYellow> : <minecraft:concrete:4>,
	<ore:dyeLightBlue> : <minecraft:concrete:3>,
	<ore:dyeMagenta> : <minecraft:concrete:2>,
	<ore:dyeOrange> : <minecraft:concrete:1>,
	<ore:dyeCyan> : <minecraft:concrete:9>,
	<ore:dyePurple> : <minecraft:concrete:10>,
	<ore:dyeBlue> : <minecraft:concrete:11>,
	<ore:dyeBrown> : <minecraft:concrete:12>,
	<ore:dyeGreen> : <minecraft:concrete:13>,
	<ore:dyeRed> : <minecraft:concrete:14>,	
	<ore:dyeBlack> : <minecraft:concrete:15>
	};

for dye, concrete in concreteRecipes {
mixer.recipeBuilder()
		.inputs(<minecraft:gravel>*4, <minecraft:sand>*4, dye)
		.fluidInputs([<liquid:concrete> * 576])
		.outputs(concrete * 32)
		.duration(80)
		.EUt(3)
		.buildAndRegister();
	}
	
	#Comparator
recipes.addShaped(<minecraft:comparator>, [
	[null, <minecraft:redstone_torch>, null],
	[<minecraft:redstone_torch>, <ore:gemQuartzite>, <minecraft:redstone_torch>],
	[<minecraft:stone>, <minecraft:stone>, <minecraft:stone>]]);
	
	#remove concrete powder
var concreteDisabled as IItemStack[] = [	
	<minecraft:concrete_powder:8>,
	<minecraft:concrete_powder:9>,
	<minecraft:concrete_powder:10>,
	<minecraft:concrete_powder:11>,
	<minecraft:concrete_powder:13>,
	<minecraft:concrete_powder:14>,
	<minecraft:concrete_powder:15>,
	<minecraft:concrete_powder:7>,
	<minecraft:concrete_powder:6>,
	<minecraft:concrete_powder:5>,
	<minecraft:concrete_powder:4>,
	<minecraft:concrete_powder:3>,
	<minecraft:concrete_powder>,
	<minecraft:concrete_powder:12>,
	<minecraft:concrete_powder:1>,
	<minecraft:concrete_powder:2>
	];

	for i in concreteDisabled {
		mods.jei.JEI.removeAndHide(i);
		mods.thermalexpansion.Transposer.removeFillRecipe(i, <liquid:water>);
	}
		
	#glass
furnace.remove(<minecraft:glass>);
mods.botania.PureDaisy.addRecipe(<minecraft:sand>, <minecraft:glass>, 120);

fluidExtractor.recipeBuilder()
    .inputs(<ore:sand> * 1)
    .fluidOutputs([<liquid:glass> * 144])
    .duration(80)
    .EUt(28)
    .buildAndRegister();

	#quartz block
	recipes.addShapedMirrored(<minecraft:quartz_block>, [[<minecraft:quartz>, <minecraft:quartz>, null],[<minecraft:quartz>, <minecraft:quartz>, null], [null, null, null]]);
	
	#brewing stand
recipes.remove(<minecraft:brewing_stand>);
recipes.addShaped(<minecraft:brewing_stand>, 
	[[null, <ore:stickBrass>, null],
	[<ore:gemQuartzite>, <ore:stickBrass>, <ore:gemQuartzite>], 
	[<ore:plateSteel>, <minecraft:obsidian>, <ore:plateSteel>]]);
	
	#enchantment Table
	recipes.remove(<minecraft:enchanting_table>);
mods.astralsorcery.Altar.addDiscoveryAltarRecipe("interactions:enchantmentTable", <minecraft:enchanting_table>, 150, 200, [
	<ore:gemAquamarine>,<minecraft:enchanted_book>,<ore:gemAquamarine>,
	null,<tconstruct:fancy_frame>,null,
	<tconstruct:fancy_frame>,<ore:blockMagicalWood>,<tconstruct:fancy_frame>
	]);		

	#fishing rod
recipes.remove(<minecraft:fishing_rod>);
recipes.addShaped(<minecraft:fishing_rod>, 
	[[null, null, <ore:stickWood>],
	[null, <ore:stickWood>, <ore:stringTwine>], 
	[<ore:stickWood>, null, <ore:stringTwine>]]);	
	
	#Disabled
var minecraftDisabled as IItemStack[] = [
	<minecraft:wooden_sword>,
	<minecraft:wooden_shovel>,
	<minecraft:wooden_pickaxe>,
	<minecraft:wooden_axe>,
	<minecraft:wooden_hoe>
	];
		
<minecraft:spawn_egg>.withTag({EntityTag: {id: "minecraft:zombie_villager"}}).addTooltip(format.darkRed("可以使用Zen Summoning召唤"));
<minecraft:red_flower:8>.addTooltip(format.darkRed("生成在平原生态群系。"));

	#golden apples
recipes.remove(<minecraft:golden_apple:1>);
recipes.remove(<minecraft:golden_apple>);
	
	#hopper
recipes.remove(<minecraft:hopper>);
recipes.addShaped(<minecraft:hopper>, [
	[<ore:plateIron>, craftingToolWrench, <ore:plateIron>],
	[<ore:plateIron>, <minecraft:chest>, <ore:plateIron>], 
	[null, <ore:plateIron>, null]]);
	
	#hopper from wopper
recipes.addShaped(<minecraft:hopper>, 
[[<ore:plateIron>, craftingToolWrench, <ore:plateIron>],
[<ore:plateIron>, <primal_tech:wooden_hopper>, <ore:plateIron>], 
[null, <ore:plateIron>, null]]);

	#f Cleanup
var ironIngotCleanup as IItemStack[] = [
	<actuallyadditions:item_dust:0>,
	<appliedenergistics2:material:49>,
	<actuallyadditions:item_misc:20>,
	<libvulpes:productdust:1>,
	<thermalfoundation:material:0>,
	<enderio:item_material:24>,
	<bloodmagic:component:19>
];
for i in ironIngotCleanup {
	furnace.remove(<ore:ingotIron>, i);
}
	#iron nuggets
recipes.remove(<minecraft:iron_nugget>);
recipes.addShapeless(<minecraft:iron_nugget>*9,[<ore:ingotIron>]);
	recipes.addShapeless(<minecraft:iron_nugget>,[<thaumcraft:nugget>]);


	#Gold Ingot Cleanup
var goldIngotCleanup as IItemStack[] = [
	<libvulpes:productdust:2>,
	<enderio:item_material:25>,
	<mekanism:dust:1>,
	<bloodmagic:component:20>,
	<actuallyadditions:item_dust:1>,
	<thermalfoundation:material:1>,
	<appliedenergistics2:material:51>
];

for i in goldIngotCleanup {
	furnace.remove(<ore:ingotGold>, i);
}

	#gold nuggets
recipes.remove(<minecraft:gold_nugget>);
recipes.addShapeless(<minecraft:gold_nugget>*9,[<ore:ingotGold>]);
	
	#torch from bark
recipes.addShapeless(<minecraft:torch>,[<ore:barkWood>,<ore:stickWood>]);
	
	#torch from rubber
recipes.removeByRecipeName("gregtech:rubber_drop_torch");
	

	#Hay Bale
recipes.addShaped(<minecraft:hay_block>, [
	[<ore:listAllgrain>, <ore:listAllgrain>, <ore:listAllgrain>],
	[<ore:string>, <ore:listAllgrain>, <ore:string>],
	[<ore:listAllgrain>, <ore:listAllgrain>, <ore:listAllgrain>]]);

	#sign
recipes.remove(<minecraft:sign>);
recipes.addShaped(<minecraft:sign> * 3, 
	[[<ore:plankWood>, <ore:plankWood>, <ore:plankWood>],
	[<ore:plankWood>, craftingToolSaw, <ore:plankWood>], 
	[null, <minecraft:stick>, null]]);
	
	#gold block
recipes.remove(<minecraft:gold_block>);
	
	#iron block
recipes.remove(<minecraft:iron_block>);
	
	#cauldron
recipes.remove(<minecraft:cauldron>);
recipes.addShaped(<minecraft:cauldron>,[
	[<ore:plateWroughtIron>,null,<ore:plateWroughtIron>],
	[<ore:plateWroughtIron>, craftingToolHardHammer,<ore:plateWroughtIron>],
	[<ore:plateWroughtIron>,<ore:plateWroughtIron>,<ore:plateWroughtIron>]]);
		
	#gold nuggets to ingot
recipes.addShaped(<minecraft:gold_ingot>, 
	[[<ore:nuggetGold>, <ore:nuggetGold>, <ore:nuggetGold>],
	[<ore:nuggetGold>, <ore:nuggetGold>, <ore:nuggetGold>], 
	[<ore:nuggetGold>, <ore:nuggetGold>, <ore:nuggetGold>]]);
	
	#remove diamond armor
mods.jei.JEI.removeAndHide(<minecraft:diamond_helmet>);
mods.jei.JEI.removeAndHide(<minecraft:diamond_leggings>);
mods.jei.JEI.removeAndHide(<minecraft:diamond_boots>);
mods.jei.JEI.removeAndHide(<minecraft:diamond_chestplate>);
	
	#hide chain armor
mods.jei.JEI.hide(<minecraft:chainmail_helmet>);
mods.jei.JEI.hide(<minecraft:chainmail_chestplate>);
mods.jei.JEI.hide(<minecraft:chainmail_leggings>);
mods.jei.JEI.hide(<minecraft:chainmail_boots>);
	
	#leather armor
recipes.remove(<minecraft:leather_boots>);
recipes.remove(<minecraft:leather_leggings>);
recipes.remove(<minecraft:leather_chestplate>);
recipes.remove(<minecraft:leather_helmet>);
	
	#iron sword
	recipes.remove(<minecraft:iron_sword>);
	recipes.addShaped(<minecraft:iron_sword>, 
	[[null, <minecraft:iron_ingot>, null],
	[null, <minecraft:iron_ingot>, null],
	[null, <minecraft:stick>, null]]);

	#Iron armor
recipes.remove(<minecraft:iron_boots>);
recipes.addShaped(<minecraft:iron_boots>, [
	[<ore:screwWroughtIron>, <minecraft:leather>, <ore:screwWroughtIron>],
	[<ore:plateIron>, <minecraft:leather_boots>, <ore:plateIron>], 
	[<ore:screwWroughtIron>, <ore:plateIron>, <ore:screwWroughtIron>]]);

recipes.remove(<minecraft:iron_helmet>);
recipes.addShaped(<minecraft:iron_helmet>, [
	[<ore:screwWroughtIron>, <minecraft:leather>, <ore:screwWroughtIron>],
	[<ore:plateIron>, <minecraft:leather_helmet>, <ore:plateIron>], 
	[<ore:screwWroughtIron>, <ore:plateIron>, <ore:screwWroughtIron>]]);

recipes.remove(<minecraft:iron_leggings>);
recipes.addShaped(<minecraft:iron_leggings>, [
	[<ore:screwWroughtIron>, <minecraft:leather>, <ore:screwWroughtIron>],
	[<ore:plateIron>, <minecraft:leather_leggings>, <ore:plateIron>], 
	[<ore:screwWroughtIron>, <ore:plateIron>, <ore:screwWroughtIron>]]);

recipes.remove(<minecraft:iron_chestplate>);
recipes.addShaped(<minecraft:iron_chestplate>, [
	[<ore:screwWroughtIron>, <minecraft:leather>, <ore:screwWroughtIron>],
	[<ore:plateIron>, <minecraft:leather_chestplate>, <ore:plateIron>], 
	[<ore:screwWroughtIron>, <ore:plateIron>, <ore:screwWroughtIron>]]);	

	#gold armor
	recipes.remove(<minecraft:golden_helmet>);
	recipes.remove(<minecraft:golden_chestplate>);
	recipes.remove(<minecraft:golden_leggings>);
	recipes.remove(<minecraft:golden_boots>);	
	recipes.addShaped(<minecraft:golden_boots>, [[<ore:screwIron>, <minecraft:leather>, <ore:screwIron>],[<ore:plateGold>, <minecraft:leather_boots>, <ore:plateGold>], [<ore:screwIron>, <ore:plateGold>, <ore:screwIron>]]);
	recipes.addShaped(<minecraft:golden_leggings>, [[<ore:screwIron>, <minecraft:leather>, <ore:screwIron>],[<ore:plateGold>, <minecraft:leather_leggings>, <ore:plateGold>], [<ore:screwIron>, <ore:plateGold>, <ore:screwIron>]]);
	recipes.addShaped(<minecraft:golden_chestplate>, [[<ore:screwIron>, <minecraft:leather>, <ore:screwIron>],[<ore:plateGold>, <minecraft:leather_chestplate>, <ore:plateGold>], [<ore:screwIron>, <ore:plateGold>, <ore:screwIron>]]);
	recipes.addShaped(<minecraft:golden_helmet>, [[<ore:screwIron>, <minecraft:leather>, <ore:screwIron>],[<ore:plateGold>, <minecraft:leather_helmet>, <ore:plateGold>], [<ore:screwIron>, <ore:plateGold>, <ore:screwIron>]]);

	#ender eye
	recipes.remove(<minecraft:ender_eye>);

	#Bread
furnace.remove(<minecraft:bread>);
recipes.remove(<minecraft:bread>);
furnace.addRecipe(<minecraft:bread>, <ore:foodDough>);

	#Bucket
recipes.remove(<minecraft:bucket>);
RecipeBuilder.get("basic")
	.setShaped([
		[null, null, null],
		[<ore:plateIron>, null, <ore:plateIron>],
		[null, <ore:plateIron>, null]])
	.addTool(<ore:artisanHammers>, 10)
	.addOutput(<minecraft:bucket>)
	.create();
	
	#Attempt to force readd Bucket
	mods.jei.JEI.addItem(<minecraft:bucket>);

	#mushroom
	mods.bloodmagic.AlchemyArray.addRecipe(<minecraft:red_mushroom>, <minecraft:mycelium>, <rustic:cloudsbluff>);

	#more beef
	mods.bloodmagic.AlchemyArray.addRecipe(<minecraft:beef>, <minecraft:chicken>, <projecte:item.pe_covalence_dust>);	
	
	#mycellium
RecipeBuilder.get("basic")
	.setShaped([
		[<ore:blockSlimeGrass>, <ore:blockSlimeGrass>, <ore:blockSlimeGrass>],
		[<ore:blockSlimeGrass>, <wizardry:blackened_spirit>, <ore:blockSlimeGrass>],
		[<ore:blockSlimeGrass>, <ore:blockSlimeGrass>, <ore:blockSlimeGrass>]])
	.addTool(<ore:toolCutters>, 10)
	.addOutput(<minecraft:mycelium>*9)
	.create();	
	
	#Nether Quartz
furnace.remove(<minecraft:quartz>, <actuallyadditions:item_dust:5>);
	#Cake
mods.astralsorcery.LightTransmutation.removeTransmutation(<minecraft:cake>, false);
//mods.astralsorcery.LightTransmutation.addTransmutation(<botania:cellblock>, <minecraft:cake>, 600);

<minecraft:cake>.maxStackSize = 64;
recipes.remove(<minecraft:cake>);
recipes.addShaped(<minecraft:cake>*2, [
	[<minecraft:milk_bucket>, <ore:listAllheavycream>, <minecraft:milk_bucket>],
	[<minecraft:sugar>, <ore:egg>, <minecraft:sugar>],
	[<ore:foodDough>, <ore:foodDough>, <ore:foodDough>]]);
recipes.addShaped(<minecraft:cake>, [
	[<ceramics:clay_bucket:1>, <ore:listAllheavycream>, <ceramics:clay_bucket:1>],
	[<minecraft:sugar>, <ore:egg>, <minecraft:sugar>],
	[<ore:foodDough>, <ore:foodDough>, <ore:foodDough>]]);

RecipeBuilder.get("basic")
	.setShaped([
		[null, <ore:listAllheavycream>, null],
		[<minecraft:sugar>, <ore:egg>, <minecraft:sugar>],
		[<ore:foodDough>, <ore:foodDough>, <ore:foodDough>]])
	.setFluid(<liquid:milk>*1000)
	.addOutput(<minecraft:cake>)
	.create();

RecipeBuilder.get("basic")
	.setShaped([
		[null, <ore:listAllheavycream>, null],
		[<minecraft:sugar>, <ore:itemCakeBase>, <minecraft:sugar>],
		[null, null, null]])
	.setFluid(<liquid:milk>*1000)
	.addOutput(<minecraft:cake>)
	.create();

	#Charcoal
furnace.remove(<minecraft:coal:1>);

	#Chest
recipes.remove(<minecraft:chest>);
recipes.remove(<minecraft:chest>*4);
recipes.addShaped(<minecraft:chest>, [
	[<ore:plankWood>, <ore:plankWood>, <ore:plankWood>],
	[<ore:plankWood>, <actuallyadditions:block_misc:4>, <ore:plankWood>],
	[<ore:plankWood>, <ore:plankWood>, <ore:plankWood>]]);
 RecipeBuilder.get("basic")
	.setShaped([
      [<ore:plankWood>, <ore:plankWood>, <ore:plankWood>],
      [<ore:plankWood>, null, <ore:plankWood>],
      [<ore:plankWood>, <ore:plankWood>, <ore:plankWood>]])
    .addTool(<ore:toolAxe>, 10)
    .addOutput(<minecraft:chest>)
    .create();

    #Cookie
recipes.remove(<minecraft:cookie>);
recipes.addShaped(<minecraft:cookie>*8, [
	[null, null, null],
	[<ore:foodDough>, <minecraft:dye:3>, <ore:foodDough>],
	[null, null, null]]);

	#Durability
<minecraft:stone_sword>.maxDamage = 90;
<minecraft:stone_shovel>.maxDamage = 90;
<minecraft:stone_pickaxe>.maxDamage = 90;
<minecraft:stone_axe>.maxDamage = 90;
<minecraft:stone_hoe>.maxDamage = 90;

	#Diamond
recipes.remove(<minecraft:diamond>);
forgeHammer.recipeBuilder()
    .inputs(<ore:blockDiamond>)
	.outputs(<minecraft:diamond> * 9)
    .duration(100)
    .EUt(24)
    .buildAndRegister();

	#Ender Pearl
recipes.remove(<minecraft:ender_pearl>);

	#Furnace
recipes.removeByRegex("minecraft:furnace");
<minecraft:furnace>.addTooltip(format.darkRed("可以在村庄里找到。"));
<minecraft:furnace>.addTooltip(format.darkRed("如果你真的想要一个的话..."));
<minecraft:furnace>.addTooltip(format.darkRed("在耐火砖上撒些世界盐会发生这件神奇的事情..."));

SalisMundus.addSingleConversion(<blockstate:gregtech:metal_casing:variant=primitive_bricks>.block, <minecraft:furnace>);

	#Gold Ingot
recipes.remove(<minecraft:gold_ingot>);

	#Iron Ingot
recipes.removeByRecipeName("minecraft:iron_ingot_from_nuggets");
recipes.removeByRecipeName("minecraft:iron_ingot_from_block");
recipes.removeByRecipeName("projecte/conversions/gold_to_iron");
recipes.removeByRecipeName("deepmoblearning:living_matter_exchange/transmutes0_overworldian/recipe4_iron_ingot");

	#Lead
recipes.remove(<minecraft:lead>);
recipes.addShaped(<minecraft:lead>, [
	[<ore:string>, <ore:string>, null],
	[<ore:string>, <ore:string>, null],
	[null, null, <ore:string>]]);

	#Leather Nerf
furnace.remove(<minecraft:leather>);
recipes.removeByRegex("minecraft:leather");

	#Paper Nerf
recipes.remove(<minecraft:paper>);
mods.tconstruct.Drying.addRecipe(<minecraft:paper>,<primal_tech:plant_fibres>, 1000);
recipes.addShapeless(<minecraft:paper>*3, [<minecraft:book>]);
recipes.addShapeless(<minecraft:paper>, [<cyberware:blueprint:1>]);
RecipeBuilder.get("basic")
	.setShaped([
		[null, null, null],
		[<minecraft:reeds>, <minecraft:reeds>, <minecraft:reeds>],
		[null, null, null]])
	.addTool(<ore:artisanHammers>, 1)
	.addOutput(<minecraft:paper>)
	.create();

	#PickAxe - Iron
recipes.remove(<minecraft:iron_pickaxe>);
RecipeBuilder.get("basic")
	.setShaped([
		[<ore:plateIron>, <ore:plateIron>, <ore:plateIron>],
		[null, <ore:stickWood>, null],
		[null, <ore:stickWood>, null]])
	.addTool(<ore:artisanHammers>, 20)
	.addOutput(<minecraft:iron_pickaxe>)
	.create();

	#Quarts blocks
recipes.remove(<minecraft:quartz_block>);
	
	#prismarine bricks
recipes.addShapeless(<minecraft:prismarine:1>,
	[<ore:gemPrismarine>,<ore:gemPrismarine>,<ore:gemPrismarine>,
	<ore:gemPrismarine>,<ore:gemPrismarine>,<ore:gemPrismarine>,
	<ore:gemPrismarine>,<ore:gemPrismarine>,<ore:gemPrismarine>]);
	
	#purpur from purple concrete
	mods.botania.ManaInfusion.addAlchemy(<minecraft:purpur_block>, <minecraft:concrete:10>, 500);
	
	#Wool Nerf
recipes.removeByRegex("minecraft:string_to_wool");

	#Bookself - move to artisan worktable + Saw
recipes.remove(<minecraft:bookshelf>);
recipes.remove(<chisel:bookshelf_jungle>);

RecipeBuilder.get("basic")
	.setShaped([
		[<ore:plankWood>, <ore:plankWood>, <ore:plankWood>],
		[<minecraft:book>, <minecraft:book>, <minecraft:book>],
		[<ore:plankWood>, <ore:plankWood>, <ore:plankWood>]])
	.addTool(<ore:toolSaw>, 10)
	.addOutput(<minecraft:bookshelf>)
	.create();

RecipeBuilder.get("basic")
	.setShaped([
		[<minecraft:planks:3>, <minecraft:planks:3>, <minecraft:planks:3>],
		[<minecraft:book>, <minecraft:book>, <minecraft:book>],
		[<minecraft:planks:3>, <minecraft:planks:3>, <minecraft:planks:3>]])
	.addTool(<ore:toolSaw>, 10)
	.addOutput(<chisel:bookshelf_jungle>)
	.create();

	#Beacon - Moved to Magic Mods
recipes.remove(<minecraft:beacon>);
	mods.astralsorcery.Altar.addAttunementAltarRecipe("interactions:beacon", <minecraft:beacon>, 320, 600, [
	<ore:enlightenedFusedGlass>,<randomthings:spectrelens>,<ore:enlightenedFusedGlass>,
	<ore:enlightenedFusedGlass>,<astralsorcery:itemshiftingstar>,<ore:enlightenedFusedGlass>,
	<ore:blockObsidian>,<ore:blockObsidian>,<ore:blockObsidian>,
	<ore:powderMana>,<ore:powderMana>,<ore:powderMana>,<ore:powderMana>]);


	#brewing stand
recipes.remove(<minecraft:brewing_stand>);
	mods.astralsorcery.Altar.addDiscoveryAltarRecipe("interactions:brewery", <minecraft:brewing_stand>, 120, 200, [
	null,null,null,
	null,<ore:stickBlaze>,null,
	<ore:plateIron>,<ore:plateNetherQuartz>,<ore:plateIron>]);

	#bucket moved to artisan work tables
recipes.remove(<minecraft:bucket>);

	#end Crystal - moved to magic mods
recipes.remove(<minecraft:end_crystal>);

	#end Rod
recipes.remove(<minecraft:end_rod>);
recipes.addShapeless(<minecraft:end_rod> * 4, [<minecraft:end_rod>,<minecraft:blaze_rod>,<minecraft:chorus_fruit_popped>]);
	

mods.astralsorcery.Altar.addConstellationAltarRecipe("interactions:end_crystal", <minecraft:end_crystal>, 1500, 600, [
	<thermalfoundation:glass_alloy:6>, <ore:plateNetherStar>, <thermalfoundation:glass_alloy:6>,
	<ore:plateNetherStar>, <deepmoblearning:glitch_heart>, <ore:plateNetherStar>,
	<thermalfoundation:glass_alloy:6>, <ore:plateNetherStar>, <thermalfoundation:glass_alloy:6>,
	<thaumcraft:slab_arcane_stone>,<thaumcraft:slab_arcane_stone>,<thaumcraft:slab_arcane_stone>,<thaumcraft:slab_arcane_stone>,
	<thaumcraft:slab_arcane_stone>,<thaumcraft:slab_arcane_stone>,<ore:nuggetVoid>,<ore:nuggetVoid>,<ore:nuggetVoid>,<ore:nuggetVoid>,
	<thaumcraft:slab_arcane_stone>,<thaumcraft:slab_arcane_stone>]);	

#leather Armor Helmet in Artisan tables
RecipeBuilder.get("basic")
	.setShaped([
		[null, null, null],
		[hardenedLeather, hardenedLeather, hardenedLeather],
		[hardenedLeather, null, hardenedLeather]])
	.addTool(<ore:toolCutters>, 10)
	.addOutput(<minecraft:leather_helmet>)
	.create();

#leather Armor Helmet in Artisan tables
RecipeBuilder.get("basic")
	.setShaped([
		[hardenedLeather, null, hardenedLeather],
		[hardenedLeather, hardenedLeather, hardenedLeather],
		[hardenedLeather, hardenedLeather, hardenedLeather]])
	.addTool(<ore:toolCutters>, 10)
	.addOutput(<minecraft:leather_chestplate>)
	.create();

#leather Armor Helmet in Artisan tables
RecipeBuilder.get("basic")
	.setShaped([
		[hardenedLeather, hardenedLeather, hardenedLeather],
		[hardenedLeather, null, hardenedLeather],
		[hardenedLeather, null, hardenedLeather]])
	.addTool(<ore:toolCutters>, 10)
	.addOutput(<minecraft:leather_leggings>)
	.create();

#leather Armor Helmet in Artisan tables
RecipeBuilder.get("basic")
	.setShaped([
		[null, null, null],
		[hardenedLeather, null, hardenedLeather],
		[hardenedLeather, null, hardenedLeather]])
	.addTool(<ore:toolCutters>, 10)
	.addOutput(<minecraft:leather_boots>)
	.create();

	#furnace
	recipes.remove(<minecraft:furnace>);

#Remove recipe for the one probe - created via emc
recipes.remove(<theoneprobe:probenote>);


print("----------------Minecraft End-------------------");
