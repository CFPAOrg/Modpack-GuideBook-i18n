import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.artisanworktables.builder.RecipeBuilder;
import mods.thaumcraft.ArcaneWorkbench;
import mods.gregtech.recipe.RecipeMap;


print("------------------Reliquary Start---------------");
val alloyer = mods.gregtech.recipe.RecipeMap.getByName("alloy_smelter");

recipes.remove(<xreliquary:glowing_bread>);
mods.jei.JEI.removeAndHide(<xreliquary:alkahestry_tome:*>);

recipes.addShapeless(<xreliquary:glowing_bread>, 
	[<minecraft:bread>, <xreliquary:glowing_water>]);


	#bat wing
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("reliquarybatwing", "", 5, [<aspect:aer>*5, <aspect:ignis>*5, <aspect:ordo>*10 ],<xreliquary:mob_ingredient:5>,
	[[null, null, null],
	[<harvestcraft:hardenedleatheritem>, <minecraft:bone>,<harvestcraft:hardenedleatheritem>],
	[<minecraft:bone>, null, null]
	]);	

	#crimson cloth
	recipes.remove(<xreliquary:mob_ingredient:15>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("reliquarycrimsoncloth", "", 5, [<aspect:perditio>*5, <aspect:ignis>*5 ], <xreliquary:mob_ingredient:15>,
	[[<botania:manaresource:22>, null, <botania:manaresource:22>],
	[<minecraft:wool:15>, <xreliquary:mob_ingredient:11>, <minecraft:wool:14>],
	[<minecraft:wool:15>, <xreliquary:mob_ingredient:11>, <minecraft:wool:14>]
	]);		
	
	#destruction catalyst
	recipes.remove(<xreliquary:destruction_catalyst>);
	mods.thaumcraft.Infusion.registerRecipe("destructionCatalyst", "INFUSION", <xreliquary:destruction_catalyst>, 2, [<aspect:ignis> * 16, <aspect:potentia> * 20], <bloodmagic:component:10>,
	[<xreliquary:mob_ingredient:3>, <xreliquary:infernal_tear>, <astralsorcery:itemcoloredlens>]);

	#witherless rose
	recipes.remove(<xreliquary:witherless_rose>);
	mods.thaumcraft.Infusion.registerRecipe("witherlessrose", "INFUSION", <xreliquary:witherless_rose>, 2, [<aspect:tenebrae> * 48, <aspect:victus> * 20, <aspect:aversio> * 20 ], <minecraft:double_plant:4>,
	[<minecraft:nether_star>,<minecraft:nether_star>,<minecraft:nether_star>,<minecraft:nether_star>,<xreliquary:mob_ingredient:9>,<xreliquary:mob_ingredient:9>,<xreliquary:mob_ingredient:9>,<xreliquary:mob_ingredient:9>]);	
	
	#Eye of the Storm
alloyer.recipeBuilder()
    .inputs(<deepmoblearning:pristine_matter_thermal_elemental>, <thermalfoundation:material:1026>)
    .outputs(<xreliquary:mob_ingredient:8> * 1)
    .duration(375)
    .EUt(24)
    .buildAndRegister();

	#Frozen Core
alloyer.recipeBuilder()
    .inputs(<deepmoblearning:pristine_matter_thermal_elemental>, <thermalfoundation:material:1025>)
    .outputs(<xreliquary:mob_ingredient:10> * 1)
    .duration(375)
    .EUt(24)
    .buildAndRegister();	

	mods.astralsorcery.Altar.addDiscoveryAltarRecipe("interactions:glowingwater", <xreliquary:glowing_water>, 120, 200, [
	<minecraft:glass_pane>,<minecraft:water_bucket>,<minecraft:glass_pane>,
	<minecraft:glass_pane>, <ore:dustGlowstone>,<minecraft:glass_pane>,
	<minecraft:nether_wart>, <minecraft:glass_pane>, <ore:gunpowder>]);
	
	#interdiction torch
	recipes.remove(<xreliquary:interdiction_torch>);
	mods.astralsorcery.Altar.addDiscoveryAltarRecipe("interactions:interdictiontorch", <xreliquary:interdiction_torch>*4, 120, 200, [
	<integrateddynamics:menril_torch>,<ore:manaDiamond>,<integrateddynamics:menril_torch>,
	<ore:powderBlaze>,<ore:stickGold>,<ore:powderBlaze>,
	null,<ore:stickGold>,null,]);	
	
	#fortune coin
	recipes.remove(<xreliquary:fortune_coin>);
	mods.thaumcraft.Infusion.registerRecipe("fortunecoin", "INFUSION", <xreliquary:fortune_coin>, 3, [<aspect:desiderium> * 16, <aspect:vinculum> * 8 ], <metaitem:coin.doge>,
	[<xreliquary:mob_ingredient:11>,<xreliquary:mob_ingredient:5>, <xreliquary:mob_ingredient:4>]);	
		
	#Rending Gale
	recipes.remove(<xreliquary:rending_gale>);
	mods.thaumcraft.Infusion.registerRecipe("rendinggale", "INFUSION", <xreliquary:rending_gale>, 3, [<aspect:volatus> * 16, <aspect:potentia> * 32 ], <ore:stickSkystone>.firstItem,
	[<ore:plateRoseGold>.firstItem,<ore:plateRoseGold>.firstItem, <xreliquary:void_tear>, <xreliquary:mob_ingredient:5>, <xreliquary:mob_ingredient:5>, <xreliquary:mob_ingredient:8>]);	
	
print("-------------------Reliquary End----------------");