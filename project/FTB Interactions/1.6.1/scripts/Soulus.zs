import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.soulus.Composer;
import mods.gregtech.recipe.RecipeMap;
import mods.gregtech.recipe.RecipeMaps;

print("---------------Soulus Start------------------");

val forge_hammer = mods.gregtech.recipe.RecipeMap.getByName("forge_hammer");
val mixer = mods.gregtech.recipe.RecipeMap.getByName("mixer");
val blast_furnace = mods.gregtech.recipe.RecipeMap.getByName("blast_furnace");

	#Ash (renamed because it isn't oredicted with dustAsh and serves a different purpose)
<soulus:ash>.displayName = "死亡之灰";

	#Barket
recipes.remove(<soulus:barket>);
recipes.addShaped(<soulus:barket>, [
	[null, null, null],
	[<ore:barkWood>, null, <ore:barkWood>],
	[null, <ore:barkWood>, null]]);

	#Books via Bark Recipe
recipes.removeByRegex("soulus:misc/bark_book");

	#Composer
recipes.remove(<soulus:composer_cell>);
recipes.addShaped(<soulus:composer_cell> * 10, [
	[<soulus:block_endersteel_dark>, <minecraft:obsidian>, <soulus:block_endersteel_dark>], 
	[<soulus:gear_oscillating>, <ore:plateIron>.firstItem, <soulus:gear_oscillating>], 
	[<ore:plateIron>.firstItem, <ore:plateIron>.firstItem, <ore:plateIron>.firstItem]]);


var itemsDisabled as IItemStack[] = [
	<soulus:skewer>,
	<soulus:bone_normal>,
	<soulus:bone_dry>,
	<soulus:bone_fungal>,
	<soulus:bone_frozen>,
	<soulus:bone_ender>,
	<soulus:bone_nether>,
	<soulus:gear_bone_nether>,
	<soulus:gear_bone_frozen>,
	<soulus:gear_bone_fungal>,
	<soulus:gear_bone_dry>,
	<soulus:gear_bone>,
	<soulus:sledgehammer>,
	<soulus:emerald_coated>
];

for i in itemsDisabled {
	mods.jei.JEI.removeAndHide(i);
}

	#Blackened Bone Meal
recipes.remove(<soulus:bone_meal_nether>);
forge_hammer.recipeBuilder()
	.inputs(<soulus:bone_chunk_nether>)
	.outputs(<soulus:bone_meal_nether>)
	.duration(40)
	.EUt(4)
	.buildAndRegister();

	#Blood Crystal
furnace.remove(<soulus:crystal_blood>);
recipes.remove(<soulus:crystal_blood>.withTag({contained_blood: 1000}));
mods.bloodmagic.BloodAltar.addRecipe(<soulus:crystal_blood>.withTag({contained_blood: 1000}), <ore:gemFlawlessEmerald>.firstItem, 3, 1000, 50, 100);


	#Bone Meal from Bone Chunk
recipes.removeByRecipeName("soulus:bone_chunks/bone_meal_normal");

var bonemealMap as IItemStack[] = [
	<soulus:bone_chunk_normal>,
	<soulus:bone_chunk_dry>,
	<soulus:bone_chunk_frozen>,
	<soulus:bone_chunk_scale>,
	<soulus:bone_chunk_fungal>
];
	
for i in bonemealMap{
	forge_hammer.recipeBuilder()
	.inputs([<soulus:bone_chunk_normal>])
	.outputs(<minecraft:dye:15>)
	.duration(40)
	.EUt(4)
	.buildAndRegister();
}

	#Bone Chunk - Blackened
recipes.remove(<soulus:bone_chunk_nether>);
mixer.recipeBuilder()
	.inputs(<ore:boneWithered>)
	.fluidInputs(<liquid:lifeessence> * 100)
	.outputs(<soulus:bone_chunk_nether> * 5)
	.duration(80)
	.EUt(120)
	.buildAndRegister();

mixer.recipeBuilder()
	.inputs(<xreliquary:mob_ingredient:1>)
	.fluidInputs(<liquid:lifeessence> * 200)
	.outputs(<soulus:bone_chunk_nether> * 15)
	.duration(80)
	.EUt(120)
	.buildAndRegister();

	#Bone Chunk - Dry
recipes.remove(<soulus:bone_chunk_dry>);
mixer.recipeBuilder()
	.inputs(<minecraft:bone>, <ore:sand>)
	.fluidInputs(<liquid:lifeessence> * 100)
	.outputs(<soulus:bone_chunk_dry> * 5)
	.duration(80)
	.EUt(120)
	.buildAndRegister();

mixer.recipeBuilder()
	.inputs(<xreliquary:mob_ingredient>, <ore:sand> * 2)
	.fluidInputs(<liquid:lifeessence> * 100)
	.outputs(<soulus:bone_chunk_dry> * 3)
	.duration(80)
	.EUt(120)
	.buildAndRegister();

	#Bone Chunk - Ender
recipes.remove(<soulus:bone_chunk_ender>);
mixer.recipeBuilder()
	.inputs(<minecraft:bone>, <ore:dustEnderPearl>)
	.fluidInputs(<liquid:lifeessence> * 100)
	.outputs(<soulus:bone_chunk_ender> * 5)
	.duration(80)
	.EUt(120)
	.buildAndRegister();

mixer.recipeBuilder()
	.inputs(<xreliquary:mob_ingredient>, <ore:dustEnderPearl> * 2)
	.fluidInputs(<liquid:lifeessence> * 100)
	.outputs(<soulus:bone_chunk_ender> * 15)
	.duration(80)
	.EUt(120)
	.buildAndRegister();

	#Bone Chunk - Frozen
recipes.remove(<soulus:bone_chunk_frozen>);
mixer.recipeBuilder()
	.inputs(<ore:bone>, <minecraft:packed_ice>)
	.fluidInputs(<liquid:lifeessence> * 100)
	.outputs(<soulus:bone_chunk_frozen> * 5)
	.duration(80)
	.EUt(120)
	.buildAndRegister();

mixer.recipeBuilder()
	.inputs(<xreliquary:mob_ingredient>, <minecraft:packed_ice> * 2)
	.fluidInputs(<liquid:lifeessence> * 100)
	.outputs(<soulus:bone_chunk_frozen> * 15)
	.duration(80)
	.EUt(120)
	.buildAndRegister();


	#Bone Chunk - Mossy
recipes.remove(<soulus:bone_chunk_fungal>);
mixer.recipeBuilder()
	.inputs(<ore:bone>, <tconstruct:materials:18>)
	.fluidInputs(<liquid:lifeessence> * 100)
	.outputs(<soulus:bone_chunk_fungal> * 5)
	.duration(80)
	.EUt(120)
	.buildAndRegister();

mixer.recipeBuilder()
	.inputs(<xreliquary:mob_ingredient>, <tconstruct:materials:18> * 2)
	.fluidInputs(<liquid:lifeessence> * 100)
	.outputs(<soulus:bone_chunk_fungal> * 15)
	.duration(80)
	.EUt(120)
	.buildAndRegister();

	#Bone Chunk - Normal
recipes.remove(<soulus:bone_chunk_normal>);
mixer.recipeBuilder()
	.inputs(<ore:bone>, <tconstruct:materials:18>)
	.fluidInputs(<liquid:lifeessence> * 100)
	.outputs(<soulus:bone_chunk_fungal> * 5)
	.duration(80)
	.EUt(120)
	.buildAndRegister();

mixer.recipeBuilder()
	.inputs(<ore:bone>)
	.fluidInputs(<liquid:lifeessence> * 100)
	.outputs(<soulus:bone_chunk_normal> * 15)
	.duration(80)
	.EUt(120)
	.buildAndRegister();

	#Bone Chunk - Scake
recipes.remove(<soulus:bone_chunk_scale>);
mixer.recipeBuilder()
	.inputs(<ore:bone>, <minecraft:prismarine_shard>)
	.fluidInputs(<liquid:lifeessence> * 100)
	.outputs(<soulus:bone_chunk_scale> * 5)
	.duration(80)
	.EUt(120)
	.buildAndRegister();

	#Dark Endersteel Dust
recipes.remove(<soulus:dust_ender_iron_ashen>);
recipes.addShapeless(<soulus:dust_ender_iron_ashen>, [<ore:dustSteel>, <ore:dustEnder>, <soulus:ash>]);
<soulus:dust_ender_iron_ashen>.displayName = "暗黑末影钢粉";

	#Dark Endersteel Ingot
furnace.remove(<soulus:ingot_endersteel_dark>);
blast_furnace.recipeBuilder()
    .inputs(<soulus:dust_ender_iron_ashen>)
    .outputs(<soulus:ingot_endersteel_dark>)
    .property("temperature", 1700)
    .duration(2400)
    .EUt(120)
    .buildAndRegister();

	#Ender Dust
recipes.remove(<soulus:dust_ender>);
recipes.addShapeless(<soulus:dust_ender>,
	[<ore:dustEnderPearl>, <ore:dustEnderPearl>, <ore:dustGlowstone>, <ore:dustGlowstone>]);
mixer.recipeBuilder()
	.inputs([<ore:dustEnderPearl>, <ore:dustGlowstone>])
	.outputs(<soulus:dust_ender>)
	.duration(80)
	.EUt(4)
	.buildAndRegister();

	#Ender Iron Dust
recipes.remove(<soulus:dust_ender_iron>);
<soulus:dust_ender_iron>.displayName = "末影钢混合物";
recipes.addShapeless(<soulus:dust_ender_iron>, [<ore:dustSteel>, <ore:dustEnder>]);

	#Ender Steel
furnace.remove(<soulus:ingot_endersteel>);
blast_furnace.recipeBuilder()
    .inputs(<soulus:dust_ender_iron>)
    .outputs(<soulus:ingot_endersteel>)
    .property("temperature", 1700)
    .duration(2400)
    .EUt(120)
    .buildAndRegister();

	#Endersteel Alchemy
var enderAlchemyDisabled as string[] = [
	"endersteel",
	"endersteel_dark",
	"gold",
	"iron",
	"niobium",
	"aluminium",
	"copper",
	"lead",
	"nickel",
	"silver",
	"tin",
	"zinc"];

for i in enderAlchemyDisabled {
	Composer.remove("soulus:composer/endersteel_alchemy/" + i);
}

	#Enderstee; Bars
//recipes.removeByRecipeName("soulus:bars_endersteel_normal");
recipes.remove(<soulus:bars_endersteel>);
mods.gregtech.recipe.RecipeMap.getByName("extruder").recipeBuilder()
	.inputs(<soulus:ingot_endersteel>)
	.notConsumable(<metaitem:shape.extruder.rod>)
	.outputs(<soulus:bars_endersteel> * 2)
	.duration(1200)
	.EUt(30)
	.buildAndRegister();

	#Endersteel Bar Styles
recipes.removeByRecipeName("soulus:bars_endersteel_madness");
recipes.removeByRecipeName("soulus:bars_endersteel_earthy");
recipes.removeByRecipeName("soulus:bars_endersteel_spooky");
recipes.removeByRecipeName("soulus:bars_endersteel_ender");
recipes.removeByRecipeName("soulus:bars_endersteel_blazing");
recipes.removeByRecipeName("soulus:bars_endersteel_sorrow");

var endersteelBars as IItemStack[] =  [
	<soulus:bars_endersteel>,
	<soulus:bars_endersteel:1>,
	<soulus:bars_endersteel:2>,
	<soulus:bars_endersteel:3>,
	<soulus:bars_endersteel:4>,
	<soulus:bars_endersteel:5>,
	<soulus:bars_endersteel:6>
	];

mods.chisel.Carving.addGroup("endersteelBars");
for i in endersteelBars {
	mods.chisel.Carving.addVariation("endersteelBars", i);
}

	#Niobium Dust
recipes.remove(<soulus:dust_niobium>);
Composer.recipe("interactions:niobium_ingot", <ore:ingotHotNiobium>.firstItem * 12)
		.setTime(256)
		.setShaped([
		[<soulus:dust_ender_iron>, <soulus:dust_ender_iron>, <soulus:dust_ender_iron>],
		[<soulus:dust_ender_iron>, <soulus:crystal_dark>, <soulus:dust_ender_iron>],
		[<soulus:dust_ender_iron>, <soulus:dust_ender_iron>, <soulus:dust_ender_iron>]])
		.create();

	#Niobium Ingot
furnace.remove(<soulus:ingot_niobium>);
<soulus:ingot_niobium>.displayName = "注魔铌锭";
Composer.remove("composer/niobium");
Composer.recipe("interactions:niobium_ingot", <ore:ingotHotNiobium>.firstItem * 12)
		.setTime(512)
		.setShaped([
		[<soulus:ingot_endersteel>, <soulus:ingot_endersteel>, <soulus:ingot_endersteel>],
		[<soulus:ingot_endersteel>, <soulus:crystal_dark>, <soulus:ingot_endersteel>],
		[<soulus:ingot_endersteel>, <soulus:ingot_endersteel>, <soulus:ingot_endersteel>]])
		.create();


	#Niobium Gear
recipes.remove(<soulus:gear_niobium>);
<soulus:gear_niobium>.displayName = "注魔铌齿轮";
Composer.recipe("interactions:niobium_gear", <soulus:gear_niobium>)
		.setTime(4)
		.setShapeless([<ore:gearNiobiumTitanium>])
		.setMobsRequired({ "minecraft:villager_golem": 2})
		.create();

	#Oscillating Gear
recipes.remove(<soulus:gear_oscillating>);
mods.bloodmagic.BloodAltar.addRecipe(<soulus:gear_oscillating>, <ore:gearAluminium>.firstItem, 3, 10000, 50, 100);

	#Unloader
recipes.remove(<soulus:unloader>);
recipes.addShaped(<soulus:unloader>, [	
	[<ore:cobblestone>, <ore:cobblestone>, <ore:cobblestone>],
	[<ore:cobblestone>, null, <ore:cobblestone>],
	[null, null, null]]);


	#Soul Catalyst
Composer.remove("composer/soul_catalyst)");


print("----------------Soulus End-------------------");
