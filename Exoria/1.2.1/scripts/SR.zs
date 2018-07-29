print("Sky Resources");

// Glass Processing
mods.skyresources.combustion.addRecipe(<skyresources:alchemyitemcomponent:1> * 8, [<tconstruct:clear_glass>], 200);
recipes.addShaped(<tconstruct:clear_glass>, [[<skyresources:alchemyitemcomponent:1>, <skyresources:alchemyitemcomponent:1>, <skyresources:alchemyitemcomponent:1>], [<skyresources:alchemyitemcomponent:1>, null, <skyresources:alchemyitemcomponent:1>], [<skyresources:alchemyitemcomponent:1>, <skyresources:alchemyitemcomponent:1>, <skyresources:alchemyitemcomponent:1>]]);
recipes.addShapeless(<minecraft:glass>, [<tconstruct:clear_glass>]);
recipes.addShapeless(<tconstruct:clear_glass>, [<minecraft:glass>]);
furnace.remove(<minecraft:glass>, <*>);
mods.thermalexpansion.RedstoneFurnace.addRecipe(<tconstruct:clear_glass>, <minecraft:sand>, 1000);

// Disable Cutting Knifes
mods.jei.JEI.removeAndHide(<skyresources:stonecuttingknife>);
mods.jei.JEI.removeAndHide(<skyresources:ironcuttingknife>);
mods.jei.JEI.removeAndHide(<skyresources:diamondcuttingknife>);
mods.jei.JEI.removeAndHide(<skyresources:cactuscuttingknife>);

// Diamond Infusion Stone
recipes.remove(<skyresources:alchemicalinfusionstone>);
recipes.addShaped(<skyresources:alchemicalinfusionstone>, [[<skyresources:alchemyitemcomponent>], [<ore:gemDiamond>]]);
<skyresources:alchemicalinfusionstone>.displayName = "钻石灌注石";

// SR recipe removals
mods.jei.JEI.removeAndHide(<skyresources:baseitemcomponent>);
mods.jei.JEI.removeAndHide(<skyresources:waterextractor>);
//mods.jei.JEI.removeAndHide(<skyresources:lifeinfuser>);
mods.jei.JEI.removeAndHide(<skyresources:lifeinjector>);

// Condenser Removals
mods.skyresources.condenser.removeRecipe(<minecraft:iron_ingot>);
mods.skyresources.condenser.removeRecipe(<minecraft:iron_ore>);
mods.skyresources.condenser.removeRecipe(<minecraft:gold_ingot>);
mods.skyresources.condenser.removeRecipe(<minecraft:gold_ore>);
mods.skyresources.condenser.removeRecipe(<forestry:ingot_copper>);
mods.skyresources.condenser.removeRecipe(<forestry:resources:1>);
mods.skyresources.condenser.removeRecipe(<forestry:ingot_tin>);
mods.skyresources.condenser.removeRecipe(<forestry:resources:2>);
mods.skyresources.condenser.removeRecipe(<thermalfoundation:material:130>);
mods.skyresources.condenser.removeRecipe(<thermalfoundation:ore:2>);
mods.skyresources.condenser.removeRecipe(<thermalfoundation:material:131>);
mods.skyresources.condenser.removeRecipe(<thermalfoundation:ore:3>);
mods.skyresources.condenser.removeRecipe(<thermalfoundation:material:132>);
mods.skyresources.condenser.removeRecipe(<thermalfoundation:ore:4>);
mods.skyresources.condenser.removeRecipe(<thermalfoundation:material:133>);
mods.skyresources.condenser.removeRecipe(<thermalfoundation:ore:5>);
mods.skyresources.condenser.removeRecipe(<thermalfoundation:material:134>);
mods.skyresources.condenser.removeRecipe(<thermalfoundation:ore:6>);
mods.skyresources.condenser.removeRecipe(<thermalfoundation:material:135>);
mods.skyresources.condenser.removeRecipe(<thermalfoundation:ore:7>);
mods.skyresources.condenser.removeRecipe(<thermalfoundation:material:136>);
mods.skyresources.condenser.removeRecipe(<thermalfoundation:ore:8>);
mods.skyresources.condenser.removeRecipe(<magneticraft:ingots:14>);
mods.skyresources.condenser.removeRecipe(<fp:erze:1>);
mods.skyresources.condenser.removeRecipe(<magneticraft:ingots:4>);
mods.skyresources.condenser.removeRecipe(<magneticraft:ores:2>);
mods.skyresources.condenser.removeRecipe(<tconstruct:ingots:1>);
mods.skyresources.condenser.removeRecipe(<exnihilocreatio:item_ore_ardite:1>);
mods.skyresources.condenser.removeRecipe(<magneticraft:ingots:11>);
mods.skyresources.condenser.removeRecipe(<libvulpes:productingot:7>);
mods.skyresources.condenser.removeRecipe(<libvulpes:ore0:8>);
mods.skyresources.condenser.removeRecipe(<magneticraft:ingots:5>);
mods.skyresources.condenser.removeRecipe(<magneticraft:ores:3>);
mods.skyresources.condenser.removeRecipe(<fp:itemerze:12>);
mods.skyresources.condenser.removeRecipe(<immersiveengineering:metal:5>);
mods.skyresources.condenser.removeRecipe(<immersiveengineering:ore:5>);

// Condenser Addition
mods.skyresources.condenser.addRecipe(<terraqueous:item_main:50>, 500, <terraqueous:item_main:251>, <liquid:srcrystalfluid>);
mods.skyresources.condenser.addRecipe(<minecraft:diamond>, 400, <terraqueous:item_main:209>, <liquid:srcrystalfluid>);
mods.skyresources.condenser.addRecipe(<minecraft:emerald>, 400, <terraqueous:item_main:211>, <liquid:srcrystalfluid>);
mods.skyresources.condenser.addRecipe(<minecraft:prismarine_crystals>, 350, <minecraft:prismarine_shard>, <liquid:srcrystalfluid>);
mods.skyresources.condenser.addRecipe(<appliedenergistics2:material>, 300, <appliedenergistics2:material:2>, <liquid:srcrystalfluid>);
mods.skyresources.condenser.addRecipe(<actuallyadditions:item_misc:5>, 250, <actuallyadditions:item_dust:7>, <liquid:srcrystalfluid>);
mods.skyresources.condenser.addRecipe(<minecraft:quartz>, 250, <actuallyadditions:item_dust:5>, <liquid:srcrystalfluid>);
mods.skyresources.condenser.addRecipe(<minecraft:coal>, 200, <thermalfoundation:material:768>, <liquid:srcrystalfluid>);
mods.skyresources.condenser.addRecipe(<minecraft:dye:4>, 400, <actuallyadditions:item_dust:4>, <liquid:srcrystalfluid>);
mods.skyresources.condenser.addRecipe(<minecraft:ender_pearl>, 400, <terraqueous:item_main:201>, <liquid:srcrystalfluid>);
mods.skyresources.condenser.addRecipe(<environmentaltech:litherite_crystal>, 200, <terraqueous:item_main:51>, <liquid:srcrystalfluid>);
mods.skyresources.condenser.addRecipe(<environmentaltech:erodium_crystal>, 100000, <environmentaltech:litherite_crystal>, <liquid:srcrystalfluid>);
mods.skyresources.condenser.addRecipe(<environmentaltech:kyronite_crystal>, 100000, <environmentaltech:erodium_crystal>, <liquid:srcrystalfluid>);
mods.skyresources.condenser.addRecipe(<environmentaltech:pladium_crystal>, 100000, <environmentaltech:kyronite_crystal>, <liquid:srcrystalfluid>);
mods.skyresources.condenser.addRecipe(<environmentaltech:ionite_crystal>, 100000, <environmentaltech:pladium_crystal>, <liquid:srcrystalfluid>);
mods.skyresources.condenser.addRecipe(<environmentaltech:aethium_crystal>, 100000, <environmentaltech:ionite_crystal>, <liquid:srcrystalfluid>);

// Condenser recipes
recipes.remove(<skyresources:condenser:*>);
recipes.addShaped(<skyresources:condenser>, [[<ore:logWood>, <thermalfoundation:material:768>, <ore:logWood>], [<ore:logWood>, null, <ore:logWood>], [<ore:logWood>, null, <ore:logWood>]]);
recipes.addShaped(<skyresources:condenser:1>, [[<ore:stone>, <thermalfoundation:material:768>, <ore:stone>], [<ore:stone>, null, <ore:stone>], [<ore:stone>, null, <ore:stone>]]);
recipes.addShaped(<skyresources:condenser:2>, [[<ore:ingotBronze>, <actuallyadditions:item_dust:5>, <ore:ingotBronze>], [<ore:ingotBronze>, null, <ore:ingotBronze>], [<ore:ingotBronze>, null, <ore:ingotBronze>]]);
recipes.addShaped(<skyresources:condenser:3>, [[<ore:ingotIron>, <thermalfoundation:material:768>, <ore:ingotIron>], [<ore:ingotIron>, null, <ore:ingotIron>], [<ore:ingotIron>, null, <ore:ingotIron>]]);
recipes.addShaped(<skyresources:condenser:4>, [[<ore:ingotSteel>, <actuallyadditions:item_dust:5>, <ore:ingotSteel>], [<ore:ingotSteel>, null, <ore:ingotSteel>], [<ore:ingotSteel>, null, <ore:ingotSteel>]]);
recipes.addShaped(<skyresources:condenser:5>, [[<ore:ingotElectrum>, <actuallyadditions:item_dust:5>, <ore:ingotElectrum>], [<ore:ingotElectrum>, null, <ore:ingotElectrum>], [<ore:ingotElectrum>, null, <ore:ingotElectrum>]]);
recipes.addShaped(<skyresources:condenser:6>, [[<minecraft:nether_brick>, <terraqueous:item_main:251>, <minecraft:nether_brick>], [<minecraft:nether_brick>, null, <minecraft:nether_brick>], [<minecraft:nether_brick>, null, <minecraft:nether_brick>]]);
recipes.addShaped(<skyresources:condenser:7>, [[<ore:ingotLead>, <actuallyadditions:item_dust:5>, <ore:ingotLead>], [<ore:ingotLead>, null, <ore:ingotLead>], [<ore:ingotLead>, null, <ore:ingotLead>]]);
recipes.addShaped(<skyresources:condenser:9>, [[<ore:ingotSignalum>, <redstonearsenal:material>, <ore:ingotSignalum>], [<ore:ingotSignalum>, null, <ore:ingotSignalum>], [<ore:ingotSignalum>, null, <ore:ingotSignalum>]]);
recipes.addShaped(<skyresources:condenser:10>, [[<minecraft:end_stone>, <redstonearsenal:material>, <minecraft:end_stone>], [<minecraft:end_stone>, null, <minecraft:end_stone>], [<minecraft:end_stone>, null, <minecraft:end_stone>]]);
recipes.addShaped(<skyresources:condenser:11>, [[<ore:ingotEnderium>, <redstonearsenal:material>, <ore:ingotEnderium>], [<ore:ingotEnderium>, null, <ore:ingotEnderium>], [<ore:ingotEnderium>, null, <ore:ingotEnderium>]]);

// Casing Removals
mods.jei.JEI.removeAndHide(<skyresources:casing:8>);
mods.jei.JEI.removeAndHide(<skyresources:casing:14>);
mods.jei.JEI.removeAndHide(<skyresources:casing:15>);

// Crucible Addition
mods.skyresources.crucible.addRecipe(<liquid:water> * 250, <minecraft:sapling:*>);
var leaves = <ore:treeLeaves> as crafttweaker.oredict.IOreDictEntry;
for item in leaves.items{
    mods.skyresources.crucible.addRecipe(<liquid:water> * 250, item);
}
var saplings = <ore:treeSapling> as crafttweaker.oredict.IOreDictEntry;
for item in saplings.items{
    mods.skyresources.crucible.addRecipe(<liquid:water> * 250, item);
}
mods.skyresources.crucible.addRecipe(<liquid:water> * 100, <skyresources:baseitemcomponent:5>);
mods.skyresources.crucible.addRecipe(<liquid:lava> * 100, <forestry:phosphor>);
mods.skyresources.crucible.addRecipe(<liquid:seed.oil> * 10, <minecraft:beetroot_seeds>);
mods.skyresources.crucible.addRecipe(<liquid:seed.oil> * 10, <minecraft:melon_seeds>);
mods.skyresources.crucible.addRecipe(<liquid:seed.oil> * 10, <minecraft:pumpkin_seeds>);
mods.skyresources.crucible.addRecipe(<liquid:seed.oil> * 10, <minecraft:wheat_seeds>);
mods.skyresources.crucible.addRecipe(<liquid:seed.oil> * 10, <actuallyadditions:item_rice_seed>);
mods.skyresources.crucible.addRecipe(<liquid:seed.oil> * 10, <biomesoplenty:turnip_seeds>);
mods.skyresources.crucible.addRecipe(<liquid:seed.oil> * 10, <primal:rush_seeds>);
mods.skyresources.crucible.addRecipe(<liquid:seed.oil> * 10, <roots:aubergine_seeds>);
mods.skyresources.crucible.addRecipe(<liquid:seed.oil> * 10, <roots:moontinged_seed>);
mods.skyresources.crucible.addRecipe(<liquid:seed.oil> * 10, <xlfoodmod:tomato_seeds>);
mods.skyresources.crucible.addRecipe(<liquid:seed.oil> * 10, <xlfoodmod:strawberry_seeds>);
mods.skyresources.crucible.addRecipe(<liquid:seed.oil> * 10, <xlfoodmod:rice_seeds>);
mods.skyresources.crucible.addRecipe(<liquid:seed.oil> * 10, <xlfoodmod:pepper_seeds>);
mods.skyresources.crucible.addRecipe(<liquid:seed.oil> * 10, <xlfoodmod:corn_seeds>);
mods.skyresources.crucible.addRecipe(<liquid:seed.oil> * 10, <xlfoodmod:cucumber_seeds>);
mods.skyresources.crucible.addRecipe(<liquid:seed.oil> * 10, <xlfoodmod:lettuce_seeds>);
mods.skyresources.crucible.addRecipe(<liquid:seed.oil> * 10, <immersiveengineering:seed>);

// Combustion Removals
mods.skyresources.combustion.removeRecipe(<minecraft:coal>);
mods.skyresources.combustion.removeRecipe(<minecraft:blaze_powder>);
mods.skyresources.combustion.removeRecipe(<minecraft:gunpowder>);
mods.skyresources.combustion.removeRecipe(<minecraft:diamond>);
mods.skyresources.combustion.removeRecipe(<minecraft:sand:1>);
mods.skyresources.combustion.removeRecipe(<skyresources:drycactus>);
mods.skyresources.combustion.removeRecipe(<minecraft:redstone>);
mods.skyresources.combustion.removeRecipe(<minecraft:wheat_seeds>);
mods.skyresources.combustion.removeRecipe(<minecraft:dirt>);
mods.skyresources.combustion.removeRecipe(<minecraft:slime_ball>);
mods.skyresources.combustion.removeRecipe(<minecraft:poisonous_potato>);
mods.skyresources.combustion.removeRecipe(<skyresources:techitemcomponent:1>);
mods.skyresources.combustion.removeRecipe(<minecraft:prismarine_shard>);
mods.skyresources.combustion.removeRecipe(<minecraft:prismarine_crystals>);
mods.skyresources.combustion.removeRecipe(<minecraft:snowball>);
mods.skyresources.combustion.removeRecipe(<minecraft:netherrack>);
mods.skyresources.combustion.removeRecipe(<skyresources:baseitemcomponent:3>);
mods.skyresources.combustion.removeRecipe(<skyresources:baseitemcomponent:7>);
mods.skyresources.combustion.removeRecipe(<minecraft:glowstone_dust>);
mods.skyresources.combustion.removeRecipe(<minecraft:end_stone>);
mods.skyresources.combustion.removeRecipe(<skyresources:alchemyitemcomponent:2>);
mods.skyresources.combustion.removeRecipe(<immersiveengineering:metal:14>);
mods.skyresources.combustion.removeRecipe(<tconstruct:edible:1>);
mods.skyresources.combustion.removeRecipe(<tconstruct:edible:2>);
mods.skyresources.combustion.removeRecipe(<tconstruct:edible:4>);
mods.skyresources.combustion.removeRecipe(<embers:shard_ember>);
mods.skyresources.combustion.removeRecipe(<appliedenergistics2:material:1>);
mods.skyresources.combustion.removeRecipe(<appliedenergistics2:sky_stone_block>);
mods.skyresources.combustion.removeRecipe(<appliedenergistics2:material:15>);
mods.skyresources.combustion.removeRecipe(<appliedenergistics2:material:14>);
mods.skyresources.combustion.removeRecipe(<appliedenergistics2:material:13>);
mods.skyresources.combustion.removeRecipe(<appliedenergistics2:material:19>);

// Rock Grinder Adjustments
mods.jei.JEI.removeAndHide(<skyresources:stonegrinder>);
mods.jei.JEI.removeAndHide(<skyresources:irongrinder>);
mods.jei.JEI.removeAndHide(<skyresources:diamondgrinder>);
recipes.remove(<skyresources:rockcrusher>);
recipes.addShaped(<skyresources:rockcrusher>, [[<ore:ingotSteel>, <ore:ingotSteel>, <ore:ingotSteel>], [<ore:ingotSteel>, <magneticraft:crushing_table>, <ore:ingotSteel>], [<ore:ingotSteel>, <skyresources:baseitemcomponent:1>, <ore:ingotSteel>]]);
recipes.remove(<skyresources:baseitemcomponent:1>);
recipes.addShaped(<skyresources:baseitemcomponent:1>, [[<ore:ingotSteel>, <ore:dustCoal>, <ore:ingotSteel>], [<ore:ingotSteel>, <magneticraft:battery_item_low>, <ore:ingotSteel>], [<ore:ingotSteel>, <ore:dustCoal>, <ore:ingotSteel>]]);

// Grinder Removals
mods.skyresources.rockgrinder.removeRecipe(<minecraft:gravel>);
mods.skyresources.rockgrinder.removeRecipe(<minecraft:sand>);
mods.skyresources.rockgrinder.removeRecipe(<minecraft:flint>);
mods.skyresources.rockgrinder.removeRecipe(<skyresources:techitemcomponent>);
mods.skyresources.rockgrinder.removeRecipe(<skyresources:dirtygem:0>);
mods.skyresources.rockgrinder.removeRecipe(<skyresources:dirtygem:1>);
mods.skyresources.rockgrinder.removeRecipe(<skyresources:dirtygem:2>);
mods.skyresources.rockgrinder.removeRecipe(<skyresources:dirtygem:3>);
mods.skyresources.rockgrinder.removeRecipe(<skyresources:dirtygem:4>);
mods.skyresources.rockgrinder.removeRecipe(<skyresources:dirtygem:7>);
mods.skyresources.rockgrinder.removeRecipe(<skyresources:dirtygem:8>);
mods.skyresources.rockgrinder.removeRecipe(<skyresources:dirtygem:10>);
mods.skyresources.rockgrinder.removeRecipe(<skyresources:dirtygem:15>);
mods.skyresources.rockgrinder.removeRecipe(<skyresources:dirtygem:17>);
mods.skyresources.rockgrinder.removeRecipe(<skyresources:dirtygem:28>);
mods.skyresources.rockgrinder.removeRecipe(<skyresources:dirtygem:30>);
mods.skyresources.rockgrinder.removeRecipe(<skyresources:dirtygem:40>);
mods.skyresources.rockgrinder.removeRecipe(<skyresources:dirtygem:41>);
mods.skyresources.rockgrinder.removeRecipe(<skyresources:dirtygem:42>);
mods.skyresources.rockgrinder.removeRecipe(<skyresources:dirtygem:43>);
mods.skyresources.rockgrinder.removeRecipe(<skyresources:techitemcomponent:3>);

// Grinder Additions
mods.skyresources.rockgrinder.addRecipe(<primal:urushi_ground>, <electrostatics:resin>);
mods.skyresources.rockgrinder.addRecipe(<minecraft:glowstone_dust>, <fp:cristall:6>);
mods.skyresources.rockgrinder.addRecipe(<minecraft:glowstone_dust> * 9, <fp:erz_blocke:6>);
mods.skyresources.rockgrinder.addRecipe(<woot:soulsanddust>, <minecraft:soul_sand>);
mods.skyresources.rockgrinder.addRecipe(<skyresources:techitemcomponent:3>, <minecraft:netherrack>);
var combs = <ore:beeComb> as crafttweaker.oredict.IOreDictEntry;
for item in combs.items{
    mods.skyresources.rockgrinder.addRecipe(<forestry:honey_drop>, item);
}

// Life Infusion Removals
mods.skyresources.infusion.removeRecipe(<minecraft:sapling:4>);
mods.skyresources.infusion.removeRecipe(<minecraft:sapling>);
mods.skyresources.infusion.removeRecipe(<minecraft:dirt:1>);
mods.skyresources.infusion.removeRecipe(<minecraft:deadbush>);
mods.skyresources.infusion.removeRecipe(<minecraft:grass>);
mods.skyresources.infusion.removeRecipe(<minecraft:cactus>);
mods.skyresources.infusion.removeRecipe(<minecraft:apple>);
mods.skyresources.infusion.removeRecipe(<minecraft:sapling:5>);
mods.skyresources.infusion.removeRecipe(<minecraft:sapling:3>);
mods.skyresources.infusion.removeRecipe(<minecraft:sapling:2>);
mods.skyresources.infusion.removeRecipe(<minecraft:reeds>);
mods.skyresources.infusion.removeRecipe(<minecraft:nether_wart>);
mods.skyresources.infusion.removeRecipe(<minecraft:red_mushroom>);
mods.skyresources.infusion.removeRecipe(<minecraft:brown_mushroom>);
mods.skyresources.infusion.removeRecipe(<minecraft:mycelium>);
mods.skyresources.infusion.removeRecipe(<minecraft:chorus_flower>);
mods.skyresources.infusion.removeRecipe(<minecraft:chorus_fruit>);
mods.skyresources.infusion.removeRecipe(<skyresources:itemhealthgem>);
mods.skyresources.infusion.removeRecipe(<tconstruct:slime_sapling>);
mods.skyresources.infusion.removeRecipe(<tconstruct:slime_sapling:1>);
mods.skyresources.infusion.removeRecipe(<tconstruct:slime_sapling:2>);
mods.skyresources.infusion.removeRecipe(<tconstruct:slime_dirt>);
mods.skyresources.infusion.removeRecipe(<tconstruct:slime_dirt:1>);
mods.skyresources.infusion.removeRecipe(<tconstruct:slime_dirt:2>);
mods.skyresources.infusion.removeRecipe(<tconstruct:slime_dirt:3>);

// Water Extractor Removals
mods.skyresources.waterextractor.extract.removeRecipe(50, <skyresources:drycactus>, <minecraft:cactus>);
mods.skyresources.waterextractor.extract.removeRecipe(50, null, <minecraft:snow>);
//mods.skyresources.waterextractor.extract.removeRecipe(20, null, <ore:treeLeaves>);
mods.skyresources.waterextractor.insert.removeRecipe(<minecraft:clay>);
mods.skyresources.waterextractor.insert.removeRecipe(<minecraft:cactus>);

// Hide unnecessary stuff
mods.jei.JEI.removeAndHide(<skyresources:dirtfurnace>);
mods.jei.JEI.removeAndHide(<skyresources:survivalistfishingrod>);
mods.jei.JEI.removeAndHide(<skyresources:fusiontable>);
mods.jei.JEI.removeAndHide(<skyresources:wildlifeattractor>);
mods.jei.JEI.removeAndHide(<skyresources:blazepowderblock>);
mods.jei.JEI.removeAndHide(<skyresources:compressedcoalblock>);
mods.jei.JEI.removeAndHide(<skyresources:aqueousconcentrator>);
mods.jei.JEI.removeAndHide(<skyresources:aqueousdeconcentrator>);
mods.jei.JEI.removeAndHide(<skyresources:silverfishdisruptor>);