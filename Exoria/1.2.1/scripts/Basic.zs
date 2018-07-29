print("Basic");

//Disable Charcoal Smelting
furnace.remove(<minecraft:coal:1>, <*>);

// String recipe
recipes.removeByRecipeName("string");
recipes.removeByRecipeName("material/string");

// Flint
recipes.remove(<minecraft:flint>);

// Remove Planks
recipes.remove(<minecraft:planks:*>);
recipes.remove(<minecraft:stick>);

// Chests
recipes.remove(<minecraft:chest>);
recipes.addShaped("Ex-Chest", <minecraft:chest>, [[<ore:plankWood>, <minecraft:trapdoor>, <ore:plankWood>], [<ore:plankWood>, <ore:nuggetIron>, <ore:plankWood>], [<ore:plankWood>, <ore:plankWood>, <ore:plankWood>]]);
recipes.remove(<immcraft:chest>);
recipes.addShaped(<immcraft:chest>, [[<ore:plankWood>, <minecraft:trapdoor>, <ore:plankWood>], [<ore:plankWood>, null, <ore:plankWood>], [<ore:plankWood>, <ore:plankWood>, <ore:plankWood>]]);

// Wopper
recipes.remove(<tinkerskyblock:wooden_hopper>);
recipes.addShaped(<tinkerskyblock:wooden_hopper>, [[<ore:plankWood>, null, <ore:plankWood>], [<ore:plankWood>, <immcraft:chest>, <ore:plankWood>], [null, <ore:plankWood>, null]]);

// Cobble
recipes.removeShaped(<minecraft:cobblestone>);
recipes.addShapeless(<minecraft:cobblestone>, [<survivalist:rock>, <survivalist:rock>, <survivalist:rock>, <ore:clayball>]);

// Other Stones
recipes.remove(<minecraft:stone:1>);
recipes.remove(<minecraft:stone:3>);
recipes.remove(<minecraft:stone:5>);
recipes.addShapeless(<minecraft:stone:1>, [<ore:rockGranite>, <ore:rockGranite>, <ore:rockGranite>, <ore:clayball>]);
recipes.addShapeless(<minecraft:stone:3>, [<ore:rockDiorite>, <ore:rockDiorite>, <ore:rockDiorite>, <ore:clayball>]);
recipes.addShapeless(<minecraft:stone:5>, [<ore:rockAndesite>, <ore:rockAndesite>, <ore:rockAndesite>, <ore:clayball>]);

// Piston
recipes.remove(<minecraft:piston>);
recipes.addShaped(<minecraft:piston>, [[<ore:slabWood>, <ore:slabWood>, <ore:slabWood>], [<ore:cobblestone>, <ore:gearTin>, <ore:cobblestone>], [<ore:cobblestone>, <minecraft:lever>, <ore:cobblestone>]]);

// Hopper
recipes.remove(<minecraft:hopper>);
recipes.addShaped(<minecraft:hopper>, [[<ore:plateIron>, null, <ore:plateIron>], [<ore:plateIron>, <minecraft:chest>, <ore:plateIron>], [null, <ore:plateIron>, null]]);
recipes.addShaped(<minecraft:hopper>, [[<ore:plateIron>, null, <ore:plateIron>], [<ore:plateIron>, <immcraft:chest>, <ore:plateIron>], [null, <ore:plateIron>, null]]);

// Furnace
recipes.remove(<minecraft:furnace>);
recipes.addShaped(<minecraft:furnace>, [[<primal:hardened_stone>, <primal:hardened_stone>, <primal:hardened_stone>], [<primal:hardened_stone>, null, <primal:hardened_stone>], [<primal:hardened_stone>, <primal:hardened_stone>, <primal:hardened_stone>]]);
recipes.addShaped(<minecraft:furnace>, [[<mist:cobblestone>, <mist:cobblestone>, <mist:cobblestone>], [<mist:cobblestone>, null, <mist:cobblestone>], [<mist:cobblestone>, <mist:cobblestone>, <mist:cobblestone>]]);

// Trapdoor
recipes.remove(<minecraft:trapdoor>);
recipes.addShaped(<minecraft:trapdoor> * 2, [[<ore:pinWood>, <ore:cordagePlant>, <ore:pinWood>], [<ore:plankWood>, <ore:plankWood>, <ore:plankWood>], [<ore:plankWood>, <ore:plankWood>, <ore:plankWood>]]);

// Pressure Plates
recipes.remove(<minecraft:light_weighted_pressure_plate>);
recipes.addShaped(<minecraft:light_weighted_pressure_plate>, [[<ore:plateGold>, <ore:plateGold>]]);
recipes.remove(<minecraft:heavy_weighted_pressure_plate>);
recipes.addShaped(<minecraft:heavy_weighted_pressure_plate>, [[<ore:plateIron>, <ore:plateIron>]]);

// Dropper
recipes.remove(<minecraft:dropper>);
recipes.addShaped(<minecraft:dropper>, [[<ore:cobblestone>, <ore:cobblestone>, <ore:cobblestone>], [<ore:cobblestone>, <minecraft:lever>, <ore:cobblestone>], [<ore:cobblestone>, null, <ore:cobblestone>]]);

// Bucket requires Plate
recipes.remove(<minecraft:bucket>);
recipes.addShaped(<minecraft:bucket>, [[<ore:plateTin>, null, <ore:plateTin>], [null, <ore:plateTin>, null]]);

// Coarse Dirt Exploit
recipes.remove(<minecraft:dirt:1>);
recipes.addShaped(<minecraft:dirt:1> * 2, [[<minecraft:dirt>, <minecraft:gravel>], [<minecraft:gravel>, <minecraft:dirt>]]);

// Disable Sugar
recipes.remove(<minecraft:sugar>);

// Disable Bone Meal
recipes.remove(<minecraft:dye:15>);

// Disable Fishing Rod
recipes.remove(<minecraft:fishing_rod>);

// Iron Bars
recipes.remove(<minecraft:iron_bars>);
recipes.addShaped(<minecraft:iron_bars> * 16, [[<ore:stickIron>, <ore:stickIron>, <ore:stickIron>], [<ore:stickIron>, <ore:stickIron>, <ore:stickIron>]]);

// Remove Clay recipe
recipes.remove(<minecraft:clay_ball>);

// Dispenser
recipes.remove(<minecraft:dispenser>);
recipes.addShaped(<minecraft:dispenser>, [[<ore:cobblestone>, <ore:cobblestone>, <ore:cobblestone>], [<ore:cobblestone>, null, <ore:cobblestone>], [<ore:cobblestone>, <minecraft:bow>, <ore:cobblestone>]]);

// Cobweb
recipes.remove(<minecraft:web>);

// Fishing Rod
recipes.addShapeless(<minecraft:fishing_rod>, [<jaff:wooden_fishing_rod>]);
recipes.addShapeless(<jaff:wooden_fishing_rod>, [<minecraft:fishing_rod>]);