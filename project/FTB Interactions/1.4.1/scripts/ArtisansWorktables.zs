import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

print("---------------Artisans Worktables Start------------------");

	#Removing / Hiding Unused Worktables
var artisanTableDisabled as IItemStack[] = [
	<artisanworktables:worktable>,
	<artisanworktables:worktable:1>,
	<artisanworktables:worktable:2>,
	<artisanworktables:worktable:3>,
	<artisanworktables:worktable:4>,
	<artisanworktables:worktable:6>,
	<artisanworktables:worktable:7>,
	<artisanworktables:worktable:8>,
	<artisanworktables:worktable:9>,
	<artisanworktables:worktable:10>,
	<artisanworktables:worktable:11>,
	<artisanworktables:worktable:12>,
	<artisanworktables:worktable:13>,
	<artisanworktables:worktable:14>,
	<artisanworktables:workstation>,
	<artisanworktables:workstation:1>,
	<artisanworktables:workstation:2>,
	<artisanworktables:workstation:3>,
	<artisanworktables:workstation:4>,
	<artisanworktables:workstation:6>,
	<artisanworktables:workstation:7>,
	<artisanworktables:workstation:8>,
	<artisanworktables:workstation:9>,
	<artisanworktables:workstation:10>,
	<artisanworktables:workstation:11>,
	<artisanworktables:workstation:12>,
	<artisanworktables:workstation:13>,
	<artisanworktables:workstation:14>,
	<artisanworktables:workshop>,
	<artisanworktables:workshop:1>,
	<artisanworktables:workshop:2>,
	<artisanworktables:workshop:3>,
	<artisanworktables:workshop:4>,
	<artisanworktables:workshop:6>,
	<artisanworktables:workshop:7>,
	<artisanworktables:workshop:8>,
	<artisanworktables:workshop:9>,
	<artisanworktables:workshop:10>,
	<artisanworktables:workshop:11>,
	<artisanworktables:workshop:12>,
	<artisanworktables:workshop:13>,
	<artisanworktables:workshop:14>,
	];

for i in artisanTableDisabled {
	mods.jei.JEI.removeAndHide(i);
}


	#Basic Worktable
recipes.addShaped(<artisanworktables:worktable:5>, [
	[null, null, null],
	[<tconstruct:pickaxe>.anyDamage().transformDamage(1), <ore:workbench>, <tconstruct:shovel>.anyDamage().transformDamage(1)],
	[null, <tconstruct:hatchet>.anyDamage().transformDamage(1), null]]);

	#toolbox
	recipes.addShaped(<artisanworktables:toolbox>, 
	[[<minecraft:planks>, <metaitem:plank.oak>, <minecraft:planks>],
	[<minecraft:chest>, null, <minecraft:chest>], 
	[<minecraft:planks>, <minecraft:planks>, <minecraft:planks>]]);
	
	#Repair
var toolArtisan = <artisanworktables:artisans_cutters_stone>;

recipes.addShapeless("toolRepair", toolArtisan, [
	toolArtisan.anyDamage().marked("mark1"), toolArtisan.anyDamage().marked("mark2")],
	function(out, ins, cInfo){
		return ins.mark1.withDamage(max(0, ins.mark1.damage - ins.mark2.damage));
	}, null);



print("----------------Artisans Worktables End-------------------");