import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.artisanworktables.builder.RecipeBuilder;
import mods.thaumcraft.Infusion;
import mods.thaumcraft.Crucible;


print("------------------Ice and Fire Start---------------");

val compressor = mods.gregtech.recipe.RecipeMap.getByName("compressor");

	#added earlier game dragon flute
	recipes.remove(<iceandfire:dragon_flute>);
	recipes.addShaped(<iceandfire:dragon_flute>, 
	[[null, <projecte:item.pe_covalence_dust:1>, <minecraft:bone>],
	[null, <minecraft:bone>, <projecte:item.pe_covalence_dust:1>], 
	[<ore:stickIron>, null, null]]);


	#rotten eggs
	mods.thaumcraft.Crucible.registerRecipe("rottenEgg", "BASEALCHEMY", <iceandfire:rotten_egg>, <ore:egg>, [<aspect:bestia> * 5, <aspect:mortuus> * 5]);

	#get rid of ice and fire blocks
recipes.remove(<iceandfire:silver_block>);
recipes.remove(<iceandfire:sapphire_block>);

	//Removals - These items are loot only
var iceAndDisabled as IItemStack[] = [	
	<iceandfire:armor_silver_metal_leggings>,
	<iceandfire:armor_silver_metal_boots>,
	<iceandfire:myrmex_desert_pickaxe>,
	<iceandfire:myrmex_desert_shovel>,
	<iceandfire:myrmex_desert_axe>,
	<iceandfire:myrmex_desert_hoe>,
	<iceandfire:myrmex_jungle_pickaxe>,
	<iceandfire:myrmex_jungle_axe>,
	<iceandfire:deathworm_white_helmet>,
	<iceandfire:silver_sword>,
	<iceandfire:sheep_helmet>,
	<iceandfire:sheep_chestplate>,
	<iceandfire:sheep_leggings>,
	<iceandfire:silver_hoe>,
	<iceandfire:silver_axe>,
	<iceandfire:silver_pickaxe>,
	<iceandfire:silver_shovel>,
	<iceandfire:sheep_boots>,
	<iceandfire:armor_silver_metal_helmet>,
	<iceandfire:armor_silver_metal_chestplate>,
	<iceandfire:deathworm_white_chestplate>,
	<iceandfire:deathworm_white_leggings>,
	<iceandfire:deathworm_white_boots>,
	<iceandfire:deathworm_red_helmet>,
	<iceandfire:deathworm_red_chestplate>,
	<iceandfire:deathworm_red_leggings>,
	<iceandfire:deathworm_red_boots>,
	<iceandfire:deathworm_white_helmet>,
	<iceandfire:deathworm_yellow_boots>,
	<iceandfire:deathworm_yellow_leggings>,
	<iceandfire:deathworm_yellow_chestplate>,
	<iceandfire:deathworm_yellow_helmet>,
	<iceandfire:myrmex_jungle_shovel>,
	<iceandfire:dragon_ice_spikes>,
	<iceandfire:myrmex_desert_helmet>,
	<iceandfire:myrmex_desert_chestplate>,
	<iceandfire:myrmex_desert_leggings>,
	<iceandfire:myrmex_desert_boots>,
	<iceandfire:myrmex_jungle_helmet>,
	<iceandfire:myrmex_jungle_chestplate>,
	<iceandfire:myrmex_jungle_leggings>,
	<iceandfire:myrmex_jungle_boots>,
	<iceandfire:tide_bronze_helmet>,
	<iceandfire:tide_bronze_chestplate>,
	<iceandfire:tide_bronze_leggings>,
	<iceandfire:tide_bronze_boots>,
	<iceandfire:tide_deepblue_helmet>,
	<iceandfire:tide_deepblue_chestplate>,
	<iceandfire:tide_deepblue_leggings>,
	<iceandfire:tide_deepblue_boots>,
	<iceandfire:tide_green_helmet>,
	<iceandfire:tide_green_chestplate>,
	<iceandfire:tide_green_leggings>,
	<iceandfire:tide_green_boots>,
	<iceandfire:tide_purple_helmet>,
	<iceandfire:tide_purple_chestplate>,
	<iceandfire:tide_purple_leggings>,
	<iceandfire:tide_purple_boots>,
	<iceandfire:tide_red_helmet>,
	<iceandfire:tide_red_chestplate>,
	<iceandfire:tide_red_leggings>,
	<iceandfire:tide_red_boots>,
	<iceandfire:tide_teal_helmet>,
	<iceandfire:tide_teal_chestplate>,
	<iceandfire:tide_teal_leggings>,
	<iceandfire:tide_teal_boots>
];

	for i in iceAndDisabled {
	mods.jei.JEI.removeAndHide(i);
}

#remove dragon armors

var dragonArmors as IItemStack[] = [
	<iceandfire:forest_troll_leather_helmet>,
	<iceandfire:forest_troll_leather_chestplate>,
	<iceandfire:forest_troll_leather_leggings>,
	<iceandfire:forest_troll_leather_boots>,
	<iceandfire:mountain_troll_leather_helmet>,
	<iceandfire:mountain_troll_leather_chestplate>,
	<iceandfire:mountain_troll_leather_leggings>,
	<iceandfire:mountain_troll_leather_boots>,
	<iceandfire:frost_troll_leather_helmet>,
	<iceandfire:frost_troll_leather_chestplate>,
	<iceandfire:frost_troll_leather_leggings>,
	<iceandfire:frost_troll_leather_boots>,
	<iceandfire:armor_red_helmet>,
	<iceandfire:armor_red_chestplate>,
	<iceandfire:armor_red_leggings>,
	<iceandfire:armor_red_boots>,
	<iceandfire:armor_bronze_helmet>,
	<iceandfire:armor_bronze_chestplate>,
	<iceandfire:armor_bronze_leggings>,
	<iceandfire:armor_bronze_boots>,
	<iceandfire:armor_green_helmet>,
	<iceandfire:armor_green_chestplate>,
	<iceandfire:armor_green_leggings>,
	<iceandfire:armor_green_boots>,
	<iceandfire:armor_gray_helmet>,
	<iceandfire:armor_gray_chestplate>,
	<iceandfire:armor_gray_leggings>,
	<iceandfire:armor_gray_boots>,
	<iceandfire:armor_blue_helmet>,
	<iceandfire:armor_blue_chestplate>,
	<iceandfire:armor_blue_leggings>,
	<iceandfire:armor_blue_boots>,
	<iceandfire:armor_white_helmet>,
	<iceandfire:armor_white_chestplate>,
	<iceandfire:armor_white_leggings>,
	<iceandfire:armor_white_boots>,
	<iceandfire:armor_sapphire_helmet>,
	<iceandfire:armor_sapphire_chestplate>,
	<iceandfire:armor_sapphire_leggings>,
	<iceandfire:armor_sapphire_boots>,
	<iceandfire:armor_silver_helmet>,
	<iceandfire:armor_silver_chestplate>,
	<iceandfire:armor_silver_leggings>,
	<iceandfire:armor_silver_boots>
];


for i in dragonArmors {
	recipes.remove(i);
}


val goldHelmet = <minecraft:golden_helmet>;
val goldChestplate = <minecraft:golden_chestplate>;
val goldLeggings = <minecraft:golden_leggings>;
val goldBoots = <minecraft:golden_boots>;
val empoweredDiamond = <actuallyadditions:item_crystal_empowered:2>;

var dragonColors as string[] = [	
	"red",
	"green",
	"bronze",
	"gray",
	"blue",
	"white",
	"sapphire",
	"silver"
];

for color in dragonColors {
	
	val scale = itemUtils.getItem("iceandfire:dragonscales_" + color);
	#Dragon Armor - Helmet 
	
	val helmetname = "iceandfire:armor_" + color + "_helmet";
	val helmet = itemUtils.getItem(helmetname);
	mods.thaumcraft.Infusion.registerRecipe(helmetname, "INFUSION", helmet, 8,
	[<aspect:praecantatio> * 32, <aspect:potentia> * 32, <aspect:alienis> * 20, <aspect:perditio> * 10, <aspect:draco> * 10],
	goldHelmet,
	[scale,scale,scale,scale,scale, <astralsorcery:itemshiftingstar>, empoweredDiamond,empoweredDiamond ]);

	#Dragon Armor - Leggings 
	val leggingsname = "iceandfire:armor_" + color + "_leggings";
	val leggings = itemUtils.getItem(leggingsname);
	mods.thaumcraft.Infusion.registerRecipe(leggingsname, "INFUSION", leggings, 8,
	[<aspect:praecantatio> * 32, <aspect:potentia> * 32, <aspect:alienis> * 20, <aspect:perditio> * 10, <aspect:draco> * 10],
	goldLeggings,
	[scale,scale,scale,scale,scale,scale,scale, <astralsorcery:itemshiftingstar>, empoweredDiamond,empoweredDiamond ]);
	
	#Dragon Armor - Chestplate
	val chestname = "iceandfire:armor_" + color + "_chestplate";
	val chest = itemUtils.getItem(chestname);
	mods.thaumcraft.Infusion.registerRecipe(chestname, "INFUSION", chest, 8,
	[<aspect:praecantatio> * 32, <aspect:potentia> * 32, <aspect:alienis> * 20, <aspect:perditio> * 10, <aspect:draco> * 10],
	goldChestplate,
	[scale,scale,scale,scale,scale,scale,scale,scale, <astralsorcery:itemshiftingstar>, empoweredDiamond,empoweredDiamond ]);
	
	
	#Dragon Armor - Boots
	val bootsname = "iceandfire:armor_" + color + "_boots";
	val boots = itemUtils.getItem(bootsname);
	mods.thaumcraft.Infusion.registerRecipe(bootsname, "INFUSION", boots, 8,
	[<aspect:praecantatio> * 32, <aspect:potentia> * 32, <aspect:alienis> * 20, <aspect:perditio> * 10, <aspect:draco> * 10],
	goldBoots,
	[scale,scale,scale,scale,<astralsorcery:itemshiftingstar>, empoweredDiamond,empoweredDiamond ]);

}


	#Troll leather armors
	recipes.addShaped(<iceandfire:mountain_troll_leather_boots>, 
	[[<ore:screwSteel>, <iceandfire:troll_leather_mountain>, <ore:screwSteel>],
	[<iceandfire:troll_leather_mountain>, <iceandfire:mountain_troll_leather_boots>, <iceandfire:troll_leather_mountain>], 
	[<ore:screwSteel>, <iceandfire:troll_leather_mountain>, <ore:screwSteel>]]);

	recipes.addShaped(<iceandfire:mountain_troll_leather_leggings>, 
	[[<ore:screwSteel>, <iceandfire:troll_leather_mountain>, <ore:screwSteel>],
	[<iceandfire:troll_leather_mountain>, <iceandfire:mountain_troll_leather_leggings>, <iceandfire:troll_leather_mountain>], 
	[<ore:screwSteel>, <iceandfire:troll_leather_mountain>, <ore:screwSteel>]]);

	recipes.addShaped(<iceandfire:mountain_troll_leather_chestplate>, 
	[[<ore:screwSteel>, <iceandfire:troll_leather_mountain>, <ore:screwSteel>],
	[<iceandfire:troll_leather_mountain>, <minecraft:leather_chestplate>, <iceandfire:troll_leather_mountain>], 
	[<ore:screwSteel>, <iceandfire:troll_leather_mountain>, <ore:screwSteel>]]);

	recipes.addShaped(<iceandfire:mountain_troll_leather_helmet>, 
	[[<ore:screwSteel>, <iceandfire:troll_leather_mountain>, <ore:screwSteel>],
	[<iceandfire:troll_leather_mountain>, <minecraft:leather_helmet>, <iceandfire:troll_leather_mountain>],
	 [<ore:screwSteel>, <iceandfire:troll_leather_mountain>, <ore:screwSteel>]]);


	recipes.addShaped(<iceandfire:frost_troll_leather_boots>, 
	[[<ore:screwSteel>, <iceandfire:troll_leather_frost>, <ore:screwSteel>],
	[<iceandfire:troll_leather_frost>, <minecraft:leather_boots>, <iceandfire:troll_leather_frost>], 
	[<ore:screwSteel>, <iceandfire:troll_leather_frost>, <ore:screwSteel>]]);

	recipes.addShaped(<iceandfire:frost_troll_leather_leggings>, 
	[[<ore:screwSteel>, <iceandfire:troll_leather_frost>, <ore:screwSteel>],
	[<iceandfire:troll_leather_frost>, <minecraft:leather_leggings>, <iceandfire:troll_leather_frost>], 
	[<ore:screwSteel>, <iceandfire:troll_leather_frost>, <ore:screwSteel>]]);

	recipes.addShaped(<iceandfire:frost_troll_leather_chestplate>, 
	[[<ore:screwSteel>, <iceandfire:troll_leather_frost>, <ore:screwSteel>],
	[<iceandfire:troll_leather_frost>, <minecraft:leather_chestplate>, <iceandfire:troll_leather_frost>],
	[<ore:screwSteel>, <iceandfire:troll_leather_frost>, <ore:screwSteel>]]);

	recipes.addShaped(<iceandfire:frost_troll_leather_helmet>, 
	[[<ore:screwSteel>, <iceandfire:troll_leather_frost>, <ore:screwSteel>],
	[<iceandfire:troll_leather_frost>, <minecraft:leather_helmet>, <iceandfire:troll_leather_frost>],
	 [<ore:screwSteel>, <iceandfire:troll_leather_frost>, <ore:screwSteel>]]);


	recipes.addShaped(<iceandfire:forest_troll_leather_boots>, 
	[[<ore:screwSteel>, <iceandfire:troll_leather_forest>, <ore:screwSteel>],
	[<iceandfire:troll_leather_forest>, <minecraft:leather_boots>, <iceandfire:troll_leather_forest>],
	 [<ore:screwSteel>, <iceandfire:troll_leather_forest>, <ore:screwSteel>]]);

	recipes.addShaped(<iceandfire:forest_troll_leather_chestplate>, 
	[[<ore:screwSteel>, <iceandfire:troll_leather_forest>, <ore:screwSteel>],
	[<iceandfire:troll_leather_forest>, <minecraft:leather_chestplate>, <iceandfire:troll_leather_forest>], 
	[<ore:screwSteel>, <iceandfire:troll_leather_forest>, <ore:screwSteel>]]);

	recipes.addShaped(<iceandfire:forest_troll_leather_helmet>, 
	[[<ore:screwSteel>, <iceandfire:troll_leather_forest>, <ore:screwSteel>],
	[<iceandfire:troll_leather_forest>, <minecraft:leather_helmet>, <iceandfire:troll_leather_forest>], 
	[<ore:screwSteel>, <iceandfire:troll_leather_forest>, <ore:screwSteel>]]);

	recipes.addShaped(<iceandfire:forest_troll_leather_leggings>, 
	[[<ore:screwSteel>, <iceandfire:troll_leather_forest>, <ore:screwSteel>],
	[<iceandfire:troll_leather_forest>, <minecraft:leather_leggings>, <iceandfire:troll_leather_forest>], 
	[<ore:screwSteel>, <iceandfire:troll_leather_forest>, <ore:screwSteel>]]);
	
	#serpent Armors
		recipes.remove(<iceandfire:tide_blue_helmet>);
	recipes.remove(<iceandfire:tide_blue_leggings>);
	recipes.remove(<iceandfire:tide_blue_boots>);
	recipes.remove(<iceandfire:tide_blue_chestplate>);

	recipes.addShaped(<iceandfire:tide_blue_boots>, 
	[[<ore:seaScales>, <actuallyadditions:item_crystal:2>, <ore:seaScales>],
	[<iceandfire:shiny_scales>, <minecraft:leather_boots>, <iceandfire:shiny_scales>], 
	[<ore:screwSignalum>, <ore:seaScales>, <ore:screwSignalum>]]);

	recipes.addShaped(<iceandfire:tide_blue_leggings>, 
	[[<ore:seaScales>, <actuallyadditions:item_crystal:2>, <ore:seaScales>],
	[<iceandfire:shiny_scales>, <minecraft:leather_leggings>, <iceandfire:shiny_scales>], 
	[<ore:screwSignalum>, <ore:seaScales>, <ore:screwSignalum>]]);

	recipes.addShaped(<iceandfire:tide_blue_helmet>, 
	[[<ore:seaScales>, <actuallyadditions:item_crystal:2>, <ore:seaScales>],
	[<iceandfire:shiny_scales>, <minecraft:leather_helmet>, <iceandfire:shiny_scales>], 
	[<ore:screwSignalum>, <ore:seaScales>, <ore:screwSignalum>]]);

	recipes.addShaped(<iceandfire:tide_blue_chestplate>, 
	[[<ore:seaScales>, <actuallyadditions:item_crystal:2>, <ore:seaScales>],
	[<iceandfire:shiny_scales>, <minecraft:leather_chestplate>, <iceandfire:shiny_scales>], 
	[<ore:screwSignalum>, <ore:seaScales>, <ore:screwSignalum>]]);


print("-------------------Ice and Fire End----------------");