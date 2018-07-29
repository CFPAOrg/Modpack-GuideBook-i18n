print("Decoration");

// Remove non functional Earthworks tools
mods.jei.JEI.removeAndHide(<earthworks:tool_square>);
mods.jei.JEI.removeAndHide(<earthworks:tool_hand_axe>);
mods.jei.JEI.removeAndHide(<earthworks:tool_adz>);
mods.jei.JEI.removeAndHide(<earthworks:tool_compass>);
mods.jei.JEI.removeAndHide(<earthworks:tool_froe>);
mods.jei.JEI.removeAndHide(<earthworks:tool_hand_planer>);
mods.jei.JEI.removeAndHide(<earthworks:tool_level>);
mods.jei.JEI.removeAndHide(<earthworks:tool_saw>);
mods.jei.JEI.removeAndHide(<earthworks:tool_wood_hammer>);
mods.jei.JEI.removeAndHide(<earthworks:tool_stone_hammer>);
mods.jei.JEI.removeAndHide(<earthworks:tool_iron_hammer>);
mods.jei.JEI.removeAndHide(<earthworks:tool_gold_hammer>);
mods.jei.JEI.removeAndHide(<earthworks:tool_diamond_hammer>);

// Oredict ClayBlock
<ore:clayblock>.add(<minecraft:clay>);
<ore:clayblock>.add(<primal:terraclay_block>);

// Material Binding Oredict
<ore:materialBinding>.add(<primal:plant_fiber>);
<ore:materialBinding>.add(<biomesoplenty:leaves_1:9>);

// Clay Bucket Recipes
recipes.addShaped(<earthworks:item_mud> * 8, [[<earthworks:item_dirt>, <earthworks:item_dirt>, <earthworks:item_dirt>], [<earthworks:item_dirt>, <ceramics:clay_bucket>.withTag({fluids: {FluidName: "water", Amount: 1000}}), <earthworks:item_dirt>], [<earthworks:item_dirt>, <earthworks:item_dirt>, <earthworks:item_dirt>]]);
recipes.addShapeless(<earthworks:item_lime_plaster> * 8, [<earthworks:item_quicklime>, <earthworks:item_quicklime>, <earthworks:item_quicklime>, <earthworks:item_quicklime>, <ceramics:clay_bucket>.withTag({fluids: {FluidName: "water", Amount: 1000}}), <earthworks:item_sand>, <earthworks:item_sand>, <earthworks:item_sand>, <earthworks:item_sand>]);
recipes.addShapeless(<earthworks:item_slaked_lime> * 8,  [<earthworks:item_quicklime>, <earthworks:item_quicklime>, <earthworks:item_quicklime>, <earthworks:item_quicklime>, <ceramics:clay_bucket>.withTag({fluids: {FluidName: "water", Amount: 1000}}), <earthworks:item_quicklime>, <earthworks:item_quicklime>, <earthworks:item_quicklime>, <earthworks:item_quicklime>]);

// EW Cob
recipes.removeShapeless(<earthworks:block_cob>);
recipes.addShapeless(<earthworks:block_cob> * 4, [<ore:clayblock>, <ore:materialBinding>, <biomesoplenty:mud>]);
recipes.remove(<earthworks:item_cob>);
recipes.addShapeless(<earthworks:item_cob> * 16, [<ore:clayball>, <ore:clayball>, <ore:clayball>, <ore:clayball>, <ore:materialBinding>, <biomesoplenty:mudball>, <biomesoplenty:mudball>, <biomesoplenty:mudball>, <biomesoplenty:mudball>]);

// Chisel
recipes.remove(<chisel:chisel_iron>);
recipes.addShaped(<chisel:chisel_iron>, [[null, <minecraft:flint>], [<ore:stickWood>, null]]);

// Builder's Wands
mods.jei.JEI.removeAndHide(<betterbuilderswands:wandstone>);
recipes.remove(<betterbuilderswands:wandiron>);
recipes.addShaped(<betterbuilderswands:wandiron>, [[null, null, <botania:manaresource>], [null, <ore:stickWood>, null], [<ore:stickWood>, null, null]]);
recipes.remove(<betterbuilderswands:wanddiamond>);
recipes.addShaped(<betterbuilderswands:wanddiamond>, [[null, null, <botania:manaresource:2>], [null, <ore:stickWood>, null], [<ore:stickWood>, null, null]]);
<betterbuilderswands:wandiron>.displayName = "魔钢手杖";
<betterbuilderswands:wanddiamond>.displayName = "魔力钻石手杖";
<betterbuilderswands:wandunbreakable>.displayName = "不毁手杖";

// Wicker
recipes.remove(<earthworks:block_wicker>);
recipes.addShaped(<earthworks:block_wicker> * 2, [[<ore:stickWood>, <minecraft:wheat>, <ore:stickWood>], [<minecraft:wheat>, <ore:stickWood>, <minecraft:wheat>], [<ore:stickWood>, <minecraft:wheat>, <ore:stickWood>]]);