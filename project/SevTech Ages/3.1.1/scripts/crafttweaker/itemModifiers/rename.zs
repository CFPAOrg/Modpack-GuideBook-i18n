/*
	SevTech: Ages Item Renaming Script

	This script allows for the renaming of an item.

	Note: These scripts are created and for the usage in SevTech: Ages and other
	modpacks curated by DarkPacks. You can use these scripts for reference and for
	learning but not for copying and pasting and claiming as your own.
*/
import crafttweaker.item.IItemStack;

static renameMap as string[IItemStack] = {
	<primal:hide_tanned:0>: "湿鞣制兽皮",

	<betterwithaddons:japanmat:4>: "米粉",

	<primal_tech:flint_edged_disc>: "燧石锯条",

	<totemic:sub_items:1>: "叮当",

	<primal:plant_fiber_pulp:0>: "纸浆",

	<primal:golden_stick:0>: "金棒",

	<betterbuilderswands:wanddiamond:0>: "铂手杖",

	//Space Platinum
	<extraplanets:kepler22b:14>: "太空铂块",
	<extraplanets:tier11_items:5>: "§9太空铂锭",
	<extraplanets:tier11_items:6>: "§9压缩太空铂",

	//Chisel & Bits
	<chiselsandbits:chisel_iron:0>: "微型凿子",
	
	<extraplanets:apple_iron:0>: "旅行地图令牌"
};

function init() {
	for item, displayName in renameMap {
		item.displayName = displayName;
	}
}
