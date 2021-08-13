import crafttweaker.item.IItemStack;
import mods.tconstruct.Casting;
import mods.tconstruct.Melting;
import mods.astralsorcery.LiquidInteraction;
import mods.thaumcraft.Infusion;
import mods.astralsorcery.Altar;
import mods.astralsorcery.LightTransmutation;
import mods.astralsorcery.StarlightInfusion;

print("==================== loading Astral Sorcery ====================");
##########################################################################################

val itemstoRemove =
[
	<minecraft:beacon>,
]
 as IItemStack[];

for item in itemstoRemove {
	recipes.remove(item);
}


//<astralsorcery:blockinfusedwood>.addTooltip(format.aqua("Drop any log into liquid Starlight to create"));
<astralsorcery:itemcelestialcrystal>.addTooltip(format.aqua("由天体水晶簇生长而来"));

//Wand with no starlight
recipes.addShaped(<astralsorcery:itemwand>, [[null, <astralsorcery:itemcraftingcomponent>, <arcanearchives:shaped_quartz>],[null, <ore:stoneMarble>, <astralsorcery:itemcraftingcomponent>], [<ore:stoneMarble>, null, null]]);


//mods.astralsorcery.Lightwell.addLiquefaction(IItemStack input, ILiquidStack output, float productionMultiplier, float shatterMultiplier, int colorhex);


LightTransmutation.removeTransmutation(<astralsorcery:blockcustomore:1>, true);
LightTransmutation.addTransmutation(<contenttweaker:sub_block_holder_0:7>, <astralsorcery:blockcustomore:1>, 9);

//1000 max starlight for first tier altar
Altar.addDiscoveryAltarRecipe("internal/altar/upgrade_tier2", <astralsorcery:blockaltar:1>, 950, 200, [

			<arcanearchives:containment_field>, <astralsorcery:blockblackmarble>, <arcanearchives:containment_field>,

			<astralsorcery:blockmarble:2>, <contenttweaker:activatedaspectusdawnstone>, <astralsorcery:blockmarble:2>,

			<astralsorcery:blockmarble:4>, <botania:storage>, <astralsorcery:blockmarble:4>]);

//2000 max starlight 2nd tier
Altar.addAttunementAltarRecipe("internal/altar/illuminator", <astralsorcery:blockworldilluminator>, 1500, 300, [

			<astralsorcery:itemcraftingcomponent:2>, <chisel:energizedvoidstone:2>, <astralsorcery:itemcraftingcomponent:2>,
			<chisel:energizedvoidstone:2>, <thaumictinkerer:energetic_nitor>, <chisel:energizedvoidstone:2>,
			<astralsorcery:itemcraftingcomponent:2>, <chisel:energizedvoidstone:2>, <astralsorcery:itemcraftingcomponent:2>,
			<astralsorcery:itemusabledust>, <astralsorcery:itemusabledust>, <astralsorcery:itemusabledust>, <astralsorcery:itemusabledust>]);
Altar.addAttunementAltarRecipe("internal/altar/illuminator2", <astralsorcery:blockworldilluminator>, 1500, 300, [

			<astralsorcery:itemcraftingcomponent:2>, <chisel:energizedvoidstone:2>, <astralsorcery:itemcraftingcomponent:2>,
			<chisel:energizedvoidstone:2>, <bloodmagic:sigil_blood_light>, <chisel:energizedvoidstone:2>,
			<astralsorcery:itemcraftingcomponent:2>, <chisel:energizedvoidstone:2>, <astralsorcery:itemcraftingcomponent:2>,
			<astralsorcery:itemusabledust>, <astralsorcery:itemusabledust>, <astralsorcery:itemusabledust>, <astralsorcery:itemusabledust>]);
Altar.addAttunementAltarRecipe("internal/altar/illuminator3", <astralsorcery:blockworldilluminator>, 1500, 300, [

			<astralsorcery:itemcraftingcomponent:2>, <chisel:energizedvoidstone:2>, <astralsorcery:itemcraftingcomponent:2>,
			<chisel:energizedvoidstone:2>, <embers:glimmer_lamp>, <chisel:energizedvoidstone:2>,
			<astralsorcery:itemcraftingcomponent:2>, <chisel:energizedvoidstone:2>, <astralsorcery:itemcraftingcomponent:2>,
			<astralsorcery:itemusabledust>, <astralsorcery:itemusabledust>, <astralsorcery:itemusabledust>, <astralsorcery:itemusabledust>]);



Altar.addAttunementAltarRecipe("internal/altar/upgrade_tier3", <astralsorcery:blockaltar:2>, 1900, 400, [

			<astralsorcery:itemcraftingcomponent>, null, <astralsorcery:itemcraftingcomponent>,
			<astralsorcery:blockmarble:2>, <astralsorcery:itemrockcrystalsimple>, <astralsorcery:blockmarble:2>,
			<moreplates:energetic_silver_plate>, <contenttweaker:starmetal_block>, <moreplates:energetic_silver_plate>,
			<embers:focal_lens>, <embers:focal_lens>, <embers:focal_lens>, <embers:focal_lens>]);

Altar.addConstellationAltarRecipe("internal/altar/upgrade_tier4", <astralsorcery:blockaltar:3>, 3800, 500, [

			<actuallyadditions:item_crystal_empowered:5>, <astralsorcery:blockblackmarble>, <actuallyadditions:item_crystal_empowered:5>,
			<astralsorcery:blockblackmarble>, <astralsorcery:itemcelestialcrystal>, <astralsorcery:blockblackmarble>,
			<actuallyadditions:item_crystal_empowered:5>, <astralsorcery:blockblackmarble>, <actuallyadditions:item_crystal_empowered:5>,
			<actuallyadditions:item_crystal_empowered:5>, <actuallyadditions:item_crystal_empowered:5>, <actuallyadditions:item_crystal_empowered:5>, <actuallyadditions:item_crystal_empowered:5>,
			<astralsorcery:itemcraftingcomponent:4>, <astralsorcery:itemcraftingcomponent:4>,
			<cyclicmagic:crystallized_obsidian>, <cyclicmagic:crystallized_obsidian>,
			<cyclicmagic:crystallized_obsidian>, <cyclicmagic:crystallized_obsidian>,
			<astralsorcery:itemcraftingcomponent:4>, <astralsorcery:itemcraftingcomponent:4>]);

//Altar.addTraitAltarRecipe(string recipeLocation, IItemStack output, int starlight, int craftTickTime, IIngredient[] inputs, @optional String iRequiredConstellationFocusName);
Altar.addTraitAltarRecipe("mm:shaped/internal/altar/beacon", <minecraft:beacon>, 5000, 400, [

	<botania:manaresource:2>, <botania:manaresource:2>, <botania:manaresource:2>,
	<botania:manaresource:2>, <deepmoblearning:pristine_matter_wither>, <botania:manaresource:2>, 
	<botania:manaresource:2>, <botania:manaresource:2>, <botania:manaresource:2>,
	<thermalfoundation:glass_alloy:6>, <thermalfoundation:glass_alloy:6>, <minecraft:obsidian>, <minecraft:obsidian>,
	<thermalfoundation:glass_alloy:6>, 	<thermalfoundation:glass_alloy:6>,	
	<thermalfoundation:glass_alloy:6>, <thermalfoundation:glass_alloy:6>, 

	<thermalfoundation:glass_alloy:6>, <thermalfoundation:glass_alloy:6>,
	<minecraft:obsidian>, <minecraft:obsidian>,

	<thermalfoundation:glass_alloy:6>, <thermalfoundation:glass_alloy:6>,
	<thermalfoundation:glass_alloy:6>, <minecraft:obsidian>,

	//Outer Items, indices 25+

	<actuallyadditions:item_crystal_empowered:1>, <actuallyadditions:item_crystal_empowered:1>, <actuallyadditions:item_crystal_empowered:1>, <actuallyadditions:item_crystal_empowered:1>

]);

//illumination powder
Altar.addDiscoveryAltarRecipe("internal/altar/illuminationpowder", <astralsorcery:itemusabledust>*16, 250, 200, [

			null, <arcanearchives:radiant_dust>, null,

	<arcanearchives:radiant_dust>, <jaopca:item_dustaquamarine>, <arcanearchives:radiant_dust>,

			null, <arcanearchives:radiant_dust>, null]);

			
/*
Altar.addAttunementAltarRecipe("multiblockmadness:shaped/internal/altar/runealtar", <botania:runealtar>, 500, 300, [

			<arcanearchives:quartz_sliver>, <arcanearchives:quartz_sliver>, <arcanearchives:quartz_sliver>,

			<botania:livingrock>, <botania:livingrock>, <botania:livingrock>,

			<botania:livingrock>, <astralsorcery:itemshiftingstar>, <botania:livingrock>,

			<botania:manaresource:23>, <botania:manaresource:23>, <bloodmagic:blood_rune>, <bloodmagic:blood_rune>]);
*/

//Starmetal Block recipes
recipes.addShapeless(<astralsorcery:itemcraftingcomponent:1> * 9, [<contenttweaker:starmetal_block>]);
recipes.addShaped(<contenttweaker:starmetal_block>, [[<astralsorcery:itemcraftingcomponent:1>, <astralsorcery:itemcraftingcomponent:1>, <astralsorcery:itemcraftingcomponent:1>],[<astralsorcery:itemcraftingcomponent:1>, <astralsorcery:itemcraftingcomponent:1>, <astralsorcery:itemcraftingcomponent:1>], [<astralsorcery:itemcraftingcomponent:1>, <astralsorcery:itemcraftingcomponent:1>, <astralsorcery:itemcraftingcomponent:1>]]);
Melting.addRecipe(<liquid:starmetal> * 1296, <contenttweaker:starmetal_block>);
Casting.addBasinRecipe(<contenttweaker:starmetal_block>, null, <liquid:starmetal>, 1296);

<astralsorcery:itemperkseal>.addTooltip(format.lightPurple("用来激活暮色传送门"));

//Illumination Powder
StarlightInfusion.addInfusion(<arcanearchives:radiant_dust>, <astralsorcery:itemusabledust>*8, false, 0.5, 200);


//Skystone
LightTransmutation.addTransmutation(<embers:ashen_stone>, <appliedenergistics2:sky_stone_block>, 5);

//LiquidInteraction.addInteraction(ILiquidStack liquidIn1, float chanceConsumption1, ILiquidStack liquidIn2, float chanceConsumption2, int weight, IItemStack output);
LiquidInteraction.addInteraction(<liquid:petrotheum> * 50, 0.5, <liquid:astralsorcery.liquidstarlight> * 200, 0.5, 89, <appliedenergistics2:sky_stone_block>);
LiquidInteraction.addInteraction(<liquid:petrotheum> * 50, 0.5, <liquid:astralsorcery.liquidstarlight> * 200, 0.5, 10, <appliedenergistics2:smooth_sky_stone_block>);
LiquidInteraction.addInteraction(<liquid:petrotheum> * 50, 0.5, <liquid:astralsorcery.liquidstarlight> * 200, 0.5, 1, <contenttweaker:starmetal_block>);


Altar.removeAltarRecipe("astralsorcery:shaped/internal/altar/chalice");

Infusion.registerRecipe("chalice", "", 
<astralsorcery:blockchalice>, 5, 
[<aspect:praecantatio>*150, <aspect:potentia>*100, <aspect:vinculum>*100, <aspect:vacuos>*50], 
<arcanearchives:radiant_tank>, 
[<astralsorcery:blockmarble:6>,<rockhounding_chemistry:alloy_parts:51>, <astralsorcery:blockmarble:6>, <actuallyadditions:item_crystal_empowered:1>,
<astralsorcery:blockmarble:6>,<rockhounding_chemistry:alloy_parts:51>, <astralsorcery:blockmarble:6>, <actuallyadditions:item_crystal_empowered:1>]);



##########################################################################################
print("==================== end of Astral Sorcery ====================");