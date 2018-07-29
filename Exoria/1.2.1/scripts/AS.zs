print("Astral Sorcery");

// Luminous Crafting Table
mods.astralsorcery.Altar.removeAltarRecipe(<astralsorcery:blockaltar>, 0);
mods.extendedcrafting.TableCrafting.addShaped(<astralsorcery:blockaltar>, [[<ore:blockMarble>, <ore:blockMarble>, <minecraft:glowstone>, <extendedcrafting:table_basic>, <minecraft:glowstone>, <ore:blockMarble>, <ore:blockMarble>], [<ore:blockMarble>, <ore:blockMarble>, <minecraft:glowstone>, <minecraft:glowstone>, <minecraft:glowstone>, <ore:blockMarble>, <ore:blockMarble>], [<ore:blockMarble>, <ore:blockMarble>, <ore:blockMarble>, <ore:blockMarble>, <ore:blockMarble>, <ore:blockMarble>, <ore:blockMarble>], [<ore:blockMarble>, <ore:blockMarble>, <ore:blockMarble>, <ore:blockMarble>, <ore:blockMarble>, <ore:blockMarble>, <ore:blockMarble>], [null, null, <ore:plankTreatedWood>, <ore:plankTreatedWood>, <ore:plankTreatedWood>, null, null], [<ore:plankTreatedWood>, <ore:plankTreatedWood>, <ore:plankTreatedWood>, <ore:plankTreatedWood>, <ore:plankTreatedWood>, <ore:plankTreatedWood>, <ore:plankTreatedWood>], [<ore:plankTreatedWood>, <ore:plankTreatedWood>, <ore:plankTreatedWood>, <ore:plankTreatedWood>, <ore:plankTreatedWood>, <ore:plankTreatedWood>, <ore:plankTreatedWood>]]); 

// Star Metal
mods.astralsorcery.LightTransmutation.removeTransmutation(<astralsorcery:blockcustomore:1>, true);
mods.astralsorcery.LightTransmutation.addTransmutation(<thermalfoundation:storage:3>, <astralsorcery:blockcustomore:1>, 100);

// End Stone Removal
mods.astralsorcery.LightTransmutation.removeTransmutation(<minecraft:end_stone>, true);

// Nether Star
mods.astralsorcery.Altar.addTraitAltarRecipe(<minecraft:nether_star>, 5000, 1000, [
    <astralsorcery:itemcraftingcomponent:2>, <astralsorcery:itemcraftingcomponent>, <astralsorcery:itemcraftingcomponent:2>, <astralsorcery:itemcraftingcomponent>, <astralsorcery:itemshiftingstar>, <astralsorcery:itemcraftingcomponent>, <astralsorcery:itemcraftingcomponent:2>, <astralsorcery:itemcraftingcomponent>, <astralsorcery:itemcraftingcomponent:2>, <forge:bucketfilled>.withTag({FluidName: "astralsorcery.liquidstarlight", Amount: 1000}), <forge:bucketfilled>.withTag({FluidName: "astralsorcery.liquidstarlight", Amount: 1000}), <forge:bucketfilled>.withTag({FluidName: "astralsorcery.liquidstarlight", Amount: 1000}), <forge:bucketfilled>.withTag({FluidName: "astralsorcery.liquidstarlight", Amount: 1000}), <astralsorcery:itemusabledust>, <astralsorcery:itemusabledust>, <astralsorcery:itemusabledust>, <astralsorcery:itemusabledust>, <astralsorcery:itemusabledust>, <astralsorcery:itemusabledust>, <astralsorcery:itemusabledust>, <astralsorcery:itemusabledust>, <astralsorcery:itemcraftingcomponent:2>, <astralsorcery:itemcraftingcomponent:2>, <astralsorcery:itemcraftingcomponent:2>, <astralsorcery:itemcraftingcomponent:2>,
    <botania:spark>, <botania:manaresource:2>, <astralsorcery:itemcraftingcomponent:4>
],
"astralsorcery.constellation.aevitas");
<minecraft:nether_star>.displayName = "闪耀之星";

// Resonating Wand in normal table

recipes.addShaped(<astralsorcery:itemwand>, [[null, <ore:gemAquamarine>, <minecraft:ender_pearl>], [null, <ore:stoneMarble>, <ore:gemAquamarine>], [<ore:stoneMarble>, null, null]]);