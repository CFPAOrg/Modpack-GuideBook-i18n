import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidStack;
import mods.contenttweaker.tconstruct.MaterialBuilder;
import mods.artisanworktables.builder.RecipeBuilder;
import mods.gregtech.recipe.PBFRecipeBuilder;
import mods.tconstruct.Casting;
import mods.gregtech.recipe.RecipeMap;
import mods.thaumcraft.Crucible;
import crafttweaker.data.IData;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.block.IBlockProperties;
import crafttweaker.block.IBlockDefinition;
import crafttweaker.block.IBlock;


print("---------------Tinkers Start------------------");


val mixer = mods.gregtech.recipe.RecipeMap.getByName("mixer");
val blast_furnace = mods.gregtech.recipe.RecipeMap.getByName("blast_furnace");
val macerator = mods.gregtech.recipe.RecipeMap.getByName("macerator");
val solidifier = mods.gregtech.recipe.RecipeMap.getByName("fluid_solidifier");

<tconstruct:ingots:1>.addTooltip(format.darkRed("可以在炼狱熔炉中制造。"));

	#creative modifier
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("tinkers:creative", "", 100, [<aspect:aer> * 25, <aspect:terra> *25, <aspect:ignis> *25, <aspect:aqua> *25, <aspect:ordo> *25, <aspect:perditio> *25], <tconstruct:materials:50>,
	[[<ore:ingotCosmicNeutronium>, <appliedenergistics2:material:1>, <ore:ingotCosmicNeutronium>],
	[<actuallyadditions:item_crystal_empowered:2>, <astralsorcery:itemshiftingstar>.withTag({astralsorcery: {starAttunement: "astralsorcery.constellation.evorsio"}}), <actuallyadditions:item_crystal_empowered:2>],
	[<ore:ingotCosmicNeutronium>, <appliedenergistics2:material:1>, <ore:ingotCosmicNeutronium>]
	]);	


	#Osgloglas
blast_furnace.recipeBuilder()
	.inputs([<ore:ingotOsmium>, <ore:ingotRefinedObsidian>, <ore:ingotRefinedGlowstone>])
	.outputs(<ore:ingotOsgloglas>.firstItem)
	.EUt(480)
	.duration(1200)
	.buildAndRegister();

	#ardite harvest level
var arditeOre = <tconstruct:ore:1> as IBlock;
arditeOre.definition.setHarvestLevel("pickaxe", 3);

mods.tconstruct.Melting.removeRecipe(<liquid:iron>, <chisel:chisel_iron>);

	#remove ardite ore smelting
mods.tconstruct.Melting.removeRecipe(<liquid:ardite>, <tconstruct:ore:1>);

	val arditeStack = <tconstruct:nuggets:1> *2;

	#ardite cooks into slag
	<tconstruct:ore:1>.addTooltip(format.darkRed("只能在炼狱熔炉或炼狱窑炉里熔炼成阿迪特。"));
	furnace.remove(<tconstruct:ore:1>);
	furnace.addRecipe(<thermalfoundation:material:864>, <tconstruct:ore:1>);
	mods.thaumcraft.SmeltingBonus.addSmeltingBonus(<tconstruct:ore:1>, arditeStack % 100);

	#enderium melting
mods.tconstruct.Melting.removeRecipe(<liquid:enderium>, <thermalfoundation:material:103>);
mods.tconstruct.Melting.removeRecipe(<liquid:enderium>, <ore:dustEnderium>.firstItem);

	#signalum melting
mods.tconstruct.Melting.removeRecipe(<liquid:signalum>, <thermalfoundation:material:101>);
mods.tconstruct.Melting.removeRecipe(<liquid:signalum>, <ore:dustSignalum>.firstItem);

mods.tconstruct.Melting.removeRecipe(<liquid:osmium>); //hard remove osmium from tinkers

	#alumite - dust
mixer.recipeBuilder()
    .inputs(<ore:dustIron> * 2, <ore:dustAluminium> * 5)
    .fluidInputs([<liquid:obsidian> * 288])
	.fluidOutputs(<liquid:alumite> * 432)
    .duration(80)
    .EUt(48)
    .buildAndRegister();

	#wooden hopper
mods.jei.JEI.removeAndHide(<tconstruct:wooden_hopper>);

	#melter alloyers from tinkers compliment
mods.jei.JEI.removeAndHide(<tcomplement:porcelain_alloy_tank>);
mods.jei.JEI.removeAndHide(<tcomplement:alloy_tank>);

	#slime slings
recipes.remove(<tconstruct:slimesling:1>);
recipes.remove(<tconstruct:slimesling:4>);
recipes.remove(<tconstruct:slimesling:2>);
recipes.remove(<tconstruct:slimesling>);
recipes.remove(<tconstruct:slimesling:3>);
recipes.removeByRecipeName("tconstruct:gadgets/slimesling/fallback");
recipes.removeByRecipeName("tconstruct:gadgets/slimeboots/fallback");


recipes.addShapeless(<tconstruct:slimesling>, [<tconstruct:slimesling:1>,<minecraft:slime_ball>]);
recipes.addShapeless(<tconstruct:slimesling>, [<tconstruct:slimesling:4>,<minecraft:slime_ball>]);
recipes.addShapeless(<tconstruct:slimesling>, [<tconstruct:slimesling:2>,<minecraft:slime_ball>]);
recipes.addShapeless(<tconstruct:slimesling>, [<tconstruct:slimesling:3>,<minecraft:slime_ball>]);
recipes.addShapeless(<tconstruct:slimesling:1>, [<tconstruct:slimesling>,<tconstruct:edible:1>]);
recipes.addShapeless(<tconstruct:slimesling:4>, [<tconstruct:slimesling>,<tconstruct:edible:4>]);
recipes.addShapeless(<tconstruct:slimesling:2>, [<tconstruct:slimesling>,<tconstruct:edible:2>]);
recipes.addShapeless(<tconstruct:slimesling:3>, [<tconstruct:slimesling>,<tconstruct:edible:3>]);
recipes.addShaped(<tconstruct:slimesling>,
	[[<minecraft:slime_ball>, <thaumcraft:tallow>, <minecraft:slime_ball>],
	[<botania:manaresource:16>, null, <botania:manaresource:16>],
	[null, <ore:stickSteel>, null]]);

	#alumite - <plustic:alumiteingot>
blast_furnace.recipeBuilder()
    .inputs(<ore:ingotConstructionAlloy>, <ore:ingotAluminium>)
    .outputs(<plustic:alumiteingot>)
    .property("temperature", 1000)
    .duration(120)
    .EUt(120)
    .buildAndRegister();


    #Cast Removal
var castsRemovedAndHidden as IItemStack[] = [
	<tconstruct:cast_custom:3>,
	<tconstruct:cast_custom:4>,
	<tconstruct:clay_cast>.withTag({PartType: "tconstruct:hammer_head"}),
	<tconstruct:clay_cast>.withTag({PartType: "tconstruct:large_plate"}),
	<tconstruct:clay_cast>.withTag({PartType: "tconstruct:tough_binding"}),
	<tconstruct:clay_cast>.withTag({PartType: "tconstruct:large_sword_blade"}),
	<tconstruct:clay_cast>.withTag({PartType: "tconstruct:tough_tool_rod"}),
	<tconstruct:clay_cast>.withTag({PartType: "tconstruct:sharpening_kit"}),
	<tconstruct:clay_cast>.withTag({PartType: "tconstruct:excavator_head"}),
	<tconstruct:clay_cast>.withTag({PartType: "tconstruct:broad_axe_head"}),
	<tcomplement:cast_clay>,
	<minecraft:bucket>,
	<tconstruct:clay_cast>.withTag({PartType: "tconstruct:knife_blade"})
];

for i in castsRemovedAndHidden {
	mods.tconstruct.Casting.removeTableRecipe(i);
	mods.jei.JEI.removeAndHide(i);
}

    #Cast recipe removal
var castsToChisel as IItemStack[] = [
	<tconstruct:cast>.withTag({PartType: "tconstruct:cross_guard"}),
	<tconstruct:cast>.withTag({PartType: "tcomplement:chisel_head"}),
	<tconstruct:cast>.withTag({PartType: "tconstruct:wide_guard"}),
	<tconstruct:cast>.withTag({PartType: "tconstruct:bow_limb"}),
	<tconstruct:cast>.withTag({PartType: "tconstruct:kama_head"}),
	<tconstruct:cast>.withTag({PartType: "tconstruct:axe_head"}),
	<tconstruct:cast>.withTag({PartType: "tconstruct:bow_string"}),
	<tconstruct:cast>.withTag({PartType: "tconstruct:excavator_head"}),
	<tconstruct:cast>.withTag({PartType: "tconstruct:binding"}),
	<tconstruct:cast>.withTag({PartType: "tconstruct:tough_binding"}),
	<tconstruct:cast>.withTag({PartType: "tconstruct:hammer_head"}),
	<tconstruct:cast>.withTag({PartType: "tconstruct:large_sword_blade"}),
	<tconstruct:cast>.withTag({PartType: "tconstruct:tool_rod"}),
	<tconstruct:cast>.withTag({PartType: "tconstruct:knife_blade"}),
	<tconstruct:cast_custom>,
	<tconstruct:cast_custom:1>,
	<tconstruct:cast_custom:2>,
	<tconstruct:cast>.withTag({PartType: "tconstruct:sharpening_kit"}),
	<tconstruct:cast>.withTag({PartType: "tconstruct:sword_blade"}),
	<tconstruct:cast>.withTag({PartType: "tconstruct:pan_head"}),
	<tconstruct:cast>.withTag({PartType: "tconstruct:arrow_shaft"}),
	<tconstruct:cast>.withTag({PartType: "tconstruct:hand_guard"}),
	<tconstruct:cast>.withTag({PartType: "tconstruct:arrow_head"}),
	<tconstruct:cast>.withTag({PartType: "tconstruct:tough_tool_rod"}),
	<tconstruct:cast>.withTag({PartType: "tconstruct:broad_axe_head"}),
	<tconstruct:cast>.withTag({PartType: "tconstruct:scythe_head"}),
	<tconstruct:cast>.withTag({PartType: "tconstruct:sign_head"}),
	<tconstruct:cast>.withTag({PartType: "tconstruct:shovel_head"}),
	<tconstruct:cast>.withTag({PartType: "tconstruct:pick_head"}),
	<tconstruct:cast>.withTag({PartType: "tconstruct:shard"}),
	<tconstruct:cast>.withTag({PartType: "tconstruct:large_plate"}),
	<tconstruct:cast>.withTag({PartType: "tconstruct:fletching"})
	];


for i in castsToChisel {
mods.tconstruct.Casting.removeTableRecipe(i);
i.addTooltip(format.darkRed("通过凿空白铸模获得。"));
mods.chisel.Carving.addVariation("TinkersCasts", i);
}


#Add tinkers glass to glass chisel group
mods.chisel.Carving.addVariation("glass", <tconstruct:clear_glass:0>);

	#starter Flint Tools
	val flintHatchet = <tconstruct:hatchet>.withTag({display: {Name: "Rudimentary Hatchet"}, StatsOriginal: {AttackSpeedMultiplier: 1.0 as float, MiningSpeed: 5.0 as float, FreeModifiers: 3, Durability: 54, HarvestLevel: 1, Attack: 3.4 as float}, Stats: {AttackSpeedMultiplier: 1.0 as float, MiningSpeed: 5.0 as float, FreeModifiers: 3, Durability: 54, HarvestLevel: 1, Attack: 3.4 as float}, Special: {Categories: ["tool", "aoe", "weapon", "harvest"]}, TinkerData: {Materials: ["flint", "flint", "flint"], Modifiers: []}, Modifiers: [{identifier: "crude", color: -9868951, level: 3, crude1: 1 as byte, crude2: 1 as byte}], Traits: ["crude1", "crude2"]});
	val flintPickaxe = <tconstruct:pickaxe>.withTag({display: {Name: "Rudimentary Pickaxe"}, StatsOriginal: {AttackSpeedMultiplier: 1.0 as float, MiningSpeed: 5.0 as float, FreeModifiers: 3, Durability: 54, HarvestLevel: 1, Attack: 2.9 as float}, Stats: {AttackSpeedMultiplier: 1.0 as float, MiningSpeed: 5.0 as float, FreeModifiers: 3, Durability: 54, HarvestLevel: 1, Attack: 2.9 as float}, Special: {Categories: ["tool", "aoe", "harvest"]}, TinkerData: {Materials: ["flint", "flint", "flint"], Modifiers: []}, Modifiers: [{identifier: "crude", color: -9868951, level: 3, crude1: 1 as byte, crude2: 1 as byte}], Traits: ["crude1", "crude2"]});
	val flintShovel = <tconstruct:shovel>.withTag({display: {Name: "Rudimentary Shovel"}, StatsOriginal: {AttackSpeedMultiplier: 1.0 as float, MiningSpeed: 5.0 as float, FreeModifiers: 3, Durability: 54, HarvestLevel: 1, Attack: 2.9 as float}, Stats: {AttackSpeedMultiplier: 1.0 as float, MiningSpeed: 5.0 as float, FreeModifiers: 3, Durability: 54, HarvestLevel: 1, Attack: 2.9 as float}, Special: {Categories: ["tool", "aoe", "harvest"]}, TinkerData: {Materials: ["flint", "flint", "flint"], Modifiers: []}, Modifiers: [{identifier: "crude", color: -9868951, level: 3, crude1: 1 as byte, crude2: 1 as byte}], Traits: ["crude1", "crude2"]});


	mods.jei.JEI.addItem(flintHatchet);
	mods.jei.JEI.addItem(flintPickaxe);
	mods.jei.JEI.addItem(flintShovel);


	recipes.addShapeless(flintHatchet,
	[<tconstruct:axe_head>.withTag({Material: "flint"}),<tconstruct:stone_stick>]);

	recipes.addShapeless(flintShovel,
	[<tconstruct:shovel_head>.withTag({Material: "flint"}),<tconstruct:stone_stick>]);

	recipes.addShapeless(flintPickaxe,
	[<tconstruct:pick_head>.withTag({Material: "flint"}),<tconstruct:stone_stick>]);

	recipes.addShaped(<tconstruct:axe_head>.withTag({Material: "flint"}),
	[[<minecraft:flint>, <minecraft:flint>],
	[null, null]]);

	recipes.addShaped(<tconstruct:shovel_head>.withTag({Material: "flint"}),
	[[null, <minecraft:flint>],
	[null, <minecraft:flint>]]);

	recipes.addShaped(<tconstruct:pick_head>.withTag({Material: "flint"}),
	[[<minecraft:flint>, <minecraft:flint>],
	[<minecraft:flint>, null]]);

	#manually add blank cast
	mods.chisel.Carving.addVariation("TinkersCasts", <tconstruct:cast>);

	#ClayCasts
var clayCastsToChisel as IItemStack[] = [
	<tconstruct:clay_cast>.withTag({PartType: "tconstruct:cross_guard"}),
	<tconstruct:clay_cast>.withTag({PartType: "tcomplement:chisel_head"}),
	<tconstruct:clay_cast>.withTag({PartType: "tconstruct:wide_guard"}),
	<tconstruct:clay_cast>.withTag({PartType: "tconstruct:bow_limb"}),
	<tconstruct:clay_cast>.withTag({PartType: "tconstruct:pick_head"}),
	<tconstruct:clay_cast>.withTag({PartType: "tconstruct:shovel_head"}),
	<tconstruct:clay_cast>.withTag({PartType: "tconstruct:sign_head"}),
	<tconstruct:clay_cast>.withTag({PartType: "tconstruct:scythe_head"}),
	<tconstruct:clay_cast>.withTag({PartType: "tconstruct:arrow_head"}),
	<tconstruct:clay_cast>.withTag({PartType: "tconstruct:hand_guard"}),
	<tconstruct:clay_cast>.withTag({PartType: "tconstruct:arrow_shaft"}),
	<tconstruct:clay_cast>.withTag({PartType: "tconstruct:tool_rod"}),
	<tconstruct:clay_cast>.withTag({PartType: "tconstruct:sword_blade"}),
	<tconstruct:clay_cast>.withTag({PartType: "tconstruct:pan_head"}),
	<tconstruct:clay_cast>.withTag({PartType: "tconstruct:shard"}),
	<tconstruct:clay_cast>.withTag({PartType: "tconstruct:fletching"}),
	<tconstruct:clay_cast>.withTag({PartType: "tconstruct:kama_head"}),
	<tconstruct:clay_cast>.withTag({PartType: "tconstruct:bow_string"}),
	<tconstruct:clay_cast>.withTag({PartType: "tconstruct:axe_head"}),
	<tconstruct:clay_cast>.withTag({PartType: "tconstruct:binding"})
	];

mods.chisel.Carving.addGroup("TinkersClayCasts");
for i in clayCastsToChisel {
i.addTooltip(format.darkRed("通过凿牌板粘土铸模获得。"));
mods.tconstruct.Casting.removeTableRecipe(i);
mods.chisel.Carving.addVariation("TinkersClayCasts", i);
}
	mods.tconstruct.Casting.addTableRecipe(<tconstruct:clay_cast>.withTag({PartType: "tconstruct:sign_head"}), <ore:formWood>, <liquid:clay>, 288, false, 180);


	#coagulated blood ball from life essence or tinkers blood
	solidifier.recipeBuilder()
    .fluidInputs([<liquid:blood> * 160])
	.notConsumable(<metaitem:shape.mold.ball>)
	.outputs(<tconstruct:edible:3>)
	.duration(80)
	.EUt(18)
	.buildAndRegister();

	solidifier.recipeBuilder()
    .fluidInputs([<liquid:lifeessence> * 200])
	.notConsumable(<metaitem:shape.mold.ball>)
	.outputs(<tconstruct:edible:3>)
	.duration(80)
	.EUt(18)
	.buildAndRegister();


	#flint sharpening kits
	mods.tconstruct.Casting.addTableRecipe(<tconstruct:sharpening_kit>.withTag({Material: "flint"}), <minecraft:flint>, <liquid:clay>, 144, true, 180);
	
    #Disabled Cast Basin Items and alloyer
var disabledBasin as IItemStack[] = [
	<tconstruct:seared_furnace_controller>,
	<tcomplement:porcelain_alloy_tank>
];

for i in disabledBasin {
	mods.tconstruct.Casting.removeBasinRecipe(i);
}

	#disable sponge parts in part builder
	mods.tconstruct.Casting.removeTableRecipe(<tconstruct:binding>.withTag({Material: "sponge"}));
	mods.tconstruct.Casting.removeTableRecipe(<tconstruct:tough_binding>.withTag({Material: "sponge"}));
	mods.tconstruct.Casting.removeTableRecipe(<tconstruct:tool_rod>.withTag({Material: "sponge"}));

	#Disabled Cast Table Items
var disabledCasts as IItemStack[] = [
	<ore:plateIron>.firstItem,
	<ore:plateCopper>.firstItem,
	<ore:plateBronze>.firstItem,
	<ore:plateLead>.firstItem,
	<ore:plateCobalt>.firstItem,
	<ore:plateSilver>.firstItem,
	<ore:plateElectrum>.firstItem,
	<ore:plateSteel>.firstItem,
	<ore:plateGold>.firstItem,
	<ore:plateBrass>.firstItem,
	<ore:plateTin>.firstItem,
	<ore:plateNickel>.firstItem,
	<ore:plateZinc>.firstItem,
	<ore:plateEnderium>.firstItem,
	<ore:plateThaumium>.firstItem,
	<ore:plateOsmiridium>.firstItem,
	<ore:plateInvar>.firstItem,
	<ore:plateTerrasteel>.firstItem,
	<ore:plateManasteel>.firstItem,
	<ore:plateIridium>.firstItem,
	<ore:plateSignalum>.firstItem,
	<ore:platePlatinum>.firstItem,
	<ore:plateLumium>.firstItem,
	<ore:plateStellarAlloy>.firstItem,
	<ore:gearLumium>.firstItem,
	<ore:gearStellarAlloy>.firstItem,
	<ore:gearIron>.firstItem,
	<ore:gearGold>.firstItem,
	<ore:gearBrass>.firstItem,
	<ore:gearTin>.firstItem,
	<ore:gearThaumium>.firstItem,
	<ore:gearEnderium>.firstItem,
	<ore:gearOsmiridium>.firstItem,
	<ore:gearInvar>.firstItem,
	<ore:gearTerrasteel>.firstItem,
	<ore:gearManasteel>.firstItem,
	<ore:gearIridium>.firstItem,
	<ore:gearSignalum>.firstItem,
	<ore:gearStellarAlloy>.firstItem,
	<ore:gearSteel>.firstItem,
	<ore:gearCopper>.firstItem,
	<ore:gearBronze>.firstItem,
	<ore:gearLead>.firstItem,
	<ore:gearPlatinum>.firstItem,
	<ore:gearSilver>.firstItem,
	<ore:gearElectrum>.firstItem
];

for i in disabledCasts {
	mods.tconstruct.Casting.removeTableRecipe(i);
}

	#Disabled Items
var disabledTcon as IItemStack[] = [
	<tcomplement:manyullyn_helmet>,
	<tcomplement:manyullyn_chestplate>,
	<tcomplement:manyullyn_leggings>,
	<tcomplement:manyullyn_boots>,
	<tcomplement:knightslime_helmet>,
	<tcomplement:knightslime_chestplate>,
	<tcomplement:knightslime_leggings>,
	<tcomplement:knightslime_boots>,
	<tcomplement:cast>,
	<tcomplement:materials>,
	<tconstruct:throwball:1>,
	<tcomplement:porcelain_melter:8>,
	<tcomplement:melter:8>,
	<tcomplement:melter>
	];

for i in disabledTcon {
	mods.jei.JEI.removeAndHide(i);
}

	#ardite maceration
macerator.recipeBuilder()
    .inputs(<ore:oreArdite>)
	.outputs(<enderio:item_material:30> *2)
	.chancedOutput(<enderio:item_material:30>, 500, 200)
    .duration(80)
    .EUt(24)
    .buildAndRegister();
	
macerator.recipeBuilder()
    .inputs(<ore:blockArdite>)
	.outputs(<enderio:item_material:30> *9)
    .duration(100)
    .EUt(24)
    .buildAndRegister();	

macerator.recipeBuilder()
    .inputs(<ore:ingotArdite>.firstItem)
	.outputs(<enderio:item_material:30>)
    .duration(40)
    .EUt(24)
    .buildAndRegister();

	#ardite smelting
PBFRecipeBuilder.start()
    .input(<ore:dustArdite>)
    .output(<ore:ingotArdite>.firstItem)
    .duration(250)
    .fuelAmount(2)
    .buildAndRegister();


blast_furnace.recipeBuilder()
    .inputs(<enderio:item_material:30>)
    .fluidInputs([<liquid:oxygen> * 250])
    .outputs(<tconstruct:ingots:1>)
    .property("temperature", 1350)
    .duration(480)
    .EUt(120)
    .buildAndRegister();

	#cobalt from dust
blast_furnace.recipeBuilder()
    .inputs(<ore:dustCobalt>)
    .fluidInputs([<liquid:oxygen> * 250])
    .outputs(<ore:ingotCobalt>.firstItem)
    .property("temperature", 1200)
    .duration(240)
    .EUt(120)
    .buildAndRegister();

	#Drying rack
recipes.remove(<tconstruct:rack:1>);
recipes.addShaped(<tconstruct:rack:1>.withTag({textureBlock: {id: "minecraft:wooden_slab", Count: 1 as byte, Damage: 0 as short}}), [
	[<ore:slabWood>, <ore:slabWood>, <ore:slabWood>],
	[<ore:string>, <ore:string>, <ore:string>],
	[<ore:slabWood>, <ore:slabWood>, <ore:slabWood>]]);


	#crafting station
recipes.remove(<tconstruct:tooltables>);
mods.botania.PureDaisy.addRecipe(<minecraft:crafting_table>, <tconstruct:tooltables>, 120);

	#Fancy item frame
recipes.remove(<tconstruct:fancy_frame>);
recipes.addShaped(<tconstruct:fancy_frame>,
[[null, <ore:nuggetBrass>, null],
[<ore:nuggetBrass>, <minecraft:obsidian>, <ore:nuggetBrass>],
[null, <ore:nuggetBrass>, null]]);


	#Alloys Removed
var alloysRemoved as ILiquidStack[]= [
	<liquid:signalum>,
	<liquid:enderium>,
	<liquid:lumium>,
	<liquid:osgloglas>,
	<liquid:osmiridium>,
	<liquid:invar>,
	<liquid:constantan>,
	<liquid:alubrass>,
	<liquid:alumite>,
	<liquid:knightslime>,
	<liquid:brass>,
	<liquid:energetic_alloy>,
	<liquid:vibrant_alloy>,
	<liquid:pulsating_iron>,
	<liquid:conductive_iron>,
	<liquid:osmiridium>
	];

for i in alloysRemoved {
	mods.tconstruct.Alloy.removeRecipe(i);
}

	#PigIron
furnace.addRecipe(<tconstruct:ingots:4>, ingotGTPigIron);

	#remove melting recipes - removes all first, then we can selectively add ingot melting back in on an add needed basis
mods.tconstruct.Melting.removeRecipe(<liquid:titanium>);
mods.tconstruct.Melting.removeRecipe(<liquid:iridium>);
mods.tconstruct.Melting.removeRecipe(<liquid:cobalt>);
mods.tconstruct.Melting.removeRecipe(<liquid:ardite>);
mods.tconstruct.Melting.removeRecipe(<liquid:constantan>);
mods.tconstruct.Melting.removeRecipe(<liquid:redstone>);
mods.tconstruct.Melting.removeRecipe(<liquid:glowstone>);

	#Knightslime
mods.thaumcraft.Crucible.registerRecipe("Knightslime", "BASEALCHEMY", <tconstruct:ingots:3>*2, <tconstruct:edible:2>,
	[<aspect:terra> * 10, <aspect:metallum> *15, <aspect:perditio> *5, <aspect:aqua> *2]);

	#Grout
recipes.remove(<tconstruct:soil>);
recipes.addShaped(<tconstruct:soil>*4, [
	[<ore:gravel>, <ore:sand>, <ore:gravel>],
	[<ore:sand>, <minecraft:clay>, <ore:sand>],
	[<ore:gravel>, <ore:sand>, <ore:gravel>]]);

recipes.addShapeless(<tconstruct:soil>,
	[<ore:gravel>, <ore:sand>, <ore:itemClay>]);

	#Seared Furnace
recipes.remove(<tconstruct:seared_furnace_controller>);
RecipeBuilder.get("basic")
	.setShaped([
		[<ore:ingotBrickSeared>, <ore:ingotBrickSeared>, <ore:ingotBrickSeared>],
		[<ore:plateCopper>, null, <ore:plateCopper>],
		[<ore:ingotBrickSeared>, <ore:ingotBrickSeared>, <ore:ingotBrickSeared>]])
	.addTool(<ore:artisanHammers>, 50)
	.setFluid(<liquid:lava> * 750)
	.addOutput(<tconstruct:seared_furnace_controller>)
	.create();

	#Manyullyn
blast_furnace.recipeBuilder()
    .inputs(<ore:dustArdite>, <ore:dustCobalt>)
    .outputs(<tconstruct:ingots:2>)
	.fluidInputs([<liquid:nitrogen> * 500])
    .property("temperature", 2500)
    .duration(980)
    .EUt(120)
    .buildAndRegister();

	#Seared Stone
mods.botania.PureDaisy.addRecipe(<tconstruct:soil>, <tconstruct:seared>, 120);

	#Seared Stone (Liquid)
mods.tconstruct.Melting.removeRecipe(<liquid:stone>);
mods.tconstruct.Melting.addRecipe(<liquid:stone>*72, <ore:ingotBrickSeared>);
mods.tconstruct.Melting.addRecipe(<liquid:stone>*288, <tconstruct:soil>);
mods.tconstruct.Melting.addRecipe(<liquid:stone>*288, <ore:blockSeared>);
mods.tconstruct.Melting.addRecipe(<liquid:stone>*72, <tconstruct:seared>);

	#Slime Boots
recipes.remove(<tconstruct:slime_boots>);
recipes.remove(<tconstruct:slime_boots:1>);
recipes.remove(<tconstruct:slime_boots:2>);
recipes.remove(<tconstruct:slime_boots:3>);
recipes.remove(<tconstruct:slime_boots:4>);

	#sharpening kits
mods.jei.JEI.hide(<tconstruct:sharpening_kit>);
mods.jei.JEI.hide(<tconstruct:pattern>.withTag({PartType: "tconstruct:sharpening_kit"}));


	#Smeltery Controller
recipes.remove(<tconstruct:smeltery_controller>);
<tconstruct:smeltery_controller>.addTooltip(format.darkRed("已被禁用，它出现在JEI的原因只因为如果隐藏了它的话，微缩陶瓷冶炼炉的配方也会被隐藏。"));

	#Slime Saplings
mods.astralsorcery.Altar.addDiscoveryAltarRecipe("interactions:blueslimesapling", <tconstruct:slime_sapling>, 120, 200,
	[<ore:dyeBlue>, <ore:slimeball>, <ore:dyeBlue>,
	<ore:slimeball>, <metaitem:plant_ball>, <ore:slimeball>,
	<integrateddynamics:crystalized_menril_chunk>, <ore:slimeball>, <integrateddynamics:crystalized_menril_chunk>]);
mods.astralsorcery.Altar.addDiscoveryAltarRecipe("interactions:purpleslimesapling", <tconstruct:slime_sapling:1>, 120, 200,
	[<ore:dyePurple>, <ore:slimeball>, <ore:dyePurple>,
	<ore:slimeball>, <metaitem:plant_ball>, <ore:slimeball>,
	<integrateddynamics:crystalized_menril_chunk>, <ore:slimeball>, <integrateddynamics:crystalized_menril_chunk>]);
mods.astralsorcery.Altar.addDiscoveryAltarRecipe("interactions:magmaslimesapling", <tconstruct:slime_sapling:2>, 120, 200,
	[<minecraft:magma_cream>, <ore:slimeball>, <minecraft:magma_cream>,
	<ore:slimeball>, <metaitem:plant_ball>, <ore:slimeball>,
	<integrateddynamics:crystalized_menril_chunk>, <ore:slimeball>, <integrateddynamics:crystalized_menril_chunk>]);

	#Tool Station
recipes.remove(<tconstruct:tooltables:3>);
mods.botania.PureDaisy.addRecipe(<artisanworktables:worktable:5>, <tconstruct:tooltables:3>, 120);

	#Porcelain melter
recipes.remove(<tcomplement:porcelain_melter>);
RecipeBuilder.get("basic")
	.setShaped([
		[<ceramics:unfired_clay:5>, <ore:ingotBrickSeared>, <ceramics:unfired_clay:5>],
		[<ore:ingotBrickSeared>, <primal_tech:clay_kiln>, <ore:ingotBrickSeared>],
		[<ceramics:unfired_clay:5>, <ore:ingotBrickSeared>, <ceramics:unfired_clay:5>]])
	.addTool(<ore:artisanHammers>, 50)
	.setFluid(<liquid:lava> * 250)
	.addOutput(<tcomplement:porcelain_melter>)
	.create();

	#libvulpes titanium block
mods.tconstruct.Casting.removeBasinRecipe(<libvulpes:metal0:7>);


/////////////////////////
// Tinker's Gregstruct //
/////////////////////////
#######################################################
	#Bronze Tier Materials at LV Exruder for Basic Parts (Keep Casting)
var matLVKeepCast as IItemStack[string] = {
	"invar" : <ore:ingotInvar>.firstItem,
	"nickel" : <ore:ingotNickel>.firstItem,
	"lead" : <ore:ingotLead>.firstItem,
	"iron" : <minecraft:iron_ingot>,
	"pigiron" : <ore:ingotPigiron>.firstItem,
	"electrum" : <ore:ingotElectrum>.firstItem,
	"silver" : <ore:ingotSilver>.firstItem,
	"bronze" : <ore:ingotBronze>.firstItem,
	"restonia_actadd_plustic" : <actuallyadditions:item_crystal>,
	"void_actadd_plustic" : <actuallyadditions:item_crystal:3>,
	"fluixcrystal_plustic" : <ore:crystalFluix>.firstItem,
	"palis_actadd_plustic" : <actuallyadditions:item_crystal:1>,
	"paper" : <minecraft:paper>,
	"enori_actadd_plustic" : <actuallyadditions:item_crystal:5>,
};

var tconPartsMapLVKeepCast as IData[][IItemStack] = {
	<tconstruct:tool_rod> : [2, "tconstruct:tool_rod"],
	<tconstruct:pick_head> : [3, "tconstruct:pick_head"],
	<tconstruct:shovel_head> : [2, "tconstruct:shovel_head"],
	<tconstruct:axe_head> : [2, "tconstruct:axe_head"],
	<tconstruct:sword_blade> : [4, "tconstruct:sword_blade"],
	<tconstruct:kama_head> : [2, "tconstruct:kama_head"],
	<tconstruct:wide_guard> : [2 , "tconstruct:wide_guard"],
	<tconstruct:hand_guard> : [2, "tconstruct:hand_guard"],
	<tconstruct:binding> : [2, "tconstruct:binding"],
	<tconstruct:pan_head> : [4, "tconstruct:pan_head"],
	<tconstruct:sign_head> : [4, "tconstruct:sign_head"],
	<tconstruct:sharpening_kit> : [2, "tconstruct:sharpening_kit"],
	<tconstruct:bow_limb> : [4, "tconstruct:bow_limb"],
	<tconstruct:arrow_head> : [2, "tconstruct:arrow_head"],
	<tcomplement:chisel_head> : [1, "tcomplement:chisel_head"]
};

for mat, ingot in matLVKeepCast {
	for part, info in tconPartsMapLVKeepCast {
		mods.gregtech.recipe.RecipeMap.getByName("extruder").recipeBuilder()
			.inputs(ingot * info[0])
			.notConsumable(<tconstruct:cast>.withTag({PartType: info[1]}))
			.outputs(part.withTag({Material: mat}))
			.duration(300* info[0])
			.EUt(30)
			.buildAndRegister();
	}
}
#######################################################
	#Bronze Tier Materials but at MV extuder for Forge Parts and casting removal
var matForgeLVKeepCast as IItemStack[string] = {
	"lead" : <ore:ingotLead>.firstItem,
	"iron" : <minecraft:iron_ingot>,
	"pigiron" : <ore:ingotPigiron>.firstItem,
	"electrum" : <ore:ingotElectrum>.firstItem,
	"silver" : <ore:ingotSilver>.firstItem,
	"bronze" : <ore:ingotBronze>.firstItem,
	"invar" : <ore:ingotInvar>.firstItem,
	"nickel" : <ore:ingotNickel>.firstItem,
};

var tconForgePartsMapLVKeepCast as IData[][IItemStack] = {
	<tconstruct:knife_blade> : [4, "tconstruct:knife_blade"],
	<tconstruct:cross_guard> : [8, "tconstruct:cross_guard"],
	<tconstruct:tough_binding> : [12, "tconstruct:tough_binding"],
	<tconstruct:tough_tool_rod> : [16, "tconstruct:tough_tool_rod"],
	<tconstruct:scythe_head> : [16 , "tconstruct:scythe_head"],
	<tconstruct:large_sword_blade> : [16, "tconstruct:large_sword_blade"],
	<tconstruct:broad_axe_head> : [32, "tconstruct:broad_axe_head"],
	<tconstruct:excavator_head> : [32, "tconstruct:excavator_head"],
	<tconstruct:hammer_head> : [32, "tconstruct:hammer_head"],
	<tconstruct:large_plate> : [24, "tconstruct:large_plate"],
	<tcomplement:chisel_head> : [1, "tcomplement:chisel_head"]
};

for mat, ingot in matForgeLVKeepCast {
	for part, info in tconForgePartsMapLVKeepCast {
		mods.tconstruct.Casting.removeTableRecipe(part.withTag({Material: mat}));
		mods.gregtech.recipe.RecipeMap.getByName("extruder").recipeBuilder()
			.inputs(ingot * info[0])
			.notConsumable(<tconstruct:cast>.withTag({PartType: info[1]}))
			.outputs(part.withTag({Material: mat}))
			.duration(300* info[0])
			.EUt(120)
			.buildAndRegister();
	}
}

#######################################################
	#Bronze Materials but at MV Extruder due to Forge Parts and no casting
var matForgeLVNoCast as IItemStack[string] = {
	"restonia_actadd_plustic" : <actuallyadditions:item_crystal>,
	"void_actadd_plustic" : <actuallyadditions:item_crystal:3>,
	"fluixcrystal_plustic" : <ore:crystalFluix>.firstItem,
	"palis_actadd_plustic" : <actuallyadditions:item_crystal:1>,
	"paper" : <minecraft:paper>,
	"enori_actadd_plustic" : <actuallyadditions:item_crystal:5>,
};

var tconForgePartsMapLVNoCast as IData[][IItemStack] = {
	<tconstruct:knife_blade> : [4, "tconstruct:knife_blade"],
	<tconstruct:cross_guard> : [8, "tconstruct:cross_guard"],
	<tconstruct:tough_binding> : [12, "tconstruct:tough_binding"],
	<tconstruct:tough_tool_rod> : [16, "tconstruct:tough_tool_rod"],
	<tconstruct:scythe_head> : [16 , "tconstruct:scythe_head"],
	<tconstruct:large_sword_blade> : [16, "tconstruct:large_sword_blade"],
	<tconstruct:broad_axe_head> : [32, "tconstruct:broad_axe_head"],
	<tconstruct:excavator_head> : [32, "tconstruct:excavator_head"],
	<tconstruct:hammer_head> : [32, "tconstruct:hammer_head"],
	<tconstruct:large_plate> : [24, "tconstruct:large_plate"],
	<tcomplement:chisel_head> : [1, "tcomplement:chisel_head"]
};

for mat, ingot in matForgeLVNoCast {
	for part, info in tconForgePartsMapLVNoCast {
		mods.gregtech.recipe.RecipeMap.getByName("extruder").recipeBuilder()
			.inputs(ingot * info[0])
			.notConsumable(<tconstruct:cast>.withTag({PartType: info[1]}))
			.outputs(part.withTag({Material: mat}))
			.duration(300* info[0])
			.EUt(120)
			.buildAndRegister();
	}
}

#######################################################
	#LV Materials at LV Extruder for Basic Parts (Remove Casting)
var matLVRemoveCast as IItemStack[string] = {
	"pulsating_iron" : <ore:ingotPulsatingIron>.firstItem,
	"thaumium" : <ore:ingotThaumium>.firstItem,
	"electrical_steel" : <ore:ingotElectricalSteel>.firstItem,
	"redstone_alloy" : <ore:ingotRedstoneAlloy>.firstItem,
	"integrationforegoing.pink_slime" : <industrialforegoing:pink_slime>,
	"conductive_iron" : <ore:ingotConductiveIron>.firstItem,
	"manasteel" : <ore:ingotManasteel>.firstItem,
	"xu_enchanted_metal" : <ore:ingotEnchantedMetal>.firstItem,
	"copper" : <ore:ingotCopper>.firstItem,
	"knightslime" : <ore:ingotKnightslime>.firstItem,
	"invar" : <ore:ingotInvar>.firstItem,
	"nickel" : <ore:ingotNickel>.firstItem,
	"obsidian" : <minecraft:obsidian>
};

var tconPartsMapLVRemoveCast as IData[][IItemStack] = {
	<tconstruct:tool_rod> : [2, "tconstruct:tool_rod"],
	<tconstruct:pick_head> : [3, "tconstruct:pick_head"],
	<tconstruct:shovel_head> : [2, "tconstruct:shovel_head"],
	<tconstruct:axe_head> : [2, "tconstruct:axe_head"],
	<tconstruct:sword_blade> : [4, "tconstruct:sword_blade"],
	<tconstruct:kama_head> : [2, "tconstruct:kama_head"],
	<tconstruct:wide_guard> : [2 , "tconstruct:wide_guard"],
	<tconstruct:hand_guard> : [2, "tconstruct:hand_guard"],
	<tconstruct:binding> : [2, "tconstruct:binding"],
	<tconstruct:pan_head> : [4, "tconstruct:pan_head"],
	<tconstruct:sign_head> : [4, "tconstruct:sign_head"],
	<tconstruct:sharpening_kit> : [2, "tconstruct:sharpening_kit"],
	<tconstruct:bow_limb> : [4, "tconstruct:bow_limb"],
	<tconstruct:arrow_head> : [2, "tconstruct:arrow_head"],
	<tcomplement:chisel_head> : [1, "tcomplement:chisel_head"]
};

for mat, ingot in matLVRemoveCast {
	for part, info in tconPartsMapLVRemoveCast {
		mods.tconstruct.Casting.removeTableRecipe(part.withTag({Material: mat}));
		mods.gregtech.recipe.RecipeMap.getByName("extruder").recipeBuilder()
			.inputs(ingot * info[0])
			.notConsumable(<tconstruct:cast>.withTag({PartType: info[1]}))
			.outputs(part.withTag({Material: mat}))
			.duration(300* info[0])
			.EUt(30)
			.buildAndRegister();
	}
}
#######################################################
	#LV Materials at MV Extruder for Forge Parts (Remove Casting)
var matLVForgeRemoveCast as IItemStack[string] = {
	"pulsating_iron" : <ore:ingotPulsatingIron>.firstItem,
	"thaumium" : <ore:ingotThaumium>.firstItem,
	"obsidian" : <minecraft:obsidian>,
	"electrical_steel" : <ore:ingotElectricalSteel>.firstItem,
	"redstone_alloy" : <ore:ingotRedstoneAlloy>.firstItem,
	"integrationforegoing.pink_slime" : <industrialforegoing:pink_slime>,
	"conductive_iron" : <ore:ingotConductiveIron>.firstItem,
	"manasteel" : <ore:ingotManasteel>.firstItem,
	"xu_enchanted_metal" : <ore:ingotEnchantedMetal>.firstItem,
	"copper" : <ore:ingotCopper>.firstItem,
	"knightslime" : <ore:ingotKnightslime>.firstItem
};

var tconForgePartsMapMVRemoveCast as IData[][IItemStack] = {
	<tconstruct:knife_blade> : [4, "tconstruct:knife_blade"],
	<tconstruct:cross_guard> : [8, "tconstruct:cross_guard"],
	<tconstruct:tough_binding> : [12, "tconstruct:tough_binding"],
	<tconstruct:tough_tool_rod> : [16, "tconstruct:tough_tool_rod"],
	<tconstruct:scythe_head> : [16 , "tconstruct:scythe_head"],
	<tconstruct:large_sword_blade> : [16, "tconstruct:large_sword_blade"],
	<tconstruct:broad_axe_head> : [32, "tconstruct:broad_axe_head"],
	<tconstruct:excavator_head> : [32, "tconstruct:excavator_head"],
	<tconstruct:hammer_head> : [32, "tconstruct:hammer_head"],
	<tconstruct:large_plate> : [24, "tconstruct:large_plate"]
};

for mat, ingot in matLVForgeRemoveCast {
	for part, info in tconForgePartsMapMVRemoveCast {
		mods.tconstruct.Casting.removeTableRecipe(part.withTag({Material: mat}));
		mods.gregtech.recipe.RecipeMap.getByName("extruder").recipeBuilder()
			.inputs(ingot * info[0])
			.notConsumable(<tconstruct:cast>.withTag({PartType: info[1]}))
			.outputs(part.withTag({Material: mat}))
			.duration(300* info[0])
			.EUt(30)
			.buildAndRegister();
	}
}
#######################################################
	#LV Materials at MV Extruder for Forge Parts (No Casting)
var matLVForgeKeepCast as IItemStack[string] = {
	"wood" : <ore:plankWood>.firstItem,
	"flint" : <minecraft:flint>,
	"firewood" : <tconstruct:firewood>,
	"prismarine" : <minecraft:prismarine_shard>,
	"blackquartz_plustic" : <actuallyadditions:item_misc:5>,
	"cactus" : <minecraft:cactus>,
	"bone" : <minecraft:bone>,
	"slime" : <ore:slimecrystalGreen>.firstItem,
	"endstone" : <minecraft:end_stone>,
	"netherrack" : <minecraft:netherrack>,
	"certusquartz_plustic" : <ore:crystalCertusQuartz>.firstItem,
	"stone" : <minecraft:stone>,
	"sponge" : <minecraft:sponge>,
	"blueslime" : <ore:slimecrystalBlue>.firstItem,
	"magmaslime" : <tconstruct:materials:11>,
	"knightslime" : <ore:ingotKnightslime>.firstItem,
};

var tconForgePartsMapMVKeepCast as IData[][IItemStack] = {
	<tconstruct:knife_blade> : [4, "tconstruct:knife_blade"],
	<tconstruct:cross_guard> : [8, "tconstruct:cross_guard"],
	<tconstruct:tough_binding> : [12, "tconstruct:tough_binding"],
	<tconstruct:tough_tool_rod> : [16, "tconstruct:tough_tool_rod"],
	<tconstruct:scythe_head> : [16 , "tconstruct:scythe_head"],
	<tconstruct:large_sword_blade> : [16, "tconstruct:large_sword_blade"],
	<tconstruct:broad_axe_head> : [32, "tconstruct:broad_axe_head"],
	<tconstruct:excavator_head> : [32, "tconstruct:excavator_head"],
	<tconstruct:hammer_head> : [32, "tconstruct:hammer_head"],
	<tconstruct:large_plate> : [24, "tconstruct:large_plate"]
};

for mat, ingot in matLVForgeKeepCast {
	for part, info in tconForgePartsMapMVKeepCast {
		mods.gregtech.recipe.RecipeMap.getByName("extruder").recipeBuilder()
			.inputs(ingot * info[0])
			.notConsumable(<tconstruct:cast>.withTag({PartType: info[1]}))
			.outputs(part.withTag({Material: mat}))
			.duration(300* info[0])
			.EUt(30)
			.buildAndRegister();
	}
}
#######################################################
	#MV All Parts and Remove Casting
var matMVRemoveCast as IItemStack[string] = {
	"signalum_plustic" : <ore:ingotSignalum>.firstItem,
	"xu_demonic_metal" : <extrautils2:ingredients:11>,
	"platinum_plustic" : <ore:ingotPlatinum>.firstItem,
	"alumite" : <ore:ingotAlumite>.firstItem,
	"cobalt" : <ore:ingotCobalt>.firstItem,
	"manyullyn" : <ore:ingotManyullyn>.firstItem,
	"dark_steel" : <ore:ingotDarkSteel>.firstItem,
	"emerald_plustic" : <minecraft:emerald>,
	"integrationforegoing.plastic" : <industrialforegoing:plastic>,
	"steel" : <ore:ingotSteel>.firstItem,
	"elementium" : <botania:manaresource:7>,
	"construction_alloy" : <ore:ingotConstructionAlloy>.firstItem,
	"lumium_plustic" : <ore:ingotLumium>.firstItem,
	"energetic_alloy" : <ore:ingotEnergeticAlloy>.firstItem,
	"ardite" : <ore:ingotArdite>.firstItem,
	"vibrant_alloy" : <ore:ingotVibrantAlloy>.firstItem,
	"end_steel" : <ore:ingotEndSteel>.firstItem,
	"mirion" : <ore:ingotMirion>.firstItem,
	"integrationforegoing.reinforced_pink_slime": <industrialforegoing:pink_slime_ingot>
};

var tconPartsMapAll as IData[][IItemStack] = {
	<tconstruct:tool_rod> : [2, "tconstruct:tool_rod"],
	<tconstruct:pick_head> : [3, "tconstruct:pick_head"],
	<tconstruct:shovel_head> : [2, "tconstruct:shovel_head"],
	<tconstruct:axe_head> : [2, "tconstruct:axe_head"],
	<tconstruct:sword_blade> : [4, "tconstruct:sword_blade"],
	<tconstruct:kama_head> : [2, "tconstruct:kama_head"],
	<tconstruct:wide_guard> : [2 , "tconstruct:wide_guard"],
	<tconstruct:hand_guard> : [2, "tconstruct:hand_guard"],
	<tconstruct:binding> : [2, "tconstruct:binding"],
	<tconstruct:pan_head> : [4, "tconstruct:pan_head"],
	<tconstruct:sign_head> : [4, "tconstruct:sign_head"],
	<tconstruct:sharpening_kit> : [2, "tconstruct:sharpening_kit"],
	<tconstruct:bow_limb> : [4, "tconstruct:bow_limb"],
	<tconstruct:arrow_head> : [2, "tconstruct:arrow_head"],
	<tconstruct:knife_blade> : [4, "tconstruct:knife_blade"],
	<tconstruct:cross_guard> : [8, "tconstruct:cross_guard"],
	<tconstruct:tough_binding> : [12, "tconstruct:tough_binding"],
	<tconstruct:tough_tool_rod> : [16, "tconstruct:tough_tool_rod"],
	<tconstruct:scythe_head> : [16 , "tconstruct:scythe_head"],
	<tconstruct:large_sword_blade> : [16, "tconstruct:large_sword_blade"],
	<tconstruct:broad_axe_head> : [32, "tconstruct:broad_axe_head"],
	<tconstruct:excavator_head> : [32, "tconstruct:excavator_head"],
	<tconstruct:hammer_head> : [32, "tconstruct:hammer_head"],
	<tconstruct:large_plate> : [24, "tconstruct:large_plate"],
	<tcomplement:chisel_head> : [1, "tcomplement:chisel_head"]
};

for mat, ingot in matMVRemoveCast {
	for part, info in tconPartsMapAll {
		mods.tconstruct.Casting.removeTableRecipe(part.withTag({Material: mat}));
		mods.gregtech.recipe.RecipeMap.getByName("extruder").recipeBuilder()
			.inputs(ingot * info[0])
			.notConsumable(<tconstruct:cast>.withTag({PartType: info[1]}))
			.outputs(part.withTag({Material: mat}))
			.duration(300* info[0])
			.EUt(120)
			.buildAndRegister();
	}
}

#######################################################
	#MV Parts with No Casting
var matMVNoCast as IItemStack[string] = {
	"emeradic_actadd_plustic" : <actuallyadditions:item_crystal:4>,
	"livingwood_plustic" : <ore:livingwood>.firstItem,
	"xu_magical_wood" : <ore:blockMagicalWood>.firstItem
};

for mat, ingot in matMVNoCast {
	for part, info in tconPartsMapAll {
		mods.gregtech.recipe.RecipeMap.getByName("extruder").recipeBuilder()
			.inputs(ingot * info[0])
			.notConsumable(<tconstruct:cast>.withTag({PartType: info[1]}))
			.outputs(part.withTag({Material: mat}))
			.duration(300* info[0])
			.EUt(120)
			.buildAndRegister();
	}
}
#######################################################
	#HV Parts with Casting Removal
var matHVCastRemove as IItemStack[string] = {
	"titanium" : <ore:ingotTitanium>.firstItem,
	"enderium_plustic" : <ore:ingotEnderium>.firstItem,
	"refinedobsidian" : <ore:ingotRefinedObsidian>.firstItem,
	"refinedglowstone" : <ore:ingotRefinedGlowstone>.firstItem,
	"soularium" : <ore:ingotSoularium>.firstItem,
	"xu_evil_metal" : <ore:ingotEvilMetal>.firstItem,
	"diamatine_actadd_plustic" : <actuallyadditions:item_crystal:2>,
	"terrasteel" : <ore:ingotTerrasteel>.firstItem
};

for mat, ingot in matHVCastRemove {
	for part, info in tconPartsMapAll {
		mods.tconstruct.Casting.removeTableRecipe(part.withTag({Material: mat}));
		mods.gregtech.recipe.RecipeMap.getByName("extruder").recipeBuilder()
			.inputs(ingot * info[0])
			.notConsumable(<tconstruct:cast>.withTag({PartType: info[1]}))
			.outputs(part.withTag({Material: mat}))
			.duration(300* info[0])
			.EUt(480)
			.buildAndRegister();
	}
}

#######################################################
	#EV Parts with Casting Removal
var matEVCastRemove as IItemStack[string] = {
	"iridium" : <ore:ingotIridium>.firstItem,
	"osmiridium" : <ore:ingotOsmiridium>.firstItem,
	"osgloglas" : <ore:ingotOsgloglas>.firstItem,
	"chaotic_plustic" : <draconicevolution:chaotic_core>,
	"infinity_avaritia_plustic" : <ore:ingotInfinity>.firstItem,
	"wyvern_plustic" : <draconicevolution:wyvern_core>,
	"awakened_plustic" : <draconicevolution:awakened_core>
};

for mat, ingot in matEVCastRemove {
	for part, info in tconPartsMapAll {
		mods.tconstruct.Casting.removeTableRecipe(part.withTag({Material: mat}));
		mods.gregtech.recipe.RecipeMap.getByName("extruder").recipeBuilder()
			.inputs(ingot * info[0])
			.notConsumable(<tconstruct:cast>.withTag({PartType: info[1]}))
			.outputs(part.withTag({Material: mat}))
			.duration(300* info[0])
			.EUt(1920)
			.buildAndRegister();
	}
}

#######################################################
	#Arrow Shaft (Have its own section due to inconsistencies)
	#LV Arrows Shafts
var lvShaftMap as IIngredient[string] = {
	"wood" : <ore:plankWood>,
	"tnt" : <minecraft:tnt>,
	"endrod" : <minecraft:end_rod>,
	"ice" : <ore:blockIce>,
	"reed" : <ore:sugarcane>,
	"blaze" : <ore:stickBlaze>,
	"bone" : <ore:bone>
};

for mat, ingot in lvShaftMap {
	mods.gregtech.recipe.RecipeMap.getByName("extruder").recipeBuilder()
		.inputs(ingot)
		.notConsumable(<tconstruct:cast>.withTag({PartType: "tconstruct:arrow_shaft"}))
		.outputs(<tconstruct:arrow_shaft>.withTag({Material: mat}))
		.duration(1200)
		.EUt(30)
		.buildAndRegister();
}

	#MV Arrow Shafts
var mvShaftMap as IIngredient[string] = {
	"livingwood_plustic" : <ore:livingwood>
};

for mat, ingot in mvShaftMap {
	mods.gregtech.recipe.RecipeMap.getByName("extruder").recipeBuilder()
		.inputs(ingot)
		.notConsumable(<tconstruct:cast>.withTag({PartType: "tconstruct:arrow_shaft"}))
		.outputs(<tconstruct:arrow_shaft>.withTag({Material: mat}))
		.duration(1200)
		.EUt(120)
		.buildAndRegister();
}

	#HV Arrow Shafts
var hvShaftMap as IIngredient[string] = {
	"enderium_plustic" : <ore:ingotEnderium>
};

for mat, ingot in hvShaftMap {
	mods.gregtech.recipe.RecipeMap.getByName("extruder").recipeBuilder()
		.inputs(ingot)
		.notConsumable(<tconstruct:cast>.withTag({PartType: "tconstruct:arrow_shaft"}))
		.outputs(<tconstruct:arrow_shaft>.withTag({Material: mat}))
		.duration(1200)
		.EUt(480)
		.buildAndRegister();
}

#######################################################

	


print("----------------Tinkers End-------------------");
