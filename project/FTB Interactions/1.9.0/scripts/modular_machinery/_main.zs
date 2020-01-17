import mods.modularmachinery.RecipeBuilder;
import mods.modularmachinery.RecipePrimer;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.data.IData;

print("--------------Modular Machinery Start----------------");

var blueprintTags as string[] = [
	"modularmachinery:infernal_deconglomerator",
	"modularmachinery:botanical_fishery",
	"modularmachinery:gem_refiner",
	"modularmachinery:photonuclear_fission_chamber",
	"modularmachinery:sky_cauldron",
	"modularmachinery:zero_point_matrix"
];

for i in blueprintTags {
	<modularmachinery:itemblueprint>.withTag({dynamicmachine: i}).addTooltip(format.darkRed("蓝图只能在地牢中找到。"));
	recipes.addShapeless(<modularmachinery:itemblueprint>.withTag({dynamicmachine: i}) * 2,
		[<modularmachinery:itemblueprint>.withTag({dynamicmachine: i}), <cyclicmagic:carbon_paper>]);
}


#Blueprints
	#improved coke oven blueprint recipes
recipes.addShaped(<modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:improved_coke_oven"}),
	[[null, <ore:logWood>, null],
	[<ore:logWood>, <cyclicmagic:carbon_paper>, <ore:logWood>],
	[null, <ore:logWood>, null]]);

	#alchemical matter infuser
recipes.addShaped(<modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:alchemical_matter_infuser"}),
	[[null, <deepmoblearning:living_matter_overworldian>, null],
	[<deepmoblearning:living_matter_overworldian>, <cyclicmagic:carbon_paper>, <deepmoblearning:living_matter_overworldian>],
	[null, <deepmoblearning:living_matter_overworldian>, null]]);

	#mana extrapolator
recipes.addShaped(<modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:mana_extrapolator"}),
	[[null, <wizardry:orb:1>, null],
	[<wizardry:orb:1>, <cyclicmagic:carbon_paper>, <wizardry:orb:1>],
	[null, <wizardry:orb:1>, null]]);

	#casing
recipes.remove(<modularmachinery:blockcasing>);
recipes.addShaped(<modularmachinery:blockcasing> * 2, [
	[<ore:plateRedAlloy>, <ore:gearIron>, <ore:plateRedAlloy>],
	[<ore:plateRedAlloy>, <gregtech:machine_casing:10>, <ore:plateRedAlloy>], 
	[<ore:plateRedAlloy>, <ore:plateRedAlloy>, <ore:plateRedAlloy>]]);

	#controller
recipes.remove(<modularmachinery:blockcontroller>);
recipes.addShaped(<modularmachinery:blockcontroller>, [
	[null, <ore:circuitLow>, null],
	[<metaitem:plate.advanced_alloy>, <modularmachinery:blockcasing>, <metaitem:plate.advanced_alloy>], 
	[<ore:plateGold>, <metaitem:plate.advanced_alloy>, <ore:plateGold>]]);

#mana input
recipes.addShaped(<modulardiversity:blockmanainputhatch>,
	[[<ore:screwManasteel>, <ore:plateThaumium>, <ore:screwManasteel>],
	[<astralsorcery:itemcraftingcomponent>, <modularmachinery:blockenergyinputhatch>, <astralsorcery:itemcraftingcomponent>],
	[<ore:screwManasteel>, <ore:plateThaumium>, <ore:screwManasteel>]]);

recipes.addShapeless(<modulardiversity:blockmanainputhatch>, 
	[<modulardiversity:blockmanaoutputhatch>]);
recipes.addShapeless(<modulardiversity:blockmanaoutputhatch>, 
	[<modulardiversity:blockmanainputhatch>]);

	#mek heat input blockcasing
	//#Add
recipes.addShaped(<modulardiversity:blockmekheatinput>,
	[[<ore:plateCupronickel>, <ore:circuitPrimitive>, <ore:plateCupronickel>],
	[<ore:plateCupronickel>, <gregtech:machine:501>, <ore:plateCupronickel>],
	[<ore:plateCupronickel>, <ore:plateCupronickel>, <ore:plateCupronickel>]]);

	#laser Acceptor
recipes.addShaped(<modulardiversity:blockmeklaseracceptor>,
	[[<modularmachinery:blockcasing>, <metaitem:sensor.mv>, <modularmachinery:blockcasing>],
	[<advancedrocketry:concrete>, <botania:lens>, <advancedrocketry:concrete>],
	[<modularmachinery:blockcasing>, <advancedrocketry:concrete>, <modularmachinery:blockcasing>]]);

	#Time Detector
recipes.addShaped(<modulardiversity:blockdaylightdetector>,
	[[<modularmachinery:blockcasing>, <minecraft:glowstone>, <modularmachinery:blockcasing>],
	[<minecraft:comparator>, <minecraft:daylight_detector>, <minecraft:comparator>],
	[<modularmachinery:blockcasing>, <minecraft:glowstone>, <modularmachinery:blockcasing>]]);

	#removing unused fluid hatch variants
mods.jei.JEI.hide(<modularmachinery:blockfluidoutputhatch:6>);
mods.jei.JEI.hide(<modularmachinery:blockfluidinputhatch:4>);
mods.jei.JEI.hide(<modularmachinery:blockfluidinputhatch:3>);
mods.jei.JEI.hide(<modularmachinery:blockfluidinputhatch:1>);
mods.jei.JEI.hide(<modularmachinery:blockfluidinputhatch:6>);
mods.jei.JEI.hide(<modularmachinery:blockfluidoutputhatch:4>);
mods.jei.JEI.hide(<modularmachinery:blockfluidoutputhatch:3>);
mods.jei.JEI.hide(<modularmachinery:blockfluidoutputhatch:1>);


	#Vacuum fluid hatch
	recipes.addShaped(<modularmachinery:blockfluidinputhatch:7>,
	[[<ore:plateOlivine>, cellTungsten, <ore:plateOlivine>],
	[cellTungsten, <modularmachinery:blockfluidinputhatch:5>, cellTungsten],
	[<ore:plateOlivine>, cellTungsten, <ore:plateOlivine>]]);

	#Huge fluid hatch
	recipes.addShaped(<modularmachinery:blockfluidinputhatch:5>,
	[[<ore:plateStainlessSteel>, cellSteel, <ore:plateStainlessSteel>],
	[<ore:plateStainlessSteel>, <modularmachinery:blockfluidinputhatch:2>, <ore:plateStainlessSteel>],
	[<ore:plateStainlessSteel>, <ore:plateStainlessSteel>, <ore:plateStainlessSteel>]]);

	#normal Fluid hatch
	recipes.addShaped(<modularmachinery:blockfluidinputhatch:2>,
	[[<ore:plateSteel>, <thermalexpansion:tank>, <ore:plateSteel>],
	[<ore:plateSteel>, <modularmachinery:blockfluidinputhatch>, <ore:plateSteel>],
	[<ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>]]);

	#convert freely between input and output fluid hatches
	recipes.addShapeless(<modularmachinery:blockfluidoutputhatch:7>, [<modularmachinery:blockfluidinputhatch:7>]);
	recipes.addShapeless(<modularmachinery:blockfluidinputhatch:7>, [<modularmachinery:blockfluidoutputhatch:7>]);
	recipes.addShapeless(<modularmachinery:blockfluidoutputhatch:5>, [<modularmachinery:blockfluidinputhatch:5>]);
	recipes.addShapeless(<modularmachinery:blockfluidinputhatch:5>, [<modularmachinery:blockfluidoutputhatch:5>]);
	recipes.addShapeless(<modularmachinery:blockfluidoutputhatch:2>, [<modularmachinery:blockfluidinputhatch:2>]);
	recipes.addShapeless(<modularmachinery:blockfluidinputhatch:2>, [<modularmachinery:blockfluidoutputhatch:2>]);
	recipes.addShapeless(<modularmachinery:blockfluidoutputhatch>, [<modularmachinery:blockfluidinputhatch>]);
	recipes.addShapeless(<modularmachinery:blockfluidinputhatch>, [<modularmachinery:blockfluidoutputhatch>]);

	#remove unused item bus variants
	mods.jei.JEI.hide(<modularmachinery:blockinputbus:1>);
	mods.jei.JEI.hide(<modularmachinery:blockinputbus:3>);
	mods.jei.JEI.hide(<modularmachinery:blockinputbus:5>);
	mods.jei.JEI.hide(<modularmachinery:blockoutputbus:1>);
	mods.jei.JEI.hide(<modularmachinery:blockoutputbus:3>);
	mods.jei.JEI.hide(<modularmachinery:blockoutputbus:5>);


	#item buses
	recipes.remove(<modularmachinery:blockoutputbus>);
	recipes.addShapeless(<modularmachinery:blockinputbus:6>, [<modularmachinery:blockoutputbus:6>]);
	recipes.addShapeless(<modularmachinery:blockoutputbus:6>, [<modularmachinery:blockinputbus:6>]);
	recipes.addShapeless(<modularmachinery:blockinputbus:4>, [<modularmachinery:blockoutputbus:4>]);
	recipes.addShapeless(<modularmachinery:blockoutputbus:4>, [<modularmachinery:blockinputbus:4>]);
	recipes.addShapeless(<modularmachinery:blockinputbus:2>, [<modularmachinery:blockoutputbus:2>]);
	recipes.addShapeless(<modularmachinery:blockoutputbus:2>, [<modularmachinery:blockinputbus:2>]);
	recipes.addShapeless(<modularmachinery:blockinputbus>, [<modularmachinery:blockoutputbus>]);
	recipes.addShapeless(<modularmachinery:blockoutputbus>, [<modularmachinery:blockinputbus>]);

	recipes.addShaped(<modularmachinery:blockinputbus:6>,
	[[<ore:screwAluminium>, <minecraft:obsidian>, <ore:screwAluminium>],
	[<ore:plateTitanium>, <modularmachinery:blockinputbus:4>, <ore:plateTitanium>],
	[<ore:screwAluminium>, <minecraft:obsidian>, <ore:screwAluminium>]]);

	recipes.addShaped(<modularmachinery:blockinputbus:4>,
	[[<ore:screwSteel>, <minecraft:obsidian>, <ore:screwSteel>],
	[<ore:plateAluminium>, <modularmachinery:blockinputbus:2>, <ore:plateAluminium>],
	[<ore:screwSteel>, <minecraft:obsidian>, <ore:screwSteel>]]);

	recipes.addShaped(<modularmachinery:blockinputbus:2>,
	[[<ore:screwIron>, <minecraft:stone_slab>, <ore:screwIron>],
	[<ore:plateSteel>, <modularmachinery:blockinputbus>, <ore:plateSteel>],
	[<ore:screwIron>, <minecraft:stone_slab>, <ore:screwIron>]]);

	#energy hatches
	mods.jei.JEI.removeAndHide(<modularmachinery:blockenergyoutputhatch:1>);
	mods.jei.JEI.removeAndHide(<modularmachinery:blockenergyinputhatch:1>);

	recipes.remove(<modularmachinery:blockenergyinputhatch>);
	recipes.remove(<modularmachinery:blockenergyoutputhatch>);

	recipes.addShapeless(<modularmachinery:blockenergyinputhatch:7>, [<modularmachinery:blockenergyoutputhatch:7>]);
	recipes.addShapeless(<modularmachinery:blockenergyoutputhatch:7>, [<modularmachinery:blockenergyinputhatch:7>]);
	recipes.addShapeless(<modularmachinery:blockenergyinputhatch:6>, [<modularmachinery:blockenergyoutputhatch:6>]);
	recipes.addShapeless(<modularmachinery:blockenergyoutputhatch:6>, [<modularmachinery:blockenergyinputhatch:6>]);
	recipes.addShapeless(<modularmachinery:blockenergyinputhatch:5>, [<modularmachinery:blockenergyoutputhatch:5>]);
	recipes.addShapeless(<modularmachinery:blockenergyoutputhatch:5>, [<modularmachinery:blockenergyinputhatch:5>]);
	recipes.addShapeless(<modularmachinery:blockenergyinputhatch:4>, [<modularmachinery:blockenergyoutputhatch:4>]);
	recipes.addShapeless(<modularmachinery:blockenergyoutputhatch:4>, [<modularmachinery:blockenergyinputhatch:4>]);
	recipes.addShapeless(<modularmachinery:blockenergyinputhatch:3>, [<modularmachinery:blockenergyoutputhatch:3>]);
	recipes.addShapeless(<modularmachinery:blockenergyoutputhatch:3>, [<modularmachinery:blockenergyinputhatch:3>]);
	recipes.addShapeless(<modularmachinery:blockenergyinputhatch:2>, [<modularmachinery:blockenergyoutputhatch:2>]);
	recipes.addShapeless(<modularmachinery:blockenergyoutputhatch:2>, [<modularmachinery:blockenergyinputhatch:2>]);
	recipes.addShapeless(<modularmachinery:blockenergyinputhatch>, [<modularmachinery:blockenergyoutputhatch>]);
	recipes.addShapeless(<modularmachinery:blockenergyoutputhatch>, [<modularmachinery:blockenergyinputhatch>]);

	recipes.addShaped(<modularmachinery:blockenergyinputhatch:7>,
	[[null, null, null],
	[<ore:cableGtSingleRedAlloy>, <gregtech:machine:774>, <ore:cableGtSingleRedAlloy>],
	[null, null, null]]);

	recipes.addShaped(<modularmachinery:blockenergyinputhatch:6>,
	[[null, null, null],
	[<ore:cableGtSingleRedAlloy>, <gregtech:machine:764>, <ore:cableGtSingleRedAlloy>],
	[null, null, null]]);

	recipes.addShaped(<modularmachinery:blockenergyinputhatch:5>,
	[[null, null, null],
	[<ore:cableGtSingleRedAlloy>, <gregtech:machine:754>, <ore:cableGtSingleRedAlloy>],
	[null, null, null]]);

	recipes.addShaped(<modularmachinery:blockenergyinputhatch:4>,
	[[null, null, null],
	[<ore:cableGtSingleRedAlloy>, <gregtech:machine:744>, <ore:cableGtSingleRedAlloy>],
	[null, null, null]]);

	recipes.addShaped(<modularmachinery:blockenergyinputhatch:3>,
	[[null, null, null],
	[<ore:cableGtSingleRedAlloy>, <gregtech:machine:734>, <ore:cableGtSingleRedAlloy>],
	[null, null, null]]);

	recipes.addShaped(<modularmachinery:blockenergyinputhatch:2>,
	[[null, null, null],
	[<ore:cableGtSingleRedAlloy>, <gregtech:machine:724>, <ore:cableGtSingleRedAlloy>],
	[null, null, null]]);

	recipes.addShaped(<modularmachinery:blockenergyinputhatch>,
	[[null, null, null],
	[<ore:cableGtSingleRedAlloy>, <gregtech:machine:714>, <ore:cableGtSingleRedAlloy>],
	[null, null, null]]);


print("---------------Modular Machinery End-----------------");
