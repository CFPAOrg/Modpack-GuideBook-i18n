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

PureDaisy.addRecipe(<embers:ashen_stone>, <thaumcraft:stone_arcane>);

ArcaneWorkbench.removeRecipe(<thaumcraft:smelter_basic>);
ArcaneWorkbench.registerShapedRecipe("CTBrassSmelter", "", 50, [<aspect:ignis>],
<thaumcraft:smelter_basic>, 
[[<ore:plateBrass>, <thaumcraft:crucible>, <ore:plateBrass>],
[<botania:livingrock>, <embers:superheater>, <botania:livingrock>], 
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
Crucible.registerRecipe("GreatwoodSapling", "",
    <thaumcraft:alumentum>, <botania:manaresource:23>,
	[<aspect:potentia> * 10,<aspect:ignis> * 10,<aspect:perditio> * 5]
);
furnace.setFuel(<thaumcraft:alumentum>, 6400);
// runic matrix
ArcaneWorkbench.removeRecipe(<thaumcraft:infusion_matrix>);


//add aspects
    <chisel:voidstone>.setAspects(<aspect:tenebrae> * 10, <aspect:vacuos> * 10, <aspect:ordo> * 10);
    <chisel:energizedvoidstone>.setAspects(<aspect:tenebrae> * 10, <aspect:perditio> * 10, <aspect:potentia> * 10);
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

## GREATWOOD STICK
//recipes.addShaped(<contenttweaker:greatwood_handle>, [[null, null, <thaumcraft:log_greatwood>],[null, <thaumcraft:log_greatwood>, null], [<thaumcraft:log_greatwood>, null, null]]);
//recipes.addShaped(<thaumadditions:iron_framed_greatwood>, [[null, <thermalfoundation:material:32>, null],[<thermalfoundation:material:32>, <thaumcraft:plank_greatwood>, <thermalfoundation:material:32>], [null, <thermalfoundation:material:32>, null]]);

<contenttweaker:greatwood_handle>.addTooltip(format.lightPurple("对着宏伟之木原木使用世界盐"));
SalisMundus.addSingleConversion(<blockstate:thaumcraft:log_greatwood>.block, <contenttweaker:greatwood_handle>*2);




##########################################################################################
print("==================== end of mods thaumcraft.zs ====================");
