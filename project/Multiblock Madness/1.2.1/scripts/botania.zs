##########################################################################################
#modloaded botania
#priority 100

import crafttweaker.item.IItemStack;
import mods.botania.Apothecary;
import mods.botania.ElvenTrade;
import mods.botania.ManaInfusion;
import mods.botania.Orechid;
import mods.botania.OrechidIgnem;
import mods.botania.PureDaisy;
import mods.botania.RuneAltar;
import mods.botaniatweaks.Agglomeration;
import mods.inworldcrafting.FluidToItem;
import mods.thermalexpansion.Insolator;
import mods.thaumcraft.Infusion;
import mods.immersiveengineering.Crusher;
import mods.nuclearcraft.Manufactory;
import mods.techreborn.grinder;
import mods.enderio.SagMill;
import mods.thermalexpansion.Pulverizer;
import mods.nuclearcraft.Melter;

print("==================== loading mods botania.zs ====================");
##########################################################################################

//mods.botania.ElvenTrade.addRecipe([<minecraft:iron_ingot>], [<minecraft:dirt>,<minecraft:grass>]);

val remove =
[
<botania:runealtar>,
<botania:altar>,
<botania:spreader>,
<botania:pylon:1>,
<botania:livingwood:5>,
<botania:alfheimportal>,
<botania:sparkupgrade:3>,
<botania:sparkupgrade:2>,
<botania:sparkupgrade:1>,
<botania:sparkupgrade>,
<botania:dreamwood:5>,
<botania:managun>,
<botania:thirdeye>,
]
 as IItemStack[];

for item in remove {
recipes.remove(item);
}


<botania:enchanter>.addTooltip(format.green("使用植物魔法辞典来搭建"));

//Mana Gun
recipes.addShaped(<botania:managun>, [[<botania:spreader:1>, <embers:diffraction_barrel>, <botania:manaresource:2>],[null, <botania:livingwood>, <minecraft:tnt>], [null, null, <botania:livingwood>]]);

//Enchanted Soil
recipes.addShapeless(<botania:enchantedsoil>, [<minecraft:grass>,<botania:overgrowthseed>]);

//mods.thermalexpansion.Insolator.addRecipe(IItemStack primaryOutput, IItemStack primaryInput, IItemStack secondaryInput, int energy, @Optional IItemStack secondaryOutput, @Optional int secondaryChance, @Optional int water);
## Black Lotus
Insolator.addRecipe(<actuallyadditions:block_black_lotus>, <actuallyadditions:block_black_lotus>, <thermalfoundation:fertilizer>, 1000, <actuallyadditions:block_black_lotus>, 100, 1000);
Insolator.addRecipe(<actuallyadditions:block_black_lotus>*2, <actuallyadditions:block_black_lotus>, <thermalfoundation:fertilizer:1>, 7500, <botania:blacklotus>, 25, 2500);
Insolator.addRecipe(<actuallyadditions:block_black_lotus>*3, <actuallyadditions:block_black_lotus>, <thermalfoundation:fertilizer:2>, 15000, <botania:blacklotus:1>, 5, 5000);


// living wood
PureDaisy.removeRecipe(<botania:livingwood>);

val livingWood =
[
    /*
    <thebetweenlands:log_weedwood>,
    <thebetweenlands:log_weedwood:12>,
    <thebetweenlands:log_weedwood:8>,
    <thebetweenlands:log_weedwood:4>,
    <thebetweenlands:weedwood>,
    */
    <thaumcraft:log_greatwood>,
    <thaumcraft:log_greatwood:1>,
    <thaumcraft:log_greatwood:2>,
]
 as IItemStack[];

for item in livingWood {
PureDaisy.addRecipe(item, <botania:livingwood>);
}


// living stone
val plantsformossy =
[
<minecraft:tallgrass:1>,
<minecraft:tallgrass:2>,
<minecraft:double_plant:2>,
<minecraft:vine>,
<minecraft:double_plant:3>
]
 as IItemStack[];
for item in plantsformossy {
<ore:plants>.add(item);
}
PureDaisy.removeRecipe(<botania:livingrock>);
PureDaisy.addRecipe(<minecraft:mossy_cobblestone>, <botania:livingrock>);

FluidToItem.transform(<minecraft:mossy_cobblestone>, <liquid:water>, [<ore:cobblestone>, <ore:plants>], true);

/* Does not work with botania items for some reason
<botania:manaresource>.displayName = "Manasilver Ingot";
<botania:manaresource:17>.displayName = "Manasilver Nugget";
<botania:storage>.displayName = "Block of Manasilver";
<mysticalagriculture:manasteel_essence>.displayName = "Manasilver Essence";
<mysticalagriculture:manasteel_seeds>.displayName = "Manasilver Seeds";
<plustic:plustic.molten_manasteel>.displayName = "Molten Manasilver";
<jaopca:item_stickmanasteel>.displayName = "Manasilver Rod";
*/

### CRAFTING RECIPES ###
recipes.addShaped(<botania:altar>, [[<moreplates:enori_plate>, <astralsorcery:itemusabledust>, <moreplates:enori_plate>],[null, <thaumcraft:stone_arcane>, null], [<thaumcraft:stone_arcane>, <thaumcraft:stone_arcane>, <thaumcraft:stone_arcane>]]);

//spreader
recipes.addShapedMirrored(<botania:spreader>, [[<botania:livingwood>, <botania:livingwood>, <botania:livingwood>],[<ore:plateBrass>, <botania:petal:*>, null], [<botania:livingwood>, <botania:livingwood>, <botania:livingwood>]]);


mods.astralsorcery.Altar.addAttunementAltarRecipe("multiblockmadness:shaped/internal/altar/runealtar", <botania:runealtar>, 1000, 300, [

			<arcanearchives:quartz_sliver>, <arcanearchives:quartz_sliver>, <arcanearchives:quartz_sliver>,

			<botania:livingrock>, <botania:livingrock>, <botania:livingrock>,

			<botania:livingrock>, <astralsorcery:itemshiftingstar>, <botania:livingrock>,

			<botania:manaresource:23>, <botania:manaresource:23>, <bloodmagic:blood_rune>, <bloodmagic:blood_rune>]);

### INFUSION ###
//Mana Powder
ManaInfusion.removeRecipe(<botania:manaresource:23>);
ManaInfusion.addInfusion(<botania:manaresource:23>,<minecraft:gunpowder>,10000);
ManaInfusion.addInfusion(<botania:manaresource:23>,<contenttweaker:slatedust>,5000);
ManaInfusion.addInfusion(<botania:manaresource:23>,<embers:dust_ember>,7500);

//Essence of Mana
ManaInfusion.addInfusion(<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "praecantatio"}]}), <thaumcraft:nugget:9>, 1000);

//Mana Steel
ManaInfusion.removeRecipe(<botania:storage>);
ManaInfusion.removeRecipe(<ore:ingotManasteel>);

ManaInfusion.addInfusion(<botania:manaresource>,<contenttweaker:inert_ingot>,10000);
ManaInfusion.addInfusion(<botania:manaresource>*2,<contenttweaker:material_part:20>,10000);
ManaInfusion.addInfusion(<botania:storage>,<contenttweaker:sub_block_holder_0:2>,100000);
ManaInfusion.addInfusion(<botania:storage>*2,<contenttweaker:sub_block_holder_0>,100000);

//Mana Diamond
ManaInfusion.removeRecipe(<botania:storage:3>);
ManaInfusion.removeRecipe(<botania:manaresource:2>);

ManaInfusion.addInfusion(<botania:manaresource:2>,<actuallyadditions:item_crystal:2>,15000);
ManaInfusion.addInfusion(<botania:storage:3>,<actuallyadditions:block_crystal:2>,150000);

ManaInfusion.addInfusion(<botania:manaresource:2>,<actuallyadditions:item_crystal_empowered:2>,1500);
ManaInfusion.addInfusion(<botania:storage:3>,<actuallyadditions:block_crystal_empowered:2>,15000);



//Terrasteel
Agglomeration.removeRecipe(<botania:manaresource:4>, [<botania:manaresource:1>, <botania:manaresource>, <botania:manaresource:2>]);

Agglomeration.addRecipe(<botania:manaresource:4>, 
[<botania:manaresource:1>, <astralsorcery:itemcraftingcomponent:1>, <botania:manaresource:2>]
,500000,0x0000FF,0x00FF00,
<bloodarsenal:blood_infused_iron_block>,<actuallyadditions:block_crystal_empowered:1>,<actuallyadditions:block_crystal_empowered:3>);

//mods.thaumcraft.Infusion.registerRecipe(String name, String research, IItemStack output, int instability, CTAspectStack[] aspects, IIngredient centralItem, IIngredient[] recipe);
//Glimering Wood
mods.astralsorcery.StarlightInfusion.addInfusion(<botania:livingwood>, <botania:livingwood:5>, false, 0.1, 100);
mods.astralsorcery.StarlightInfusion.addInfusion(<botania:dreamwood>, <botania:dreamwood:5>, false, 0.1, 100);



//Nature Pylon
mods.thaumcraft.Infusion.registerRecipe("nature_pylon", "", 
<botania:pylon:1>, 5, 
[<aspect:herba>*200, <aspect:praecantatio>*100, <aspect:alienis>*50, <aspect:chronos>*50], 
<botania:pylon>, [<botania:livingwood:5>,<botania:manaresource:4>,<botania:livingwood:5>, <minecraft:ender_eye>,<botania:livingwood:5>,<botania:manaresource:4>, <botania:livingwood:5>,<minecraft:glowstone_dust>]);

//Gateway Core
mods.thaumcraft.Infusion.registerRecipe("gateway_core", "", 
<botania:alfheimportal>, 10, 
[<aspect:praecantatio>*200, <aspect:permutatio>*100, <aspect:alienis>*50, <aspect:chronos>*50], 
<waystones:warp_stone>, 
[<botania:manaresource:4>,<botania:livingwood:5>, <botania:manaresource:4>, <bloodmagic:slate:4>,
<botania:manaresource:4>,<botania:livingwood:5>, <botania:manaresource:4>, <bloodmagic:slate:4>]);


Agglomeration.addRecipe(<ebwizardry:astral_diamond>, [<astralsorcery:itemcraftingcomponent:4>, <astralsorcery:itemcraftingcomponent:2>, <botania:manaresource:2>,<thaumcraft:quicksilver>],250000,0x0000FF,0x8afff7,<astralsorcery:blockinfusedwood:6>,<contenttweaker:starmetal_block>,<astralsorcery:blockblackmarble>);

RuneAltar.addRecipe(<chisel:energizedvoidstone:4>*4,[<chisel:energizedvoidstone:2>,<botania:rune:7>,<chisel:energizedvoidstone:2>,<botania:rune:6>,<chisel:energizedvoidstone:2>,<botania:rune:5>,<chisel:energizedvoidstone:2>,<botania:rune:4>], 10000);

//RuneAltar.removeRecipe(IIngredient output);
RuneAltar.removeRecipe(<botania:rune:8>);

//mods.botania.RuneAltar.addRecipe(IItemStack output, IIngredient[] input, int mana);
RuneAltar.addRecipe(<botania:rune:8>,[<botania:manaresource:2>, <botania:manaresource:2>, <thermalfoundation:material:134>, <thermalfoundation:material:134>, <enderio:item_alloy_endergy_ingot:5>, <enderio:item_alloy_endergy_ingot:5>], 20000);

val petalDupe as IItemStack[IItemStack] = {
<botania:petal>:<botania:dye>,
<botania:petal:1>:<botania:dye:1>,
<botania:petal:2>:<botania:dye:2>,
<botania:petal:3>:<botania:dye:3>,
<botania:petal:4>:<botania:dye:4>,
<botania:petal:5>:<botania:dye:5>,
<botania:petal:6>:<botania:dye:6>,
<botania:petal:7>:<botania:dye:7>,
<botania:petal:8>:<botania:dye:8>,
<botania:petal:9>:<botania:dye:9>,
<botania:petal:10>:<botania:dye:10>,
<botania:petal:11>:<botania:dye:11>,
<botania:petal:12>:<botania:dye:12>,
<botania:petal:13>:<botania:dye:13>,
<botania:petal:14>:<botania:dye:14>,
<botania:petal:15>:<botania:dye:15>,
} as IItemStack[IItemStack];

for petal, dust in petalDupe {
Insolator.addRecipe(petal*2, petal, <thermalfoundation:fertilizer>, 1500);
Insolator.addRecipe(petal*3, petal, <thermalfoundation:fertilizer:1>, 3000);
Insolator.addRecipe(petal*5, petal, <thermalfoundation:fertilizer:2>, 5000);

Crusher.addRecipe(dust, petal, 2048, dust, 0.1);
Manufactory.addRecipe(petal, dust);
grinder.addRecipe(dust, petal, 300, 4);
Pulverizer.addRecipe(dust, petal, 1500, dust, 10);
SagMill.addRecipe([dust], [1] , petal, "MULTIPLY_OUTPUT");
}

val tinyDustMap as IItemStack[IItemStack] = {
} as IItemStack[IItemStack];

for tinyDust, material in tinyDustMap {
	mods.fossils.recipes.addSifterOutput(material, tinyDust, 1);
}
//mods.thermalexpansion.Insolator.addRecipe(IItemStack primaryOutput, IItemStack primaryInput, IItemStack secondaryInput, int energy, @Optional IItemStack secondaryOutput, @Optional int secondaryChance, @Optional int water);

//Shaped Quartz
//PureDaisy.addRecipe(<arcanearchives:raw_quartz_cluster>, <arcanearchives:shaped_quartz>);
PureDaisy.addRecipe(<arcanearchives:storage_raw_quartz>, <arcanearchives:storage_shaped_quartz>);



mods.botania.ManaInfusion.removeRecipe(<minecraft:flint>);

//Spark augmets
recipes.addShapeless(<botania:sparkupgrade:3>, [<botania:rune:3>,<astralsorcery:itemusabledust>,<bloodmagic:component:29>,<botania:manaresource>]);
recipes.addShapeless(<botania:sparkupgrade:2>, [<botania:rune:2>,<astralsorcery:itemusabledust>,<bloodmagic:component:29>,<botania:manaresource>]);
recipes.addShapeless(<botania:sparkupgrade:1>, [<botania:rune:1>,<astralsorcery:itemusabledust>,<bloodmagic:component:29>,<botania:manaresource>]);
recipes.addShapeless(<botania:sparkupgrade>, [<botania:rune>,<astralsorcery:itemusabledust>,<bloodmagic:component:29>,<botania:manaresource>]);

//Life FLower
//mods.botania.Apothecary.removeRecipe(IItemStack output);
mods.botania.Apothecary.removeRecipe(<botania:specialflower>.withTag({type: "dandelifeon"}));
mods.botania.Apothecary.removeRecipe(<botania:specialflower>.withTag({type: "munchdew"}));
mods.botania.Apothecary.removeRecipe(<botania:specialflower>.withTag({type: "kekimurus"}));
mods.botania.Apothecary.removeRecipe(<botania:specialflower>.withTag({type: "entropinnyum"}));

mods.botania.Apothecary.addRecipe("dandelifeon",
[<ore:petalPurple>, <ore:petalPurple>, <ore:petalGreen>, <ore:petalLime>, <botania:rune>, <botania:rune:1>, <botania:rune:2>, <botania:rune:3>]);

mods.botania.Apothecary.addRecipe("munchdew", 
[<ore:petalLime>,<ore:petalLime>,<ore:petalRed>,<ore:petalRed>,<ore:petalGreen>]);

mods.botania.Apothecary.addRecipe("kekimurus", 
[<ore:petalWhite>,<ore:petalWhite>,<ore:petalOrange>,<ore:petalOrange>,<ore:petalBrown>,<ore:petalBrown>,<botania:rune:10>]);

mods.botania.Apothecary.addRecipe("entropinnyum", 
[<ore:petalRed>,<ore:petalRed>,<ore:petalGray>,<ore:petalGray>,<ore:petalWhite>,<ore:petalWhite>,<botania:rune:13>,<botania:rune:1>,<botania:manaresource:8>]);


<botania:specialflower>.withTag({type: "endoflame"}).addTooltip(format.red("1小时后枯萎！"));
<botania:floatingspecialflower>.withTag({type: "endoflame"}).addTooltip(format.red("1小时后枯萎！"));


//Third Eye
Infusion.registerRecipe("thirdeye", "", 
<botania:thirdeye>, 5, 
[<aspect:sensus>*150, <aspect:praecantatio>*100, <aspect:spiritus>*50], 
<minecraft:ender_eye>, 
[<botania:pistonrelay>,<bloodmagic:component:26>, <botania:manaresource:2>, <botania:rune:7>,
<botania:pistonrelay>,<bloodmagic:component:26>, <botania:manaresource:2>, <botania:rune:5>]);

//elementium
Melter.addRecipe(<botania:manaresource:7>, <liquid:elementium>);

##########################################################################################
print("==================== end of mods botania.zs ====================");
