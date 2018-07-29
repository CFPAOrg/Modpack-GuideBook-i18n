print("Actually Additions");

// Rename Wings
<actuallyadditions:item_misc:15>.displayName = "翅膀";

// Remove Dust Smelting
furnace.remove(<actuallyadditions:item_misc:5>, <*>);
furnace.remove(<minecraft:coal>, <*>);
furnace.remove(<minecraft:quartz>, <*>);
furnace.remove(<minecraft:dye:4>, <*>);

// CT on a stick
recipes.remove(<actuallyadditions:item_crafter_on_a_stick>);
mods.recipestages.Recipes.addShaped("crafting_knowledge_2", <actuallyadditions:item_crafter_on_a_stick>, [[null, <minecraft:crafting_table>], [<ore:stickWood>, null]]);

// Disable Crates
mods.jei.JEI.removeAndHide(<actuallyadditions:block_giant_chest>);
mods.jei.JEI.removeAndHide(<actuallyadditions:block_giant_chest_medium>);
mods.jei.JEI.removeAndHide(<actuallyadditions:block_giant_chest_large>);

// Crusher Loop Prevention
mods.actuallyadditions.Crusher.removeRecipe(<terraqueous:item_main:251>);
mods.actuallyadditions.Crusher.removeRecipe(<actuallyadditions:item_dust:2>);
mods.actuallyadditions.Crusher.removeRecipe(<actuallyadditions:item_dust:3>);
mods.actuallyadditions.Crusher.removeRecipe(<actuallyadditions:item_dust:4>);
mods.actuallyadditions.Crusher.removeRecipe(<actuallyadditions:item_dust:5>);
mods.actuallyadditions.Crusher.removeRecipe(<actuallyadditions:item_dust:7>);

// Disable Lens of the Miner
mods.jei.JEI.removeAndHide(<actuallyadditions:item_mining_lens>);

// Lens of the Killer
recipes.remove(<actuallyadditions:item_more_damage_lens>);
recipes.addShapeless(<actuallyadditions:item_more_damage_lens>, [<actuallyadditions:item_damage_lens>, <actuallyadditions:item_sword_emerald>, <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 5 as short, id: 16 as short}]})]);

// Disable Iron Casing
recipes.remove(<actuallyadditions:block_misc:9>);

// Wood Casing
recipes.remove(<actuallyadditions:block_misc:4>);
recipes.addShaped(<actuallyadditions:block_misc:4>, [[<botania:livingwood>, <botania:livingwood>, <botania:livingwood>], [<botania:livingwood>, null, <botania:livingwood>], [<botania:livingwood>, <botania:livingwood>, <botania:livingwood>]]);

// Empowerer Recipes
mods.actuallyadditions.Empowerer.removeRecipe(<actuallyadditions:block_crystal_empowered>);
mods.actuallyadditions.Empowerer.addRecipe(<actuallyadditions:block_crystal_empowered>, <actuallyadditions:block_crystal>, <biomesoplenty:gem:1>, <primal:scoria_stone>, <terraqueous:item_main:50>, <woot:stygianironingot>, 100000, 100, [1.0, 0.0, 0.0]);
mods.actuallyadditions.Empowerer.removeRecipe(<actuallyadditions:item_crystal_empowered>);
mods.actuallyadditions.Empowerer.addRecipe(<actuallyadditions:item_crystal_empowered>, <actuallyadditions:item_crystal>, <biomesoplenty:gem:1>, <primal:scoria_stone>, <terraqueous:item_main:50>, <woot:stygianironingot>, 10000, 10, [1.0, 0.0, 0.0]);

mods.actuallyadditions.Empowerer.removeRecipe(<actuallyadditions:block_crystal_empowered:1>);
mods.actuallyadditions.Empowerer.addRecipe(<actuallyadditions:block_crystal_empowered:1>, <actuallyadditions:block_crystal:1>, <biomesoplenty:gem:6>, <forestry:resource_storage>, <forestry:phosphor>, <tconstruct:ingots>, 200000, 200, [0.0, 0.0, 1.0]);
mods.actuallyadditions.Empowerer.removeRecipe(<actuallyadditions:item_crystal_empowered:1>);
mods.actuallyadditions.Empowerer.addRecipe(<actuallyadditions:item_crystal_empowered:1>, <actuallyadditions:item_crystal:1>, <biomesoplenty:gem:6>, <forestry:resource_storage>, <forestry:phosphor>, <tconstruct:ingots>, 20000, 20, [0.0, 0.0, 1.0]);
mods.actuallyadditions.Empowerer.removeRecipe(<actuallyadditions:block_crystal_empowered:1>);
mods.actuallyadditions.Empowerer.addRecipe(<actuallyadditions:block_crystal_empowered:1>, <actuallyadditions:block_crystal:1>, <biomesoplenty:gem:6>, <forestry:resource_storage>, <forestry:phosphor>, <magneticraft:ingots:4>, 200000, 200, [0.0, 0.0, 1.0]);
mods.actuallyadditions.Empowerer.removeRecipe(<actuallyadditions:item_crystal_empowered:1>);
mods.actuallyadditions.Empowerer.addRecipe(<actuallyadditions:item_crystal_empowered:1>, <actuallyadditions:item_crystal:1>, <biomesoplenty:gem:6>, <forestry:resource_storage>, <forestry:phosphor>, <magneticraft:ingots:4>, 20000, 20, [0.0, 0.0, 1.0]);

mods.actuallyadditions.Empowerer.removeRecipe(<actuallyadditions:block_crystal_empowered:2>);
mods.actuallyadditions.Empowerer.addRecipe(<actuallyadditions:block_crystal_empowered:2>, <actuallyadditions:block_crystal:2>, <biomesoplenty:gem:5>, <mist:cobblestone>, <appliedenergistics2:material>, <thermalfoundation:material:134>, 500000, 500, [0.0, 0.2, 1.0]);
mods.actuallyadditions.Empowerer.removeRecipe(<actuallyadditions:item_crystal_empowered:2>);
mods.actuallyadditions.Empowerer.addRecipe(<actuallyadditions:item_crystal_empowered:2>, <actuallyadditions:item_crystal:2>, <biomesoplenty:gem:5>, <mist:cobblestone>, <appliedenergistics2:material>, <thermalfoundation:material:134>, 50000, 50, [0.0, 0.2, 1.0]);

mods.actuallyadditions.Empowerer.removeRecipe(<actuallyadditions:block_crystal_empowered:3>);
mods.actuallyadditions.Empowerer.addRecipe(<actuallyadditions:block_crystal_empowered:3>, <actuallyadditions:block_crystal:3>, <mist:filter_coal>, <chisel:basalt2:7>, <actuallyadditions:item_misc:5>, <magneticraft:ingots:5>, 300000, 300, [0.0, 0.0, 0.0]);
mods.actuallyadditions.Empowerer.removeRecipe(<actuallyadditions:item_crystal_empowered:3>);
mods.actuallyadditions.Empowerer.addRecipe(<actuallyadditions:item_crystal_empowered:3>, <actuallyadditions:item_crystal:3>, <mist:filter_coal>, <chisel:basalt2:7>, <actuallyadditions:item_misc:5>, <magneticraft:ingots:5>, 30000, 30, [0.0, 0.0, 0.0]);

mods.actuallyadditions.Empowerer.removeRecipe(<actuallyadditions:block_crystal_empowered:4>);
mods.actuallyadditions.Empowerer.addRecipe(<actuallyadditions:block_crystal_empowered:4>, <actuallyadditions:block_crystal:4>, <biomesoplenty:gem:2>, <minecraft:slime>, <minecraft:prismarine_shard>, <botania:manaresource:4>, 600000, 600, [0.0, 1.0, 0.0]);
mods.actuallyadditions.Empowerer.removeRecipe(<actuallyadditions:item_crystal_empowered:4>);
mods.actuallyadditions.Empowerer.addRecipe(<actuallyadditions:item_crystal_empowered:4>, <actuallyadditions:item_crystal:4>, <biomesoplenty:gem:2>, <minecraft:slime>, <minecraft:prismarine_shard>, <botania:manaresource:4>, 60000, 60, [0.0, 1.0, 0.0]);

mods.actuallyadditions.Empowerer.removeRecipe(<actuallyadditions:block_crystal_empowered:5>);
mods.actuallyadditions.Empowerer.addRecipe(<actuallyadditions:block_crystal_empowered:5>, <actuallyadditions:block_crystal:5>, <skyresources:alchemyitemcomponent:1>, <minecraft:stone:3>, <minecraft:quartz>, <mist:niobium_ingot>, 400000, 400, [1.0, 1.0, 1.0]);
mods.actuallyadditions.Empowerer.removeRecipe(<actuallyadditions:item_crystal_empowered:5>);
mods.actuallyadditions.Empowerer.addRecipe(<actuallyadditions:item_crystal_empowered:5>, <actuallyadditions:item_crystal:5>, <skyresources:alchemyitemcomponent:1>, <minecraft:stone:3>, <minecraft:quartz>, <mist:niobium_ingot>, 40000, 40, [1.0, 1.0, 1.0]);