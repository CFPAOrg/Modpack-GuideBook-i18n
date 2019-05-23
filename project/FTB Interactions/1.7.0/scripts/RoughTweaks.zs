import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

print("---------------RoughTweaks Start------------------");

<roughtweaks:plaster>.displayName = "创可贴";

	#bandage loot drop only
	mods.jei.JEI.removeAndHide(<roughtweaks:bandage>);

	#Healing Salve
	recipes.remove(<roughtweaks:salve>);
	recipes.addShapeless(<roughtweaks:salve>, 
	[<minecraft:bowl>, <minecraft:red_flower:*>, <minecraft:yellow_flower>, <minecraft:wheat_seeds>]);

	#bandaid
	recipes.addShaped(<roughtweaks:plaster>, 
	[[<minecraft:string>, <tconstruct:edible:3>, <minecraft:string>],
	[<minecraft:paper>, <ore:blockWool>, <minecraft:paper>], 
	[<minecraft:string>, <tconstruct:edible:3>, <minecraft:string>]]);	
	
	#medkit
	recipes.remove(<roughtweaks:medikit>);
	recipes.addShaped(<roughtweaks:medikit>, 
	[[<botania:quartz:1>, <minecraft:golden_apple>, <botania:quartz:1>],
	[<harvestcraft:wovencottonitem>, <roughtweaks:plaster>, <harvestcraft:wovencottonitem>], 
	[<botania:quartz:1>, <harvestcraft:wovencottonitem>, <botania:quartz:1>]]);

print("----------------RoughTweaks End-------------------");