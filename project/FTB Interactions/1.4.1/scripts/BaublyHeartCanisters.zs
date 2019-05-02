import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.artisanworktables.builder.RecipeBuilder;
import mods.thaumcraft.Infusion;
import mods.thaumcraft.ArcaneWorkbench;
import mods.thaumcraft.Crucible;
import mods.thaumcraft.SmeltingBonus;


print("---------------Baubly Heart Canisters Start------------------");
val resonatingGem = <astralsorcery:itemcraftingcomponent:4>;

	#cannister
	recipes.remove(<bhc:canister>);
	recipes.addShaped(<bhc:canister>, 
	[[<ore:foilTin>, <ore:foilTin>, <ore:foilTin>],
	[<ore:foilTin>, <bhc:relic_apple>, <ore:foilTin>], 
	[<ore:foilTin>, <ore:foilTin>, <ore:foilTin>]]);

	#red heart cannister
	recipes.remove(<bhc:red_heart_canister>);
	recipes.addShapeless(<bhc:red_heart_canister>,[<bhc:red_heart>,<bhc:canister>]);
	#red heart
	mods.thaumcraft.Crucible.registerRecipe("redHeart", "BASEALCHEMY", <bhc:red_heart>, <cyberware:body_part:2>, 
	[<aspect:alkimia> * 5, <aspect:aqua> * 5, <aspect:metallum> * 2, <aspect:desiderium> * 3, <aspect:herba> * 1, <aspect:vitium> * 1]);
	
	#orange heart cannister
	recipes.remove(<bhc:orange_heart_canister>);
	recipes.addShapeless(<bhc:orange_heart_canister>,[<bhc:orange_heart>,<bhc:canister>]);

	#orange heart
	mods.astralsorcery.Altar.addAttunementAltarRecipe("interactions:orangeHeart", <bhc:orange_heart>, 420, 600, [
	null,<bhc:red_heart>,null,
	<bhc:red_heart>,<ore:dustSkystone>,<bhc:red_heart>,
	null,<bhc:red_heart>,null,
	<projecte:item.pe_covalence_dust:2>,<projecte:item.pe_covalence_dust:2>,<projecte:item.pe_covalence_dust:2>,<projecte:item.pe_covalence_dust:2>]);	
	
	
	#green heart cannister
	recipes.remove(<bhc:green_heart_canister>);
	recipes.addShapeless(<bhc:green_heart_canister>,[<bhc:green_heart>,<bhc:canister>]);

	#green heart
mods.astralsorcery.Altar.addConstellationAltarRecipe("interactions:greenheart", <bhc:green_heart>, 1500, 600, [
	null,<bhc:orange_heart>,null,
	<bhc:orange_heart>,<ore:dustVinteum>,<bhc:orange_heart>,
	null,<bhc:orange_heart>,null,
	<ore:dustMana>,<ore:dustMana>,<ore:dustMana>,<ore:dustMana>,
	null,null,resonatingGem,resonatingGem,
	resonatingGem,resonatingGem, null,null]);	

	#blue heart cannister
	recipes.remove(<bhc:blue_heart_canister>);
	recipes.addShapeless(<bhc:blue_heart_canister>,[<bhc:blue_heart>,<bhc:canister>]);

	#blue heart
	mods.thaumcraft.Infusion.registerRecipe("blueheart", "INFUSION", <bhc:blue_heart>, 10, [<aspect:victus> * 10, <aspect:praecantatio> * 10, <aspect:humanus> * 10], <bhc:green_heart>, 
	[<ore:pearlFluix>.firstItem, <ore:nuggetIndium>.firstItem, <projecte:item.pe_matter>, <ore:elvenDragonstone>.firstItem, <actuallyadditions:item_crystal_empowered:2>, <actuallyadditions:item_crystal_empowered:2>]);
			
	
	#relic Apple
	recipes.remove(<bhc:relic_apple>);
	recipes.addShaped(<bhc:relic_apple>, 
	[[<astralsorcery:itemcraftingcomponent>, <botania:manaresource:2>, <astralsorcery:itemcraftingcomponent>],
	[<bloodmagic:blood_shard>, <cyclicmagic:apple_emerald>, <bloodmagic:blood_shard>], 
	[<astralsorcery:itemcraftingcomponent>, <botania:manaresource:1>, <astralsorcery:itemcraftingcomponent>]]);

	#Bauble
	recipes.remove(<bhc:heart_amulet>);
	recipes.addShaped(<bhc:heart_amulet>, 
	[[null, <minecraft:dye:4>, null],
	[<ore:gemRuby>, <ore:ringRoseGold>, <minecraft:emerald>], 
	[null, <minecraft:quartz>, null]]);

print("----------------Baubly Heart Canisters End-------------------");