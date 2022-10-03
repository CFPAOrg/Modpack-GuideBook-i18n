import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.bloodmagic.TartaricForge;
import mods.bloodmagic.BloodAltar;
import mods.thaumcraft.Crucible;
import mods.thaumcraft.ArcaneWorkbench;
import mods.astralsorcery.Altar;
import mods.immersiveengineering.Squeezer;
import crafttweaker.block.IBlockState;
import mods.animus.AnimusPlugin;
import mods.bloodmagic.AlchemyTable;
import mods.techreborn.compressor;
import mods.nuclearcraft.Pressurizer;


print("==================== loading blood magic.zs ====================");
##########################################################################################

//Blood Altar
//InputStack, OutputStack, TierRequired, LPRequired, UsageRate, DrainRate

val itemstoRemove =
[
	<bloodmagic:sacrificial_dagger>,
	<bloodmagic:soul_snare>,
	<bloodmagic:soul_forge>,
	<twilightforest:fiery_ingot>,
	<tconstruct:soil:3>,
//	<bloodarsenal:glass_shards>,
	<bloodmagic:demon_crucible>,
	<bloodmagic:demon_pylon>,
	<bloodmagic:demon_crystallizer>,
	<twilightforest:fiery_sword>,
	<bloodmagic:blood_rune>,
]
 as IItemStack[];

for item in itemstoRemove {
	recipes.remove(item);
}

<thermalfoundation:storage:7>.addTooltip(format.gold("能够当作坠星标位仪式的催化物"));
<thermalfoundation:storage:7>.addTooltip(format.darkRed("需要你的宝珠里存有5,000,000 LP"));
<contenttweaker:starmetal_block>.addTooltip(format.gold("能够当作坠星标位仪式的催化物"));
<contenttweaker:starmetal_block>.addTooltip(format.darkRed("需要你的宝珠里存有1,000,000 LP"));
<immersiveengineering:storage:5>.addTooltip(format.gold("能够当作坠星标位仪式的催化物"));
<immersiveengineering:storage:5>.addTooltip(format.darkRed("需要你的宝珠里存有2,500,000 LP"));

//Automating Blood
//mods.immersiveengineering.Mixer.addRecipe(<liquid:lifeessence>*1000, <liquid:potion>.withTag({Potion: "minecraft:harming"})*1000, [<botania:manaresource:23>], 1024);
//New Blood Recipe
mods.immersiveengineering.Mixer.addRecipe(<liquid:lifeessence>*1000, <liquid:refined_life_essence>*250, [<techreborn:dust:6>], 512);

Crucible.registerRecipe("BucketLife", "",
    <forge:bucketfilled>.withTag({FluidName: "lifeessence", Amount: 1000}), <minecraft:bucket>,
	[<aspect:victus> * 10, <aspect:mortuus> * 1, <aspect:auram> * 1]
);

/*
val bloodOrb = [
	<bloodmagic:blood_orb>.withTag({orb: "bloodmagic:weak"}),
	<bloodmagic:blood_orb>.withTag({orb: "bloodmagic:apprentice"}),
	<bloodmagic:blood_orb>.withTag({orb: "bloodmagic:magician"}),
	<bloodmagic:blood_orb>.withTag({orb: "bloodmagic:master"}),
	<bloodmagic:blood_orb>.withTag({orb: "bloodmagic:archmage"}),
	<bloodmagic:blood_orb>.withTag({orb: "bloodmagic:transcendent"}),
] as IItemStack[];

val bloodOrbLeast = [
	bloodOrb[0]|bloodOrb[1]|bloodOrb[2]|bloodOrb[3]|bloodOrb[4]|bloodOrb[5],
	bloodOrb[1]|bloodOrb[2]|bloodOrb[3]|bloodOrb[4]|bloodOrb[5],
	bloodOrb[2]|bloodOrb[3]|bloodOrb[4]|bloodOrb[5],
	bloodOrb[3]|bloodOrb[4]|bloodOrb[5],
	bloodOrb[4]|bloodOrb[5],
	bloodOrb[5],
] as IIngredient[];*/

#--------------Weak blood orb
BloodAltar.removeRecipe(<minecraft:diamond>);
BloodAltar.addRecipe(<bloodmagic:blood_orb>.withTag({orb: "bloodmagic:weak"}), <twilightforest:naga_scale>, 0, 2000, 12, 12);

#--------------apprentice blood orb
BloodAltar.removeRecipe(<minecraft:redstone_block>);
BloodAltar.addRecipe(<bloodmagic:blood_orb>.withTag({orb: "bloodmagic:apprentice"}), <botania:rune:4>, 1, 5000, 30, 20);

#--------------magician blood orb
BloodAltar.removeRecipe(<minecraft:gold_block>);
BloodAltar.addRecipe(<bloodmagic:blood_orb>.withTag({orb: "bloodmagic:magician"}), <embers:ember_cluster>, 2, 20000, 100, 20);


//dawn inscription
BloodAltar.removeRecipe(<minecraft:glowstone>);
BloodAltar.addRecipe(<bloodmagic:inscription_tool:6>.withTag({uses: 10}), <embers:block_dawnstone>, 5, 200000, 400, 200);


//dusk inscription
mods.thermalexpansion.InductionSmelter.addRecipe(<quark:biotite>, <actuallyadditions:item_misc:5>, <botania:manaresource:15>*8, 5000);
mods.techreborn.implosionCompressor.addRecipe(<quark:biotite_block>, null, <quark:biotite>*9, <minecraft:tnt>*16, 40, 50000);
mods.thermalexpansion.Pulverizer.removeRecipe(<quark:biotite_block>);
mods.thermalexpansion.Pulverizer.removeRecipe(<quark:biotite_slab>);
mods.thermalexpansion.Pulverizer.removeRecipe(<quark:biotite_block:1>);
mods.thermalexpansion.Pulverizer.removeRecipe(<quark:biotite_stairs>);
mods.thermalexpansion.Pulverizer.addRecipe(<quark:biotite>*9, <quark:biotite_block>, 3000);

BloodAltar.removeRecipe(<minecraft:coal_block>);
BloodAltar.addRecipe(<bloodmagic:inscription_tool:5>.withTag({uses: 10}), <quark:biotite_block>, 3, 50000, 200, 20);




//Blood Bronze
BloodAltar.addRecipe(<bloodtinker:blood_bronze_ingot>, <thermalfoundation:material:163>, 1, 2000, 12, 12);


# Blank Slate
<bloodarsenal:slate>.displayName = "石板块";
/*<bloodarsenal:slate:1>.displayName = "Block of Reinforced Slates";
<bloodarsenal:slate:2>.displayName = "Block of Imbued Slates";
<bloodarsenal:slate:3>.displayName = "Block of Demonic Slates";
<bloodarsenal:slate:4>.displayName = "Block of Ethereal Slates";*/
	BloodAltar.removeRecipe(<minecraft:stone>);
	BloodAltar.addRecipe(<bloodmagic:slate>, <thaumcraft:stone_arcane>, 0, 1000, 10, 10);

<bloodmagic:blood_shard>.addTooltip(format.red("使用束缚之剑击杀怪物掉落"));
<bloodmagic:soul_snare>.addTooltip(format.red("使用感知之剑来收集意志"));

//Hellfire Forge
recipes.addShaped(<bloodmagic:soul_forge>, [[<twilightforest:fiery_ingot>, null, <twilightforest:fiery_ingot>],[<quark:magma_bricks>, <bloodmagic:monster_soul>, <quark:magma_bricks>], [<quark:magma_bricks>, <thaumcraft:pedestal_arcane>, <quark:magma_bricks>]]);
TartaricForge.removeRecipe([<bloodmagic:soul_gem>.withTag({}), <minecraft:iron_sword>]);
//TartaricForge.addRecipe(IItemStack output, IItemStack[] inputs, double minSouls, double soulDrain);
TartaricForge.removeRecipe([<minecraft:bucket>, <minecraft:string>, <minecraft:gunpowder>, <minecraft:string>]);
TartaricForge.addRecipe(<bloodmagic:component:4>,[<minecraft:bucket>, <minecraft:string>, <minecraft:gunpowder>, <thaumcraft:nugget:7>], 64,10);

<ore:hotStuff>.add(<twilightforest:fiery_tears>);
<ore:hotStuff>.add(<twilightforest:fiery_blood>);
<ore:hotStuff>.add(<iceandfire:fire_dragon_blood>);
recipes.addShapeless(<twilightforest:fiery_ingot>, [<ore:hotStuff>,<thebetweenlands:octine_ingot>]);



recipes.addShaped(<twilightforest:fiery_sword>.withTag({ench: [{lvl: 2 as short, id: 20 as short}]}), [[null, <twilightforest:fiery_ingot>, null],[null, <twilightforest:fiery_ingot>, null], [null, <minecraft:blaze_rod>, null]]);

mods.thaumcraft.Crucible.registerRecipe("sentient_sword", "",
    <bloodmagic:sentient_sword>.withTag({ench: [{lvl: 3 as short, id: 21 as short}, {lvl: 1 as short, id: 70 as short}], RepairCost: 1}), <twilightforest:fiery_sword>.withTag({ench: [{lvl: 2 as short, id: 20 as short}]}),
	[<aspect:victus> * 30, <aspect:cognitio> * 15, <aspect:infernum> * 30]
);
mods.thaumcraft.Crucible.registerRecipe("sacrificial_dagger", "",
    <bloodmagic:sacrificial_dagger>, <thebetweenlands:bone_sword>,
	[<aspect:aversio> * 20, <aspect:humanus> * 10, <aspect:mortuus> * 30]
);

//mods.bloodmagic.AlchemyTable.addRecipe(IItemStack output, IItemStack[] inputs, int syphon, int ticks, int minTier);
mods.bloodmagic.AlchemyTable.addRecipe(<minecraft:skull:2>, [<thaumcraft:brain>, <thaumcraft:flesh_block>], 500,200,0);

//Binding Reagent
TartaricForge.removeRecipe([<minecraft:gunpowder>, <minecraft:redstone>, <minecraft:glowstone_dust>, <minecraft:gold_nugget>]);
TartaricForge.addRecipe(<bloodmagic:component:8>,[<botania:manaresource:23>, <enderio:item_alloy_ingot:1>, <bloodarsenal:base_item:2>, <fossil:tardrop>], 100,10);

//Graveyard/glass combo
TartaricForge.addRecipe(<tconstruct:soil:3>,[<quark:black_ash>, <tombstone:crafting_ingredient:3>, <randomthings:fertilizeddirt>, <bloodmagic:blood_shard>], 150,20);
//mods.botania.ElvenTrade.addRecipe([<bloodarsenal:glass_shards>], [<bloodmagic:item_demon_crystal:3>,<bloodarsenal:base_item>*9]);

//Ash
TartaricForge.removeRecipe([<minecraft:dye:15>, <minecraft:gunpowder>, <minecraft:redstone>, <minecraft:coal>]);
ArcaneWorkbench.registerShapedRecipe("CTAsh", "", 200, [<aspect:ignis>,<aspect:terra>,<aspect:perditio>],
<bloodmagic:arcane_ashes>, 
[[<jaopca:item_dustaquamarine>, <contenttweaker:slatedust>, <embers:dust_ash>],
[<contenttweaker:slatedust>, <botania:manaresource:23>, <contenttweaker:slatedust>], 
[<embers:dust_ash>, <contenttweaker:slatedust>, <minecraft:redstone>]]
);

//crystl brik
recipes.addShaped(<bloodmagic:decorative_brick:2>, [[<environmentaltech:kyronite_crystal>, <bloodmagic:item_demon_crystal:1>, <environmentaltech:kyronite_crystal>],[<bloodmagic:item_demon_crystal:3>, <extendedcrafting:material:12>, <bloodmagic:item_demon_crystal:4>], [<environmentaltech:kyronite_crystal>, <bloodmagic:item_demon_crystal:2>, <environmentaltech:kyronite_crystal>]]);
recipes.addShaped(<bloodmagic:decorative_brick:3> * 4, [[<bloodmagic:decorative_brick:2>, <bloodmagic:decorative_brick:2>],[<bloodmagic:decorative_brick:2>, <bloodmagic:decorative_brick:2>]]);


//Altar.addTraitAltarRecipe(string recipeLocation, IItemStack output, int starlight, int craftTickTime, IIngredient[] inputs, @optional String iRequiredConstellationFocusName);

TartaricForge.removeRecipe([<bloodmagic:soul_forge>, <minecraft:stone>, <minecraft:dye:4>, <minecraft:glass>]);
TartaricForge.removeRecipe([<bloodmagic:item_demon_crystal>, <minecraft:stone>, <minecraft:dye:4>, <minecraft:iron_block>]);
TartaricForge.removeRecipe([<minecraft:diamond>, <minecraft:stone>, <minecraft:dye:4>, <minecraft:cauldron>]);
Altar.addTraitAltarRecipe("mm:shaped/internal/altar/demon_crystallizer", <bloodmagic:demon_crystallizer>, 5000, 400, [

	<techreborn:plates:32>, <enderio:item_material:16>, <techreborn:plates:32>,
	<techreborn:plates:32>, <bloodmagic:soul_forge>, <techreborn:plates:32>, 
	<techreborn:plates:32>, <bloodmagic:blood_shard>, <techreborn:plates:32>,

	<cyclicmagic:spikes_diamond>, <cyclicmagic:spikes_diamond>, <techreborn:plates:32>, <techreborn:plates:32>,
	null, 	null,	
	<techreborn:plates:32>, <techreborn:plates:32>, 
	null, null,
	<techreborn:plates:32>, <techreborn:plates:32>,
	null, null,
	null, <techreborn:plates:32>,
	//Outer Items, indices 25+
	<bloodmagic:monster_soul>, <bloodmagic:monster_soul>, <bloodmagic:monster_soul>, <bloodmagic:monster_soul>, <bloodmagic:monster_soul>
]);

Altar.addTraitAltarRecipe("mm:shaped/internal/altar/demon_pylon", <bloodmagic:demon_pylon>, 5000, 400, [

	<techreborn:plates:32>, <enderio:item_material:17>, <techreborn:plates:32>,
	<techreborn:plates:32>, <botania:pylon>, <techreborn:plates:32>, 
	<techreborn:plates:32>, <bloodmagic:blood_shard>, <techreborn:plates:32>,

	null, null, <techreborn:plates:32>, <techreborn:plates:32>,
	null, null,	
	<techreborn:plates:32>, <techreborn:plates:32>, 
	null, null,
	<techreborn:plates:32>, <techreborn:plates:32>,
	<cyclicmagic:spikes_diamond>, null,
	null, <techreborn:plates:32>,
	//Outer Items, indices 25+
	<bloodmagic:monster_soul>, <bloodmagic:monster_soul>, <bloodmagic:monster_soul>, <bloodmagic:monster_soul>, <bloodmagic:monster_soul>
]);

Altar.addTraitAltarRecipe("mm:shaped/internal/altar/demon_crucible", <bloodmagic:demon_crucible>, 5000, 400, [

	<techreborn:plates:32>, <enderio:item_material:19>, <techreborn:plates:32>,
	<techreborn:plates:32>, <thaumcraft:crucible>, <techreborn:plates:32>, 
	<techreborn:plates:32>, <bloodmagic:blood_shard>, <techreborn:plates:32>,

	null, null, <techreborn:plates:32>, <techreborn:plates:32>,
	<cyclicmagic:spikes_diamond>, 	<cyclicmagic:spikes_diamond>,	
	<techreborn:plates:32>, <techreborn:plates:32>, 
	null, null,
	<techreborn:plates:32>, <techreborn:plates:32>,
	null, null,
	null, <techreborn:plates:32>,
	//Outer Items, indices 25+
	<bloodmagic:monster_soul>, <bloodmagic:monster_soul>, <bloodmagic:monster_soul>, <bloodmagic:monster_soul>, <bloodmagic:monster_soul>
]);


//Loose Traction 
recipes.addShaped(<bloodmagic:upgrade_tome>.withTag({level: 0, key: "bloodmagic.upgrade.slippery"}), [[null, <minecraft:ice>, null],[<minecraft:ice>, <bloodmagic:upgrade_tome>.withTag({level: 9, key: "bloodmagic.upgrade.slowness"}).onlyWithTag({level: 9, key: "bloodmagic.upgrade.slowness"}), <minecraft:ice>], [null, <minecraft:ice>, null]]);

//Blank Runes
Squeezer.addRecipe(<bloodmagic:blood_rune>, <liquid:stone>*1000, <contenttweaker:slatedust> * 4, 256);

compressor.addRecipe(<bloodmagic:blood_rune>, <contenttweaker:slatedust>*4, 600, 50);
Pressurizer.addRecipe(<contenttweaker:slatedust>*4, <bloodmagic:blood_rune>);

//VOIDSTONE BOIIIIII
<bloodmagic:sanguine_book>.addTooltip(format.darkPurple("元始虚空石（带有眼睛）用于第三级血之祭坛的柱顶"));
<chisel:energizedvoidstone:6>.addTooltip(format.darkPurple("用于第三级血之祭坛的柱顶"));
AlchemyTable.addRecipe(<chisel:energizedvoidstone:6> *4, [<botania:thirdeye>,<chisel:energizedvoidstone>,<chisel:energizedvoidstone>,<chisel:energizedvoidstone>,<chisel:energizedvoidstone>], 1000, 100, 2);
AnimusPlugin.removeComponentMapping(<blockstate:minecraft:glowstone>,"GLOWSTONE");
AnimusPlugin.addComponentMapping(<blockstate:chisel:energizedvoidstone:variation=6>, "GLOWSTONE");




/*
val runeUncrafting =
[
<bloodmagic:blood_rune:10>,
<bloodmagic:blood_rune:9>,
<bloodmagic:blood_rune:8>,
<bloodmagic:blood_rune:7>,
<bloodmagic:blood_rune:6>,
<bloodmagic:blood_rune:5>,
<bloodmagic:blood_rune:4>,
<bloodmagic:blood_rune:3>,
<bloodmagic:blood_rune:1>,
]
 as IItemStack[];

for item in runeUncrafting {
recipes.addShapeless(<bloodmagic:blood_rune>, [item]);
}*/


print("==================== end of blood magic.zs ====================");
