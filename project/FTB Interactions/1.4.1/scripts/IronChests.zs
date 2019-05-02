import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.mods.ILoadedMods;

print("---------------Iron Chests Start------------------");

	#Removing All Iron Chests
var allChests as IItemStack[] = loadedMods["ironchest"].items;

for i in allChests {
	recipes.remove(i);
}

	#add recipe for dirt chest
recipes.addShaped(<ironchest:iron_chest:7>, 
	[[<minecraft:dirt>, <minecraft:dirt>, <minecraft:dirt>],
	[<minecraft:dirt>, null, <minecraft:dirt>], 
	[<minecraft:dirt>, <minecraft:dirt>, <minecraft:dirt>]]);

	#Upgrades
recipes.addShaped(<ironchest:wood_iron_chest_upgrade>, [
	[<ore:plateIron>, <ore:plateIron>, <ore:plateIron>],
	[<ore:plateIron>, <ore:plankWood>, <ore:plateIron>],
	[<ore:plateIron>, <ore:plateIron>, <ore:plateIron>]]);

recipes.addShaped(<ironchest:iron_gold_chest_upgrade>, [
	[<ore:plateGold>, <ore:plateGold>, <ore:plateGold>],
	[<ore:plateGold>, <ore:plateIron> , <ore:plateGold>],
	[<ore:plateGold>, <ore:plateGold>, <ore:plateGold>]]);

recipes.addShaped(<ironchest:gold_diamond_chest_upgrade>, [
	[<ore:plateDiamond>, <ore:plateDiamond>, <ore:plateDiamond>],
	[<ore:plateDiamond>, <ore:plateGold>, <ore:plateDiamond>],
	[<ore:plateDiamond>, <ore:plateDiamond>, <ore:plateDiamond>]]);

recipes.addShaped(<ironchest:diamond_obsidian_chest_upgrade>, [
	[<ore:obsidian>, <ore:obsidian>, <ore:obsidian>],
	[<ore:obsidian>, <ore:plateDiamond>, <ore:obsidian>],
	[<ore:obsidian>, <ore:obsidian>, <ore:obsidian>]]);

recipes.addShaped(<ironchest:copper_silver_chest_upgrade>, [
	[<ore:plateSilver>, <ore:plateSilver>, <ore:plateSilver>],
	[<ore:plateSilver>, <ore:plateCopper>, <ore:plateSilver>],
	[<ore:plateSilver>, <ore:plateSilver>, <ore:plateSilver>]]);	
	
recipes.addShaped(<ironchest:silver_gold_chest_upgrade>, [
	[<ore:plateSilver>, <ore:plateSilver>, <ore:plateSilver>],
	[<ore:plateSilver>, <ore:plateGold>, <ore:plateSilver>],
	[<ore:plateSilver>, <ore:plateSilver>, <ore:plateSilver>]]);


recipes.addShaped(<ironchest:vanilla_copper_shulker_upgrade>, [
	[<ore:plateCopper>, <ore:plateCopper>, <ore:plateCopper>],
	[<ore:plateCopper>, <ore:shulkerShell>, <ore:plateCopper>],
	[<ore:plateCopper>, <ore:plateCopper>, <ore:plateCopper>]]);

recipes.addShaped(<ironchest:silver_gold_chest_upgrade>, [
	[<ore:plateGold>, <ore:blockGlass>, <ore:plateGold>],
	[<ore:plateGold>, <ore:plateSilver>, <ore:plateGold>],
	[<ore:plateGold>, <ore:blockGlass>, <ore:plateGold>]]);

recipes.addShaped(<ironchest:wood_copper_chest_upgrade>, [
	[<ore:plateCopper>, <ore:plateCopper>, <ore:plateCopper>],
	[<ore:plateCopper>, <ore:plateSilver>, <ore:plateCopper>],
	[<ore:plateCopper>, <ore:plateCopper>, <ore:plateCopper>]]);
	
recipes.addShaped(<ironchest:copper_iron_chest_upgrade>, [
	[<ore:plateIron>, <ore:plateIron>, <ore:plateIron>],
	[<ore:plateIron>, <ore:plateCopper>, <ore:plateIron>],
	[<ore:plateIron>, <ore:plateIron>, <ore:plateIron>]]);

recipes.addShaped(<ironchest:diamond_crystal_chest_upgrade>, [
	[<ore:blockGlass>, <ore:blockGlass>, <ore:blockGlass>],
	[<ore:blockGlass>, <ore:plateDiamond>, <ore:blockGlass>],
	[<ore:blockGlass>, <ore:blockGlass>, <ore:blockGlass>]]);

	#Removing Shulker Boxes
var removedBoxes as IItemStack[] = [
	<ironchest:iron_shulker_box_white>,
	<ironchest:iron_shulker_box_orange>,
	<ironchest:iron_shulker_box_magenta>,
	<ironchest:iron_shulker_box_light_blue>,
	<ironchest:iron_shulker_box_yellow>,
	<ironchest:iron_shulker_box_lime>,
	<ironchest:iron_shulker_box_pink>,
	<ironchest:iron_shulker_box_gray>,
	<ironchest:iron_shulker_box_silver>,
	<ironchest:iron_shulker_box_cyan>,
	<ironchest:iron_shulker_box_purple>,
	<ironchest:iron_shulker_box_blue>,
	<ironchest:iron_shulker_box_brown>,
	<ironchest:iron_shulker_box_green>,
	<ironchest:iron_shulker_box_red>,
	<ironchest:iron_shulker_box_black>,
	<ironchest:iron_shulker_box_black:5>,
	<ironchest:iron_shulker_box_green:5>,
	<ironchest:iron_shulker_box_blue:5>,
	<ironchest:iron_shulker_box_cyan:5>,
	<ironchest:iron_shulker_box_gray:5>,
	<ironchest:iron_shulker_box_lime:5>,
	<ironchest:iron_shulker_box_light_blue:5>,
	<ironchest:iron_shulker_box_orange:5>,
	<ironchest:iron_shulker_box_orange:6>,
	<ironchest:iron_shulker_box_light_blue:6>,
	<ironchest:iron_shulker_box_lime:6>,
	<ironchest:iron_shulker_box_gray:6>,
	<ironchest:iron_shulker_box_cyan:6>,
	<ironchest:iron_shulker_box_blue:6>,
	<ironchest:iron_shulker_box_green:6>,
	<ironchest:iron_shulker_box_black:6>,
	<ironchest:iron_shulker_box_red:1>,
	<ironchest:iron_shulker_box_brown:1>,
	<ironchest:iron_shulker_box_purple:1>,
	<ironchest:iron_shulker_box_silver:1>,
	<ironchest:iron_shulker_box_pink:1>,
	<ironchest:iron_shulker_box_yellow:1>,
	<ironchest:iron_shulker_box_magenta:1>,
	<ironchest:iron_shulker_box_magenta:2>,
	<ironchest:iron_shulker_box_yellow:2>,
	<ironchest:iron_shulker_box_pink:2>,
	<ironchest:iron_shulker_box_silver:2>,
	<ironchest:iron_shulker_box_purple:2>,
	<ironchest:iron_shulker_box_brown:2>,
	<ironchest:iron_shulker_box_red:2>,
	<ironchest:iron_shulker_box_red:3>,
	<ironchest:iron_shulker_box_brown:3>,
	<ironchest:iron_shulker_box_purple:3>,
	<ironchest:iron_shulker_box_silver:3>,
	<ironchest:iron_shulker_box_pink:3>,
	<ironchest:iron_shulker_box_yellow:3>,
	<ironchest:iron_shulker_box_magenta:3>,
	<ironchest:iron_shulker_box_magenta:4>,
	<ironchest:iron_shulker_box_magenta:5>,
	<ironchest:iron_shulker_box_magenta:6>,
	<ironchest:iron_shulker_box_light_blue:1>,
	<ironchest:iron_shulker_box_light_blue:2>,
	<ironchest:iron_shulker_box_light_blue:3>,
	<ironchest:iron_shulker_box_light_blue:4>,
	<ironchest:iron_shulker_box_yellow:4>,
	<ironchest:iron_shulker_box_yellow:5>,
	<ironchest:iron_shulker_box_yellow:6>,
	<ironchest:iron_shulker_box_lime:1>,
	<ironchest:iron_shulker_box_silver:5>,
	<ironchest:iron_shulker_box_silver:4>,
	<ironchest:iron_shulker_box_gray:4>,
	<ironchest:iron_shulker_box_gray:3>,
	<ironchest:iron_shulker_box_gray:2>,
	<ironchest:iron_shulker_box_gray:1>,
	<ironchest:iron_shulker_box_pink:6>,
	<ironchest:iron_shulker_box_pink:5>,
	<ironchest:iron_shulker_box_pink:4>,
	<ironchest:iron_shulker_box_lime:4>,
	<ironchest:iron_shulker_box_lime:3>,
	<ironchest:iron_shulker_box_lime:2>,
	<ironchest:iron_shulker_box_silver:6>,
	<ironchest:iron_shulker_box_cyan:1>,
	<ironchest:iron_shulker_box_cyan:2>,
	<ironchest:iron_shulker_box_cyan:3>,
	<ironchest:iron_shulker_box_cyan:4>,
	<ironchest:iron_shulker_box_purple:4>,
	<ironchest:iron_shulker_box_purple:5>,
	<ironchest:iron_shulker_box_purple:6>,
	<ironchest:iron_shulker_box_blue:1>,
	<ironchest:iron_shulker_box_blue:2>,
	<ironchest:iron_shulker_box_blue:3>,
	<ironchest:iron_shulker_box_blue:4>
	];

for i in removedBoxes {
	mods.jei.JEI.removeAndHide(i);
}

print("----------------Iron Chests End-------------------");