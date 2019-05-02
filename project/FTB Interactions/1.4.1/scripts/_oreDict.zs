#priority 998
import crafttweaker.item.IItemDefinition;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import mods.gregtech.recipe.RecipeMaps;
import mods.gregtech.recipe.RecipeMap;

print("-------------- Ore Dictionary Start --------------");

//////////////////////////////
//			Blocks          //
//////////////////////////////

var blocksDisabled as IItemStack[][IOreDictEntry] = {

	#blockAluminum
	<ore:blockAluminum>: [
		<thermalfoundation:storage:4>,
		<libvulpes:metal0:9>
	],

	#blockBronze
	<ore:blockBronze> : [
		<thermalfoundation:storage_alloy:3>,
		<mekanism:basicblock:1>
	],

	#blockCobalt
	<ore:blockCobalt> : [
		<tconstruct:metal>
	],

	#blockCopper
	<ore:blockCopper> : [
		<thermalfoundation:storage>,
		<mekanism:basicblock:12>,
		<libvulpes:metal0:4>
	],

	#blockCharcoal
	<ore:blockCharcoal> : [
		<mekanism:basicblock:3>,
		<actuallyadditions:block_misc:5>
	],

	#blockElectrum
	<ore:blockElectrum> : [
		<thermalfoundation:storage_alloy:1>
	],

	#blockInvar
	<ore:blockInvar> : [
		<thermalfoundation:storage_alloy:2>
	],

	#blocKIridium
	<ore:blockIridium> : [
		<thermalfoundation:storage:7>,
		<libvulpes:metal0:10>
	],

	#blockLead
	<ore:blockLead> : [
		<thermalfoundation:storage:3>
	],

	#blockNickel
	<ore:blockNickel> : [
		<thermalfoundation:storage:5>
	],

	#blockPlatinum
	<ore:blockPlatinum> : [
		<thermalfoundation:storage:6>
	],

	#blockSilver
	<ore:blockSilver> : [
		<thermalfoundation:storage:2>
	],

	#blockSteel
	<ore:blockSteel> : [
		<thermalfoundation:storage_alloy>,
		<mekanism:basicblock:5>
	],

	#blockTin
	<ore:blockTin> : [
		<thermalfoundation:storage:1>,
		<mekanism:basicblock:13>,
		<libvulpes:metal0:5>
	],
	#blockTitanium
	<ore:blockTitanium> : [
		<libvulpes:metal0:7>
	]
};

for oreDictEntry, items in blocksDisabled {
	for i in items {
		mods.jei.JEI.removeAndHide(i);
	}
	oreDictEntry.removeItems(items);
}

	#crop flax
<ore:cropFlax>.remove(<minecraft:string>);

	#remove twine from string and create a new combined oredict for select recipes
<ore:string>.remove(<primal_tech:twine>);
<ore:stringTwine>.add(<primal_tech:twine>);
<ore:stringTwine>.add(<minecraft:string>);

	#logFirewood
<ore:logFirewood>.add(<tconstruct:firewood:1>);

	#overworld Portal
<ore:overworldPortal>.add(<sonarcore:stablestoneblackrimmed_lightblue>);
<ore:overworldPortal>.add(<contenttweaker:portalblockt>);

	#nether portal
<ore:netherPortal>.add(<sonarcore:stablestonerimmed_black>);
<ore:netherPortal>.add(<contenttweaker:portalblockunt>);


	#skystone
<ore:blockSkystone>.add(<appliedenergistics2:sky_stone_block>);

	#arCrystals
<ore:arCrystal>.add(<advancedrocketry:crystal>);
<ore:arCrystal1>.add(<advancedrocketry:crystal:1>);
<ore:arCrystal2>.add(<advancedrocketry:crystal:2>);
<ore:arCrystal3>.add(<advancedrocketry:crystal:3>);
<ore:arCrystal4>.add(<advancedrocketry:crystal:4>);
<ore:arCrystal5>.add(<advancedrocketry:crystal:5>);

	#silicon wafers
<ore:waferSilicon>.add(<metaitem:wafer.silicon>);

	#vitrified sand
<ore:sandVitrified>.add(<advancedrocketry:vitrifiedsand>);

	#small sodium battery
<ore:batterySodiumSmall>.add(batterySmallSodium);

	#flour - merge with dustWheat
<ore:dustWheat>.remove(<enderio:item_material:21>);
<ore:foodFlour>.addAll(<ore:dustWheat>);

	#Chocolate
<ore:foodChocolatebar>.add(<actuallyadditions:item_food:9>);

	#remove grass from plant oredict
<ore:plant>.remove(<minecraft:tallgrass:1>);

	#rock crystals ore
<ore:oreRockCrystal>.add(<astralsorcery:blockcustomore>);

////////////////////////////
//       Circuits         //
////////////////////////////
	#New Ore Dicts
<ore:circuitLow>.addAll(<ore:circuitBasic>);
<ore:circuitMedium>.addAll(<ore:circuitGood>);
<ore:circuitHigh>.addAll(<ore:circuitAdvanced>);
//Extreme Circuits already make sense
<ore:circuitInsane>.addAll(<ore:circuitElite>);
<ore:circuitLudicrous>.addAll(<ore:circuitMaster>);
<ore:circuitZPM>.addAll(<ore:circuitUltimate>);
<ore:circuitUV>.addAll(<ore:circuitSuperconductor>);
<ore:circuitMAX>.addAll(<ore:circuitInfinite>);

////////////////////////////
//         Clumps         //
////////////////////////////
var clumpsDisabled as IItemStack[IOreDictEntry]= {
	<ore:clumpIron> : <mekanism:clump>,
	<ore:clumpGold> : <mekanism:clump:1>,
	<ore:clumpOsmium> : <mekanism:clump:2>,
	<ore:clumpCopper> : <mekanism:clump:3>,
	<ore:clumpTin> : <mekanism:clump:4>,
	<ore:clumpSilver> : <mekanism:clump:5>,
	<ore:clumpLead> : <mekanism:clump:6>
};

for clumpOreDict, clumpItem in clumpsDisabled {
	clumpOreDict.remove(clumpItem);
	mods.jei.JEI.removeAndHide(clumpItem);
}

//////////////////////////////
//			Dusts           //
//////////////////////////////

var dustsDisabled as IItemStack[][IOreDictEntry] = {

	#dustAluminium
	<ore:dustAluminium> : [
		<thermalfoundation:material:68>
	],

	#dustAluminum
	<ore:dustAluminum>: [
		<libvulpes:productdust:9>,
		<thermalfoundation:material:68>
	],

	#dustBronze
	<ore:dustBronze> : [
		<thermalfoundation:material:99>
	],

	#dustCertusQuartz
	<ore:dustCertusQuartz> : [
		<appliedenergistics2:material:2>
	],
	#dustCharcoal
	<ore:dustCharcoal> : [
		<thermalfoundation:material:769>
	],

	#dustCoal
	<ore:dustCoal> : [
		<enderio:item_material:23>,
		<actuallyadditions:item_dust:6>,
		<bloodmagic:component:21>,
		<thermalfoundation:material:768>
	],

	#dustCobalt
	<ore:dustCobalt> : [
		<enderio:item_material:31>
	],

	#dustConstantan
	<ore:dustConstantan> : [
		<thermalfoundation:material:100>
	],

	#dustCopper
	<ore:dustCopper>: [
		<enderio:item_material:26>,
		<mekanism:dust:3>,
		<libvulpes:productdust:4>,
		<thermalfoundation:material:64>
	],

	#dustDiamond
	<ore:dustDiamond> : [
		<mekanism:otherdust>,
		<actuallyadditions:item_dust:2>
	],

	#dustElectrum
	<ore:dustElectrum> : [
		<thermalfoundation:material:97>
	],

	#dustEnderPearl
	<ore:dustEnderPearl> : [
		<appliedenergistics2:material:46>,
		<portalgun:item_dust_ender_pearl>,
		<appliedenergistics2:material:46>
	],

	#dustEmerald
	<ore:dustEmerald> : [
		<actuallyadditions:item_dust:3>
	],

	#dustEnderium
	<ore:dustEnderium> : [
		<thermalfoundation:material:103>
	],

	#dustGold
	<ore:dustGold> : [
		<actuallyadditions:item_dust:1>,
		<appliedenergistics2:material:51>,
		<bloodmagic:component:20>,
		<enderio:item_material:25>,
		<mekanism:dust:1>,
		<libvulpes:productdust:2>,
		<thermalfoundation:material:1>,
		<soulus:dust_gold>
	],

	#dustIron
	<ore:dustIron>: [
		<libvulpes:productdust:1>,
		<soulus:dust_iron>,
		<mekanism:dust>,
		<enderio:item_material:24>,
		<bloodmagic:component:19>,
		<actuallyadditions:item_dust>,
		<appliedenergistics2:material:49>,
		<thermalfoundation:material>
	],

	#dustLapis
	<ore:dustLapis> : [
		<actuallyadditions:item_dust:4>,
		<enderio:item_material:32>
	],

	#dustLead
	<ore:dustLead>: [
		<mekanism:dust:6>,
		<thermalfoundation:material:67>
	],

	#dustLumium
	<ore:dustLumium> : [
		<thermalfoundation:material:102>
	],

	#dustInvar
	<ore:dustInvar> : [
		<thermalfoundation:material:98>
	],

	#dustIridium
	<ore:dustIridium> : [
		<libvulpes:productdust:10>,
		<thermalfoundation:material:71>
	],

	#dustNetherQuartz
	<ore:dustNetherQuartz> : [
		<enderio:item_material:33>,
		<actuallyadditions:item_dust:5>,
		<appliedenergistics2:material:3>
	],

	#dustNickel
	<ore:dustNickel> : [
		<thermalfoundation:material:69>
	],

	#dustObsidian
	<ore:dustObsidian> : [
		<enderio:item_material:29>,
		<mekanism:otherdust:6>,
		<thermalfoundation:material:770>
	],

	#dustPlatinum
	<ore:dustPlatinum> : [
		<thermalfoundation:material:70>
	],

	#dustQuartz
	<ore:dustQuartz> : [
		<appliedenergistics2:material:3>,
		<actuallyadditions:item_dust:5>
	],

	#dustSaltpeter
	<ore:dustSaltpeter> : [
		<thermalfoundation:material:772>,
		<bloodmagic:component:24>
	],

	#dustSignalum
	<ore:dustSignalum>: [
		<thermalfoundation:material:101>
	],

	#dustSilver
	<ore:dustSilver>: [
		<mekanism:dust:5>,
		<thermalfoundation:material:66>
	],

	#dustSilicon
	<ore:dustSilicon>: [
		<libvulpes:productdust:3>
	],

	#dustSteel
	<ore:dustSteel> : [
		<libvulpes:productdust:6>,
		<thermalfoundation:material:96>,
		<mekanism:otherdust:1>
	],

	#dustSulur
	<ore:dustSulfur>: [
		<thermalfoundation:material:771>,
		<mekanism:otherdust:3>,
		<bloodmagic:component:23>
	],

	#dustTin
	<ore:dustTin>: [
		<enderio:item_material:27>,
		<mekanism:dust:4>,
		<libvulpes:productdust:5>,
		<thermalfoundation:material:65>
	],

	#dustTitanium
	<ore:dustTitanium> : [
		<libvulpes:productdust:7>
	]

};

for oreDictEntry, items in dustsDisabled {
	for i in items {
		mods.jei.JEI.removeAndHide(i);
	}
	oreDictEntry.removeItems(items);
}

	#dirtyDusts Removal (Mekanism)
var dirtyDustsDisabled as IItemStack[] = [
	<mekanism:dirtydust>,
	<mekanism:dirtydust:1>,
	<mekanism:dirtydust:2>,
	<mekanism:dirtydust:3>,
	<mekanism:dirtydust:4>,
	<mekanism:dirtydust:5>,
	<mekanism:dirtydust:6>
];

for i in dirtyDustsDisabled {
	mods.jei.JEI.removeAndHide(i);
}


<ore:dustObsidian>.add(<thermalfoundation:material:770>);
<ore:dustNiobium>.add(<soulus:dust_niobium>);
<ore:dustArdite>.add(<enderio:item_material:30>);
	#Removing outside of loop since it needs to say visible
<ore:dustDraconium>.remove(<draconicevolution:draconium_dust>);
<ore:dustImpureDraconium>.add(<draconicevolution:draconium_dust>);

//////////////////////////////
//			Gems            //
//////////////////////////////
var gemsDisabled as IItemStack[][IOreDictEntry] = {
	<ore:gemSapphire> : [
		<iceandfire:sapphire_gem>
	]
};


for oreDictEntry, items in gemsDisabled {
	for i in items {
		mods.jei.JEI.removeAndHide(i);
	}
	oreDictEntry.removeItems(items);
}

//////////////////////////////
//			Ingots          //
//////////////////////////////

var ingotsDisabled as IItemStack[][IOreDictEntry] = {

	#ingotAluminium
	<ore:ingotAluminium> : [
		<thermalfoundation:material:132>
	],

	#ingotAluminum
	<ore:ingotAluminum>: [
		<libvulpes:productingot:9>,
		<thermalfoundation:material:132>
	],

	#ingotBronze
	<ore:ingotBronze> : [
		<mekanism:ingot:2>,
		<thermalfoundation:material:163>
	],

	#ingotCobalt
	<ore:ingotCobalt> : [
		<tconstruct:ingots>
	],

	#ingotCopper
	<ore:ingotCopper> : [
		<mekanism:ingot:5>,
		<libvulpes:productingot:4>,
		<thermalfoundation:material:128>
	],

	#ingotDraconium
	<ore:ingotDraconium> : [
		<draconicevolution:draconium_ingot>
	],

	#ingotElectrum
	<ore:ingotElectrum> : [
		<thermalfoundation:material:161>
	],

	#ingotLead
	<ore:ingotLead> : [
		<thermalfoundation:material:131>,
	],

	#ingotLumium
	<ore:ingotLumium> : [
		<thermalfoundation:material:166>
	],

	#ingotOsmiridium
	<ore:ingotOsmiridium> : [
		<plustic:osmiridiumingot>
	],

	#ingotIridium
	<ore:ingotIridium> : [
		<libvulpes:productingot:10>,
		<thermalfoundation:material:135>
	],

	#ingotInvar
	<ore:ingotInvar> : [
		<plustic:invaringot>,
		<thermalfoundation:material:162>
	],

	#ingotNickel
	<ore:ingotNickel> : [
		<thermalfoundation:material:133>
	],

	#ingotPlatinum
	<ore:ingotPlatinum> : [
		<thermalfoundation:material:134>
	],

	#ingotTin
	<ore:ingotTin> : [
		<mekanism:ingot:6>,
		<libvulpes:productingot:5>,
		<thermalfoundation:material:129>
	],

	#ingotTitanium
	<ore:ingotTitanium> : [
		<libvulpes:productingot:7>
	],

	#ingotSignalum
	<ore:ingotSignalum> : [
		<thermalfoundation:material:165>
	],

	#ingotSilver
	<ore:ingotSilver> : [
		<thermalfoundation:material:130>,
		<iceandfire:silver_ingot>
	],

	#ingotSilicon
	<ore:ingotSilicon>: [
		<libvulpes:productingot:3>
	],

	#ingotSteel
	<ore:ingotSteel> : [
		<mekanism:ingot:4>,
		<libvulpes:productingot:6>,
		<thermalfoundation:material:160>
	]

};

for oreDictEntry, items in ingotsDisabled {
	for i in items {
		mods.jei.JEI.removeAndHide(i);
	}
	oreDictEntry.removeItems(items);
}

<ore:ingotNiobium>.add(<soulus:ingot_niobium>);

////////////////////////
//	     Sticks       //
////////////////////////
var sticksDisabled as IItemStack[][IOreDictEntry] = {

	#stickIron
	<ore:stickIron> : [
		<libvulpes:productrod:1>
	]
};

for oreDictEntry, items in sticksDisabled {
	for i in items {
		mods.jei.JEI.removeAndHide(i);
	}
	oreDictEntry.removeItems(items);
}

////////////////////////
//	     Plants       //
////////////////////////

<ore:plantWhite>.addItems([
	<plants2:cosmetic_0:2>,
	<plants2:cosmetic_0>,
	<plants2:cosmetic_1:8>,
	<plants2:cosmetic_1:12>,
	<plants2:cosmetic_2:1>,
	<plants2:cosmetic_2:2>,
	<plants2:cosmetic_2:15>,
	<plants2:cosmetic_3:9>,
	<plants2:cosmetic_4:12>,
	<plants2:cosmetic_6>,
	<plants2:cosmetic_5:9>,
	<plants2:cosmetic_5:12>
	]);

<ore:plantOrange>.addItems([
	<plants2:cosmetic_0:12>,
	<plants2:cosmetic_0:3>,
	<plants2:cosmetic_1:10>,
	<plants2:cosmetic_2:9>,
	<plants2:cosmetic_2:5>,
	<plants2:cosmetic_3:13>,
	<plants2:cosmetic_4:11>
	]);

<ore:plantMagenta>.addItems([
	<plants2:cosmetic_0:11>,
	<plants2:cosmetic_0:6>,
	<plants2:cosmetic_1:2>,
	<plants2:cosmetic_2:8>,
	<plants2:cosmetic_4:5>,
	<plants2:cosmetic_5:11>,
	<plants2:cosmetic_6:2>
	]);

<ore:plantLightBlue>.addItems([
	<plants2:cosmetic_4:14>,
	]);

<ore:plantYellow>.addItems([
	<plants2:cosmetic_1:11>,
	<plants2:cosmetic_2>,
	<plants2:cosmetic_2:10>,
	<plants2:cosmetic_2:12>,
	<plants2:cosmetic_2:3>,
	<plants2:cosmetic_2:4>,
	<plants2:cosmetic_3:4>,
	<plants2:cosmetic_3:15>,
	<plants2:cosmetic_3:10>,
	<plants2:cosmetic_4>,
	<plants2:cosmetic_4:6>,
	<plants2:cosmetic_4:7>,
	<plants2:cosmetic_4:8>,
	<plants2:cosmetic_5:4>,
	<plants2:cosmetic_5:2>,
	<plants2:desert_0:1>
	]);

<ore:plantLime>.addItems([
	<plants2:cosmetic_5:10>,
	<plants2:cosmetic_6:1>,
	<plants2:desert_0:2>
	]);

<ore:plantPink>.addItems([
	<plants2:cosmetic_0:15>,
	<plants2:cosmetic_0:4>,
	<plants2:cosmetic_1:15>,
	<plants2:cosmetic_4:1>,
	<plants2:cosmetic_4>,
	<plants2:cosmetic_2:11>,
	<plants2:cosmetic_2:13>,
	<plants2:cosmetic_2:7>,
	<plants2:cosmetic_3:7>,
	<plants2:cosmetic_3:3>,
	<plants2:cosmetic_3:1>,
	<plants2:cosmetic_3:12>,
	<plants2:cosmetic_5:5>,
	<plants2:cosmetic_5>
	]);

<ore:plantGray>.addItems([
	<plants2:cosmetic_4:9>,
	<plants2:cosmetic_5:15>
	]);


<ore:plantSilver>.addItems([
	<plants2:cosmetic_0:10>,
	<plants2:cosmetic_1:3>,
	<plants2:cosmetic_1:1>,
	<plants2:cosmetic_3:5>,
	<plants2:cosmetic_5:14>,
	<plants2:cosmetic_6:3>
	]);

<ore:plantCyan>.addItems([
	<plants2:cosmetic_6:4>,
	]);

<ore:plantPurple>.addItems([
	<plants2:cosmetic_0:9>,
	<plants2:cosmetic_1:4>,
	<plants2:cosmetic_3:8>,
	<plants2:cosmetic_3:11>,
	<plants2:cosmetic_4:3>,
	<plants2:cosmetic_4:15>,
	<plants2:cosmetic_5:6>,
	<plants2:cosmetic_5:13>,
	<plants2:desert_0>
	]);

<ore:plantBlue>.add([
	<plants2:cosmetic_1>,
	<plants2:cosmetic_1:7>,
	<plants2:cosmetic_2:6>,
	<plants2:cosmetic_4:4>,
	<plants2:cosmetic_5:3>,
	<plants2:cosmetic_5:1>
	]);

<ore:plantBrown>.add([
	<plants2:cosmetic_1:6>,
	<plants2:cosmetic_2:14>,
	<plants2:cosmetic_4:10>
	]);

<ore:plantGreen>.add([
	<plants2:cosmetic_1:5>,
	<plants2:cosmetic_3:14>,
	<plants2:cosmetic_4:13>
	]);

<ore:plantRed>.addItems([
	<plants2:cosmetic_0:1>,
	<plants2:cosmetic_0:13>,
	<plants2:cosmetic_0:14>,
	<plants2:cosmetic_0:5>,
	<plants2:cosmetic_0:7>,
	<plants2:cosmetic_0:8>,
	<plants2:cosmetic_1:14>,
	<plants2:cosmetic_1:13>,
	<plants2:cosmetic_3:6>,
	<plants2:cosmetic_3:2>,
	<plants2:cosmetic_3>,
	<plants2:cosmetic_5:8>,
	<plants2:cosmetic_5:7>
	]);

<ore:plantBlack>.addItems([
	<plants2:blackberry>
	]);


<ore:listAllFruit>.add(<plants2:pineapple>);
<ore:cropPineapple>.add(<plants2:pineapple>);

////////////////////////////
//	     Nuggets          //
////////////////////////////

var nuggetsDisabled as IItemStack[][IOreDictEntry] = {
	<ore:nuggetAluminium> :[
		<thermalfoundation:material:196>,
		<libvulpes:productnugget:9>,

	],

	<ore:nuggetAluminum> : [
		<thermalfoundation:material:196>,
		<libvulpes:productnugget:9>
	],

	<ore:nuggetBronze> : [
		<thermalfoundation:material:227>,
		<mekanism:nugget:2>
	],

	#nuggetCopper
	<ore:nuggetCopper> : [
		<thaumcraft:nugget:1>,
		<mekanism:nugget:5>,
		<thermalfoundation:material:192>
	],

	<ore:nuggetElectrum> : [
		<thermalfoundation:material:225>
	],

	<ore:nuggetEnderium> : [
		<thermalfoundation:material:231>
	],

	#nuggetInvar
	<ore:nuggetInvar> : [
		<thermalfoundation:material:226>,
		<plustic:invarnugget>
	],

	<ore:nuggetIridium> : [
		<thermalfoundation:material:199>
	],

	<ore:nuggetIron> : [
		<thaumcraft:nugget>
	],

	#nuggetLead
	<ore:nuggetLead> : [
		<thermalfoundation:material:195>
	],

	#nuggetNickel
	<ore:nuggetNickel> : [
		<thermalfoundation:material:197>,

	],

	#nuggetPlatinum
	<ore:nuggetPlatinum> : [
		<thermalfoundation:material:198>

	],

	#nuggetSteel
	<ore:nuggetSteel> : [
		<thermalfoundation:material:224>,
		<libvulpes:productnugget:9>,
		<libvulpes:productnugget:6>
	],

	#nuggetSilver
	<ore:nuggetSilver> : [
		<thermalfoundation:material:194>,
		<iceandfire:silver_nugget>
	],

	#nuggetSignalum
/*	<ore:nuggetSignalum> : [
		<thermalfoundation:material:194>
	],
*/
	#nuggetTin
	<ore:nuggetTin> : [
		<thermalfoundation:material:193>

	],

};

for oreDictEntry, items in nuggetsDisabled {
	for i in items {
		mods.jei.JEI.removeAndHide(i);
	}
	oreDictEntry.removeItems(items);
}

////////////////////////////
//			Ores          //
////////////////////////////

var oresDisabled as IItemStack[][IOreDictEntry] = {

	#oreAluminium
	<ore:oreAluminium> : [
		<libvulpes:ore0:9>
		],

	#oreAluminum
	<ore:oreAluminum> : [
		<libvulpes:ore0:9>
	],

	#oreCoal
	<ore:oreCoal> : [
		<minecraft:coal_ore>
	],

	#oreCopper
	<ore:oreCopper> : [
		<mekanism:oreblock:1>,
		<mekanism:oreblock:1>,
		<libvulpes:ore0:4>
	],

	#oreDiamond
	<ore:oreDiamond> : [
		<minecraft:diamond_ore>
	],

	#oreEmerald
	<ore:oreEmerald> : [
		<minecraft:emerald_ore>
	],

	#oreGold
	<ore:oreGold> : [
		<minecraft:gold_ore>
	],

	#oreIridium
	<ore:oreIridium> : [
		<libvulpes:ore0:10>
	],

	#oreIron
	<ore:oreIron> : [
		<minecraft:iron_ore>
	],

	#oreLapis
	<ore:oreLapis> : [
		<minecraft:lapis_ore>
	],

	#oreLead
	<ore:oreLead>: [
		<thermalfoundation:ore:3>
	],

	#oreNetherQuartz
	<ore:oreNetherQuartz> : [
		<minecraft:quartz_ore>
	],

	#orePlatinum
	<ore:orePlatinum> : [
		<thermalfoundation:ore:6>
	],

	#oreRedstone
	<ore:oreRedstone> : [
		<minecraft:redstone_ore>
	],

	#oreRutile
	<ore:oreRutile> : [
		<libvulpes:ore0:8>
	],

	#oreQuartz
	<ore:oreQuartz>: [
		<minecraft:quartz_ore>
	],

	#oreTin
	<ore:oreTin> : [
		<libvulpes:ore0:5>,
		<mekanism:oreblock:2>
	],

	#oreTitanium
	<ore:oreTitanium> : [
		<libvulpes:ore0:8>
	],

	#oreSilver
	<ore:oreSilver> : [
		<iceandfire:silver_ore>,
		<thermalfoundation:ore:2>
	],

	#oreUranium
	//<ore:oreUranium> : [

	//]

};

for oreDictEntry, items in oresDisabled {
	for i in items {
		mods.jei.JEI.removeAndHide(i);
	}
	oreDictEntry.removeItems(items);
}

//////////////////////////////
//			Plates          //
//////////////////////////////

var platesDisabled as IItemStack[][IOreDictEntry] = {

	#plateAluminum
	<ore:plateAluminum> : [
		<libvulpes:productplate:9>,
		<thermalfoundation:material:324>
	],


	#plateBronze
	<ore:plateBronze> : [
		<thermalfoundation:material:355>
	],

	#plateConstantan
	<ore:plateConstantan> : [
		<thermalfoundation:material:356>
	],

	#plateCopper
	<ore:plateCopper> : [
		<libvulpes:productplate:4>,
		<thermalfoundation:material:320>
	],

	#plateElectrum
	<ore:plateElectrum> : [
		<thermalfoundation:material:353>
	],

	#plateEnderium
	<ore:plateEnderium> : [
		<thermalfoundation:material:359>
	],

	#plateGold
	<ore:plateGold> : [
		<libvulpes:productplate:2>,
		<thermalfoundation:material:33>
	],

	#plateInvar
	<ore:plateInvar> : [
		<thermalfoundation:material:354>
	],

	#plateIridium
	<ore:plateIridium> : [
		<libvulpes:productplate:10>,
		<thermalfoundation:material:327>
	],

	#plateIron
	<ore:plateIron> : [
		<thermalfoundation:material:32>,
		<thaumcraft:plate:1>,
		<libvulpes:productplate:1>
	],

	#plateLead
	<ore:plateLead> : [
		<thermalfoundation:material:323>
	],

	#plateLumium
	<ore:plateLumium> : [
		<thermalfoundation:material:358>
	],

	#plateNickel
	<ore:plateNickel> : [
		<thermalfoundation:material:325>
	],

	#platePlatinum
	<ore:platePlatinum> : [
		<thermalfoundation:material:326>
	],

	#plateSignalum
	<ore:plateSignalum> : [
		<thermalfoundation:material:357>
	],

	#plateSilicon
	<ore:plateSilicon> : [
		<libvulpes:productplate:3>
	],

	#plateSilver
	<ore:plateSilver> : [
		<thermalfoundation:material:322>
	],

	#plateSteel
	<ore:plateSteel> : [
		<thermalfoundation:material:352>,
		<libvulpes:productplate:6>
	],

	#plateTin
	<ore:plateTin> : [
		<thermalfoundation:material:321>,
		<libvulpes:productplate:5>
	],

	#plateTitanium
	<ore:plateTitanium> : [
		<libvulpes:productplate:7>
	]
};

for oreDictEntry, items in platesDisabled {
	for i in items {
		mods.jei.JEI.removeAndHide(i);
	}
	oreDictEntry.removeItems(items);
}

//////////////////////////////
//			Gears           //
//////////////////////////////

var gearsDisabled as IItemStack[][IOreDictEntry] = {

	#gearAluminum
	<ore:gearAluminum> : [
		<thermalfoundation:material:260>
	],

	#gearBronze
	<ore:gearBronze> : [
		<thermalfoundation:material:291>
	],

	#gearConstantan
	<ore:gearConstantan> : [
		<thermalfoundation:material:292>
	],

	#gearCopper
	<ore:gearCopper> : [
		<thermalfoundation:material:256>
	],

	#gearDiamond
	<ore:gearDiamond> : [
		<thermalfoundation:material:26>
	],

	#gearElectrum
	<ore:gearElectrum> : [
		<thermalfoundation:material:289>,
	],

	#gearEnderium
	<ore:gearEnderium> : [
		<thermalfoundation:material:295>
	],

	#gearGold
	<ore:gearGold> : [
		<thermalfoundation:material:25>
	],

	#gearInvar
	<ore:gearInvar> : [
		<thermalfoundation:material:290>
	],

	#gearIron
	<ore:gearIron> : [
		<thermalfoundation:material:24>
	],

	#gearIridium
	<ore:gearIridium> : [
		<thermalfoundation:material:263>
	],

	#gearLead
	<ore:gearLead> : [
		<thermalfoundation:material:259>
	],

	#gearLumium
	<ore:gearLumium> : [
		<thermalfoundation:material:294>
	],

	#gearNickel
	<ore:gearNickel> : [
		<thermalfoundation:material:261>
	],

	#gearPlatinum
	<ore:gearPlatinum> : [
		<thermalfoundation:material:262>
	],

	#gearSilver
	<ore:gearSilver> : [
		<thermalfoundation:material:258>
	],

	#gearSignalum
	<ore:gearSignalum> : [
		<thermalfoundation:material:293>
	],

	#gearSteel
	<ore:gearSteel> : [
		<thermalfoundation:material:288>,
		<libvulpes:productgear:6>
	],

	#gearStone
	<ore:gearStone> : [
		<enderio:item_material:10>
	],

	#gearTin
	<ore:gearTin> : [
		<thermalfoundation:material:257>
	],

	#gearTitanium
	<ore:gearTitanium> : [
		<libvulpes:productgear:7>
	],

	#gearWood
	<ore:gearWood> : [
		<appliedenergistics2:material:40>,
		<enderio:item_material:9>,
		<thermalfoundation:material:22>
	]
};

for oreDictEntry, items in gearsDisabled {
	for i in items {
		mods.jei.JEI.removeAndHide(i);
	}
	oreDictEntry.removeItems(items);
}

//////////////////////////////
//			Shards          //
//////////////////////////////
var shardsDisabled as IItemStack[IOreDictEntry]= {
	<ore:shardIron> : <mekanism:shard>,
	<ore:shardGold> : <mekanism:shard:1>,
	<ore:shardOsmium> : <mekanism:shard:2>,
	<ore:shardCopper> : <mekanism:shard:3>,
	<ore:shardTin> : <mekanism:shard:4>,
	<ore:shardSilver> : <mekanism:shard:5>,
	<ore:shardLead> : <mekanism:shard:6>
};

for shardOreDict, shardItem in shardsDisabled {
	shardOreDict.remove(shardItem);
	mods.jei.JEI.removeAndHide(shardItem);
}

//////////////////////////////
//			Tools           //
//////////////////////////////


	/*
	<artisanworktables:artisans_handsaw_wood>,
	<artisanworktables:artisans_handsaw_invar>,
	<artisanworktables:artisans_handsaw_lead>,
	<artisanworktables:artisans_handsaw_stone>,
	<artisanworktables:artisans_handsaw_iron>,
	<artisanworktables:artisans_handsaw_nickel>,
	<artisanworktables:artisans_handsaw_platinum>,
	<artisanworktables:artisans_handsaw_gold>,
	<artisanworktables:artisans_handsaw_diamond>,
	<artisanworktables:artisans_handsaw_silver>,
	<artisanworktables:artisans_handsaw_steel>,
	<artisanworktables:artisans_handsaw_flint>,
	<artisanworktables:artisans_handsaw_bone>,
	<artisanworktables:artisans_handsaw_tin>,
	<artisanworktables:artisans_handsaw_manasteel>,
	<artisanworktables:artisans_handsaw_aluminum>,
	<artisanworktables:artisans_handsaw_bronze>,
	<artisanworktables:artisans_handsaw_elementium>,
	<artisanworktables:artisans_handsaw_elementium>,
	<artisanworktables:artisans_handsaw_constantan>,
	<artisanworktables:artisans_handsaw_copper>,
	<artisanworktables:artisans_handsaw_electrum>
*/




	#Adding saws to toolSaw
var toolSaws as IItemStack[] = [
	<microblockcbe:saw_stone>,
	<microblockcbe:saw_iron>,
	<microblockcbe:saw_diamond>
	];

for i in toolSaws {
	<ore:toolSaw>.add(i);
	<ore:toolAxe>.add(i);
}


	#standard vis
<ore:visCrystals>.add(<thaumcraft:crystal_essence>);


	#Botania Petals
var petals as IItemStack[] = [
	<botania:petal:0>,
	<botania:petal:1>,
	<botania:petal:2>,
	<botania:petal:3>,
	<botania:petal:4>,
	<botania:petal:5>,
	<botania:petal:6>,
	<botania:petal:7>,
	<botania:petal:8>,
	<botania:petal:9>,
	<botania:petal:10>,
	<botania:petal:11>,
	<botania:petal:12>,
	<botania:petal:13>,
	<botania:petal:14>,
	<botania:petal:15>
	];

for i in petals {
	<ore:botaniaPetals>.add(i);
}

	#Botania Petals
var seaScales as IItemStack[] = [
	<iceandfire:sea_serpent_scales_purple>,
	<iceandfire:sea_serpent_scales_red>,
	<iceandfire:sea_serpent_scales_teal>,
	<iceandfire:sea_serpent_scales_blue>,
	<iceandfire:sea_serpent_scales_green>,
	<iceandfire:sea_serpent_scales_bronze>,
	<iceandfire:sea_serpent_scales_deepblue>
	];

for i in seaScales {
	<ore:seaScales>.add(i);
}


var artisanHammers as IItemStack[] = [
	<tconstruct:hammer>,
	<thermalfoundation:tool.hammer_copper>,
	<thermalfoundation:tool.hammer_tin>,
	<thermalfoundation:tool.hammer_silver>,
	<thermalfoundation:tool.hammer_lead>,
	<thermalfoundation:tool.hammer_aluminum>,
	<thermalfoundation:tool.hammer_nickel>,
	<thermalfoundation:tool.hammer_platinum>,
	<thermalfoundation:tool.hammer_steel>,
	<thermalfoundation:tool.hammer_electrum>,
	<thermalfoundation:tool.hammer_invar>,
	<thermalfoundation:tool.hammer_bronze>,
	<thermalfoundation:tool.hammer_constantan>,
	<thermalfoundation:tool.hammer_iron>,
	<thermalfoundation:tool.hammer_diamond>,
	<thermalfoundation:tool.hammer_gold>,
	<pickletweaks:hammer>,
	<primal_tech:stone_mallet>
];

for i in artisanHammers {
	<ore:artisanHammers>.add(i);
}

var toolShears as IItemStack[] = [
	<minecraft:shears>,
	<botania:manasteelshears>,
	<botania:elementiumshears>,
	<ceramics:clay_shears>,
	<cyclicmagic:shears_obsidian>,
	<enderio:item_dark_steel_shears>,
	<pickletweaks:flint_shears>,
	<projecte:item.pe_dm_shears>,
	<thermalfoundation:tool.shears_gold>,
	<thermalfoundation:tool.shears_diamond>,
	<thermalfoundation:tool.shears_steel>,
	<projecte:item.pe_rm_shears>,
		<primal_tech:bone_shears>
];

for i in toolShears {
	<ore:toolShear>.add(i);
}

//////////////////////////////
//			Misc            //
//////////////////////////////

	#honeycombs
<ore:itemHoneyComb>.add(<rustic:honeycomb>);
<ore:itemHoneyComb>.add(<harvestcraft:honeycombitem>);

	#unique menril log oredict
<ore:logMenril>.add(<hitwithaxe:debarked_menril>);
<ore:logMenril>.add(<integrateddynamics:menril_log>);
<ore:logMenril>.add(<integrateddynamics:menril_log_filled>);

 	#Bacon
<ore:foodBacon>.add(<tconstruct:edible>);

	#Cheese
<ore:foodCheese>.add(<actuallyadditions:item_food>);

	#Salt
<ore:foodSalt>.add(<mekanism:salt>);
<ore:foodSalt>.add(dustGTSalt);
<ore:itemSalt>.add(dustGTSalt);
<ore:foodSalt>.remove(<harvestcraft:saltitem>);
<ore:itemSalt>.remove(<harvestcraft:saltitem>);
<ore:dustSalt>.remove(<harvestcraft:saltitem>);

	#add rosin to slimeballs
<ore:slimeball>.add(<thermalfoundation:material:832>);

var coloredTerracotta as IItemStack[] = [
	<minecraft:stained_hardened_clay>,
	<minecraft:stained_hardened_clay:1>,
	<minecraft:stained_hardened_clay:2>,
	<minecraft:stained_hardened_clay:3>,
	<minecraft:stained_hardened_clay:4>,
	<minecraft:stained_hardened_clay:5>,
	<minecraft:stained_hardened_clay:6>,
	<minecraft:stained_hardened_clay:7>,
	<minecraft:stained_hardened_clay:8>,
	<minecraft:stained_hardened_clay:9>,
	<minecraft:stained_hardened_clay:10>,
	<minecraft:stained_hardened_clay:11>,
	<minecraft:stained_hardened_clay:12>,
	<minecraft:stained_hardened_clay:13>,
	<minecraft:stained_hardened_clay:14>,
	<minecraft:stained_hardened_clay:15>
];

for i in coloredTerracotta {
	<ore:coloredTerracotta>.add(i);
}

var anyLuxSaber as IItemStack[] = [
	<extrautils2:luxsaber>,
	<extrautils2:luxsaber:1>,
	<extrautils2:luxsaber:2>,
	<extrautils2:luxsaber:3>,
	<extrautils2:luxsaber:4>,
	<extrautils2:luxsaber:5>,
	<extrautils2:luxsaber:6>,
	<extrautils2:luxsaber:7>
];

for i in anyLuxSaber {
	<ore:anyLuxSaber>.add(i);
}

var anyConveyor as IItemStack[] = [
	<industrialforegoing:conveyor:13>,
	<industrialforegoing:conveyor:1>,
	<industrialforegoing:conveyor:9>,
	<industrialforegoing:conveyor:11>,
	<industrialforegoing:conveyor:12>,
	<industrialforegoing:conveyor:10>,
	<industrialforegoing:conveyor:2>,
	<industrialforegoing:conveyor:3>,
	<industrialforegoing:conveyor:4>,
	<industrialforegoing:conveyor:5>,
	<industrialforegoing:conveyor:7>,
	<industrialforegoing:conveyor:6>,
	<industrialforegoing:conveyor:8>,
	<industrialforegoing:conveyor>
];

for i in anyConveyor {
	<ore:anyConveyor>.add(i);
}



/////////////////////////////////
//  One Ingot To Rule Them All //
/////////////////////////////////

print("-----------Nugget / Ingot / Block Crafting Start--------------");
function metalRecipeFix(
    oredictBlock  as IOreDictEntry,
    oredictIngot  as IOreDictEntry,
    oredictNugget as IOreDictEntry,
    preferedBlock as IItemStack,
    preferedIngot as IItemStack,
    preferedNugget as IItemStack
    ){
		//Fix block to ingot recipes
        for metalBlock in oredictBlock.items {
            recipes.removeShaped(metalBlock);
            recipes.removeShapeless(metalBlock);

            recipes.addShapeless(preferedIngot * 9, [
                metalBlock
                ]);
        }

        //Fix ingot to block and ingot to nugget recipes
        for metalIngot in oredictIngot.items {
            recipes.removeShaped(metalIngot * 9);
            recipes.removeShapeless(metalIngot * 9);
            recipes.removeShaped(metalIngot);
            recipes.removeShapeless(metalIngot);

            recipes.addShapeless(preferedNugget * 9, [metalIngot]);
            recipes.addShapeless(preferedBlock, [
                metalIngot, metalIngot, metalIngot,
                metalIngot, metalIngot, metalIngot,
                metalIngot, metalIngot, metalIngot]);
        }

		//Fix nugget to ingot recipes
        for metalNugget in oredictNugget.items {
            recipes.removeShaped(metalNugget * 9);
            recipes.removeShapeless(metalNugget * 9);

            recipes.addShapeless(preferedIngot, [
                metalNugget, metalNugget, metalNugget,
                metalNugget, metalNugget, metalNugget,
                metalNugget, metalNugget, metalNugget]);
        }

        //Backup oredict ingot to block and nugget to ingot recipes for if a player tries to combine various mod ingots
        recipes.addShapeless(preferedBlock, [
                oredictIngot, oredictIngot, oredictIngot,
                oredictIngot, oredictIngot, oredictIngot,
                oredictIngot, oredictIngot, oredictIngot]);
        recipes.addShapeless(preferedIngot, [
                oredictNugget, oredictNugget, oredictNugget,
                oredictNugget, oredictNugget, oredictNugget,
                oredictNugget, oredictNugget, oredictNugget]);
}

print("------------Nugget / Ingot / Block Crafting End---------------");

print("------------GT material cleanup Begin---------------");


<ore:skystone>.add(skyStoneBlock);
	#GT material cleanup
furnace.remove(<ore:ingotStarmetal>.firstItem);
furnace.addRecipe(<astralsorcery:itemcraftingcomponent:1>, <ore:dustAstralStarmetal>);

<ore:ingotAstralStarmetal>.add(ingotGTStarmetal);
<ore:ingotStarmetal>.add(<astralsorcery:itemcraftingcomponent:1>);
<ore:dustStarmetal>.add(<astralsorcery:itemcraftingcomponent:2>);
<ore:dustAstralStarmetal>.add(dustGTStarMetal);

#signalum
furnace.remove(<ore:ingotSignalum>.firstItem);

#thaumium
furnace.remove(ingotGTThaumium); //gt ingot
furnace.addRecipe(<thaumcraft:ingot>, ingotGTThaumium);
mods.jei.JEI.removeAndHide(<ore:dustSmallThaumium>.firstItem); //small dust
mods.jei.JEI.removeAndHide(<ore:dustTinyThaumium>.firstItem); //tiny dust
mods.jei.JEI.removeAndHide(nuggetGTThaumium); //gt nugget
<ore:ingotThaumium>.remove(ingotGTThaumium); //remove gt ingot from oredict
<ore:nuggetThaumium>.remove(nuggetGTThaumium); //remove gt nugged from oredict
<ore:dustThaumium>.remove(dustGTThaumium); //remove gt dust from oredict

#stellar Alloy
furnace.remove(ingotGTStellarAlloy); //gt ingot

#mana steel
furnace.remove(ingotGTManasteel); //gt ingot
<ore:ingotManasteel>.remove(ingotGTManasteel); //remove gt ingot from oredict
<ore:nuggetManasteel>.remove(nuggetGTManasteel); //remove gt nugget from oredict
<ore:blockManasteel>.add(<botania:storage>);

#terrasteel
furnace.remove(ingotGTTerrasteel); //gt ingot
<ore:ingotManasteel>.remove(ingotGTTerrasteel); //remove gt ingot from oredict
<ore:nuggetManasteel>.remove(nuggetGTTerrasteel); //remove gt nugget from oredict

#elementium
<ore:ingotElementium>.add(<botania:manaresource:7>);
<ore:ingotElvenElementium>.add(ingotGTElementium);
furnace.remove(ingotGTElementium);

print("------------GT material cleanup End---------------");


print("------------Replacements------------");

#mek circuits
<ore:circuitBasic>.remove(<mekanism:controlcircuit>);
//recipes.replaceAllOccurences(<mekanism:controlcircuit>, <ore:circuitLow>);
<ore:circuitAdvanced>.remove(<mekanism:controlcircuit:1>);
//recipes.replaceAllOccurences(<mekanism:controlcircuit:1>, <ore:circuitMedium>);
<ore:circuitElite>.remove(<mekanism:controlcircuit:2>);
//recipes.replaceAllOccurences(<mekanism:controlcircuit:2>, <ore:circuitHigh>);
<ore:circuitUltimate>.remove(<mekanism:controlcircuit:3>);
//recipes.replaceAllOccurences(<mekanism:controlcircuit:3>, <ore:circuitInsane>);

print("------------End ingot replacement------------------");

#added conversion betweengt ore variants and base gt ore variant for starlight infusing
recipes.addShapeless(<ore:oreDiamond>.firstItem, [<ore:oreDiamond>]);
recipes.addShapeless(<ore:oreEmerald>.firstItem, [<ore:oreEmerald>]);
recipes.addShapeless(<ore:oreLapis>.firstItem, [<ore:oreLapis>]);
recipes.addShapeless(<ore:oreRedstone>.firstItem, [<ore:oreRedstone>]);


print("-------------- Ore Dictionary End --------------");
