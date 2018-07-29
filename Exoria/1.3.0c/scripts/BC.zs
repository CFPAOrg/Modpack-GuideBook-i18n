print("Buildcraft");

// Pipe Sealant
recipes.addShapeless(<buildcrafttransport:waterproof>, [<biomesoplenty:coral:4>]);

// Pipes
recipes.remove(<buildcrafttransport:pipe_wood_item>);
recipes.addShaped(<buildcrafttransport:pipe_wood_item> * 8, [[<ore:plankWood>, <ore:stickWood>, <ore:plankWood>]]);
recipes.remove(<buildcrafttransport:pipe_cobble_item>);
recipes.addShaped(<buildcrafttransport:pipe_cobble_item> * 8, [[<ore:cobblestone>, <exnihilocreatio:item_material:6>, <ore:cobblestone>]]);
recipes.remove(<buildcrafttransport:pipe_stone_item>);
recipes.addShaped(<buildcrafttransport:pipe_stone_item> * 8, [[<ore:stone>, <exnihilocreatio:item_material:6>, <ore:stone>]]);
recipes.remove(<buildcrafttransport:pipe_quartz_item>);
recipes.addShaped(<buildcrafttransport:pipe_quartz_item> * 8, [[<ore:blockQuartz>, <ore:gemQuartz>, <ore:blockQuartz>]]);
recipes.remove(<buildcrafttransport:pipe_iron_item>);
recipes.addShaped(<buildcrafttransport:pipe_iron_item> * 8, [[<earthworks:block_chalk>, <earthworks:item_chalk>, <earthworks:block_chalk>]]);
<buildcrafttransport:pipe_iron_item>.displayName = "白垩管道";
<buildcrafttransport:pipe_iron_fluid>.displayName = "白垩流体管道";
recipes.remove(<buildcrafttransport:pipe_gold_item>);
recipes.addShaped(<buildcrafttransport:pipe_gold_item> * 8, [[<ore:ingotGold>, <ore:nuggetGold>, <ore:ingotGold>]]);
recipes.remove(<buildcrafttransport:pipe_clay_item>);
recipes.addShaped(<buildcrafttransport:pipe_clay_item> * 8, [[<ore:clayblock>, <ore:clayball>, <ore:clayblock>]]);
recipes.remove(<buildcrafttransport:pipe_sandstone_item>);
recipes.addShaped(<buildcrafttransport:pipe_sandstone_item> * 8, [[<ore:sandstone>, <earthworks:item_sand>, <ore:sandstone>]]);
recipes.remove(<buildcrafttransport:pipe_void_item>);
recipes.addShaped(<buildcrafttransport:pipe_void_item> * 8, [[<chisel:basalt2:7>, <ore:dustAsh>, <chisel:basalt2:7>]]);
recipes.remove(<buildcrafttransport:pipe_obsidian_item>);
recipes.addShaped(<buildcrafttransport:pipe_obsidian_item> * 8, [[<ore:ingotLead>, <ore:nuggetLead>, <ore:ingotLead>]]);
<buildcrafttransport:pipe_obsidian_item>.displayName = "铅质管道";
recipes.remove(<buildcrafttransport:pipe_diamond_item>);
recipes.addShaped(<buildcrafttransport:pipe_diamond_item> * 8, [[<ore:ingotSilver>, <ore:nuggetSilver>, <ore:ingotSilver>]]);
<buildcrafttransport:pipe_diamond_item>.displayName = "银质管道";
<buildcrafttransport:pipe_diamond_fluid>.displayName = "银质流体管道";
recipes.remove(<buildcrafttransport:pipe_diamond_wood_item>);
recipes.addShaped(<buildcrafttransport:pipe_diamond_wood_item> * 8, [[<ore:plankWood>, <ore:nuggetSilver>, <ore:ingotSilver>]]);
<buildcrafttransport:pipe_diamond_wood_item>.displayName = "银质-木质管道";

// Additional Pipes
mods.jei.JEI.removeAndHide(<additionalpipes:pipe_fluids_water_pump>);
recipes.remove(<additionalpipes:pipe_items_addition>);
recipes.addShapeless(<additionalpipes:pipe_items_addition>, [<buildcrafttransport:pipe_clay_item>, <ore:plateCopper>]);
recipes.remove(<additionalpipes:pipe_items_distribution>);
recipes.addShaped(<additionalpipes:pipe_items_distribution>, [[<buildcrafttransport:pipe_iron_item>, <ore:blockGlass>, <buildcrafttransport:pipe_iron_item>]]);
recipes.remove(<additionalpipes:pipe_items_priority>);
recipes.addShaped(<additionalpipes:pipe_items_priority>, [[<buildcrafttransport:pipe_clay_item>, <ore:blockGlass>, <buildcrafttransport:pipe_clay_item>]]);
recipes.remove(<additionalpipes:pipe_items_gravity_feed>);
recipes.addShapeless(<additionalpipes:pipe_items_gravity_feed>, [<buildcrafttransport:pipe_wood_item>, <buildcraftcore:engine>]);

// Wrench
recipes.remove(<buildcraftcore:wrench>);
recipes.addShaped(<buildcraftcore:wrench>, [[<minecraft:stone>, null, <minecraft:stone>], [null, <ore:gearStone>, null], [null, <minecraft:stone>, null]]);

// Pump pre Redstone
recipes.remove(<buildcraftfactory:pump>);
recipes.addShaped(<buildcraftfactory:pump>, [[<ore:plateIron>, <ore:plateIron>, <ore:plateIron>], [<ore:plateIron>, <minecraft:piston>, <ore:plateIron>], [<buildcraftfactory:tank>, <minecraft:bucket>, <buildcraftfactory:tank>]]);

// Auto Workbench
recipes.remove(<buildcraftfactory:autoworkbench_item>);
recipes.addShapeless(<buildcraftfactory:autoworkbench_item>, [<structuredcrafting:structured_crafter>, <ore:gearStone>]);

// Chute
recipes.remove(<buildcraftfactory:chute>);
recipes.addShaped(<buildcraftfactory:chute>, [[<ore:gearStone>], [<minecraft:hopper>]]);

// Redstone Engine for early game
recipes.remove(<buildcraftcore:engine>);
recipes.addShaped(<buildcraftcore:engine>, [[<ore:plankWood>, <ore:plankWood>, <ore:plankWood>], [null, <ore:gearWood>, null], [<ore:gearWood>, <ore:gearWood>, <ore:gearWood>]]);
<buildcraftcore:engine>.displayName = "木质引擎";

// Stirling Engine
recipes.remove(<buildcraftcore:engine:1>);
recipes.addShaped(<buildcraftcore:engine:1>, [[<ore:cobblestone>, <ore:cobblestone>, <ore:cobblestone>], [null, <ore:gearStone>, null], [<ore:gearStone>, <immersiveengineering:material:8>, <ore:gearStone>]]);

// Laser
recipes.remove(<buildcraftsilicon:laser>);
recipes.addShaped(<buildcraftsilicon:laser>, [[<minecraft:redstone>, <minecraft:redstone>, <minecraft:obsidian>], [<minecraft:redstone>, <ore:ingotArdite>, <ore:ingotArdite>], [<minecraft:redstone>, <minecraft:redstone>, <minecraft:obsidian>]]);

// Assembly Table
recipes.remove(<buildcraftsilicon:assembly_table>);
recipes.addShaped(<buildcraftsilicon:assembly_table>, [[<minecraft:obsidian>, <ore:blockRedstone>, <minecraft:obsidian>], [<minecraft:obsidian>, <ore:blockCobalt>, <minecraft:obsidian>]]);

// Advanced Crafting Table
recipes.remove(<buildcraftsilicon:advanced_crafting_table>);
recipes.addShaped(<buildcraftsilicon:advanced_crafting_table>, [[<minecraft:obsidian>, <tconstruct:tooltables>, <minecraft:obsidian>], [<minecraft:obsidian>, <ore:blockCobalt>, <minecraft:obsidian>]]);

// Quarry
recipes.remove(<buildcraftbuilders:quarry>);
recipes.addShaped(<buildcraftbuilders:quarry>, [[<magneticraft:multiblock_parts:1>, <magneticraft:multiblock_parts:1>, <magneticraft:multiblock_parts:1>], [<minecraft:piston>, <buildcraftsilicon:laser>, <minecraft:piston>], [<ore:gearDiamond>, <primal:diamond_pickaxe>, <ore:gearDiamond>]]);

// Disable Metal Gears
recipes.remove(<buildcraftcore:gear_iron>);
recipes.remove(<buildcraftcore:gear_gold>);
