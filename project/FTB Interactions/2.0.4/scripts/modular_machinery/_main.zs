import mods.modularmachinery.RecipeBuilder;
import mods.modularmachinery.RecipePrimer;
import crafttweaker.liquid.ILiquidStack;
import mods.gregtech.recipe.RecipeMap;
import crafttweaker.item.IItemStack;
import crafttweaker.data.IData;
import crafttweaker.recipes.IFurnaceRecipe;

val laser = mods.gregtech.recipe.RecipeMap.getByName("laser_engraver");
val assembler = mods.gregtech.recipe.RecipeMap.getByName("assembler");
val alloyer = mods.gregtech.recipe.RecipeMap.getByName("alloy_smelter");

print("--------------Modular Machinery Start----------------");

var blueprintTags as string[] = [
	"modularmachinery:infernal_deconglomerator",
	"modularmachinery:botanical_fishery",
	"modularmachinery:gem_refiner",
	"modularmachinery:sky_cauldron",
	"modularmachinery:dieselgenerator_luv",
	"modularmachinery:dieselgenerator_zpm",
	"modularmachinery:zero_point_matrix"
];

for i in blueprintTags {
	<modularmachinery:itemblueprint>.withTag({dynamicmachine: i}).addTooltip(format.darkRed("可以在地牢中找到的蓝图。"));
	recipes.addShapeless(<modularmachinery:itemblueprint>.withTag({dynamicmachine: i}) * 2,
		[<modularmachinery:itemblueprint>.withTag({dynamicmachine: i}), <cyclicmagic:carbon_paper>]);
}

val j = 'dynamicmachine: modularmachinery:photonuclear_fission_chamber';
val k = 'dynamicmachine: modularmachinery:sky_cauldron';
val h = 'dynamicmachine: modularmachinery:infernal_deconglomerator';
laser.recipeBuilder()
	.inputs(<cyclicmagic:carbon_paper>)
	.notConsumable(<ore:lensVinteum>)
    .outputs(<modularmachinery:itemblueprint>.withTag({dynamicmachine: j}))
    .duration(400)
    .EUt(480)
    .buildAndRegister();

#vent
recipes.addShaped(<modularmachinery:blockcasing:1>, 
	[[<ore:plateSteel>, <thaumcraft:bellows>, <ore:plateSteel>],
	[<thaumcraft:bellows>, <modularmachinery:blockcasing:2>, <thaumcraft:bellows>], 
	[<ore:plateSteel>, <ore:rotorTin>, <ore:plateSteel>]]);

#Sky cauldron
alloyer.recipeBuilder()
    .inputs(<cyclicmagic:carbon_paper>, <ore:plateStarmetal>)
    .outputs(<modularmachinery:itemblueprint>.withTag({dynamicmachine: k}))
    .duration(400)
    .EUt(480)
    .buildAndRegister();

#deconglomerator
alloyer.recipeBuilder()
    .inputs(<cyclicmagic:carbon_paper>, <ore:dustQuartzBlack>)
    .outputs(<modularmachinery:itemblueprint>.withTag({dynamicmachine: h}))
    .duration(400)
    .EUt(480)
    .buildAndRegister();


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

	#Hellfire Kiln
recipes.addShaped(<modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:hellfire_kiln"}),
	[[null, <wizardry:devil_dust>, null],
	[<wizardry:devil_dust>, <cyclicmagic:carbon_paper>, <wizardry:devil_dust>],
	[null, <wizardry:devil_dust>, null]]);


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


#hellfireKiln stuff

var furnaceItems as IItemStack[IItemStack] = {
<actuallyadditions:item_misc:4>:<actuallyadditions:item_food:15>,
<actuallyadditions:item_misc:21>:<actuallyadditions:item_misc:22>,
<actuallyadditions:item_dust:7>:<actuallyadditions:item_misc:5>,
<advancedrocketry:productdust:1>:<advancedrocketry:productingot:1>,
<advancedrocketry:productdust>:<advancedrocketry:productingot>,
<gregtech:compressed_17:7>:<appliedenergistics2:sky_stone_block>,
<appliedenergistics2:sky_stone_block>:<appliedenergistics2:smooth_sky_stone_block>,
<astralsorcery:itemcraftingcomponent:2>:<astralsorcery:itemcraftingcomponent:1>,
<backportedflora:kelp:*>:<backportedflora:dried_kelp>,
<botania:biomestonea:9>:<botania:biomestonea:1>,
<botania:biomestonea:10>:<botania:biomestonea:2>,
<botania:biomestonea:11>:<botania:biomestonea:3>,
<botania:biomestonea:12>:<botania:biomestonea:4>,
<botania:biomestonea:13>:<botania:biomestonea:5>,
<botania:biomestonea:14>:<botania:biomestonea:6>,
<botania:biomestonea:15>:<botania:biomestonea:7>,
<botania:biomestonea:8>:<botania:biomestonea>,
<ceramics:unfired_clay:7>:<ceramics:channel>,
<ceramics:clay_barrel_unfired:1>:<ceramics:clay_barrel:1>,
<ceramics:clay_barrel_unfired>:<ceramics:clay_barrel>,
<ceramics:unfired_clay>:<ceramics:clay_bucket>,
<minecraft:brick_block:*>:<ceramics:clay_hard:1>,
<ceramics:unfired_clay:1>:<ceramics:clay_shears>,
<minecraft:stone_slab:4>:<ceramics:clay_slab:1>,
<ceramics:clay_wall>:<ceramics:clay_wall:2>,
<minecraft:brick_stairs:*>:<ceramics:dark_bricks_stairs>,
<ceramics:unfired_clay:6>:<ceramics:faucet>,
<ceramics:clay_barrel_unfired:3>:<ceramics:porcelain_barrel_extension>,
<ceramics:clay_barrel_unfired:2>:<ceramics:porcelain_barrel>,
<ceramics:clay_soft>:<ceramics:porcelain>,
<ceramics:unfired_clay:4>:<ceramics:unfired_clay:5>,
<gregtech:compressed_0>:<chisel:blockaluminum:2>,
<contenttweaker:sub_block_holder_3:1>:<contenttweaker:aluminium_ore_cluster> * 2,
<contenttweaker:aluminium_ore_clump>:<contenttweaker:aluminium_ore_cluster> * 16,
<contenttweaker:aluminium_ore_shard>:<contenttweaker:aluminium_ore_cluster> * 4,
<contenttweaker:aluminium_ore_crystal>:<contenttweaker:aluminium_ore_cluster> * 8,
<contenttweaker:sub_block_holder_1:1>:<contenttweaker:ardite_ore_cluster> * 2,
<contenttweaker:ardite_ore_clump>:<contenttweaker:ardite_ore_cluster> * 16,
<contenttweaker:ardite_ore_shard>:<contenttweaker:ardite_ore_cluster> * 4,
<contenttweaker:ardite_ore_crystal>:<contenttweaker:ardite_ore_cluster> * 8,
<contenttweaker:sub_block_holder_5>:<contenttweaker:bauxite_ore_cluster> * 2,
<contenttweaker:bauxite_ore_clump>:<contenttweaker:bauxite_ore_cluster> * 16,
<contenttweaker:bauxite_ore_shard>:<contenttweaker:bauxite_ore_cluster> * 4,
<contenttweaker:bauxite_ore_crystal>:<contenttweaker:bauxite_ore_cluster> * 8,
<contenttweaker:sub_block_holder_3:15>:<contenttweaker:cassiterite_ore_cluster> * 2,
<contenttweaker:sub_block_holder_5:11>:<contenttweaker:chromite_ore_cluster> * 2,
<contenttweaker:chromite_ore_clump>:<contenttweaker:chromite_ore_cluster> * 16,
<contenttweaker:chromite_ore_shard>:<contenttweaker:chromite_ore_cluster> * 4,
<contenttweaker:chromite_ore_crystal>:<contenttweaker:chromite_ore_cluster> * 8,
<contenttweaker:cobalt_ore_clump>:<contenttweaker:cobalt_ore_cluster> * 16,
<contenttweaker:cobalt_ore_shard>:<contenttweaker:cobalt_ore_cluster> * 4,
<contenttweaker:cobalt_ore_crystal>:<contenttweaker:cobalt_ore_cluster> * 8,
<contenttweaker:sub_block_holder_3:13>:<contenttweaker:cobaltite_ore_cluster> * 2,
<contenttweaker:sub_block_holder_3:12>:<contenttweaker:copper_ore_cluster> * 2,
<contenttweaker:copper_ore_clump>:<contenttweaker:copper_ore_cluster> * 16,
<contenttweaker:copper_ore_shard>:<contenttweaker:copper_ore_cluster> * 4,
<contenttweaker:copper_ore_crystal>:<contenttweaker:copper_ore_cluster> * 8,
<contenttweaker:sub_block_holder_2:9>:<contenttweaker:diamond_ore_cluster> * 2,
<contenttweaker:diamond_ore_clump>:<contenttweaker:diamond_ore_cluster> * 16,
<contenttweaker:diamond_ore_shard>:<contenttweaker:diamond_ore_cluster> * 4,
<contenttweaker:diamond_ore_crystal>:<contenttweaker:diamond_ore_cluster> * 8,
<contenttweaker:sub_block_holder_3:3>:<contenttweaker:emerald_ore_cluster> * 2,
<contenttweaker:emerald_ore_clump>:<contenttweaker:emerald_ore_cluster> * 16,
<contenttweaker:emerald_ore_shard>:<contenttweaker:emerald_ore_cluster> * 4,
<contenttweaker:emerald_ore_crystal>:<contenttweaker:emerald_ore_cluster> * 8,
<contenttweaker:sub_block_holder_4:5>:<contenttweaker:gold_ore_cluster> * 2,
<contenttweaker:gold_ore_clump>:<contenttweaker:gold_ore_cluster> * 16,
<contenttweaker:gold_ore_shard>:<contenttweaker:gold_ore_cluster> * 4,
<contenttweaker:gold_ore_crystal>:<contenttweaker:gold_ore_cluster> * 8,
<contenttweaker:sub_block_holder_1:5>:<contenttweaker:graphite_ore_cluster> * 2,
<contenttweaker:graphite_ore_clump>:<contenttweaker:graphite_ore_cluster> * 16,
<contenttweaker:graphite_ore_shard>:<contenttweaker:graphite_ore_cluster> * 4,
<contenttweaker:graphite_ore_crystal>:<contenttweaker:graphite_ore_cluster> * 8,
<contenttweaker:sub_block_holder_5:3>:<contenttweaker:ilmenite_ore_cluster> * 2,
<contenttweaker:ilmenite_ore_clump>:<contenttweaker:ilmenite_ore_cluster> * 16,
<contenttweaker:ilmenite_ore_shard>:<contenttweaker:ilmenite_ore_cluster> * 4,
<contenttweaker:ilmenite_ore_crystal>:<contenttweaker:ilmenite_ore_cluster> * 8,
<contenttweaker:sub_block_holder_0:4>:<contenttweaker:iridium_ore_cluster> * 2,
<contenttweaker:iridium_ore_clump>:<contenttweaker:iridium_ore_cluster> * 16,
<contenttweaker:iridium_ore_shard>:<contenttweaker:iridium_ore_cluster> * 4,
<contenttweaker:iridium_ore_crystal>:<contenttweaker:iridium_ore_cluster> * 8,
<contenttweaker:sub_block_holder_2:7>:<contenttweaker:iron_ore_cluster> * 2,
<contenttweaker:iron_ore_clump>:<contenttweaker:iron_ore_cluster> * 16,
<contenttweaker:iron_ore_shard>:<contenttweaker:iron_ore_cluster> * 4,
<contenttweaker:iron_ore_crystal>:<contenttweaker:iron_ore_cluster> * 8,
<contenttweaker:sub_block_holder_2:1>:<contenttweaker:lapis_ore_cluster> * 2,
<contenttweaker:lapis_ore_clump>:<contenttweaker:lapis_ore_cluster> * 16,
<contenttweaker:lapis_ore_shard>:<contenttweaker:lapis_ore_cluster> * 4,
<contenttweaker:lapis_ore_crystal>:<contenttweaker:lapis_ore_cluster> * 8,
<contenttweaker:sub_block_holder_1:13>:<contenttweaker:lead_ore_cluster> * 2,
<contenttweaker:lead_ore_clump>:<contenttweaker:lead_ore_cluster> * 16,
<contenttweaker:lead_ore_shard>:<contenttweaker:lead_ore_cluster> * 4,
<contenttweaker:lead_ore_crystal>:<contenttweaker:lead_ore_cluster> * 8,
<contenttweaker:sub_block_holder_1:8>:<contenttweaker:lepidolite_ore_cluster> * 2,
<contenttweaker:lepidolite_ore_clump>:<contenttweaker:lepidolite_ore_cluster> * 16,
<contenttweaker:lepidolite_ore_shard>:<contenttweaker:lepidolite_ore_cluster> * 4,
<contenttweaker:lepidolite_ore_crystal>:<contenttweaker:lepidolite_ore_cluster> * 8,
<contenttweaker:sub_block_holder_4:6>:<contenttweaker:magnesite_ore_cluster> * 2,
<contenttweaker:magnesite_ore_shard>:<contenttweaker:magnesite_ore_cluster> * 4,
<contenttweaker:nickel_ore_clump>:<contenttweaker:nickel_ore_cluster> * 16,
<contenttweaker:nickel_ore_shard>:<contenttweaker:nickel_ore_cluster> * 4,
<contenttweaker:nickel_ore_crystal>:<contenttweaker:nickel_ore_cluster> * 8,
<contenttweaker:niobium_ore_shard>:<contenttweaker:niobium_ore_cluster> * 4,
<contenttweaker:sub_block_holder_5:10>:<contenttweaker:platinum_ore_cluster> * 2,
<contenttweaker:platinum_ore_clump>:<contenttweaker:platinum_ore_cluster> * 16,
<contenttweaker:platinum_ore_shard>:<contenttweaker:platinum_ore_cluster> * 4,
<contenttweaker:platinum_ore_crystal>:<contenttweaker:platinum_ore_cluster> * 8,
<contenttweaker:sub_block_holder_0:7>:<contenttweaker:pyrolusite_ore_cluster> * 2,
<contenttweaker:pyrolusite_ore_clump>:<contenttweaker:pyrolusite_ore_cluster> * 16,
<contenttweaker:pyrolusite_ore_shard>:<contenttweaker:pyrolusite_ore_cluster> * 4,
<contenttweaker:pyrolusite_ore_crystal>:<contenttweaker:pyrolusite_ore_cluster> * 8,
<contenttweaker:sub_block_holder_4:1>:<contenttweaker:redstone_ore_cluster> * 2,
<contenttweaker:redstone_ore_clump>:<contenttweaker:redstone_ore_cluster> * 16,
<contenttweaker:redstone_ore_shard>:<contenttweaker:redstone_ore_cluster> * 4,
<contenttweaker:redstone_ore_crystal>:<contenttweaker:redstone_ore_cluster> * 8,
<thermalfoundation:material:893>:<contenttweaker:redstone_ore_cluster> * 8,
<contenttweaker:sub_block_holder_6>:<contenttweaker:ruby_ore_cluster> * 2,
<contenttweaker:ruby_ore_clump>:<contenttweaker:ruby_ore_cluster> * 16,
<contenttweaker:ruby_ore_shard>:<contenttweaker:ruby_ore_cluster> * 4,
<contenttweaker:ruby_ore_crystal>:<contenttweaker:ruby_ore_cluster> * 8,
<contenttweaker:sub_block_holder_1:7>:<contenttweaker:rutile_ore_cluster> * 2,
<contenttweaker:rutile_ore_clump>:<contenttweaker:rutile_ore_cluster> * 16,
<contenttweaker:rutile_ore_shard>:<contenttweaker:rutile_ore_cluster> * 4,
<contenttweaker:rutile_ore_crystal>:<contenttweaker:rutile_ore_cluster> * 8,
<contenttweaker:sub_block_holder_0:12>:<contenttweaker:sapphire_ore_cluster> * 2,
<contenttweaker:sapphire_ore_clump>:<contenttweaker:sapphire_ore_cluster> * 16,
<contenttweaker:sapphire_ore_shard>:<contenttweaker:sapphire_ore_cluster> * 4,
<contenttweaker:sapphire_ore_crystal>:<contenttweaker:sapphire_ore_cluster> * 8,
<contenttweaker:sub_block_holder_1:10>:<contenttweaker:silver_ore_cluster> * 2,
<contenttweaker:silver_ore_clump>:<contenttweaker:silver_ore_cluster> * 16,
<contenttweaker:silver_ore_shard>:<contenttweaker:silver_ore_cluster> * 4,
<contenttweaker:silver_ore_crystal>:<contenttweaker:silver_ore_cluster> * 8,
<contenttweaker:sphalerite_ore_clump>:<contenttweaker:sphalerite_ore_cluster> * 16,
<contenttweaker:sphalerite_ore_crystal>:<contenttweaker:sphalerite_ore_cluster> * 8,
<contenttweaker:sub_block_holder_4:8>:<contenttweaker:stibnite_ore_cluster> * 2,
<contenttweaker:stibnite_ore_clump>:<contenttweaker:stibnite_ore_cluster> * 16,
<contenttweaker:stibnite_ore_shard>:<contenttweaker:stibnite_ore_cluster> * 4,
<contenttweaker:stibnite_ore_crystal>:<contenttweaker:stibnite_ore_cluster> * 8,
<contenttweaker:sub_block_holder_5:6>:<contenttweaker:tantalite_ore_cluster> * 2,
<contenttweaker:tantalite_ore_clump>:<contenttweaker:tantalite_ore_cluster> * 16,
<contenttweaker:tantalite_ore_shard>:<contenttweaker:tantalite_ore_cluster> * 4,
<contenttweaker:tantalite_ore_crystal>:<contenttweaker:tantalite_ore_cluster> * 8,
<contenttweaker:tin_ore_clump>:<contenttweaker:tin_ore_cluster> * 16,
<contenttweaker:tin_ore_shard>:<contenttweaker:tin_ore_cluster> * 4,
<contenttweaker:tin_ore_crystal>:<contenttweaker:tin_ore_cluster> * 8,
<contenttweaker:sub_block_holder_4:15>:<contenttweaker:tungstate_ore_cluster> * 2,
<contenttweaker:tungsten_ore_clump>:<contenttweaker:tungsten_ore_cluster> * 16,
<contenttweaker:tungsten_ore_shard>:<contenttweaker:tungsten_ore_cluster> * 4,
<contenttweaker:tungsten_ore_crystal>:<contenttweaker:tungsten_ore_cluster> * 8,
<contenttweaker:sub_block_holder_5:9>:<contenttweaker:uraninite_ore_cluster> * 2,
<contenttweaker:uraninite_ore_clump>:<contenttweaker:uraninite_ore_cluster> * 16,
<contenttweaker:uraninite_ore_shard>:<contenttweaker:uraninite_ore_cluster> * 4,
<contenttweaker:uraninite_ore_crystal>:<contenttweaker:uraninite_ore_cluster> * 8,
<contenttweaker:sub_block_holder_2:15>:<contenttweaker:uranium_ore_cluster> * 2,
<contenttweaker:uranium_ore_clump>:<contenttweaker:uranium_ore_cluster> * 16,
<contenttweaker:uranium_ore_shard>:<contenttweaker:uranium_ore_cluster> * 4,
<contenttweaker:uranium_ore_crystal>:<contenttweaker:uranium_ore_cluster> * 8,
<contenttweaker:sub_block_holder_2:14>:<contenttweaker:uranium235_ore_cluster> * 2,
<contenttweaker:uranium235_ore_clump>:<contenttweaker:uranium235_ore_cluster> * 16,
<contenttweaker:uranium235_ore_shard>:<contenttweaker:uranium235_ore_cluster> * 4,
<contenttweaker:uranium235_ore_crystal>:<contenttweaker:uranium235_ore_cluster> * 8,
<contenttweaker:sub_block_holder_3>:<contenttweaker:vanadium_magnetite_ore_cluster> * 2,
<contenttweaker:vanadium_magnetite_ore_clump>:<contenttweaker:vanadium_magnetite_ore_cluster> * 16,
<contenttweaker:vanadium_magnetite_ore_shard>:<contenttweaker:vanadium_magnetite_ore_cluster> * 4,
<contenttweaker:vanadium_magnetite_ore_crystal>:<contenttweaker:vanadium_magnetite_ore_cluster> * 8,
<contenttweaker:sub_block_holder_1:15>:<contenttweaker:vinteum_ore_cluster> * 2,
<contenttweaker:vinteum_ore_clump>:<contenttweaker:vinteum_ore_cluster> * 16,
<contenttweaker:vinteum_ore_shard>:<contenttweaker:vinteum_ore_cluster> * 4,
<contenttweaker:vinteum_ore_crystal>:<contenttweaker:vinteum_ore_cluster> * 8,
<gregtech:meta_item_1:2803>:<enderio:item_alloy_endergy_ingot:3>,
<enderio:item_material:22>:<enderio:item_material:4> * 2,
<extrautils2:decorativesolid:4>:<extrautils2:decorativeglass>,
<advancedrocketry:vitrifiedsand>:<extrautils2:decorativesolid:4>,
<chisel:blockaluminum:2>:<gregtech:compressed_0>,
<gregtech:concrete:6>:<gregtech:concrete:2>,
<gregtech:concrete:1>:<gregtech:concrete:5>,
<gregtech:concrete:3>:<gregtech:concrete:7>,
<gregtech:concrete:4>:<gregtech:concrete>,
<gregtech:granite:5>:<gregtech:granite:1>,
<gregtech:granite:2>:<gregtech:granite:6>,
<gregtech:granite:3>:<gregtech:granite:7>,
<gregtech:granite:4>:<gregtech:granite>,
<gregtech:meta_item_1:2002>:<gregtech:meta_item_1:10002>,
<gregtech:meta_item_1:2003>:<gregtech:meta_item_1:10003>,
<gregtech:meta_item_1:2006>:<gregtech:meta_item_1:10006>,
<gregtech:meta_item_1:3007>:<gregtech:meta_item_1:10007>,
<gregtech:meta_item_1:4007>:<gregtech:meta_item_1:10007>,
<gregtech:meta_item_1:2007>:<gregtech:meta_item_1:10007>,
<gregtech:meta_item_1:2008>:<gregtech:meta_item_1:10008>,
<gregtech:meta_item_1:3008>:<gregtech:meta_item_1:10008>,
<gregtech:meta_item_1:4008>:<gregtech:meta_item_1:10008>,
<gregtech:meta_item_1:2010>:<gregtech:meta_item_1:10010>,
<gregtech:meta_item_1:2011>:<gregtech:meta_item_1:10011>,
<gregtech:meta_item_1:2012>:<gregtech:meta_item_1:10012>,
<gregtech:meta_item_1:2013>:<gregtech:meta_item_1:10013>,
<gregtech:meta_item_1:2018>:<gregtech:meta_item_1:10018>,
<gregtech:meta_item_1:3018>:<gregtech:meta_item_1:10018>,
<gregtech:meta_item_1:4018>:<gregtech:meta_item_1:10018>,
<thaumcraft:cluster:2>:<gregtech:meta_item_1:10018> * 2,
<gregtech:meta_item_1:2025>:<gregtech:meta_item_1:10025>,
<gregtech:meta_item_1:2031>:<gregtech:meta_item_1:10031>,
<gregtech:meta_item_1:2035>:<gregtech:meta_item_1:10035>,
<mekanism:dust:6>:<gregtech:meta_item_1:10035>,
<gregtech:meta_item_1:4035>:<gregtech:meta_item_1:10035>,
<gregtech:meta_item_1:3035>:<gregtech:meta_item_1:10035>,
<thaumcraft:cluster:5>:<gregtech:meta_item_1:10035> * 2,
<gregtech:meta_item_1:2036>:<gregtech:meta_item_1:10036>,
<gregtech:meta_item_1:4036>:<gregtech:meta_item_1:10036>,
<gregtech:meta_item_1:3036>:<gregtech:meta_item_1:10036>,
<mekanism:otherdust:4>:<gregtech:meta_item_1:10036>,
<gregtech:meta_item_1:2038>:<gregtech:meta_item_1:10038>,
<gregtech:meta_item_1:2039>:<gregtech:meta_item_1:10039>,
<gregtech:ore_molybdenite_0:7>:<gregtech:meta_item_1:10041>,
<gregtech:ore_molybdenite_0:12>:<gregtech:meta_item_1:10041>,
<gregtech:ore_molybdenite_0:6>:<gregtech:meta_item_1:10041>,
<gregtech:ore_molybdenite_0:5>:<gregtech:meta_item_1:10041>,
<gregtech:ore_molybdenite_0:9>:<gregtech:meta_item_1:10041>,
<gregtech:ore_molybdenite_0:13>:<gregtech:meta_item_1:10041>,
<gregtech:ore_molybdenite_0:8>:<gregtech:meta_item_1:10041>,
<gregtech:meta_item_1:4041>:<gregtech:meta_item_1:10041>,
<gregtech:meta_item_1:2041>:<gregtech:meta_item_1:10041>,
<gregtech:ore_molybdenite_0:3>:<gregtech:meta_item_1:10041>,
<gregtech:ore_molybdenite_0:2>:<gregtech:meta_item_1:10041>,
<gregtech:ore_molybdenite_0:4>:<gregtech:meta_item_1:10041>,
<gregtech:meta_item_1:3041>:<gregtech:meta_item_1:10041>,
<gregtech:ore_molybdenite_0:1>:<gregtech:meta_item_1:10041>,
<gregtech:ore_molybdenite_0>:<gregtech:meta_item_1:10041>,
<gregtech:ore_molybdenite_0:10>:<gregtech:meta_item_1:10041>,
<gregtech:ore_molybdenite_0:11>:<gregtech:meta_item_1:10041>,
<gregtech:meta_item_1:2043>:<gregtech:meta_item_1:10043>,
<gregtech:meta_item_1:3044>:<gregtech:meta_item_1:10044>,
<gregtech:meta_item_1:4044>:<gregtech:meta_item_1:10044>,
<gregtech:meta_item_1:2044>:<gregtech:meta_item_1:10044>,
<gregtech:meta_item_1:4051>:<gregtech:meta_item_1:10051>,
<gregtech:meta_item_1:3051>:<gregtech:meta_item_1:10051>,
<gregtech:meta_item_1:2051>:<gregtech:meta_item_1:10051>,
<gregtech:meta_item_1:2052>:<gregtech:meta_item_1:10052>,
<gregtech:meta_item_1:2053>:<gregtech:meta_item_1:10053>,
<gregtech:meta_item_1:2054>:<gregtech:meta_item_1:10054>,
<gregtech:meta_item_1:2058>:<gregtech:meta_item_1:10058>,
<mekanism:dust:5>:<gregtech:meta_item_1:10062>,
<gregtech:meta_item_1:4062>:<gregtech:meta_item_1:10062>,
<gregtech:meta_item_1:2062>:<gregtech:meta_item_1:10062>,
<gregtech:meta_item_1:3062>:<gregtech:meta_item_1:10062>,
<thaumcraft:cluster:4>:<gregtech:meta_item_1:10062> * 2,
<gregtech:meta_item_1:2063>:<gregtech:meta_item_1:10063>,
<gregtech:meta_item_1:2064>:<gregtech:meta_item_1:10064>,
<gregtech:meta_item_1:2066>:<gregtech:meta_item_1:10066>,
<gregtech:meta_item_1:2067>:<gregtech:meta_item_1:10067>,
<gregtech:meta_item_1:4069>:<gregtech:meta_item_1:10069>,
<gregtech:meta_item_1:3069>:<gregtech:meta_item_1:10069>,
<gregtech:meta_item_1:2069>:<gregtech:meta_item_1:10069>,
<gregtech:meta_item_1:4071>:<gregtech:meta_item_1:10071>,
<gregtech:meta_item_1:3071>:<gregtech:meta_item_1:10071>,
<libvulpes:productdust:5>:<gregtech:meta_item_1:10071>,
<libvulpes:ore0:5>:<gregtech:meta_item_1:10071>,
<gregtech:meta_item_1:2071>:<gregtech:meta_item_1:10071>,
<thaumcraft:cluster:3>:<gregtech:meta_item_1:10071> * 2,
<gregtech:meta_item_1:3075>:<gregtech:meta_item_1:10075>,
<gregtech:meta_item_1:4075>:<gregtech:meta_item_1:10075>,
<gregtech:meta_item_1:2075>:<gregtech:meta_item_1:10075>,
<gregtech:meta_item_1:4076>:<gregtech:meta_item_1:10076>,
<gregtech:meta_item_1:3076>:<gregtech:meta_item_1:10076>,
<gregtech:meta_item_1:2076>:<gregtech:meta_item_1:10076>,
<gregtech:meta_item_1:3079>:<gregtech:meta_item_1:10079>,
<gregtech:meta_item_1:2079>:<gregtech:meta_item_1:10079>,
<gregtech:meta_item_1:4079>:<gregtech:meta_item_1:10079>,
<gregtech:meta_item_1:2087>:<gregtech:meta_item_1:10087>,
<gregtech:meta_item_1:2091>:<gregtech:meta_item_1:10091>,
<gregtech:meta_item_1:2094>:<gregtech:meta_item_1:10094>,
<gregtech:meta_item_1:2095>:<gregtech:meta_item_1:10095>,
<gregtech:meta_item_1:2109>:<gregtech:meta_item_1:10109>,
<gregtech:meta_item_1:2112>:<gregtech:meta_item_1:10112>,
<gregtech:meta_item_1:2126>:<gregtech:meta_item_1:10126>,
<gregtech:meta_item_1:2129>:<gregtech:meta_item_1:10129>,
<gregtech:meta_item_1:2140>:<gregtech:meta_item_1:10140>,
<gregtech:meta_item_1:2141>:<gregtech:meta_item_1:10141>,
<gregtech:meta_item_1:2142>:<gregtech:meta_item_1:10142>,
<gregtech:meta_item_1:2144>:<gregtech:meta_item_1:10144>,
<gregtech:meta_item_1:2145>:<gregtech:meta_item_1:10145>,
<gregtech:meta_item_1:2152>:<gregtech:meta_item_1:10152>,
<gregtech:meta_item_1:2180>:<gregtech:meta_item_1:10180>,
<gregtech:meta_item_1:2189>:<gregtech:meta_item_1:10189>,
<gregtech:meta_item_1:2204>:<gregtech:meta_item_1:10204>,
<gregtech:meta_item_1:4204>:<gregtech:meta_item_1:10204>,
<gregtech:meta_item_1:3204>:<gregtech:meta_item_1:10204>,
<gregtech:meta_item_1:2205>:<gregtech:meta_item_1:10205>,
<gregtech:meta_item_1:2237>:<gregtech:meta_item_1:10237>,
<gregtech:meta_item_1:2238>:<gregtech:meta_item_1:10238>,
<gregtech:meta_item_1:2297>:<gregtech:meta_item_1:10297>,
<gregtech:meta_item_1:2311>:<gregtech:meta_item_1:10311>,
<gregtech:meta_item_1:2312>:<gregtech:meta_item_1:10312>,
<gregtech:meta_item_1:2364>:<gregtech:meta_item_1:10364>,
<gregtech:meta_item_1:2391>:<gregtech:meta_item_1:10391>,
<gregtech:meta_item_1:2395>:<gregtech:meta_item_1:10395>,
<gregtech:meta_item_1:2398>:<gregtech:meta_item_1:10398>,
<gregtech:meta_item_1:2411>:<gregtech:meta_item_1:10411>,
<gregtech:meta_item_1:2421>:<gregtech:meta_item_1:10421>,
<gregtech:meta_item_1:2470>:<gregtech:meta_item_1:10470>,
<gregtech:meta_item_1:2811>:<gregtech:meta_item_1:10811>,
<gregtech:meta_item_1:2815>:<gregtech:meta_item_1:10815>,
<gregtech:meta_item_1:2828>:<gregtech:meta_item_1:10828>,
<gregtech:meta_item_1:2965>:<gregtech:meta_item_1:10965>,
<gregtech:meta_item_1:2972>:<gregtech:meta_item_1:10972>,
<gregtech:meta_item_1:12297>:<gregtech:meta_item_1:12033>,
<gregtech:meta_item_1:12299>:<gregtech:meta_item_1:12042>,
<gregtech:meta_item_1:12298>:<gregtech:meta_item_1:12184>,
<gregtech:meta_item_1:14297>:<gregtech:meta_item_1:14033>,
<gregtech:meta_item_1:14299>:<gregtech:meta_item_1:14042>,
<gregtech:meta_item_1:14298>:<gregtech:meta_item_1:14184>,
<gregtech:meta_item_1:16297>:<gregtech:meta_item_1:16033>,
<gregtech:meta_item_1:16298>:<gregtech:meta_item_1:16184>,
<gregtech:meta_item_1:17297>:<gregtech:meta_item_1:17033>,
<gregtech:meta_item_1:17298>:<gregtech:meta_item_1:17184>,
<gregtech:meta_item_1:18298>:<gregtech:meta_item_1:18184>,
<gregtech:meta_item_1:19297>:<gregtech:meta_item_1:19033>,
<gregtech:meta_item_1:19298>:<gregtech:meta_item_1:19184>,
<gregtech:meta_item_1:2299>:<gregtech:meta_item_1:2042>,
<harvestcraft:beeswaxitem>:<gregtech:meta_item_1:2089>,
<gregtech:ore_calcite_0:5>:<gregtech:meta_item_1:2097>,
<gregtech:ore_calcite_0:4>:<gregtech:meta_item_1:2097>,
<gregtech:ore_calcite_0:10>:<gregtech:meta_item_1:2097>,
<gregtech:ore_calcite_0>:<gregtech:meta_item_1:2097>,
<gregtech:ore_calcite_0:12>:<gregtech:meta_item_1:2097>,
<gregtech:ore_calcite_0:9>:<gregtech:meta_item_1:2097>,
<gregtech:ore_calcite_0:13>:<gregtech:meta_item_1:2097>,
<gregtech:ore_calcite_0:3>:<gregtech:meta_item_1:2097>,
<gregtech:ore_calcite_0:11>:<gregtech:meta_item_1:2097>,
<gregtech:ore_calcite_0:6>:<gregtech:meta_item_1:2097>,
<gregtech:ore_calcite_0:2>:<gregtech:meta_item_1:2097>,
<gregtech:ore_calcite_0:8>:<gregtech:meta_item_1:2097>,
<gregtech:ore_calcite_0:1>:<gregtech:meta_item_1:2097>,
<gregtech:ore_calcite_0:7>:<gregtech:meta_item_1:2097>,
<gregtech:ore_bauxite_0:13>:<gregtech:meta_item_1:2123> * 3,
<gregtech:ore_bauxite_0:10>:<gregtech:meta_item_1:2123> * 3,
<gregtech:ore_bauxite_0:8>:<gregtech:meta_item_1:2123> * 3,
<gregtech:ore_bauxite_0:12>:<gregtech:meta_item_1:2123> * 3,
<gregtech:ore_bauxite_0:11>:<gregtech:meta_item_1:2123> * 3,
<gregtech:ore_bauxite_0>:<gregtech:meta_item_1:2123> * 3,
<gregtech:ore_bauxite_0:9>:<gregtech:meta_item_1:2123> * 3,
<gregtech:ore_bauxite_0:1>:<gregtech:meta_item_1:2123> * 3,
<gregtech:ore_bauxite_0:5>:<gregtech:meta_item_1:2123> * 3,
<gregtech:ore_bauxite_0:2>:<gregtech:meta_item_1:2123> * 3,
<gregtech:ore_bauxite_0:4>:<gregtech:meta_item_1:2123> * 3,
<gregtech:ore_bauxite_0:7>:<gregtech:meta_item_1:2123> * 3,
<gregtech:ore_bauxite_0:3>:<gregtech:meta_item_1:2123> * 3,
<gregtech:ore_bauxite_0:6>:<gregtech:meta_item_1:2123> * 3,
<gregtech:ore_phosphate_0:5>:<gregtech:meta_item_1:2139>,
<gregtech:ore_phosphate_0>:<gregtech:meta_item_1:2139>,
<gregtech:ore_phosphate_0:6>:<gregtech:meta_item_1:2139>,
<gregtech:ore_phosphate_0:10>:<gregtech:meta_item_1:2139>,
<gregtech:ore_phosphate_0:11>:<gregtech:meta_item_1:2139>,
<gregtech:ore_phosphate_0:9>:<gregtech:meta_item_1:2139>,
<gregtech:ore_phosphate_0:1>:<gregtech:meta_item_1:2139>,
<gregtech:ore_phosphate_0:3>:<gregtech:meta_item_1:2139>,
<gregtech:ore_phosphate_0:12>:<gregtech:meta_item_1:2139>,
<gregtech:ore_phosphate_0:7>:<gregtech:meta_item_1:2139>,
<gregtech:ore_phosphate_0:4>:<gregtech:meta_item_1:2139>,
<gregtech:ore_phosphate_0:2>:<gregtech:meta_item_1:2139>,
<gregtech:ore_phosphate_0:8>:<gregtech:meta_item_1:2139>,
<gregtech:ore_phosphate_0:13>:<gregtech:meta_item_1:2139>,
<gregtech:ore_powellite_0:10>:<gregtech:meta_item_1:2146>,
<gregtech:ore_powellite_0:2>:<gregtech:meta_item_1:2146>,
<gregtech:ore_powellite_0>:<gregtech:meta_item_1:2146>,
<gregtech:ore_powellite_0:1>:<gregtech:meta_item_1:2146>,
<gregtech:ore_powellite_0:12>:<gregtech:meta_item_1:2146>,
<gregtech:ore_powellite_0:13>:<gregtech:meta_item_1:2146>,
<gregtech:ore_powellite_0:5>:<gregtech:meta_item_1:2146>,
<gregtech:ore_powellite_0:9>:<gregtech:meta_item_1:2146>,
<gregtech:ore_powellite_0:6>:<gregtech:meta_item_1:2146>,
<gregtech:ore_powellite_0:4>:<gregtech:meta_item_1:2146>,
<gregtech:ore_powellite_0:8>:<gregtech:meta_item_1:2146>,
<gregtech:ore_powellite_0:3>:<gregtech:meta_item_1:2146>,
<gregtech:ore_powellite_0:7>:<gregtech:meta_item_1:2146>,
<gregtech:ore_powellite_0:11>:<gregtech:meta_item_1:2146>,
<gregtech:ore_pyrope_0:4>:<gregtech:meta_item_1:2150> * 4,
<gregtech:ore_pyrope_0>:<gregtech:meta_item_1:2150> * 4,
<gregtech:ore_pyrope_0:10>:<gregtech:meta_item_1:2150> * 4,
<gregtech:ore_pyrope_0:3>:<gregtech:meta_item_1:2150> * 4,
<gregtech:ore_pyrope_0:9>:<gregtech:meta_item_1:2150> * 4,
<gregtech:ore_pyrope_0:12>:<gregtech:meta_item_1:2150> * 4,
<gregtech:ore_pyrope_0:13>:<gregtech:meta_item_1:2150> * 4,
<gregtech:ore_pyrope_0:1>:<gregtech:meta_item_1:2150> * 4,
<gregtech:ore_pyrope_0:5>:<gregtech:meta_item_1:2150> * 4,
<gregtech:ore_pyrope_0:7>:<gregtech:meta_item_1:2150> * 4,
<gregtech:ore_pyrope_0:8>:<gregtech:meta_item_1:2150> * 4,
<gregtech:ore_pyrope_0:2>:<gregtech:meta_item_1:2150> * 4,
<gregtech:ore_pyrope_0:6>:<gregtech:meta_item_1:2150> * 4,
<gregtech:ore_pyrope_0:11>:<gregtech:meta_item_1:2150> * 4,
<gregtech:ore_rock_salt_0:12>:<gregtech:meta_item_1:2151> * 3,
<gregtech:ore_rock_salt_0:1>:<gregtech:meta_item_1:2151> * 3,
<gregtech:ore_rock_salt_0:6>:<gregtech:meta_item_1:2151> * 3,
<gregtech:ore_rock_salt_0:7>:<gregtech:meta_item_1:2151> * 3,
<gregtech:ore_rock_salt_0:8>:<gregtech:meta_item_1:2151> * 3,
<gregtech:ore_rock_salt_0:9>:<gregtech:meta_item_1:2151> * 3,
<gregtech:ore_rock_salt_0:10>:<gregtech:meta_item_1:2151> * 3,
<gregtech:ore_rock_salt_0:2>:<gregtech:meta_item_1:2151> * 3,
<gregtech:ore_rock_salt_0:4>:<gregtech:meta_item_1:2151> * 3,
<gregtech:ore_rock_salt_0:11>:<gregtech:meta_item_1:2151> * 3,
<gregtech:ore_rock_salt_0:13>:<gregtech:meta_item_1:2151> * 3,
<gregtech:ore_rock_salt_0>:<gregtech:meta_item_1:2151> * 3,
<gregtech:ore_rock_salt_0:5>:<gregtech:meta_item_1:2151> * 3,
<gregtech:ore_rock_salt_0:3>:<gregtech:meta_item_1:2151> * 3,
<gregtech:ore_salt_0>:<gregtech:meta_item_1:2155> * 3,
<gregtech:ore_salt_0:9>:<gregtech:meta_item_1:2155> * 3,
<gregtech:ore_salt_0:3>:<gregtech:meta_item_1:2155> * 3,
<gregtech:ore_salt_0:13>:<gregtech:meta_item_1:2155> * 3,
<gregtech:ore_salt_0:6>:<gregtech:meta_item_1:2155> * 3,
<gregtech:ore_salt_0:11>:<gregtech:meta_item_1:2155> * 3,
<gregtech:ore_salt_0:8>:<gregtech:meta_item_1:2155> * 3,
<gregtech:ore_salt_0:4>:<gregtech:meta_item_1:2155> * 3,
<gregtech:ore_salt_0:7>:<gregtech:meta_item_1:2155> * 3,
<gregtech:ore_salt_0:1>:<gregtech:meta_item_1:2155> * 3,
<gregtech:ore_salt_0:2>:<gregtech:meta_item_1:2155> * 3,
<gregtech:ore_salt_0:12>:<gregtech:meta_item_1:2155> * 3,
<gregtech:ore_salt_0:10>:<gregtech:meta_item_1:2155> * 3,
<gregtech:ore_salt_0:5>:<gregtech:meta_item_1:2155> * 3,
<gregtech:ore_saltpeter_0:1>:<gregtech:meta_item_1:2156> * 4,
<gregtech:ore_saltpeter_0:13>:<gregtech:meta_item_1:2156> * 4,
<gregtech:ore_saltpeter_0:11>:<gregtech:meta_item_1:2156> * 4,
<gregtech:ore_saltpeter_0:3>:<gregtech:meta_item_1:2156> * 4,
<gregtech:ore_saltpeter_0:4>:<gregtech:meta_item_1:2156> * 4,
<gregtech:ore_saltpeter_0:8>:<gregtech:meta_item_1:2156> * 4,
<gregtech:ore_saltpeter_0:5>:<gregtech:meta_item_1:2156> * 4,
<gregtech:ore_saltpeter_0:7>:<gregtech:meta_item_1:2156> * 4,
<gregtech:ore_saltpeter_0>:<gregtech:meta_item_1:2156> * 4,
<gregtech:ore_saltpeter_0:9>:<gregtech:meta_item_1:2156> * 4,
<gregtech:ore_saltpeter_0:6>:<gregtech:meta_item_1:2156> * 4,
<gregtech:ore_saltpeter_0:10>:<gregtech:meta_item_1:2156> * 4,
<gregtech:ore_saltpeter_0:2>:<gregtech:meta_item_1:2156> * 4,
<gregtech:ore_saltpeter_0:12>:<gregtech:meta_item_1:2156> * 4,
<gregtech:meta_item_1:2298>:<gregtech:meta_item_1:2184>,
<gregtech:ore_wulfenite_0:10>:<gregtech:meta_item_1:2198>,
<gregtech:ore_wulfenite_0:5>:<gregtech:meta_item_1:2198>,
<gregtech:ore_wulfenite_0:1>:<gregtech:meta_item_1:2198>,
<gregtech:ore_wulfenite_0:12>:<gregtech:meta_item_1:2198>,
<gregtech:ore_wulfenite_0:2>:<gregtech:meta_item_1:2198>,
<gregtech:ore_wulfenite_0:7>:<gregtech:meta_item_1:2198>,
<gregtech:ore_wulfenite_0:3>:<gregtech:meta_item_1:2198>,
<gregtech:ore_wulfenite_0:13>:<gregtech:meta_item_1:2198>,
<gregtech:ore_wulfenite_0:6>:<gregtech:meta_item_1:2198>,
<gregtech:ore_wulfenite_0:8>:<gregtech:meta_item_1:2198>,
<gregtech:ore_wulfenite_0:4>:<gregtech:meta_item_1:2198>,
<gregtech:ore_wulfenite_0>:<gregtech:meta_item_1:2198>,
<gregtech:ore_wulfenite_0:9>:<gregtech:meta_item_1:2198>,
<gregtech:ore_wulfenite_0:11>:<gregtech:meta_item_1:2198>,
<gregtech:ore_bastnasite_0:11>:<gregtech:meta_item_1:2270> * 2,
<gregtech:ore_bastnasite_0:7>:<gregtech:meta_item_1:2270> * 2,
<gregtech:ore_bastnasite_0:12>:<gregtech:meta_item_1:2270> * 2,
<gregtech:ore_bastnasite_0:2>:<gregtech:meta_item_1:2270> * 2,
<gregtech:ore_bastnasite_0:6>:<gregtech:meta_item_1:2270> * 2,
<gregtech:ore_bastnasite_0:5>:<gregtech:meta_item_1:2270> * 2,
<gregtech:ore_bastnasite_0:3>:<gregtech:meta_item_1:2270> * 2,
<gregtech:ore_bastnasite_0>:<gregtech:meta_item_1:2270> * 2,
<gregtech:ore_bastnasite_0:10>:<gregtech:meta_item_1:2270> * 2,
<gregtech:ore_bastnasite_0:8>:<gregtech:meta_item_1:2270> * 2,
<gregtech:ore_bastnasite_0:13>:<gregtech:meta_item_1:2270> * 2,
<gregtech:ore_bastnasite_0:1>:<gregtech:meta_item_1:2270> * 2,
<gregtech:ore_bastnasite_0:9>:<gregtech:meta_item_1:2270> * 2,
<gregtech:ore_bastnasite_0:4>:<gregtech:meta_item_1:2270> * 2,
<gregtech:ore_bentonite_0:7>:<gregtech:meta_item_1:2278> * 7,
<gregtech:ore_bentonite_0:5>:<gregtech:meta_item_1:2278> * 7,
<gregtech:ore_bentonite_0:3>:<gregtech:meta_item_1:2278> * 7,
<gregtech:ore_bentonite_0:2>:<gregtech:meta_item_1:2278> * 7,
<gregtech:ore_bentonite_0:13>:<gregtech:meta_item_1:2278> * 7,
<gregtech:ore_bentonite_0>:<gregtech:meta_item_1:2278> * 7,
<gregtech:ore_bentonite_0:8>:<gregtech:meta_item_1:2278> * 7,
<gregtech:ore_bentonite_0:6>:<gregtech:meta_item_1:2278> * 7,
<gregtech:ore_bentonite_0:12>:<gregtech:meta_item_1:2278> * 7,
<gregtech:ore_bentonite_0:9>:<gregtech:meta_item_1:2278> * 7,
<gregtech:ore_bentonite_0:1>:<gregtech:meta_item_1:2278> * 7,
<gregtech:ore_bentonite_0:11>:<gregtech:meta_item_1:2278> * 7,
<gregtech:ore_bentonite_0:4>:<gregtech:meta_item_1:2278> * 7,
<gregtech:ore_bentonite_0:10>:<gregtech:meta_item_1:2278> * 7,
<gregtech:ore_pitchblende_0:11>:<gregtech:meta_item_1:2280> * 2,
<gregtech:ore_pitchblende_0:5>:<gregtech:meta_item_1:2280> * 2,
<gregtech:ore_pitchblende_0:9>:<gregtech:meta_item_1:2280> * 2,
<gregtech:ore_pitchblende_0:3>:<gregtech:meta_item_1:2280> * 2,
<gregtech:ore_pitchblende_0:12>:<gregtech:meta_item_1:2280> * 2,
<gregtech:ore_pitchblende_0:13>:<gregtech:meta_item_1:2280> * 2,
<gregtech:ore_pitchblende_0:8>:<gregtech:meta_item_1:2280> * 2,
<gregtech:ore_pitchblende_0>:<gregtech:meta_item_1:2280> * 2,
<gregtech:ore_pitchblende_0:1>:<gregtech:meta_item_1:2280> * 2,
<gregtech:ore_pitchblende_0:2>:<gregtech:meta_item_1:2280> * 2,
<gregtech:ore_pitchblende_0:6>:<gregtech:meta_item_1:2280> * 2,
<gregtech:ore_pitchblende_0:7>:<gregtech:meta_item_1:2280> * 2,
<gregtech:ore_pitchblende_0:10>:<gregtech:meta_item_1:2280> * 2,
<gregtech:ore_pitchblende_0:4>:<gregtech:meta_item_1:2280> * 2,
<gregtech:ore_barite_0:12>:<gregtech:meta_item_1:2286>,
<gregtech:ore_barite_0:5>:<gregtech:meta_item_1:2286>,
<gregtech:ore_barite_0:10>:<gregtech:meta_item_1:2286>,
<gregtech:ore_barite_0:11>:<gregtech:meta_item_1:2286>,
<gregtech:ore_barite_0:3>:<gregtech:meta_item_1:2286>,
<gregtech:ore_barite_0:2>:<gregtech:meta_item_1:2286>,
<gregtech:ore_barite_0:6>:<gregtech:meta_item_1:2286>,
<gregtech:ore_barite_0:4>:<gregtech:meta_item_1:2286>,
<gregtech:ore_barite_0:9>:<gregtech:meta_item_1:2286>,
<gregtech:ore_barite_0:7>:<gregtech:meta_item_1:2286>,
<gregtech:ore_barite_0:13>:<gregtech:meta_item_1:2286>,
<gregtech:ore_barite_0:1>:<gregtech:meta_item_1:2286>,
<gregtech:ore_barite_0>:<gregtech:meta_item_1:2286>,
<gregtech:ore_barite_0:8>:<gregtech:meta_item_1:2286>,
<gregtech:ore_oilsands_0:9>:<gregtech:meta_item_1:2324>,
<gregtech:ore_oilsands_0:6>:<gregtech:meta_item_1:2324>,
<gregtech:ore_oilsands_0:8>:<gregtech:meta_item_1:2324>,
<gregtech:ore_oilsands_0:5>:<gregtech:meta_item_1:2324>,
<gregtech:ore_oilsands_0>:<gregtech:meta_item_1:2324>,
<gregtech:ore_oilsands_0:4>:<gregtech:meta_item_1:2324>,
<gregtech:ore_oilsands_0:7>:<gregtech:meta_item_1:2324>,
<gregtech:ore_oilsands_0:2>:<gregtech:meta_item_1:2324>,
<gregtech:ore_oilsands_0:12>:<gregtech:meta_item_1:2324>,
<gregtech:ore_oilsands_0:3>:<gregtech:meta_item_1:2324>,
<gregtech:ore_oilsands_0:10>:<gregtech:meta_item_1:2324>,
<gregtech:ore_oilsands_0:11>:<gregtech:meta_item_1:2324>,
<gregtech:ore_oilsands_0:13>:<gregtech:meta_item_1:2324>,
<gregtech:ore_oilsands_0:1>:<gregtech:meta_item_1:2324>,
<gregtech:ore_enargite_0:10>:<gregtech:meta_item_1:2362> * 2,
<gregtech:ore_enargite_0:3>:<gregtech:meta_item_1:2362> * 2,
<gregtech:ore_enargite_0:2>:<gregtech:meta_item_1:2362> * 2,
<gregtech:ore_enargite_0:11>:<gregtech:meta_item_1:2362> * 2,
<gregtech:ore_enargite_0:4>:<gregtech:meta_item_1:2362> * 2,
<gregtech:ore_enargite_0>:<gregtech:meta_item_1:2362> * 2,
<gregtech:ore_enargite_0:13>:<gregtech:meta_item_1:2362> * 2,
<gregtech:ore_enargite_0:7>:<gregtech:meta_item_1:2362> * 2,
<gregtech:ore_enargite_0:9>:<gregtech:meta_item_1:2362> * 2,
<gregtech:ore_enargite_0:8>:<gregtech:meta_item_1:2362> * 2,
<gregtech:ore_enargite_0:1>:<gregtech:meta_item_1:2362> * 2,
<gregtech:ore_enargite_0:6>:<gregtech:meta_item_1:2362> * 2,
<gregtech:ore_enargite_0:12>:<gregtech:meta_item_1:2362> * 2,
<gregtech:ore_enargite_0:5>:<gregtech:meta_item_1:2362> * 2,
<gregtech:ore_blue_topaz_0:4>:<gregtech:meta_item_1:8092>,
<gregtech:ore_blue_topaz_0:7>:<gregtech:meta_item_1:8092>,
<gregtech:ore_blue_topaz_0:3>:<gregtech:meta_item_1:8092>,
<gregtech:ore_blue_topaz_0:6>:<gregtech:meta_item_1:8092>,
<gregtech:ore_blue_topaz_0:2>:<gregtech:meta_item_1:8092>,
<gregtech:ore_blue_topaz_0:10>:<gregtech:meta_item_1:8092>,
<gregtech:ore_blue_topaz_0:5>:<gregtech:meta_item_1:8092>,
<gregtech:ore_blue_topaz_0:12>:<gregtech:meta_item_1:8092>,
<gregtech:ore_blue_topaz_0:8>:<gregtech:meta_item_1:8092>,
<gregtech:ore_blue_topaz_0:11>:<gregtech:meta_item_1:8092>,
<gregtech:ore_blue_topaz_0:1>:<gregtech:meta_item_1:8092>,
<gregtech:ore_blue_topaz_0:9>:<gregtech:meta_item_1:8092>,
<gregtech:ore_blue_topaz_0:13>:<gregtech:meta_item_1:8092>,
<gregtech:ore_blue_topaz_0>:<gregtech:meta_item_1:8092>,
<libvulpes:ore0:8>:<gregtech:meta_item_1:8122>,
<gregtech:ore_lazurite_0>:<gregtech:meta_item_1:8128> * 6,
<gregtech:ore_lazurite_0:6>:<gregtech:meta_item_1:8128> * 6,
<gregtech:ore_lazurite_0:8>:<gregtech:meta_item_1:8128> * 6,
<gregtech:ore_lazurite_0:10>:<gregtech:meta_item_1:8128> * 6,
<gregtech:ore_lazurite_0:12>:<gregtech:meta_item_1:8128> * 6,
<gregtech:ore_lazurite_0:9>:<gregtech:meta_item_1:8128> * 6,
<gregtech:ore_lazurite_0:7>:<gregtech:meta_item_1:8128> * 6,
<gregtech:ore_lazurite_0:1>:<gregtech:meta_item_1:8128> * 6,
<gregtech:ore_lazurite_0:11>:<gregtech:meta_item_1:8128> * 6,
<gregtech:ore_lazurite_0:5>:<gregtech:meta_item_1:8128> * 6,
<gregtech:ore_lazurite_0:4>:<gregtech:meta_item_1:8128> * 6,
<gregtech:ore_lazurite_0:2>:<gregtech:meta_item_1:8128> * 6,
<gregtech:ore_lazurite_0:13>:<gregtech:meta_item_1:8128> * 6,
<gregtech:ore_lazurite_0:3>:<gregtech:meta_item_1:8128> * 6,
<gregtech:ore_tanzanite_0:2>:<gregtech:meta_item_1:8187> * 2,
<gregtech:ore_tanzanite_0:10>:<gregtech:meta_item_1:8187> * 2,
<gregtech:ore_tanzanite_0:4>:<gregtech:meta_item_1:8187> * 2,
<gregtech:ore_tanzanite_0:3>:<gregtech:meta_item_1:8187> * 2,
<gregtech:ore_tanzanite_0:7>:<gregtech:meta_item_1:8187> * 2,
<gregtech:ore_tanzanite_0:5>:<gregtech:meta_item_1:8187> * 2,
<gregtech:ore_tanzanite_0>:<gregtech:meta_item_1:8187> * 2,
<gregtech:ore_tanzanite_0:6>:<gregtech:meta_item_1:8187> * 2,
<gregtech:ore_tanzanite_0:8>:<gregtech:meta_item_1:8187> * 2,
<gregtech:ore_tanzanite_0:11>:<gregtech:meta_item_1:8187> * 2,
<gregtech:ore_tanzanite_0:1>:<gregtech:meta_item_1:8187> * 2,
<gregtech:ore_tanzanite_0:9>:<gregtech:meta_item_1:8187> * 2,
<gregtech:ore_tanzanite_0:13>:<gregtech:meta_item_1:8187> * 2,
<gregtech:ore_tanzanite_0:12>:<gregtech:meta_item_1:8187> * 2,
<gregtech:ore_quartzite_0:13>:<gregtech:meta_item_1:8203> * 2,
<gregtech:ore_quartzite_0:10>:<gregtech:meta_item_1:8203> * 2,
<gregtech:ore_quartzite_0:9>:<gregtech:meta_item_1:8203> * 2,
<gregtech:ore_quartzite_0:7>:<gregtech:meta_item_1:8203> * 2,
<gregtech:ore_quartzite_0:11>:<gregtech:meta_item_1:8203> * 2,
<gregtech:ore_quartzite_0:6>:<gregtech:meta_item_1:8203> * 2,
<gregtech:ore_quartzite_0:4>:<gregtech:meta_item_1:8203> * 2,
<gregtech:ore_quartzite_0>:<gregtech:meta_item_1:8203> * 2,
<gregtech:ore_quartzite_0:1>:<gregtech:meta_item_1:8203> * 2,
<gregtech:ore_quartzite_0:8>:<gregtech:meta_item_1:8203> * 2,
<gregtech:ore_quartzite_0:12>:<gregtech:meta_item_1:8203> * 2,
<gregtech:ore_quartzite_0:2>:<gregtech:meta_item_1:8203> * 2,
<gregtech:ore_quartzite_0:5>:<gregtech:meta_item_1:8203> * 2,
<gregtech:ore_quartzite_0:3>:<gregtech:meta_item_1:8203> * 2,
<gregtech:ore_garnet_yellow_0:11>:<gregtech:meta_item_1:8244> * 4,
<gregtech:ore_garnet_yellow_0:13>:<gregtech:meta_item_1:8244> * 4,
<gregtech:ore_garnet_yellow_0:3>:<gregtech:meta_item_1:8244> * 4,
<gregtech:ore_garnet_yellow_0:7>:<gregtech:meta_item_1:8244> * 4,
<gregtech:ore_garnet_yellow_0:9>:<gregtech:meta_item_1:8244> * 4,
<gregtech:ore_garnet_yellow_0:6>:<gregtech:meta_item_1:8244> * 4,
<gregtech:ore_garnet_yellow_0:12>:<gregtech:meta_item_1:8244> * 4,
<gregtech:ore_garnet_yellow_0:8>:<gregtech:meta_item_1:8244> * 4,
<gregtech:ore_garnet_yellow_0:4>:<gregtech:meta_item_1:8244> * 4,
<gregtech:ore_garnet_yellow_0:5>:<gregtech:meta_item_1:8244> * 4,
<gregtech:ore_garnet_yellow_0:10>:<gregtech:meta_item_1:8244> * 4,
<gregtech:ore_garnet_yellow_0>:<gregtech:meta_item_1:8244> * 4,
<gregtech:ore_garnet_yellow_0:1>:<gregtech:meta_item_1:8244> * 4,
<gregtech:ore_garnet_yellow_0:2>:<gregtech:meta_item_1:8244> * 4,
<gregtech:ore_vinteum_0:10>:<gregtech:meta_item_1:8247>,
<gregtech:ore_vinteum_0:4>:<gregtech:meta_item_1:8247>,
<gregtech:ore_vinteum_0:3>:<gregtech:meta_item_1:8247>,
<gregtech:ore_vinteum_0:9>:<gregtech:meta_item_1:8247>,
<gregtech:ore_vinteum_0:13>:<gregtech:meta_item_1:8247>,
<gregtech:ore_vinteum_0:6>:<gregtech:meta_item_1:8247>,
<gregtech:ore_vinteum_0:2>:<gregtech:meta_item_1:8247>,
<gregtech:ore_vinteum_0:11>:<gregtech:meta_item_1:8247>,
<gregtech:ore_vinteum_0:7>:<gregtech:meta_item_1:8247>,
<gregtech:ore_vinteum_0>:<gregtech:meta_item_1:8247>,
<gregtech:ore_vinteum_0:12>:<gregtech:meta_item_1:8247>,
<gregtech:ore_vinteum_0:5>:<gregtech:meta_item_1:8247>,
<gregtech:ore_vinteum_0:8>:<gregtech:meta_item_1:8247>,
<gregtech:ore_vinteum_0:1>:<gregtech:meta_item_1:8247>,
<gregtech:meta_item_1:2>:<gregtech:meta_item_1:9002>,
<gregtech:meta_item_1:3>:<gregtech:meta_item_1:9003>,
<gregtech:meta_item_1:3185>:<gregtech:meta_item_1:9003> * 3,
<gregtech:meta_item_1:2185>:<gregtech:meta_item_1:9003> * 3,
<gregtech:meta_item_1:4185>:<gregtech:meta_item_1:9003> * 3,
<gregtech:meta_item_1:6>:<gregtech:meta_item_1:9006>,
<gregtech:meta_item_1:7>:<gregtech:meta_item_1:9007>,
<gregtech:meta_item_1:8>:<gregtech:meta_item_1:9008>,
<gregtech:meta_item_1:10>:<gregtech:meta_item_1:9010>,
<gregtech:meta_item_1:11>:<gregtech:meta_item_1:9011>,
<gregtech:meta_item_1:12>:<gregtech:meta_item_1:9012>,
<gregtech:meta_item_1:13>:<gregtech:meta_item_1:9013>,
<gregtech:meta_item_1:3107>:<gregtech:meta_item_1:9017> * 3,
<gregtech:meta_item_1:4107>:<gregtech:meta_item_1:9017> * 3,
<gregtech:meta_item_1:2107>:<gregtech:meta_item_1:9017> * 3,
<gregtech:meta_item_1:18>:<gregtech:meta_item_1:9018>,
<gregtech:meta_item_1:2282>:<gregtech:meta_item_1:9018>,
<gregtech:meta_item_1:4282>:<gregtech:meta_item_1:9018>,
<gregtech:meta_item_1:3282>:<gregtech:meta_item_1:9018>,
<gregtech:meta_item_1:3100>:<gregtech:meta_item_1:9018> * 2,
<gregtech:meta_item_1:2100>:<gregtech:meta_item_1:9018> * 2,
<gregtech:meta_item_1:4100>:<gregtech:meta_item_1:9018> * 2,
<gregtech:meta_item_1:4188>:<gregtech:meta_item_1:9018> * 3,
<gregtech:meta_item_1:2188>:<gregtech:meta_item_1:9018> * 3,
<gregtech:meta_item_1:3188>:<gregtech:meta_item_1:9018> * 3,
<gregtech:meta_item_1:3360>:<gregtech:meta_item_1:9018> * 4,
<gregtech:meta_item_1:4358>:<gregtech:meta_item_1:9018> * 4,
<gregtech:meta_item_1:3358>:<gregtech:meta_item_1:9018> * 4,
<gregtech:meta_item_1:4360>:<gregtech:meta_item_1:9018> * 4,
<gregtech:meta_item_1:2358>:<gregtech:meta_item_1:9018> * 4,
<gregtech:meta_item_1:2360>:<gregtech:meta_item_1:9018> * 4,
<gregtech:meta_item_1:3359>:<gregtech:meta_item_1:9018> * 6,
<gregtech:meta_item_1:3361>:<gregtech:meta_item_1:9018> * 6,
<gregtech:meta_item_1:4361>:<gregtech:meta_item_1:9018> * 6,
<gregtech:meta_item_1:4359>:<gregtech:meta_item_1:9018> * 6,
<gregtech:meta_item_1:2359>:<gregtech:meta_item_1:9018> * 6,
<gregtech:meta_item_1:2361>:<gregtech:meta_item_1:9018> * 6,
<gregtech:meta_item_1:25>:<gregtech:meta_item_1:9025>,
<gregtech:meta_item_1:31>:<gregtech:meta_item_1:9031>,
<gregtech:meta_item_1:35>:<gregtech:meta_item_1:9035>,
<gregtech:meta_item_1:36>:<gregtech:meta_item_1:9036>,
<gregtech:meta_item_1:38>:<gregtech:meta_item_1:9038>,
<gregtech:meta_item_1:4130>:<gregtech:meta_item_1:9038>,
<gregtech:meta_item_1:3130>:<gregtech:meta_item_1:9038>,
<gregtech:meta_item_1:2130>:<gregtech:meta_item_1:9038>,
<gregtech:meta_item_1:39>:<gregtech:meta_item_1:9039>,
<gregtech:meta_item_1:3149>:<gregtech:meta_item_1:9039> * 3,
<gregtech:meta_item_1:4149>:<gregtech:meta_item_1:9039> * 3,
<gregtech:meta_item_1:2149>:<gregtech:meta_item_1:9039> * 3,
<gregtech:meta_item_1:41>:<gregtech:meta_item_1:9041>,
<gregtech:meta_item_1:4132>:<gregtech:meta_item_1:9041> * 3,
<gregtech:meta_item_1:2132>:<gregtech:meta_item_1:9041> * 3,
<gregtech:meta_item_1:3132>:<gregtech:meta_item_1:9041> * 3,
<gregtech:meta_item_1:43>:<gregtech:meta_item_1:9043>,
<gregtech:meta_item_1:44>:<gregtech:meta_item_1:9044>,
<gregtech:meta_item_1:4115>:<gregtech:meta_item_1:9044> * 4,
<gregtech:meta_item_1:2115>:<gregtech:meta_item_1:9044> * 4,
<gregtech:meta_item_1:4271>:<gregtech:meta_item_1:9044> * 4,
<gregtech:meta_item_1:3271>:<gregtech:meta_item_1:9044> * 4,
<gregtech:meta_item_1:2271>:<gregtech:meta_item_1:9044> * 4,
<gregtech:meta_item_1:3115>:<gregtech:meta_item_1:9044> * 4,
<gregtech:meta_item_1:51>:<gregtech:meta_item_1:9051>,
<gregtech:meta_item_1:2108>:<gregtech:meta_item_1:9051> * 4,
<gregtech:meta_item_1:4108>:<gregtech:meta_item_1:9051> * 4,
<gregtech:meta_item_1:3108>:<gregtech:meta_item_1:9051> * 4,
<gregtech:meta_item_1:52>:<gregtech:meta_item_1:9052>,
<gregtech:meta_item_1:53>:<gregtech:meta_item_1:9053>,
<gregtech:meta_item_1:54>:<gregtech:meta_item_1:9054>,
<gregtech:meta_item_1:58>:<gregtech:meta_item_1:9058>,
<gregtech:meta_item_1:62>:<gregtech:meta_item_1:9062>,
<gregtech:meta_item_1:63>:<gregtech:meta_item_1:9063>,
<gregtech:meta_item_1:64>:<gregtech:meta_item_1:9064>,
<gregtech:meta_item_1:66>:<gregtech:meta_item_1:9066>,
<gregtech:meta_item_1:67>:<gregtech:meta_item_1:9067>,
<gregtech:meta_item_1:69>:<gregtech:meta_item_1:9069>,
<gregtech:meta_item_1:71>:<gregtech:meta_item_1:9071>,
<gregtech:meta_item_1:4099>:<gregtech:meta_item_1:9071> * 3,
<gregtech:meta_item_1:4098>:<gregtech:meta_item_1:9071> * 3,
<gregtech:meta_item_1:3098>:<gregtech:meta_item_1:9071> * 3,
<gregtech:meta_item_1:2099>:<gregtech:meta_item_1:9071> * 3,
<gregtech:meta_item_1:2098>:<gregtech:meta_item_1:9071> * 3,
<gregtech:meta_item_1:3099>:<gregtech:meta_item_1:9071> * 3,
<gregtech:meta_item_1:75>:<gregtech:meta_item_1:9075>,
<gregtech:meta_item_1:76>:<gregtech:meta_item_1:9076>,
<gregtech:meta_item_1:79>:<gregtech:meta_item_1:9079>,
<gregtech:meta_item_1:3182>:<gregtech:meta_item_1:9079> * 4,
<gregtech:meta_item_1:2182>:<gregtech:meta_item_1:9079> * 4,
<gregtech:meta_item_1:4182>:<gregtech:meta_item_1:9079> * 4,
<gregtech:meta_item_1:87>:<gregtech:meta_item_1:9087>,
<gregtech:meta_item_1:91>:<gregtech:meta_item_1:9091>,
<gregtech:meta_item_1:94>:<gregtech:meta_item_1:9094>,
<gregtech:meta_item_1:95>:<gregtech:meta_item_1:9095>,
<iceandfire:stymphalian_bird_feather:*>:<gregtech:meta_item_1:9095>,
<gregtech:meta_item_1:109>:<gregtech:meta_item_1:9109>,
<gregtech:meta_item_1:112>:<gregtech:meta_item_1:9112>,
<gregtech:meta_item_1:126>:<gregtech:meta_item_1:9126>,
<gregtech:meta_item_1:129>:<gregtech:meta_item_1:9129>,
<gregtech:meta_item_1:140>:<gregtech:meta_item_1:9140>,
<gregtech:meta_item_1:141>:<gregtech:meta_item_1:9141>,
<gregtech:meta_item_1:142>:<gregtech:meta_item_1:9142>,
<gregtech:meta_item_1:144>:<gregtech:meta_item_1:9144>,
<gregtech:meta_item_1:145>:<gregtech:meta_item_1:9145>,
<gregtech:meta_item_1:152>:<gregtech:meta_item_1:9152>,
<gregtech:meta_item_1:180>:<gregtech:meta_item_1:9180>,
<gregtech:meta_item_1:189>:<gregtech:meta_item_1:9189>,
<thaumcraft:nugget>:<gregtech:meta_item_1:9197>,
<minecraft:iron_nugget>:<gregtech:meta_item_1:9197>,
<gregtech:meta_item_1:197>:<gregtech:meta_item_1:9197>,
<gregtech:meta_item_1:205>:<gregtech:meta_item_1:9205>,
<gregtech:meta_item_1:237>:<gregtech:meta_item_1:9237>,
<gregtech:meta_item_1:238>:<gregtech:meta_item_1:9238>,
<gregtech:meta_item_1:297>:<gregtech:meta_item_1:9297>,
<gregtech:meta_item_1:311>:<gregtech:meta_item_1:9311>,
<gregtech:meta_item_1:312>:<gregtech:meta_item_1:9312>,
<gregtech:meta_item_1:364>:<gregtech:meta_item_1:9364>,
<gregtech:meta_item_1:391>:<gregtech:meta_item_1:9391>,
<gregtech:meta_item_1:395>:<gregtech:meta_item_1:9395>,
<gregtech:meta_item_1:398>:<gregtech:meta_item_1:9398>,
<gregtech:meta_item_1:411>:<gregtech:meta_item_1:9411>,
<gregtech:meta_item_1:421>:<gregtech:meta_item_1:9421>,
<gregtech:meta_item_1:470>:<gregtech:meta_item_1:9470>,
<gregtech:meta_item_1:801>:<gregtech:meta_item_1:9801>,
<gregtech:meta_item_1:802>:<gregtech:meta_item_1:9802>,
<gregtech:meta_item_1:803>:<gregtech:meta_item_1:9803>,
<gregtech:meta_item_1:804>:<gregtech:meta_item_1:9804>,
<gregtech:meta_item_1:805>:<gregtech:meta_item_1:9805>,
<gregtech:meta_item_1:806>:<gregtech:meta_item_1:9806>,
<gregtech:meta_item_1:807>:<gregtech:meta_item_1:9807>,
<gregtech:meta_item_1:811>:<gregtech:meta_item_1:9811>,
<gregtech:meta_item_1:815>:<gregtech:meta_item_1:9815>,
<gregtech:meta_item_1:828>:<gregtech:meta_item_1:9828>,
<gregtech:meta_item_1:965>:<gregtech:meta_item_1:9965>,
<gregtech:meta_item_1:972>:<gregtech:meta_item_1:9972>,
<gregtech:meta_item_2:16297>:<gregtech:meta_item_2:16033>,
<gregtech:meta_item_2:16298>:<gregtech:meta_item_2:16184>,
<gregtech:meta_item_2:18298>:<gregtech:meta_item_2:18184>,
<gregtech:meta_item_2:19297>:<gregtech:meta_item_2:19033>,
<gregtech:meta_item_2:19298>:<gregtech:meta_item_2:19184>,
<gregtech:ore_certus_quartz_0:2>:<gregtech:meta_item_2:23202>,
<gregtech:ore_certus_quartz_0:1>:<gregtech:meta_item_2:23202>,
<appliedenergistics2:quartz_ore>:<gregtech:meta_item_2:23202>,
<gregtech:ore_certus_quartz_0>:<gregtech:meta_item_2:23202>,
<gregtech:ore_certus_quartz_0:5>:<gregtech:meta_item_2:23202>,
<gregtech:ore_certus_quartz_0:3>:<gregtech:meta_item_2:23202>,
<gregtech:meta_item_2:32014>:<gregtech:meta_item_2:32015>,
<gtadditions:ga_meta_item:32032>:<gregtech:meta_item_2:32016>,
<gregtech:mineral:6>:<gregtech:mineral:2>,
<gregtech:mineral:1>:<gregtech:mineral:5>,
<gregtech:mineral:3>:<gregtech:mineral:7>,
<gregtech:mineral:4>:<gregtech:mineral>,
<harvestcraft:sweetpotatoitem>:<harvestcraft:bakedsweetpotatoitem>,
<harvestcraft:calamarirawitem:*>:<harvestcraft:calamaricookeditem>,
<harvestcraft:clamrawitem:*>:<harvestcraft:clamcookeditem>,
<harvestcraft:grubitem:*>:<harvestcraft:cookedgrubitem>,
<harvestcraft:rawtofabbititem:*>:<harvestcraft:cookedtofabbititem>,
<harvestcraft:rawtofaconitem:*>:<harvestcraft:cookedtofaconitem>,
<harvestcraft:rawtofeakitem:*>:<harvestcraft:cookedtofeakitem>,
<harvestcraft:rawtofeegitem:*>:<harvestcraft:cookedtofeegitem>,
<harvestcraft:rawtofenisonitem:*>:<harvestcraft:cookedtofenisonitem>,
<harvestcraft:rawtofickenitem:*>:<harvestcraft:cookedtofickenitem>,
<harvestcraft:rawtofishitem:*>:<harvestcraft:cookedtofishitem>,
<harvestcraft:rawtofuduckitem:*>:<harvestcraft:cookedtofuduckitem>,
<harvestcraft:rawtofurkeyitem:*>:<harvestcraft:cookedtofurkeyitem>,
<harvestcraft:rawtofuttonitem:*>:<harvestcraft:cookedtofuttonitem>,
<harvestcraft:crabrawitem:*>:<harvestcraft:crabcookeditem>,
<harvestcraft:crayfishrawitem:*>:<harvestcraft:crayfishcookeditem>,
<harvestcraft:duckrawitem:*>:<harvestcraft:duckcookeditem>,
<harvestcraft:frograwitem:*>:<harvestcraft:frogcookeditem>,
<harvestcraft:musselrawitem:*>:<harvestcraft:musselcookeditem>,
<harvestcraft:octopusrawitem:*>:<harvestcraft:octopuscookeditem>,
<harvestcraft:oysterrawitem:*>:<harvestcraft:oystercookeditem>,
<harvestcraft:scalloprawitem:*>:<harvestcraft:scallopcookeditem>,
<harvestcraft:shrimprawitem:*>:<harvestcraft:shrimpcookeditem>,
<harvestcraft:snailrawitem:*>:<harvestcraft:snailcookeditem>,
<minecraft:bread>:<harvestcraft:toastitem>,
<harvestcraft:turkeyrawitem:*>:<harvestcraft:turkeycookeditem>,
<harvestcraft:turtlerawitem:*>:<harvestcraft:turtlecookeditem>,
<harvestcraft:venisonrawitem:*>:<harvestcraft:venisoncookeditem>,
<iceandfire:dread_stone_bricks:*>:<iceandfire:dread_stone_bricks_cracked>,
<iceandfire:myrmex_desert_resin_block:*>:<iceandfire:myrmex_desert_resin_glass>,
<iceandfire:myrmex_jungle_resin_block:*>:<iceandfire:myrmex_jungle_resin_glass>,
<iceandfire:sapphire_ore:*>:<iceandfire:sapphire_gem>,
<iceandfire:silver_ore:*>:<iceandfire:silver_ingot>,
<gregtech:meta_item_1:10152>:<industrialforegoing:dryrubber>,
<contenttweaker:rubber_enriched_egg>:<industrialforegoing:dryrubber>,
<industrialforegoing:dryrubber:*>:<industrialforegoing:plastic>,
<lcrdrfs:creeper_chilli>:<lcrdrfs:creeper_chilli_powder>,
<lcrdrfs:robo_dino_egg_crafted>:<lcrdrfs:robo_dino_egg_item>,
<libvulpes:productdust:10>:<libvulpes:productingot:10>,
<libvulpes:ore0:10>:<libvulpes:productingot:10>,
<libvulpes:productdust:6>:<libvulpes:productingot:6>,
<libvulpes:productdust:7>:<libvulpes:productingot:7>,
<libvulpes:ore0:9>:<libvulpes:productingot:9>,
<libvulpes:productdust:9>:<libvulpes:productingot:9>,
<logisticspipes:chip_advanced_raw>:<logisticspipes:chip_advanced>,
<logisticspipes:chip_basic_raw>:<logisticspipes:chip_basic>,
<logisticspipes:chip_fpga_raw>:<logisticspipes:chip_fpga>,
<mekanism:otherdust:1>:<mekanism:ingot:4>,
<mekanism:oreblock:1>:<mekanism:ingot:5>,
<mekanism:dust:3>:<mekanism:ingot:5>,
<mekanism:oreblock:2>:<mekanism:ingot:6>,
<mekanism:dust:4>:<mekanism:ingot:6>,
<minecraft:potato:*>:<minecraft:baked_potato>,
<minecraft:stained_hardened_clay:15>:<minecraft:black_glazed_terracotta>,
<minecraft:stained_hardened_clay:11>:<minecraft:blue_glazed_terracotta>,
<harvestcraft:doughitem>:<minecraft:bread>,
<gregtech:meta_item_2:32013>:<minecraft:brick>,
<minecraft:stained_hardened_clay:12>:<minecraft:brown_glazed_terracotta>,
<minecraft:chorus_fruit:*>:<minecraft:chorus_fruit_popped>,
<actuallyadditions:item_dust:6>:<minecraft:coal>,
<iceandfire:frozen_cobblestone:*>:<minecraft:cobblestone>,
<minecraft:beef:*>:<minecraft:cooked_beef>,
<minecraft:chicken:*>:<minecraft:cooked_chicken>,
<roost:chicken:*>:<minecraft:cooked_chicken>,
<minecraft:fish:1>:<minecraft:cooked_fish:1>,
<harvestcraft:catfishrawitem:*>:<minecraft:cooked_fish>,
<minecraft:fish>:<minecraft:cooked_fish>,
<harvestcraft:sardinerawitem:*>:<minecraft:cooked_fish>,
<harvestcraft:charrrawitem:*>:<minecraft:cooked_fish>,
<harvestcraft:tilapiarawitem:*>:<minecraft:cooked_fish>,
<harvestcraft:walleyerawitem:*>:<minecraft:cooked_fish>,
<harvestcraft:tunarawitem:*>:<minecraft:cooked_fish>,
<harvestcraft:carprawitem:*>:<minecraft:cooked_fish>,
<harvestcraft:snapperrawitem:*>:<minecraft:cooked_fish>,
<harvestcraft:mudfishrawitem:*>:<minecraft:cooked_fish>,
<harvestcraft:perchrawitem:*>:<minecraft:cooked_fish>,
<harvestcraft:bassrawitem:*>:<minecraft:cooked_fish>,
<harvestcraft:grouperrawitem:*>:<minecraft:cooked_fish>,
<harvestcraft:anchovyrawitem:*>:<minecraft:cooked_fish>,
<harvestcraft:troutrawitem:*>:<minecraft:cooked_fish>,
<harvestcraft:eelrawitem:*>:<minecraft:cooked_fish>,
<harvestcraft:greenheartfishitem:*>:<minecraft:cooked_fish>,
<harvestcraft:herringrawitem:*>:<minecraft:cooked_fish>,
<minecraft:mutton:*>:<minecraft:cooked_mutton>,
<minecraft:porkchop:*>:<minecraft:cooked_porkchop>,
<minecraft:rabbit:*>:<minecraft:cooked_rabbit>,
<minecraft:stained_hardened_clay:9>:<minecraft:cyan_glazed_terracotta>,
<actuallyadditions:item_dust:2>:<minecraft:diamond>,
<iceandfire:frozen_dirt:*>:<minecraft:dirt>,
<minecraft:cactus:*>:<minecraft:dye:2>,
<actuallyadditions:item_dust:4>:<minecraft:dye:4>,
<actuallyadditions:item_dust:3>:<minecraft:emerald>,
<gregtech:meta_item_1:3026>:<minecraft:gold_ingot>,
<gregtech:meta_item_1:4026>:<minecraft:gold_ingot>,
<gregtech:meta_item_1:2026>:<minecraft:gold_ingot>,
<thaumcraft:cluster:1>:<minecraft:gold_ingot> * 2,
<minecraft:golden_pickaxe:*>:<minecraft:gold_nugget>,
<minecraft:golden_sword:*>:<minecraft:gold_nugget>,
<minecraft:golden_horse_armor:*>:<minecraft:gold_nugget>,
<minecraft:golden_helmet:*>:<minecraft:gold_nugget>,
<minecraft:golden_axe:*>:<minecraft:gold_nugget>,
<minecraft:golden_hoe:*>:<minecraft:gold_nugget>,
<gregtech:meta_item_1:26>:<minecraft:gold_nugget>,
<minecraft:golden_boots:*>:<minecraft:gold_nugget>,
<minecraft:golden_chestplate:*>:<minecraft:gold_nugget>,
<minecraft:golden_leggings:*>:<minecraft:gold_nugget>,
<minecraft:golden_shovel:*>:<minecraft:gold_nugget>,
<iceandfire:frozen_grass_path:*>:<minecraft:grass_path>,
<iceandfire:frozen_grass:*>:<minecraft:grass>,
<iceandfire:frozen_gravel:*>:<minecraft:gravel>,
<minecraft:stained_hardened_clay:7>:<minecraft:gray_glazed_terracotta>,
<minecraft:stained_hardened_clay:13>:<minecraft:green_glazed_terracotta>,
<minecraft:clay:*>:<minecraft:hardened_clay>,
<gregtech:meta_item_1:4033>:<minecraft:iron_ingot>,
<gregtech:meta_item_1:2033>:<minecraft:iron_ingot>,
<gregtech:meta_item_1:10297>:<minecraft:iron_ingot>,
<gregtech:meta_item_1:3033>:<minecraft:iron_ingot>,
<thaumcraft:cluster>:<minecraft:iron_ingot> * 2,
<minecraft:iron_helmet:*>:<minecraft:iron_nugget>,
<gregtech:meta_item_1:33>:<minecraft:iron_nugget>,
<minecraft:iron_axe:*>:<minecraft:iron_nugget>,
<minecraft:chainmail_boots:*>:<minecraft:iron_nugget>,
<minecraft:chainmail_leggings:*>:<minecraft:iron_nugget>,
<extrautils2:ironwood_planks:*>:<minecraft:iron_nugget>,
<minecraft:iron_boots:*>:<minecraft:iron_nugget>,
<minecraft:iron_hoe:*>:<minecraft:iron_nugget>,
<minecraft:iron_leggings:*>:<minecraft:iron_nugget>,
<minecraft:iron_chestplate:*>:<minecraft:iron_nugget>,
<rustic:dust_tiny_iron>:<minecraft:iron_nugget>,
<minecraft:chainmail_chestplate:*>:<minecraft:iron_nugget>,
<minecraft:iron_horse_armor:*>:<minecraft:iron_nugget>,
<minecraft:iron_pickaxe:*>:<minecraft:iron_nugget>,
<minecraft:iron_sword:*>:<minecraft:iron_nugget>,
<minecraft:iron_shovel:*>:<minecraft:iron_nugget>,
<minecraft:chainmail_helmet:*>:<minecraft:iron_nugget>,
<gregtech:meta_item_1:4096>:<minecraft:iron_nugget> * 2,
<gregtech:meta_item_1:2096>:<minecraft:iron_nugget> * 2,
<gregtech:meta_item_1:3096>:<minecraft:iron_nugget> * 2,
<gregtech:meta_item_1:3199>:<minecraft:iron_nugget> * 2,
<gregtech:meta_item_1:2199>:<minecraft:iron_nugget> * 2,
<gregtech:meta_item_1:4199>:<minecraft:iron_nugget> * 2,
<gregtech:meta_item_1:2131>:<minecraft:iron_nugget> * 3,
<gregtech:meta_item_1:3148>:<minecraft:iron_nugget> * 3,
<gregtech:meta_item_1:2090>:<minecraft:iron_nugget> * 3,
<gregtech:meta_item_1:3131>:<minecraft:iron_nugget> * 3,
<gregtech:meta_item_1:3090>:<minecraft:iron_nugget> * 3,
<gregtech:meta_item_1:4148>:<minecraft:iron_nugget> * 3,
<gregtech:meta_item_1:2148>:<minecraft:iron_nugget> * 3,
<gregtech:meta_item_1:4090>:<minecraft:iron_nugget> * 3,
<gregtech:meta_item_1:4131>:<minecraft:iron_nugget> * 3,
<minecraft:stained_hardened_clay:3>:<minecraft:light_blue_glazed_terracotta>,
<minecraft:stained_hardened_clay:5>:<minecraft:lime_glazed_terracotta>,
<minecraft:stained_hardened_clay:2>:<minecraft:magenta_glazed_terracotta>,
<minecraft:netherrack:*>:<minecraft:netherbrick>,
<minecraft:stained_hardened_clay:1>:<minecraft:orange_glazed_terracotta>,
<minecraft:stained_hardened_clay:6>:<minecraft:pink_glazed_terracotta>,
<minecraft:stained_hardened_clay:10>:<minecraft:purple_glazed_terracotta>,
<gregtech:ore_nether_quartz_0:9>:<minecraft:quartz> * 2,
<gregtech:ore_nether_quartz_0>:<minecraft:quartz> * 2,
<gregtech:ore_nether_quartz_0:13>:<minecraft:quartz> * 2,
<thaumcraft:cluster:7>:<minecraft:quartz> * 2,
<gregtech:ore_nether_quartz_0:2>:<minecraft:quartz> * 2,
<gregtech:ore_nether_quartz_0:12>:<minecraft:quartz> * 2,
<gregtech:ore_nether_quartz_0:8>:<minecraft:quartz> * 2,
<gregtech:ore_nether_quartz_0:4>:<minecraft:quartz> * 2,
<gregtech:ore_nether_quartz_0:1>:<minecraft:quartz> * 2,
<gregtech:ore_nether_quartz_0:11>:<minecraft:quartz> * 2,
<gregtech:ore_nether_quartz_0:7>:<minecraft:quartz> * 2,
<gregtech:ore_nether_quartz_0:6>:<minecraft:quartz> * 2,
<gregtech:ore_nether_quartz_0:10>:<minecraft:quartz> * 2,
<gregtech:ore_nether_quartz_0:5>:<minecraft:quartz> * 2,
<gregtech:ore_nether_quartz_0:3>:<minecraft:quartz> * 2,
<minecraft:stained_hardened_clay:14>:<minecraft:red_glazed_terracotta>,
<minecraft:stained_hardened_clay:8>:<minecraft:silver_glazed_terracotta>,
<minecraft:sponge:1>:<minecraft:sponge>,
<iceandfire:frozen_splinters:*>:<minecraft:stick> * 3,
<minecraft:cobblestone:*>:<minecraft:stone>,
<iceandfire:frozen_stone:*>:<minecraft:stone>,
<minecraft:stonebrick>:<minecraft:stonebrick:2>,
<minecraft:stained_hardened_clay>:<minecraft:white_glazed_terracotta>,
<minecraft:stained_hardened_clay:4>:<minecraft:yellow_glazed_terracotta>,
<minecraft:nether_brick>:<netherbackport:crackednetherbricks>,
<netherbackport:polishedblackstonebricks>:<netherbackport:crackedpolishedblackstonebricks>,
<netherbackport:ancientdebris>:<netherbackport:netheritescrap>,
<quark:biotite_ore:*>:<quark:biotite>,
<quark:crab_leg:*>:<quark:cooked_crab_leg>,
<quark:frog_leg:*>:<quark:cooked_frog_leg>,
<rustic:honeycomb>:<rustic:beeswax>,
<harvestcraft:honeycombitem>:<rustic:beeswax>,
<minecraft:rotten_flesh>:<rustic:tallow>,
<tconstruct:brownstone:3>:<tconstruct:brownstone:4>,
<tconstruct:brownstone:1>:<tconstruct:brownstone>,
<gregtech:meta_item_1:10140>:<tconstruct:ingots:4>,
<tconstruct:soil:2>:<tconstruct:materials:10>,
<tconstruct:soil:5>:<tconstruct:materials:11>,
<tconstruct:soil:1>:<tconstruct:materials:9>,
<tconstruct:soil>:<tconstruct:materials>,
<tconstruct:spaghetti:2>:<tconstruct:moms_spaghetti>,
<tconstruct:seared:3>:<tconstruct:seared:4>,
<tconstruct:slime_congealed:1>:<tconstruct:slime_channel:1> * 3,
<tconstruct:slime_congealed:2>:<tconstruct:slime_channel:2> * 3,
<tconstruct:slime_congealed:3>:<tconstruct:slime_channel:3> * 3,
<tconstruct:slime_congealed:4>:<tconstruct:slime_channel:4> * 3,
<tconstruct:slime_congealed:5>:<tconstruct:slime_channel:5> * 3,
<tconstruct:slime_congealed>:<tconstruct:slime_channel> * 3,
<tconstruct:soil:3>:<tconstruct:soil:4>,
<gregtech:meta_item_1:10802>:<thaumcraft:ingot>,
<thaumcraft:cluster:6>:<thaumcraft:quicksilver> * 2,
<gregtech:meta_item_1:805>:<botania:manaresource:17>,
<thermalfoundation:material:64>:<thermalfoundation:material:128>,
<thermalfoundation:material:65>:<thermalfoundation:material:129>,
<thermalfoundation:material:66>:<thermalfoundation:material:130>,
<thermalfoundation:material:67>:<thermalfoundation:material:131>,
<thermalfoundation:material:68>:<thermalfoundation:material:132>,
<thermalfoundation:ore:5>:<thermalfoundation:material:133>,
<thermalfoundation:material:69>:<thermalfoundation:material:133>,
<thermalfoundation:ore:6>:<thermalfoundation:material:134>,
<thermalfoundation:material:70>:<thermalfoundation:material:134>,
<thermalfoundation:material:71>:<thermalfoundation:material:135>,
<thermalfoundation:ore:7>:<thermalfoundation:material:135>,
<thermalfoundation:material:97>:<thermalfoundation:material:161>,
<thermalfoundation:material:98>:<thermalfoundation:material:162>,
<thermalfoundation:material:99>:<thermalfoundation:material:163>,
<thermalfoundation:material:818>:<thermalfoundation:material:864>,
<traverse:blue_rock_cobblestone>:<traverse:blue_rock>,
<traverse:red_rock_cobblestone>:<traverse:red_rock>
};

	

	
	
print("---------------Hellfire Kiln Vanilla furnace Recipe setup-----------------");

var x = 0;

for input, output in furnaceItems {
	
		val name = "hellfirekiln[" + x + "]" + input.commandString + "_to_" + output.commandString;
		print("Adding recipe: " + name);	
		x += 1;
		mods.modularmachinery.RecipeBuilder.newBuilder(name, "hellfire_kiln", 20)
			.addItemInput(input)
			.addItemOutput(output)
			.build();
}



print("---------------Hellfire Kiln Vanilla recipe furnace import End-----------------");
print("#ikwid");

#custom Kiln Recipes

		  mods.modularmachinery.RecipeBuilder.newBuilder("ore_aluminium_0", "hellfire_kiln", 20)
	     .addItemInput(<gregtech:ore_aluminium_0>)
	     .addItemOutput(<ore:ingotAluminium>.firstItem)
	     .build();
		  mods.modularmachinery.RecipeBuilder.newBuilder("ore_aluminium_01", "hellfire_kiln", 20)
	     .addItemInput(<gregtech:ore_aluminium_0:1>)
	     .addItemOutput(<ore:ingotAluminium>.firstItem)
	     .build();
		  mods.modularmachinery.RecipeBuilder.newBuilder("ore_aluminium_02", "hellfire_kiln", 20)
	     .addItemInput(<gregtech:ore_aluminium_0:2>)
	     .addItemOutput(<ore:ingotAluminium>.firstItem)
	     .build();
		  mods.modularmachinery.RecipeBuilder.newBuilder("ore_aluminium_03", "hellfire_kiln", 20)
	     .addItemInput(<gregtech:ore_aluminium_0:3>)
	     .addItemOutput(<ore:ingotAluminium>.firstItem)
	     .build();
		  mods.modularmachinery.RecipeBuilder.newBuilder("ore_aluminium_04", "hellfire_kiln", 20)
	     .addItemInput(<gregtech:ore_aluminium_0:4>)
	     .addItemOutput(<ore:ingotAluminium>.firstItem)
	     .build();
		  mods.modularmachinery.RecipeBuilder.newBuilder("ore_aluminium_05", "hellfire_kiln", 20)
	     .addItemInput(<gregtech:ore_aluminium_0:5>)
	     .addItemOutput(<ore:ingotAluminium>.firstItem)
	     .build();
		  mods.modularmachinery.RecipeBuilder.newBuilder("ore_aluminium_06", "hellfire_kiln", 20)
	     .addItemInput(<gregtech:ore_aluminium_0:6>)
	     .addItemOutput(<ore:ingotAluminium>.firstItem)
	     .build();
		  mods.modularmachinery.RecipeBuilder.newBuilder("ore_aluminium_07", "hellfire_kiln", 20)
	     .addItemInput(<gregtech:ore_aluminium_0:7>)
	     .addItemOutput(<ore:ingotAluminium>.firstItem)
	     .build();
		  mods.modularmachinery.RecipeBuilder.newBuilder("ore_aluminium_08", "hellfire_kiln", 20)
	     .addItemInput(<gregtech:ore_aluminium_0:8>)
	     .addItemOutput(<ore:ingotAluminium>.firstItem)
	     .build();
		  mods.modularmachinery.RecipeBuilder.newBuilder("ore_aluminium_09", "hellfire_kiln", 20)
	     .addItemInput(<gregtech:ore_aluminium_0:9>)
	     .addItemOutput(<ore:ingotAluminium>.firstItem)
	     .build();
		  mods.modularmachinery.RecipeBuilder.newBuilder("ore_aluminium_010", "hellfire_kiln", 20)
	     .addItemInput(<gregtech:ore_aluminium_0:10>)
	     .addItemOutput(<ore:ingotAluminium>.firstItem)
	     .build();
		  mods.modularmachinery.RecipeBuilder.newBuilder("ore_aluminium_011", "hellfire_kiln", 20)
	     .addItemInput(<gregtech:ore_aluminium_0:11>)
	     .addItemOutput(<ore:ingotAluminium>.firstItem)
	     .build();
		  mods.modularmachinery.RecipeBuilder.newBuilder("ore_aluminium_012", "hellfire_kiln", 20)
	     .addItemInput(<gregtech:ore_aluminium_0:12>)
	     .addItemOutput(<ore:ingotAluminium>.firstItem)
	     .build();
		  mods.modularmachinery.RecipeBuilder.newBuilder("ore_aluminium_013", "hellfire_kiln", 20)
	     .addItemInput(<gregtech:ore_aluminium_0:13>)
	     .addItemOutput(<ore:ingotAluminium>.firstItem)
	     .build();

		  mods.modularmachinery.RecipeBuilder.newBuilder("ore_aluminium_013", "hellfire_kiln", 20)
	     .addItemInput(<gregtech:ore_aluminium_0:13>)
	     .addItemOutput(<ore:ingotAluminium>.firstItem)
	     .build();
		 
		  mods.modularmachinery.RecipeBuilder.newBuilder("crudesteel", "hellfire_kiln", 20)
	     .addItemInput(<enderio:item_alloy_endergy_ingot>)
	     .addItemOutput(<ore:ingotSteel>.firstItem)
	     .build();

		  mods.modularmachinery.RecipeBuilder.newBuilder("arditeproc", "hellfire_kiln", 20)
	     .addItemInput(<tconstruct:ore:1>)
	     .addItemOutput(<tconstruct:ingots:1>)
	     .build();
	
		  mods.modularmachinery.RecipeBuilder.newBuilder("wroughtiron", "hellfire_kiln", 20)
	     .addItemInput(<minecraft:iron_ingot>)
	     .addItemOutput(<ore:ingotWroughtIron>.firstItem)
	     .build();
		 
		 
		 #remove and hide modularium
		 mods.jei.JEI.removeAndHide(<modularmachinery:itemmodularium>);
	

print("---------------Modular Machinery End-----------------");
