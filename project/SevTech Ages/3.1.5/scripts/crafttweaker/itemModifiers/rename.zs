/*
	SevTech: Ages Item Renaming Script

	This script allows for the renaming of an item.

	Note: These scripts are created and for the usage in SevTech: Ages and other
	modpacks curated by DarkPacks. You can use these scripts for reference and for
	learning but not for copying and pasting and claiming as your own.
*/
import crafttweaker.item.IItemStack;

static renameMap as string[IItemStack] = {
	<primal:hide_tanned:0>: "?????",

	<betterwithaddons:japanmat:4>: "??",

	<primal_tech:flint_edged_disc>: "????",

	<totemic:sub_items:1>: "??",

	<primal:plant_fiber_pulp:0>: "??",

	<primal:golden_stick:0>: "??",

	<betterbuilderswands:wanddiamond:0>: "???",

	//Space Platinum
	<extraplanets:kepler22b:14>: "????",
	<extraplanets:tier11_items:5>: "9????",
	<extraplanets:tier11_items:6>: "9?????",

	//Chisel & Bits
	<chiselsandbits:chisel_iron:0>: "????",
	
	<extraplanets:apple_iron:0>: "??????"
};

function init() {
	for item, displayName in renameMap {
		item.displayName = displayName;
	}
}
