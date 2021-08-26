##########################################################################################
#modloaded thaumcraft
#priority 100

import mods.thaumcraft.ArcaneWorkbench;
import mods.thaumcraft.Crucible;
import mods.thaumcraft.Infusion;
import crafttweaker.item.IItemStack;
import mods.arcanearchives.GCT;
import mods.thaumcraft.SalisMundus;
import mods.botania.PureDaisy;

print("==================== loading mods thaumcraft.zs ====================");
##########################################################################################


val itemstoRemove =
[
    <thaumcraft:stone_arcane>,
    <thaumicenergistics:essentia_component_1k>,
    <thaumicenergistics:essentia_component_4k>,
    <thaumicenergistics:essentia_component_16k>,
    <thaumicenergistics:essentia_component_64k>,
]
 as IItemStack[];

for item in itemstoRemove {
	recipes.remove(item);
}



Crucible.removeRecipe(<thaumadditions:vis_seeds>);

/*
val primalAspects = [
"aer",
 ] as string[];

for essentiaType in primalAspects {
Crucible.registerRecipe("vis_seed_" + essentiaType, "",
    <thaumadditions:vis_seeds>.withTag({Aspect: essentiaType}), <minecraft:wheat_seeds>,
	[<aspect:essentiaType> * 20, <aspect:herba> * 10]
);
}
*/


Crucible.registerRecipe("vis_seed_aer", "",
    <thaumadditions:vis_seeds>.withTag({agri_analyzed: 0 as byte, agri_strength: 1 as byte, agri_gain: 1 as byte, agri_seed: "thaumadditions:aer_vis_plant", Aspect: "aer", agri_growth: 1 as byte}), <minecraft:wheat_seeds>,
	[<aspect:aer> * 20, <aspect:herba> * 10]
);
Crucible.registerRecipe("vis_seed_ordo", "",
    <thaumadditions:vis_seeds>.withTag({agri_analyzed: 0 as byte, agri_strength: 1 as byte, agri_gain: 1 as byte, agri_seed: "thaumadditions:ordo_vis_plant", Aspect: "ordo", agri_growth: 1 as byte}), <minecraft:wheat_seeds>,
	[<aspect:ordo> * 20, <aspect:herba> * 10]
);
Crucible.registerRecipe("vis_seed_aqua", "",
    <thaumadditions:vis_seeds>.withTag({agri_analyzed: 0 as byte, agri_strength: 1 as byte, agri_gain: 1 as byte, agri_seed: "thaumadditions:aqua_vis_plant", Aspect: "aqua", agri_growth: 1 as byte}), <minecraft:wheat_seeds>,
	[<aspect:aqua> * 20, <aspect:herba> * 10]
);
Crucible.registerRecipe("vis_seed_perditio", "",
    <thaumadditions:vis_seeds>.withTag({agri_analyzed: 0 as byte, agri_strength: 1 as byte, agri_gain: 1 as byte, agri_seed: "thaumadditions:perditio_vis_plant", Aspect: "perditio", agri_growth: 1 as byte}), <minecraft:wheat_seeds>,
	[<aspect:perditio> * 20, <aspect:herba> * 10]
);
Crucible.registerRecipe("vis_seed_terra", "",
    <thaumadditions:vis_seeds>.withTag({agri_analyzed: 0 as byte, agri_strength: 1 as byte, agri_gain: 1 as byte, agri_seed: "thaumadditions:terra_vis_plant", Aspect: "terra", agri_growth: 1 as byte}), <minecraft:wheat_seeds>,
	[<aspect:terra> * 20, <aspect:herba> * 10]
);
Crucible.registerRecipe("vis_seed_ignis", "",
    <thaumadditions:vis_seeds>.withTag({agri_analyzed: 0 as byte, agri_strength: 1 as byte, agri_gain: 1 as byte, agri_seed: "thaumadditions:ignis_vis_plant", Aspect: "ignis", agri_growth: 1 as byte}), <minecraft:wheat_seeds>,
	[<aspect:ignis> * 20, <aspect:herba> * 10]
);


ArcaneWorkbench.removeRecipe(<thaumcraft:metal_alchemical>);

val preciousGems = <ore:preciousGems>;
preciousGems.add(<techreborn:gem>);
preciousGems.add(<techreborn:gem:1>);
preciousGems.add(<techreborn:gem:2>);
preciousGems.add(<techreborn:gem:3>);
preciousGems.add(<techreborn:gem:4>);
//preciousGems.add(<astralsorcery:itemcraftingcomponent>);
//preciousGems.add(<minecraft:emerald>);
//preciousGems.add(<minecraft:diamond>);

  <contenttweaker:material_part:3>.setAspects(<aspect:metallum> * 15);

<thaumictinkerer:energetic_nitor>.addTooltip(format.gold("放在物品栏内会自动照亮周围区域"));
<thaumcraft:void_seed>.addTooltip(format.darkPurple("炸毁裂缝得到"));
### CRAFTING RECIPES ###

// thaumometer
ArcaneWorkbench.removeRecipe(<thaumcraft:thaumometer>);
ArcaneWorkbench.registerShapedRecipe("CTThaumometer", "", 20,
    [],
    <thaumcraft:thaumometer>, [
        [<ore:preciousGems>, <ore:plateBronze>, <ore:preciousGems>],
        [<ore:plateBronze>, <minecraft:glass_pane>, <ore:plateBronze>],
        [<ore:preciousGems>, <ore:plateBronze>, <ore:preciousGems>]
    ]
);

ArcaneWorkbench.registerShapedRecipe("VisMeal", "", 25,
    [],
    <contenttweaker:vis_meal>*2, 
    [[<ore:gravel>, <ore:gravel>, <ore:gravel>], 
	[<ore:dustBedrock>, <thaumcraft:salis_mundus>, <botania:fertilizer>], 
	[<ore:gravel>, <ore:gravel>, <ore:gravel>]]
);
<contenttweaker:vis_meal>.addTooltip(format.gold("露天下对着石头使用时，有概率生长出元素水晶"));

// arcane stone
//ArcaneWorkbench.removeRecipe(<thaumcraft:stone_arcane>);
/*ArcaneWorkbench.registerShapedRecipe("CTArcaneStone", "", 10,
    [],
    <thaumcraft:stone_arcane> * 8, [
        [<minecraft:stone>, <minecraft:stone>, <minecraft:stone>],
        [<minecraft:stone>, <thaumcraft:crystal_essence>, <minecraft:stone>],
        [<minecraft:stone>, <minecraft:stone>, <minecraft:stone>]
    ]
);*/
ArcaneWorkbench.registerShapedRecipe("CTArcaneStone", "", 10, [],
    <thaumcraft:stone_arcane> * 8, [
        [<embers:ashen_stone>, <embers:ashen_stone>, <embers:ashen_stone>],
        [<embers:ashen_stone>, <thaumcraft:crystal_essence>, <embers:ashen_stone>],
        [<embers:ashen_stone>, <embers:ashen_stone>, <embers:ashen_stone>]
    ]
);

//Quartz Slivers
GCT.addRecipe("nuggets", <thaumcraft:nugget:9>, [<arcanearchives:quartz_sliver>]);

//Plate for research
recipes.addShaped(<thaumadditions:mithrillium_plate>, [[<ore:artisansHammer>.reuse().transformDamage(10)],[<thaumadditions:mithrillium_ingot>]]);
recipes.addShaped(<thaumadditions:adaminite_plate>, [[<ore:artisansHammer>.reuse().transformDamage(10)],[<thaumadditions:adaminite_ingot>]]);
recipes.addShaped(<thaumadditions:mithminite_plate>, [[<ore:artisansHammer>.reuse().transformDamage(10)],[<thaumadditions:mithminite_ingot>]]);




PureDaisy.addRecipe(<embers:ashen_stone>, <thaumcraft:stone_arcane>);

ArcaneWorkbench.removeRecipe(<thaumcraft:smelter_basic>);
ArcaneWorkbench.registerShapedRecipe("CTBrassSmelter", "", 50, [<aspect:ignis>],
<thaumcraft:smelter_basic>, 
[[<ore:plateBrass>, <thaumcraft:crucible>, <ore:plateBrass>],
[<botania:livingrock>, <botania:rune:1>, <botania:livingrock>], 
[<botania:livingrock>, <botania:livingrock>, <botania:livingrock>]]
);

ArcaneWorkbench.removeRecipe(<thaumcraft:smelter_void>);
ArcaneWorkbench.registerShapedRecipe("CTVoidSmelter", "", 750, [<aspect:ignis>*3],
<thaumcraft:smelter_void>, 
[[<ore:plateBrass>, <thaumcraft:smelter_thaumium>, <ore:plateBrass>],
[<thaumcraft:plate:3>, <thaumcraft:metal_alchemical_advanced>, <thaumcraft:plate:3>], 
[<thaumcraft:plate:3>, <thaumcraft:plate:3>, <thaumcraft:plate:3>]]
);

ArcaneWorkbench.registerShapedRecipe("essentia_component_64k", "", 10, [], <thaumicenergistics:essentia_component_64k>, [[<thaumadditions:mithrillium_plate>, <appliedenergistics2:material:24>, <thaumadditions:mithrillium_plate>],[<thaumicenergistics:essentia_component_16k>, <thaumcraft:salis_mundus>, <thaumicenergistics:essentia_component_16k>], [<thaumadditions:mithrillium_plate>, <thaumicenergistics:essentia_component_16k>, <thaumadditions:mithrillium_plate>]]);
ArcaneWorkbench.registerShapedRecipe("essentia_component_16k", "", 10, [], <thaumicenergistics:essentia_component_16k>, [[<thaumcraft:plate:3>, <appliedenergistics2:material:24>, <thaumcraft:plate:3>],[<thaumicenergistics:essentia_component_4k>, <thaumcraft:salis_mundus>, <thaumicenergistics:essentia_component_4k>], [<thaumcraft:plate:3>, <thaumicenergistics:essentia_component_4k>, <thaumcraft:plate:3>]]);
ArcaneWorkbench.registerShapedRecipe("essentia_component_4k", "", 10, [], <thaumicenergistics:essentia_component_4k>, [[<thaumcraft:plate:2>, <appliedenergistics2:material:23>, <thaumcraft:plate:2>],[<thaumicenergistics:essentia_component_1k>, <thaumcraft:salis_mundus>, <thaumicenergistics:essentia_component_1k>], [<thaumcraft:plate:2>, <thaumicenergistics:essentia_component_1k>, <thaumcraft:plate:2>]]);
ArcaneWorkbench.registerShapedRecipe("essentia_component_1k", "", 10, [], <thaumicenergistics:essentia_component_1k>, [[<thaumcraft:plate>, <thaumcraft:salis_mundus>, <thaumcraft:plate>],[<thaumcraft:salis_mundus>, <appliedenergistics2:material:22>, <thaumcraft:salis_mundus>], [<thaumcraft:plate>, <thaumcraft:salis_mundus>, <thaumcraft:plate>]]);


Crucible.removeRecipe(<thaumcraft:ingot>);
Crucible.registerRecipe("CTThaumium", "",
    <thaumcraft:ingot>, <contenttweaker:inert_ingot>,
	[<aspect:praecantatio> * 5, <aspect:terra> * 5]
);
Crucible.registerRecipe("CTThaumium2", "",
    <thaumcraft:ingot>*2, <contenttweaker:material_part:20>,
	[<aspect:praecantatio> * 5, <aspect:terra> * 5]
);
Crucible.registerRecipe("SkullVoidstone", "",
    <chisel:energizedvoidstone:3>, <chisel:energizedvoidstone>,
		[<aspect:mortuus> * 10]
);

Crucible.removeRecipe(<thaumcraft:nitor_yellow>);
Crucible.registerRecipe("AstralNitor", "",
    <thaumcraft:nitor_yellow>, <astralsorcery:itemusabledust>,
	[<aspect:lux> * 10,<aspect:ignis> * 10,<aspect:potentia> * 10]
);
/*
Crucible.registerRecipe("GreatwoodLog", "",
    <thaumcraft:log_greatwood>, <ore:logWood>,
	[<aspect:herba> * 20,<aspect:victus> * 5,<aspect:praecantatio> * 5]
);
*/
Crucible.registerRecipe("GreatwoodSapling", "",
    <thaumcraft:sapling_greatwood>, <ore:treeSapling>,
	[<aspect:herba> * 20,<aspect:victus> * 5,<aspect:praecantatio> * 5]
);
Crucible.removeRecipe(<thaumcraft:alumentum>);
Crucible.registerRecipe("Alumentum", "",
    <thaumcraft:alumentum>, <botania:manaresource:23>,
	[<aspect:potentia> * 10,<aspect:ignis> * 10,<aspect:perditio> * 5]
);
furnace.setFuel(<thaumcraft:alumentum>, 6400);
// runic matrix
ArcaneWorkbench.removeRecipe(<thaumcraft:infusion_matrix>);
ArcaneWorkbench.registerShapelessRecipe("matrixforresearch", "", 0, [], <thaumcraft:infusion_matrix>, [<thaumcraft:infusion_matrix>]);

//add aspects
    //<chisel:voidstone>.setAspects(<aspect:tenebrae> * 10, <aspect:vacuos> * 10, <aspect:ordo> * 10);
    //<chisel:energizedvoidstone>.setAspects(<aspect:tenebrae> * 10, <aspect:perditio> * 10, <aspect:potentia> * 10);
    <embers:winding_gears>.setAspects(<aspect:machina>*40,<aspect:instrumentum>*40);
    <embers:shifting_scales>.setAspects(<aspect:praecantatio>*40,<aspect:praemunio>*40);

<ore:blockGlassHardened>.add(<thaumicaugmentation:fortified_glass>);


//primordial_pearl
mods.astralsorcery.Altar.addAttunementAltarRecipe("mm:shaped/internal/thaumcraft/primordial_pearl", <thaumcraft:primordial_pearl>, 1500, 300, [

			<embers:plate_dawnstone>, <fossil:stone_tablet>, <embers:plate_dawnstone>,
			<fossil:stone_tablet>, <arcanearchives:storage_shaped_quartz>, <fossil:stone_tablet>,
			<embers:plate_dawnstone>, <fossil:stone_tablet>, <embers:plate_dawnstone>,

			<thaumcraft:void_seed>, <thaumcraft:void_seed>, <thaumcraft:void_seed>, <thaumcraft:void_seed>]);



/*
<thaumcraft:thaumonomicon>.removeAspects(<aspect:cognitio>*8,<aspect:praecantatio>*10);
<thaumcraft:thaumometer>.removeAspects(<aspect:metallum>*30,<aspect:desiderium>*30,<aspect:sensus>*10,<aspect:auram>*10,<aspect:praecantatio>*3);
//<aspect:visum>,*/

## GREATWOOD STIXS
//recipes.addShaped(<contenttweaker:greatwood_handle>, [[null, null, <thaumcraft:log_greatwood>],[null, <thaumcraft:log_greatwood>, null], [<thaumcraft:log_greatwood>, null, null]]);
//recipes.addShaped(<thaumadditions:iron_framed_greatwood>, [[null, <thermalfoundation:material:32>, null],[<thermalfoundation:material:32>, <thaumcraft:plank_greatwood>, <thermalfoundation:material:32>], [null, <thermalfoundation:material:32>, null]]);

<contenttweaker:greatwood_handle>.addTooltip(format.lightPurple("对着宏伟之木原木使用世界盐，一次可制作2根"));
SalisMundus.addSingleConversion(<blockstate:thaumcraft:log_greatwood>.block, <contenttweaker:greatwood_handle>*2);

//Knight Metal
Crucible.registerRecipe("ArmorShard", "",
    <twilightforest:armor_shard> * 3, <ebwizardry:crystal_shard>,
	[<aspect:praemunio> * 5,<aspect:metallum> * 5]
);

//Fabric
Crucible.registerRecipe("Fabric", "",
    <thaumcraft:fabric>, <ore:wool>,
	[<aspect:praecantatio> * 5]
);

//mithrillium
Infusion.removeRecipe(<thaumadditions:mithrillium_ingot>);
Infusion.registerRecipe("mithrillium", "", 
<thaumadditions:mithrillium_ingot>, 12, 
[<aspect:vitreus>*30, <aspect:metallum>*30, <aspect:potentia>*15, <aspect:alienis>*10, <aspect:praecantatio>*10], 
<thaumcraft:ingot:1>, 
[<thaumcraft:fabric>,<thaumcraft:quicksilver>, <thaumcraft:alumentum>, <thaumcraft:amber>, <thaumcraft:salis_mundus>,
<thaumcraft:fabric>,<thaumcraft:quicksilver>, <thaumcraft:alumentum>, <thaumcraft:amber>, <thaumcraft:salis_mundus>]);

//adaminite
Infusion.removeRecipe(<thaumadditions:adaminite_ingot>);
Infusion.registerRecipe("adaminite", "", 
<thaumadditions:adaminite_ingot>, 13, 
[<aspect:spiritus>*120, <aspect:victus>*100, <aspect:praecantatio>*100, <aspect:infernum>*100, <aspect:permutatio>*40, <aspect:metallum>*40, <aspect:alkimia>*30, <aspect:draco>*20,<aspect:visum>*20], 
<thaumadditions:mithrillium_ingot>, 
[<thaumcraft:primordial_pearl>, <minecraft:nether_star>,
<thaumcraft:fabric>, <minecraft:nether_star>]);

//mithminite
Infusion.removeRecipe(<thaumadditions:mithminite_ingot>);
Infusion.registerRecipe("mithminite", "", 
<thaumadditions:mithminite_ingot>, 20, 
[<aspect:praecantatio>*120,<aspect:victus>*90,<aspect:metallum>*60,<aspect:caeles>*10], 
<thaumadditions:adaminite_ingot>, 
[<thaumadditions:mithrillium_ingot>, <thaumcraft:quicksilver>,
<thaumadditions:mithrillium_ingot>, <thaumcraft:quicksilver>]);

##########################################################################################
print("==================== end of mods thaumcraft.zs ====================");
