print("Woot");

// Yah Hammer
recipes.remove(<woot:yahhammer>);
recipes.addShaped(<woot:yahhammer>, [[null, <woot:stygianironingot>, null], [null, <ore:stickWood>, <woot:stygianironingot>], [<ore:stickWood>, null, null]]);

// Soul Dust
mods.magneticraft.CrushingTable.addRecipe(<minecraft:soul_sand>, <woot:soulsanddust>, false);

// Factory Stones
recipes.remove(<woot:structure:6>);
recipes.addShapeless(<woot:structure:6>, [<woot:factorybase>, <woot:factorycore:6>, <woot:shard:2>, <botania:spark>, <mist:niobium_block>, <environmentaltech:litherite>]);
recipes.remove(<woot:structure:7>);
recipes.addShapeless(<woot:structure:7>, [<woot:factorybase>, <woot:factorycore:6>, <woot:shard>, <minecraft:ender_pearl>, <tconstruct:metal:1>, <environmentaltech:erodium>]);
recipes.remove(<woot:structure:8>);
recipes.addShapeless(<woot:structure:8>, [<woot:factorybase>, <woot:factorycore:6>, <woot:shard:1>, <minecraft:blaze_rod>, <tconstruct:metal>, <environmentaltech:kyronite>]);
recipes.remove(<woot:structure:9>);
recipes.addShapeless(<woot:structure:9>, [<woot:factorybase>, <woot:factorycore:6>, <woot:shard:3>, <minecraft:ghast_tear>, <tconstruct:metal:3>, <environmentaltech:pladium>]);
recipes.remove(<woot:structure:5>);
recipes.addShapeless(<woot:structure:5>, [<woot:factorybase>, <minecraft:egg>]);
recipes.remove(<woot:structure:2>);
recipes.addShapeless(<woot:structure:2>, [<woot:factorybase>, <botania:manaresource:8>]);
<woot:structure:2>.displayName = "精灵工厂方块";
game.setLocalization("guide.woot.entry.factory.tiers.tierii", "Tier II factory supports\n\tUp to 4 Tier II upgrades\n\nTier II factory needs\n\t2 Tier I Capstones\n\t4 Tier II Capstones\n\t14 Factory Bone Casing\n\t10 Factory Flesh Casing\n\t35 Factory Pixie Casing");

// Prism
recipes.remove(<woot:prism>);
recipes.addShaped(<woot:prism>, [[<ore:blockGlass>, <ore:blockGlass>, <ore:blockGlass>], [<ore:blockGlass>, <biomesoplenty:terrestrial_artifact>, <ore:blockGlass>], [<ore:blockGlass>, <ore:blockGlass>, <ore:blockGlass>]]);

// Mobs
recipes.addShaped(<woot:endershard>.withTag({wootMobNameKey: "roots:sprout", wootMobDeaths: 4, wootMobDisplayName: "Sprout", wootMobNameTag: ""}), [[<minecraft:carrot>, null, <minecraft:carrot>], [null, <woot:endershard>, null], [<minecraft:beetroot>, null, <minecraft:beetroot>]]);
recipes.addShaped(<woot:endershard>.withTag({wootMobNameKey: "minecraft:endermite", wootMobDeaths: 4, wootMobDisplayName: "Endermite", wootMobNameTag: ""}), [[<terraqueous:item_main:200>, null, <terraqueous:item_main:200>], [null, <woot:endershard>, null], [<terraqueous:item_main:200>, null, <terraqueous:item_main:200>]]);
recipes.addShaped(<woot:endershard>.withTag({wootMobNameKey: "minecraft:skeleton", wootMobDeaths: 4, wootMobDisplayName: "Skeleton", wootMobNameTag: ""}), [[<minecraft:bone>, null, <minecraft:bone>], [null, <woot:endershard>, null], [<minecraft:bone>, null, <minecraft:bone>]]);
recipes.addShaped(<woot:endershard>.withTag({wootMobNameKey: "minecraft:zombie", wootMobDeaths: 4, wootMobDisplayName: "Zombie", wootMobNameTag: ""}), [[<minecraft:rotten_flesh>, null, <minecraft:rotten_flesh>], [null, <woot:endershard>, null], [<minecraft:rotten_flesh>, null, <minecraft:rotten_flesh>]]);
recipes.addShaped(<woot:endershard>.withTag({wootMobNameKey: "biomesoplenty:pixie", wootMobDeaths: 4, wootMobDisplayName: "Pixie", wootMobNameTag: ""}), [[<botania:manaresource:8>, null, <botania:manaresource:8>], [null, <woot:endershard>, null], [<botania:manaresource:8>, null, <botania:manaresource:8>]]);
recipes.addShaped(<woot:endershard>.withTag({wootMobNameKey: "roots:fairy", wootMobDeaths: 4, wootMobDisplayName: "Fairy", wootMobNameTag: ""}), [[<roots:fairy_dust>, null, <roots:fairy_dust>], [null, <woot:endershard>, null], [<roots:fairy_dust>, null, <roots:fairy_dust>]]);
recipes.addShaped(<woot:endershard>.withTag({wootMobNameKey: "minecraft:shulker", wootMobDeaths: 4, wootMobDisplayName: "Shulker", wootMobNameTag: ""}), [[<minecraft:shulker_shell>, null, <minecraft:shulker_shell>], [null, <woot:endershard>, null], [<minecraft:shulker_shell>, null, <minecraft:shulker_shell>]]);
recipes.addShaped(<woot:endershard>.withTag({wootMobNameKey: "minecraft:blaze", wootMobDeaths: 4, wootMobDisplayName: "Blaze", wootMobNameTag: ""}), [[<minecraft:blaze_rod>, null, <minecraft:blaze_rod>], [null, <woot:endershard>, null], [<minecraft:blaze_rod>, null, <minecraft:blaze_rod>]]);
recipes.addShaped(<woot:endershard>.withTag({wootMobNameKey: "minecraft:silverfish", wootMobDeaths: 4, wootMobDisplayName: "Silverfish", wootMobNameTag: ""}), [[<ore:nuggetSilver>, null, <ore:nuggetSilver>], [null, <woot:endershard>, null], [<ore:nuggetSilver>, null, <ore:nuggetSilver>]]);
recipes.addShaped(<woot:endershard>.withTag({wootMobNameKey: "embers:ancient_golem", wootMobDeaths: 4, wootMobDisplayName: "Ancient Golem", wootMobNameTag: ""}), [[<embers:ancient_motive_core>, null, <embers:ancient_motive_core>], [null, <woot:endershard>, null], [<embers:ancient_motive_core>, null, <embers:ancient_motive_core>]]);
recipes.addShaped(<woot:endershard>.withTag({wootMobNameKey: "minecraft:vex", wootMobDeaths: 4, wootMobDisplayName: "Vex", wootMobNameTag: ""}), [[<actuallyadditions:item_misc:15>, null, <actuallyadditions:item_misc:15>], [null, <woot:endershard>, null], [<actuallyadditions:item_misc:15>, null, <actuallyadditions:item_misc:15>]]);
recipes.addShaped(<woot:endershard>.withTag({wootMobNameKey: "minecraft:chicken", wootMobDeaths: 4, wootMobDisplayName: "Chicken", wootMobNameTag: ""}), [[<minecraft:feather>, null, <minecraft:feather>], [null, <woot:endershard>, null], [<minecraft:feather>, null, <minecraft:feather>]]);
recipes.addShaped(<woot:endershard>.withTag({wootMobNameKey: "minecraft:cow", wootMobDeaths: 4, wootMobDisplayName: "Cow", wootMobNameTag: ""}), [[<minecraft:leather>, null, <minecraft:leather>], [null, <woot:endershard>, null], [<minecraft:leather>, null, <minecraft:leather>]]);
recipes.addShaped(<woot:endershard>.withTag({wootMobNameKey: "minecraft:creeper", wootMobDeaths: 4, wootMobDisplayName: "Creeper", wootMobNameTag: ""}), [[<minecraft:gunpowder>, null, <minecraft:gunpowder>], [null, <woot:endershard>, null], [<minecraft:gunpowder>, null, <minecraft:gunpowder>]]);
recipes.addShaped(<woot:endershard>.withTag({wootMobNameKey: "minecraft:guardian", wootMobDeaths: 4, wootMobDisplayName: "Guardian", wootMobNameTag: ""}), [[<minecraft:prismarine_shard>, null, <minecraft:prismarine_shard>], [null, <woot:endershard>, null], [<minecraft:prismarine_shard>, null, <minecraft:prismarine_shard>]]);
recipes.addShaped(<woot:endershard>.withTag({wootMobNameKey: "minecraft:magma_cube", wootMobDeaths: 4, wootMobDisplayName: "Magma Cube", wootMobNameTag: ""}), [[<minecraft:magma_cream>, null, <minecraft:magma_cream>], [null, <woot:endershard>, null], [<minecraft:magma_cream>, null, <minecraft:magma_cream>]]);
recipes.addShaped(<woot:endershard>.withTag({wootMobNameKey: "minecraft:sheep", wootMobDeaths: 4, wootMobDisplayName: "Sheep", wootMobNameTag: ""}), [[<minecraft:wool:*>, null, <minecraft:wool:*>], [null, <woot:endershard>, null], [<minecraft:wool:*>, null, <minecraft:wool:*>]]);
recipes.addShaped(<woot:endershard>.withTag({wootMobNameKey: "minecraft:slime", wootMobDeaths: 4, wootMobDisplayName: "Slime", wootMobNameTag: ""}), [[<minecraft:slime_ball>, null, <minecraft:slime_ball>], [null, <woot:endershard>, null], [<minecraft:slime_ball>, null, <minecraft:slime_ball>]]);
recipes.addShaped(<woot:endershard>.withTag({wootMobNameKey: "minecraft:spider", wootMobDeaths: 4, wootMobDisplayName: "Spider", wootMobNameTag: ""}), [[<minecraft:string>, null, <minecraft:string>], [null, <woot:endershard>, null], [<minecraft:string>, null, <minecraft:string>]]);
recipes.addShaped(<woot:endershard>.withTag({wootMobNameKey: "minecraft:witch", wootMobDeaths: 4, wootMobDisplayName: "Witch", wootMobNameTag: ""}), [[<minecraft:redstone>, null, <minecraft:redstone>], [null, <woot:endershard>, null], [<minecraft:glowstone_dust>, null, <minecraft:glowstone_dust>]]);
recipes.addShaped(<woot:endershard>.withTag({wootMobNameKey: "industrialforegoing:pink_slime", wootMobDeaths: 4, wootMobDisplayName: "Pink Slime", wootMobNameTag: ""}), [[<industrialforegoing:pink_slime>, null, <industrialforegoing:pink_slime>], [null, <woot:endershard>, null], [<industrialforegoing:pink_slime>, null, <industrialforegoing:pink_slime>]]);
recipes.addShaped(<woot:endershard>.withTag({wootMobNameKey: "jaff:cod", wootMobDeaths: 4, wootMobDisplayName: "Cod", wootMobNameTag: ""}), [[<minecraft:fish>, null, <minecraft:fish>], [null, <woot:endershard>, null], [<minecraft:fish>, null, <minecraft:fish>]]);
recipes.addShaped(<woot:endershard>.withTag({wootMobNameKey: "jaff:salmon", wootMobDeaths: 4, wootMobDisplayName: "Salmon", wootMobNameTag: ""}), [[<minecraft:fish:1>, null, <minecraft:fish:1>], [null, <woot:endershard>, null], [<minecraft:fish:1>, null, <minecraft:fish:1>]]);
recipes.addShaped(<woot:endershard>.withTag({wootMobNameKey: "jaff:clownfish", wootMobDeaths: 4, wootMobDisplayName: "Clownfish", wootMobNameTag: ""}), [[<minecraft:fish:2>, null, <minecraft:fish:2>], [null, <woot:endershard>, null], [<minecraft:fish:2>, null, <minecraft:fish:2>]]);
recipes.addShaped(<woot:endershard>.withTag({wootMobNameKey: "jaff:pufferfish", wootMobDeaths: 4, wootMobDisplayName: "Pufferfish", wootMobNameTag: ""}), [[<minecraft:fish:3>, null, <minecraft:fish:3>], [null, <woot:endershard>, null], [<minecraft:fish:3>, null, <minecraft:fish:3>]]);
recipes.addShaped(<woot:endershard>.withTag({wootMobNameKey: "primitivemobs:grovesprite", wootMobDeaths: 4, wootMobDisplayName: "Grove Sprite", wootMobNameTag: ""}), [[<minecraft:sapling:*>, null, <minecraft:sapling:*>], [null, <woot:endershard>, null], [<minecraft:sapling:*>, null, <minecraft:sapling:*>]]);
recipes.addShaped(<woot:endershard>.withTag({wootMobNameKey: "drones:drone", wootMobDeaths: 4, wootMobDisplayName: "Drone", wootMobNameTag: ""}), [[<minecraft:iron_ingot>, null, <minecraft:iron_ingot>], [null, <woot:endershard>, null], [<minecraft:redstone>, null, <minecraft:redstone>]]);
recipes.addShaped(<woot:endershard>.withTag({wootMobNameKey: "minecraft:wither", wootMobDeaths: 4, wootMobDisplayName: "Wither", wootMobNameTag: ""}), [[<minecraft:nether_star>, null, <minecraft:nether_star>], [null, <woot:endershard>, null], [<minecraft:nether_star>, null, <minecraft:nether_star>]]);