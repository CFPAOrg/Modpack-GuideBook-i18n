import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.item.IIngredient;
import crafttweaker.data.IData;
import mods.gregtech.material.MaterialRegistry;
import mods.gregtech.material.Material;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;


	//Metallurgy Principles
	//Ores cannot be smelted in a traditional furnace
	//ID Squeezer and TC meltery can handle most early ore processing


val blast_furnace = mods.gregtech.recipe.RecipeMap.getByName("blast_furnace");
val macerator = mods.gregtech.recipe.RecipeMap.getByName("macerator");
val mixer = mods.gregtech.recipe.RecipeMap.getByName("mixer");
val autoclave = mods.gregtech.recipe.RecipeMap.getByName("autoclave");
val pyrolyse = mods.gregtech.recipe.RecipeMap.getByName("pyro");

	#Adding the ores to the appropriate oredict for use in Squeezer
var squeezerOreDicts as string[][string] = {
	"Aluminium" : [ "Aluminium"],
	"Apatite": ["Apatite"],
	"Bauxite" : ["Bauxite"],
	"Bentonite" : ["Bentonite"],
	"Beryllium" : ["Beryllium"],
	"BlueTopaz" : ["BlueTopaz"],
	"Calcite" : ["Calcite"],
	"Cassiterite" : ["Cassiterite"],
	"CertusQuartz" : ["CertusQuartz"],
	"Copper" : [
		"Copper",
		"Tetrahedrite",
		"Malachite",
		"Chalcopyrite"
	],
	"Chromite" : ["Chromite"],
	"Cinnabar" : ["Cinnabar"],
	"Coal" : ["Coal"],
	"Diamond" : ["Diamond"],
	"Emerald" : ["Emerald"],
	"Galena" : ["Galena"],
	"GreenSapphire" : ["GreenSapphire"],
	"Glauconite" : ["Glauconite"],
	"Gold" : ["Gold"],
	"Graphite" : ["Graphite"],
	"Grossular" : ["Grossular"],
	"Ilmenite" : ["Ilmenite"],
	"Iron" : [
		"Iron",
		"YellowLimonite",
		"Pyrite",
		"BandedIron",
		"Magnetite",
		"BrownLimonite",
	],
	"Lapis" : ["Lapis"],
	"Lead" : ["Lead"],
	"Lepidolite" : ["Lepidolite"],
	"Lignite" : ["Lignite"],
	"Magnesite" : ["Magnesite"],
	"Manganese" : ["Pyrolusite"],
	"Monazite" : ["Monazite"],
	"NetherQuartz" : ["NetherQuartz"],
	"Nickel" : [
		"Nickel",
		"Garnierite",
		"Pentlandite"
	],
	"Olivine" : ["Olivine"],
	"Phosphor" : ["Phosphor"],
	"Redstone" : ["Redstone"],
	"Ruby" : ["Ruby"],
	"Rutile" : ["Rutile"],
	"Quartzite" : ["Quartzite"],
	"Sapphire" : ["Sapphire"],
	"Silver" : ["Silver"],
	"Soapstone" : ["Soapstone"],
	"Sodalite" : ["Sodalite"],
	"Spessartine" : ["Spessartine"],
	"Spodumene" : ["Spodumene"],
	"Stibnite" : ["Stibnite"],
	"Sulfur" : ["Sulfur"],
	"Talc" : ["Talc]"],
	"Tantalite" : ["Tantalite"],
	"Tin" : [
		"Tin"
	],
	"Uraninite" : ["Uraninite"],
	"Uranium" : ["Uranium"],
	"Uranium235" : ["Uranium235"],
	"VanadiumMagnetite" : ["VanadiumMagnetite"],
	"Sphalerite" : ["Sphalerite"]
};

for squeezerDict, materialArray in squeezerOreDicts {
	var squeezerOreDict = oreDict["ore" + squeezerDict + "Squeezer"];
	for material in materialArray {
		squeezerOreDict.addAll(oreDict["ore" + material]);
		print("added " + "ore" + material + " to metallurgy" + material);
		squeezerOreDict.addAll(oreDict["oreBasalt" + material]);
		print("added " + "oreBasalt" + material + " to metallurgy" + material);
		squeezerOreDict.addAll(oreDict["oreBlackgranite" + material]);
		print("added " + "oreBlackgranite" + material + " to metallurgy" + material);
		squeezerOreDict.addAll(oreDict["oreEndstone" + material]);
		print("added " + "oreEndstone" + material + " to metallurgy" + material);
		squeezerOreDict.addAll(oreDict["oreGravel" + material]);
		print("added " + "oreGravel" + material + " to metallurgy" + material);
		squeezerOreDict.addAll(oreDict["oreMarble" + material]);
		print("added " + "oreMarble" + material + " to metallurgy" + material);
		squeezerOreDict.addAll(oreDict["oreRedgranite" + material]);
		print("added " + "oreRedgranite" + material + " to metallurgy" + material);
		squeezerOreDict.addAll(oreDict["oreNetherrack" + material]);
		print("added " + "oreNetherrack" + material + " to metallurgy" + material);
		squeezerOreDict.addAll(oreDict["oreSand" + material]);
		print("added " + "oreSand" + material + " to metallurgy" + material);
	}
}



var autoclaveMapExisting as IOreDictEntry[IOreDictEntry] = {
	<ore:dustCertusQuartz> : <ore:gemCertusQuartz>,
	<ore:dustQuartzite> : <ore:gemQuartzite>,
	<ore:dustCinnabar> : <ore:gemCinnabar>,
	<ore:dustSodalite> : <ore:gemSodalite>,
	<ore:dustNetherQuartz> : <ore:gemNetherQuartz>,
	<ore:dustLapis> : <ore:gemLapis>,
	<ore:dustApatite> : <ore:gemApatite>
};

for dust, gem in autoclaveMapExisting {
	mods.gregtech.recipe.RecipeMap.getByName("autoclave").recipeBuilder()
    	.inputs(dust)
    	.fluidInputs(<liquid:astralsorcery.liquidstarlight> * 25)
    	.outputs(gem.firstItem)
    	.duration(100)
    	.EUt(24)
    	.buildAndRegister();
}

var autoclaveMapNew as IOreDictEntry[IOreDictEntry] = {
	<ore:dustQuartzBlack> : <ore:gemQuartzBlack>,
	<ore:dustMonazite> : <ore:gemMonazite>,
	<ore:dustDiamond> : <ore:gemDiamond>,
	<ore:dustGreenSapphire> : <ore:gemGreenSapphire>,
	<ore:dustRutile> : <ore:gemRutile>,
	<ore:dustRuby> : <ore:gemRuby>,
	<ore:dustSapphire> : <ore:gemSapphire>,
	<ore:dustOlivine> : <ore:gemOlivine>,
	<ore:dustOpal> : <ore:gemOpal>,
	<ore:dustEmerald> : <ore:gemEmerald>,
	<ore:dustEnderPearl> : <ore:gemEnderPearl>
};

for dust, gem in autoclaveMapNew {
	mods.gregtech.recipe.RecipeMap.getByName("autoclave").recipeBuilder()
    	.inputs(dust)
    	.fluidInputs(<liquid:water> * 200)
    	.chancedOutput(gem.firstItem, 7000)
    	.duration(2000)
    	.EUt(24)
    	.buildAndRegister();

	mods.gregtech.recipe.RecipeMap.getByName("autoclave").recipeBuilder()
    	.inputs(dust)
    	.fluidInputs(<liquid:distilled_water> * 200)
    	.chancedOutput(gem.firstItem, 9000)
    	.duration(1000)
    	.EUt(24)
    	.buildAndRegister();

	mods.gregtech.recipe.RecipeMap.getByName("autoclave").recipeBuilder()
    	.inputs(dust)
    	.fluidInputs(<liquid:astralsorcery.liquidstarlight> * 25)
    	.outputs(gem.firstItem)
    	.duration(100)
    	.EUt(24)
    	.buildAndRegister();
}

var metallurgyOreDicts as string[] = [
	"Aluminium",
	"Apatite",
	"Bauxite",
	"Bentonite",
	"Beryllium",
	"BlueTopaz",
	"Calcite",
	"Cassiterite",
	"CertusQuartz",
	"Copper",
	"Tetrahedrite",
	"Malachite",
	"Chalcopyrite",
	"Chromite",
	"Cinnabar",
	"Coal",
	"Cobalt",
	"Cobaltite",
	"Diamond",
	"Emerald",
	"Galena",
	"GreenSapphire",
	"Glauconite",
	"Gold",
	"Graphite",
	"Grossular",
	"Ilmenite",
	"Iridium",
	"Iron",
	"YellowLimonite",
	"Pyrite",
	"BandedIron",
	"Magnetite",
	"BrownLimonite",
	"Lapis",
	"Lead",
	"Lepidolite",
	"Lignite",
	"Magnesite",
	"Pyrolusite",
	"Monazite",
	"NetherQuartz",
	"Nickel",
	"Garnierite",
	"Pentlandite",
	"Olivine",
	"Phosphor",
	"Platinum",
	"Redstone",
	"Ruby",
	"Rutile",
	"Quartzite",
	"Sapphire",
	"Scheelite",
	"Silver",
	"Soapstone",
	"Sodalite",
	"Spessartine",
	"Sphalerite",
	"Spodumene",
	"Stibnite",
	"Sulfur",
	"Talc",
	"Tantalite",
	"Tin",
	"Tungstate",
	"Uraninite",
	"Uranium",
	"Uranium235",
	"VanadiumMagnetite"
];

for material in metallurgyOreDicts {
	var metallurgyOreDict = oreDict["metallurgy" + material];

	metallurgyOreDict.addAll(oreDict["ore" + material]);
	print("added " + "ore" + material + " to metallurgy" + material);
	metallurgyOreDict.addAll(oreDict["oreBasalt" + material]);
	print("added " + "oreBasalt" + material + " to metallurgy" + material);
	metallurgyOreDict.addAll(oreDict["oreBlackgranite" + material]);
	print("added " + "oreBlackgranite" + material + " to metallurgy" + material);
	metallurgyOreDict.addAll(oreDict["oreEndstone" + material]);
	print("added " + "oreEndstone" + material + " to metallurgy" + material);
	metallurgyOreDict.addAll(oreDict["oreGravel" + material]);
	print("added " + "oreGravel" + material + " to metallurgy" + material);
	metallurgyOreDict.addAll(oreDict["oreMarble" + material]);
	print("added " + "oreMarble" + material + " to metallurgy" + material);
	metallurgyOreDict.addAll(oreDict["oreRedgranite" + material]);
	print("added " + "oreRedgranite" + material + " to metallurgy" + material);
	metallurgyOreDict.addAll(oreDict["oreNetherrack" + material]);
	print("added " + "oreNetherrack" + material + " to metallurgy" + material);
	metallurgyOreDict.addAll(oreDict["oreSand" + material]);
	print("added " + "oreSand" + material + " to metallurgy" + material);
}

	#Early Game Melting Recipes
var metalMelt as ILiquidStack[IOreDictEntry] = {
	<ore:oreIronSqueezer> : <liquid:iron>,
	<ore:oreCopperSqueezer> : <liquid:copper>,
	<ore:oreCassiteriteSqueezer> : <liquid:tin>,
	<ore:oreNickelSqueezer> : <liquid:nickel>
};

for ore, fluid in metalMelt {
	mods.tconstruct.Melting.addRecipe(fluid * 144, ore);
}

	#nonGT Metallurgy OreDicts
<ore:metallurgyBlackQuartzy>.addAll(<ore:oreQuartzBlack>);
<ore:metallurgyArdite>.addAll(<ore:oreArdite>);

print("------------------Ore 3x Start-----------------");

/*
var gtceMaterials = mods.gregtech.material.MaterialRegistry.getAllMaterials();

for mat in gtceMaterials {
	print(mat.name);
}
*/

var materialMetalMap as int[string] = {
	"Aluminium" : 1,
	"Bauxite" : 1,
	"Bentonite" : 1,
	"Beryllium" : 1,
	"Calcite" : 1,
	"Cassiterite" : 6,
	"Cobaltite" : 1,
	"Copper" : 1,
	"Tetrahedrite" : 3,
	"Malachite" : 5,
	"Chalcopyrite" : 1,
	"Chromite" : 1,
	"Coal" : 1,
	"Galena" : 1,
	"Glauconite" : 1,
	"Gold" : 1,
	"Graphite" : 1,
	"Grossular" : 1,
	"Ilmenite" : 1,
	"Iridium" : 1,
	"Iron" : 1,
	"YellowLimonite" : 4,
	"Pyrite" : 3,
	"BandedIron" : 3,
	"Magnetite" : 3,
	"BrownLimonite" : 4,
	"Lead" : 1,
	"Lepidolite" : 1,
	"Lignite" : 1,
	"Magnesite" : 5,
	"Pyrolusite" : 3,
	"Osmium" : 1,
	"Nickel" : 1,
	"Niobium" : 1,
	"Garnierite" : 2,
	"Pentlandite" : 2,
	"Phosphor" : 3,
	"Redstone" : 5,
	"Silver" : 1,
	"Soapstone" : 1,
	"Sodalite" : 6,
	"Spessartine" : 1,
	"Spodumene" : 1,
	"Stibnite" : 3,
	"Sulfur" : 1,
	"Talc" : 1,
	"Tantalite" : 1,
	"Tin" : 1,
	"Uraninite" : 1,
	"Uranium" : 1,
	"Uranium235" : 1,
	"VanadiumMagnetite" : 1
};


for material, multiplier in materialMetalMap {

	var ore = "metallurgy" + material;
	var crushed = "crushed" + material;
	var clump = "clump" + material;

	blast_furnace.recipeBuilder()
		.inputs(oreDict.get(ore))
		.fluidInputs([<liquid:pyrotheum> * 144])
		.outputs(oreDict.get(clump).firstItem * 3)
		.property("temperature", 3000)
		.duration(200)
		.EUt(120)
		.buildAndRegister();

	//print(clump + " in blast furnace done!");

	macerator.recipeBuilder()
		.inputs(oreDict.get(clump).firstItem)
		.outputs(oreDict.get(crushed).firstItem * multiplier)
		.duration(200)
		.EUt(12)
		.buildAndRegister();
}

var materialGemMap as int[string] = {
	"Apatite" : 4,
	"BlueTopaz" : 1,
	"CertusQuartz" : 2,
	"Cinnabar" : 1,
	"Diamond" : 1,
	"Emerald" : 1,
	"GreenSapphire" : 1,
	"Lapis" : 6,
	"Monazite" : 8,
	"NetherQuartz" : 2,
	"Olivine" : 1,
	"Ruby" : 1,
	"Rutile" : 1,
	"Quartzite" : 1,
	"Sapphire" : 1
};

for material, multiplier in materialGemMap {

	var ore = "ore" + material + "Metallurgy";
	var crushed = "crushed" + material;
	var clump = "clump" + material;

	autoclave.recipeBuilder()
		.inputs(oreDict.get(ore))
		.fluidInputs([<liquid:cryotheum> * 144])
		.outputs(oreDict.get(clump).firstItem * 3)
		.duration(200)
		.EUt(120)
		.buildAndRegister();

	//print(clump + " in autoclave done!");

	macerator.recipeBuilder()
		.inputs(oreDict.get(clump).firstItem)
		.outputs(oreDict.get(crushed).firstItem * multiplier)
		.duration(200)
		.EUt(12)
		.buildAndRegister();
}

	#exceptions (due to no crushed ore)
	// Black Quartz
	#Ardite
blast_furnace.recipeBuilder()
	.inputs(<ore:oreArditeMetallurgy>)
	.fluidInputs([<liquid:pyrotheum> * 144])
	.outputs(<ore:clumpArdite>.firstItem * 3)
	.property("temperature", 3000)
	.duration(200)
	.EUt(120)
	.buildAndRegister();
macerator.recipeBuilder()
	.inputs(<ore:clumpArdite>)
	.outputs(<ore:dustArdite>.firstItem)
	.duration(200)
	.EUt(12)
	.buildAndRegister();

print("-------------Ore 3x Initialized------------");

print("------------------Ore 4x Start-----------------");

/*

 Missing Chickens
	 Vanadium
	 Monazite
	 Tantalum 	<ore:oreTantaliteMetallurgy>
	 Stubnite 	<ore:oreStibniteMetallurgy>
	 Manganese 	<ore:orePyrolusiteMetallurgy>
	 Magnesium 	<ore:oreMagnesiteMetallurgy>
	<ore:oreSpessartineMetallurgy>
	<ore:oreSoapstoneMetallurgy>
	<ore:oreApatiteMetallurgy>
	<ore:oreBentoniteMetallurgy>
	<ore:oreCinnabarMetallurgy>
	<ore:oreGlauconiteMetallurgy>
	<ore:oreGraphiteMetallurgy>
	<ore:oreGrossularMetallurgy>
	<ore:orePhosphorMetallurgy>
*/
	// Exceptions
	//<materialpart:osmium:enriched_egg>
	//<materialpart:silicon:enriched_egg>


var eggMetalOreMap as string[IData[]] = {
	["Aluminium", "Aluminium", 4] : "Aluminium",
	["Bauxite", "Aluminium", 1] : "Aluminium",
	["Ardite", "Ardite", 4] : "Ardite",
	["Calcite", "Calcium", 4] : "Calcium",
	["Coal", "Coal", 4] : "Coal",
	["Lignite", "Lignite", 4] : "Coal",
	["Cobaltite", "Cobaltite", 4] : "Cobaltite",
	["Copper", "Copper", 4] : "Copper",
	["Tetrahedrite", "Copper", 4] : "Copper",
	["Malachite", "Copper", 2] : "Copper",
	["Chalcopyrite", "Copper", 2] : "Copper",
	["Gold", "Gold", 4] : "Gold",
	["Magnetite", "Gold", 1] : "Gold",
	["VanadiumMagnetite", "Gold", 1] : "Gold",
	["VanadiumMagnetite", "VanadiumMagnetite", 4] : "VanadiumMagnetite",
	["Iridium", "Iridium", 1] : "Iridium",
	["BandedIron", "Iron", 4] : "Iron",
	["BrownLimonite", "Iron", 4] : "Iron",
	["Iron", "Iron", 4] : "Iron",
	["Pyrite", "Iron", 4] : "Iron",
	["YellowLimonite", "Iron", 4] : "Iron",
	["Chalcoyprite", "Iron", 4] : "Iron",
	["VanadiumMagnetite", "Iron", 4] : "Iron",
	["Magnetite", "Iron", 4] : "Iron",
	["Lead", "Lead", 4] : "Lead",
	["Galena", "Lead", 4] : "Lead",
	["Nickel", "Nickel", 4] : "Nickel",
	["Garnierite", "Nickel", 4] : "Nickel",
	["Pentlandite", "Nickel", 3] : "Nickel",
	["Platinum", "Platinum", 4] : "Platinum",
	["Redstone", "Redstone", 4] : "Redstone",
	["Silver", "Silver", 4] : "Silver",
	["Cassiterite", "Tin", 4] : "Tin",
	["Tin", "Tin", 4] : "Tin",
	["Bauxite", "Rutile", 4] : "Titanium",
	["Ilmenite", "Rutile", 4] : "Titanium",
	["Rutile", "Rutile", 4] : "Titanium",
	["Scheelite", "Scheelite", 4] : "Tungsten",
	["Tungstate", "Tungstate", 4] : "Tungsten",
	["Uraninite", "Uraninite", 4] : "Uranium",
	["Uranium","Uranium", 4 ] : "Uranium",
	["Uraninum235", "Uranium235", 4] : "Uranium",
	["Sphalerite", "Zinc", 4] : "Zinc"
};

for outputInfo, egg in eggMetalOreMap {
	var eggItem = oreDict["enrichedEgg" + egg];
	var oreItem = oreDict["metallurgy" + outputInfo[0]];
	var crystalItem = oreDict["crystal" + outputInfo[1]];
	var clumpItem = oreDict["clump" + outputInfo[1]];
	var multiplier = outputInfo[2];

	mixer.recipeBuilder()
		.inputs([eggItem, oreItem])
		.fluidInputs([<liquid:glowstone> * 288])
		.outputs(crystalItem.firstItem * multiplier)
		.duration(100)
		.EUt(350)
		.buildAndRegister();

	//print(egg + " egg and " + outputInfo[0] + " done!");

	blast_furnace.recipeBuilder()
		.inputs(crystalItem)
		.fluidInputs([<liquid:pyrotheum> * 72])
		.outputs(clumpItem.firstItem)
		.property("temperature", 3000)
		.duration(80)
		.EUt(120)
		.buildAndRegister();
}

var eggGemOreMap as string[IData[]] = {
	["Apatite", "Apatite", 4] : "Apatite",
	["Diamond", "Diamond", 4] : "Diamond",
	["Emerald", "Emerald", 4] : "Emerald",
	["Olivine", "Olivine", 4] : "Emerald",
	["Beryllium", "Beryllium", 4] : "Emerald",
	["Lapis", "Lapis", 4] : "Lapis",
	["NetherQuartz", "NetherQuartz", 8] : "NetherQuartz",
	["Quartzite", "Quartzite", 4] : "NetherQuartz",
	["CertusQuartz", "CertusQuartz", 8] : "CertusQuartz",
	["Ruby", "Ruby", 4] : "Ruby",
	["Chromite", "Chromite", 4] : "Ruby",
	["Sapphire", "Sapphire", 4] : "Sapphire",
	["Sapphire", "GreenSapphire", 4] : "Sapphire",
	["BlueTopaz", "BlueTopaz", 4] : "Topaz"
};

for outputInfo, egg in eggGemOreMap {
	var eggItem = oreDict["enrichedEgg" + egg];
	var oreItem = oreDict["metallurgy" + outputInfo[0]];
	var crystalItem = oreDict["crystal" + outputInfo[1]];
	var clumpItem = oreDict["clump" + outputInfo[1]];
	var multiplier = outputInfo[2];

	mixer.recipeBuilder()
		.inputs([eggItem, oreItem])
		.fluidInputs([<liquid:glowstone> * 288])
		.outputs(crystalItem.firstItem * multiplier)
		.duration(100)
		.EUt(350)
		.buildAndRegister();

	//print(egg + " egg and " + outputInfo[0] + " done!");

	autoclave.recipeBuilder()
		.inputs(crystalItem)
		.fluidInputs([<liquid:cryotheum> * 72])
		.outputs(clumpItem.firstItem)
		.duration(80)
		.EUt(120)
		.buildAndRegister();
}


	#Exceptions due to Numbers/Rounding
mixer.recipeBuilder()
	.inputs([<ore:enrichedEggNiobium>, <ore:oreTantaliteMetallurgy>])
	.fluidInputs([<liquid:glowstone> * 288])
	.outputs(<ore:crystalNiobium>.firstItem)
	.duration(100)
	.EUt(350)
	.buildAndRegister();
blast_furnace.recipeBuilder()
	.inputs(<ore:crystalNiobium>)
	.fluidInputs([<liquid:pyrotheum> * 72])
	.outputs(<ore:crystalNiobium>.firstItem)
	.property("temperature", 3000)
	.duration(80)
	.EUt(120)
	.buildAndRegister();

print("-------------Ore 4x Initialized------------");


print("-------------Ore 8x Start------------");
var denseMetallurgy as string[][IItemStack] = {
	<ore:denseOreAluminium>.firstItem : [
		"Aluminium"
	],
	<ore:denseOreBauxite>.firstItem : [
		"Bauxite"
	],
	<ore:denseOreChromite>.firstItem : [
		"Chromite"
	],
	<ore:denseOreCobalt>.firstItem : [
		"Cobaltite"
	],
	<ore:denseOreCopper>.firstItem : [
		"Copper",
		"Tetrahedrite",
		"Malachite",
		"Chalcopyrite"
	],
	<ore:denseOreDiamond>.firstItem : [
		"Diamond"
	],
	<ore:denseOreEmerald>.firstItem : [
		"Emerald"
	],
	<ore:denseOreGold>.firstItem : [
		"Gold"
	],
	<ore:denseOreIlmenite>.firstItem : [
		"Ilmenite"
	],
	<ore:denseOreIridium>.firstItem : [
		"Iridium"
	],
	<ore:denseOreIron>.firstItem : [
		"Iron",
		"BandedIron",
		"Magnetite",
		"BrownLimonite",
		"YellowLimonite",
		"Pyrite"
	],
	<ore:denseOreLead>.firstItem : [
		"Lead"
	],
	<ore:denseOreNickel>.firstItem : [
		"Garnierite",
		"Nickel",
		"Pentlandite",
	],
	<ore:denseOreNiobium>.firstItem : [
		"Niobium"
	],
	<ore:denseOreRedstone>.firstItem : [
		"Redstone"
	],
	<ore:denseOreRuby>.firstItem : [
		"Ruby"	
	],	
	<ore:denseOreSapphire>.firstItem : [
		"Sapphire"
	],
	<ore:denseOreSilver>.firstItem : [
		"Silver"
	],
	<ore:denseOreStibnite>.firstItem : [
		"Stibnite" 
	],
	<ore:denseOreTantalite>.firstItem : [
		"Tantalite"
	],
	<ore:denseOreTin>.firstItem : [
		"Cassiterite",
		"Tin"
	],
	<ore:denseOreTungsten>.firstItem : [
		"Tungstate",
		"Scheelite"
	],
	<ore:denseOreUraninite>.firstItem : [
		"Uraninite"
	],
	<ore:denseOreUranium>.firstItem : [
		"Uranium"
	],
	<ore:denseOreUranium235>.firstItem : [
		"Uranium235"
	],
	<ore:denseOreVanadiumMagnetite>.firstItem : [
		"VanadiumMagnetite"
	]
};

for denseOre, stringOreDicts in denseMetallurgy {
	for i in stringOreDicts {
		for ore in oreDict["metallurgy" + i].items{
			mods.astralsorcery.LightTransmutation.addTransmutation(ore, denseOre, 300);	
		}	
	}
}

	#Dense Ores to Shards
var shardList as string[] = [
	"Aluminium",
	"Bauxite",
	"Chromite",
	"Cobalt",
	"Copper",
	"Diamond",
	"Emerald",
	"Gold",
	"Ilmenite",
	"Iridium",
	"Iron",
	"Lead",
	"Nickel",
	"Niobium",
	"Redstone",
	"Ruby",
	"Sapphire",
	"Silver",
	"Stibnite",
	"Tantalite",
	"Tin",
	"Uraninite",
	"Uranium",
	"Uranium235",
	"VanadiumMagnetite"
];

	#Blood Shard Metallurgy (supposedly really fast creation)
for i in shardList {
	var oreInput = oreDict["denseOre" + i].firstItem;
	var shardOutput = oreDict["shard" + i].firstItem;
	mods.bloodmagic.BloodAltar.addRecipe(shardOutput, oreInput, 4, 10000, 63, 100);
}

	#Shards to Clumps
/*
	["Coal", "Coal", 4] : "Coal"
	["Olivine", "Olivine", 4] : "Emerald",
	["Beryllium", "Beryllium", 4] : "Emerald",
	["Chalcoyprite", "Iron", 4] : "Iron",
	["Lapis", "Lapis", 4] : "Lapis",
	["Galena", "Lead", 4] : "Lead",
	["NetherQuartz", "NetherQuartz", 8] : "NetherQuartz",
	["Quartzite", "Quartzite", 4] : "NetherQuartz",
	["CertusQuartz", "CertusQuartz", 8] : "NetherQuartz",
	["Platinum", "Platinum", 4] : "Platinum",	
	["Sapphire", "GreenSapphire", 4] : "Sapphire",
	["Bauxite", "Rutile", 8] : "Titanium",
	["Rutile", "Rutile", 8] : "Titanium",
	["Sphalerite", "Zinc", 4] : "Zinc"
*/
var eggShardMap as string[IData[]] = {
	["Aluminium", "Aluminium", 8] : "Aluminium",
	["Bauxite", "Aluminium", 2] : "Aluminium",
	["Chromite", "Chromite", 8] : "Ruby",
	["Cobalt" , "Cobalt", 8] : "Cobalt",
	["Copper", "Copper", 8] : "Copper",
	["Diamond", "Diamond", 8] : "Diamond",
	["Emerald", "Emerald", 8] : "Emerald",
	["Gold", "Gold", 8] : "Gold",
	["Ilmenite", "Rutile", 8] : "Titanium",
	["Iridium", "Iridium", 8] : "Iridium",
	["Iron", "Iron", 8] : "Iron",
	["Lead", "Lead", 8] : "Lead",
	["Nickel", "Nickel", 8] : "Nickel",
	["Redstone", "Redstone", 8] : "Redstone",
	["Ruby", "Ruby", 8] : "Ruby",
	["Sapphire", "Sapphire", 8] : "Sapphire",
	["Silver", "Silver", 8] : "Silver",
	["Tantalite", "Tantalite", 8] :  "Niobium",
	["Tin", "Tin", 8] : "Tin",
	["Tungsten", "Tungsten", 8] : "Tungsten",
	["Uraninite", "Uraninite", 8] : "Uranium",
	["Uranium","Uranium", 8] : "Uranium",
	["Uraninum235", "Uranium235", 8] : "Uranium",
	["VanadiumMagnetite", "Iron", 8] : "Iron",
	["VanadiumMagnetite", "VanadiumMagnetite", 8] : "VanadiumMagnetite",
	["VanadiumMagnetite", "Gold", 8] : "Gold"
};

for outputInfo, egg in eggShardMap {
	var eggItem = oreDict["enrichedEgg" + egg];
	var shardItem = oreDict["shard" + outputInfo[0]];
	var crystalItem = oreDict["crystal" + outputInfo[1]];
	var clumpItem = oreDict["clump" + outputInfo[1]];
	var multiplier = outputInfo[2];

	print(egg + " egg and " + outputInfo[0] + "shard done!");

	mixer.recipeBuilder()
		.inputs([eggItem, shardItem])
		.fluidInputs([<liquid:glowstone> * 288])
		.outputs(crystalItem.firstItem * multiplier)
		.duration(100)
		.EUt(350)
		.buildAndRegister();

	blast_furnace.recipeBuilder()
		.inputs(crystalItem)
		.fluidInputs([<liquid:pyrotheum> * 72])
		.outputs(clumpItem.firstItem)
		.property("temperature", 3000)
		.duration(80)
		.EUt(120)
		.buildAndRegister();
}


print("-------------Ore 8x Initialized------------");