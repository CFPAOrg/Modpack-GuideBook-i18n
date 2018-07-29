print("Storage");

//Barrel
recipes.remove(<yabba:item_barrel>);
recipes.addShaped(<yabba:item_barrel>, [[<ore:slabWood>, <ore:slabWood>, <ore:slabWood>], [<ore:plankWood>, <minecraft:chest>, <ore:plankWood>], [<ore:slabWood>, <ore:slabWood>, <ore:slabWood>]]);

// Drawer Upgrades
recipes.remove(<storagedrawers:upgrade_storage>);
recipes.addShaped(<storagedrawers:upgrade_storage>, [[<ore:stickWood>, <ore:stickWood>, <ore:stickWood>], [<chisel:basalt2:7>, <storagedrawers:upgrade_template>, <chisel:basalt2:7>], [<ore:stickWood>, <ore:stickWood>, <ore:stickWood>]]);
recipes.remove(<storagedrawers:upgrade_storage:1>);
recipes.addShaped(<storagedrawers:upgrade_storage:1>, [[<ore:stickWood>, <ore:stickWood>, <ore:stickWood>], [<ore:ingotTin>, <storagedrawers:upgrade_template>, <ore:ingotTin>], [<ore:stickWood>, <ore:stickWood>, <ore:stickWood>]]);
recipes.remove(<storagedrawers:upgrade_void>);
recipes.addShaped(<storagedrawers:upgrade_void>, [[<ore:stickWood>, <ore:stickWood>, <ore:stickWood>], [<minecraft:obsidian>, <storagedrawers:upgrade_template>, <minecraft:obsidian>], [<ore:stickWood>, <ore:stickWood>, <ore:stickWood>]]);

// Backpacks
recipes.remove(<backpacks16840:backpack:*>);
recipes.addShaped(<backpacks16840:backpack:3>, [[<primal:plant_cloth>, <primal:plant_cloth>, <primal:plant_cloth>], [<primal:plant_cloth>, null, <primal:plant_cloth>], [<primal:plant_cloth>, <minecraft:light_weighted_pressure_plate>, <primal:plant_cloth>]]);
recipes.remove(<backpacks16840:backpack_pouch>);
recipes.addShaped(<backpacks16840:backpack_pouch>, [[<primal:plant_cloth>, <primal:plant_cloth>, <primal:plant_fiber>], [<primal:plant_cloth>, null, <primal:plant_fiber>], [<primal:plant_cloth>, <primal:plant_cloth>, <primal:plant_fiber>]]);

// Yabba Upgrades
recipes.remove(<yabba:upgrade_blank>);
recipes.addShaped(<yabba:upgrade_blank> * 2, [[<ore:stickWood>, <ore:stickWood>, <ore:stickWood>], [<ore:stickWood>, <yabba:item_barrel>, <ore:stickWood>], [<ore:stickWood>, <ore:stickWood>, <ore:stickWood>]]);
recipes.remove(<yabba:upgrade_iron_tier>);
recipes.addShaped(<yabba:upgrade_iron_tier>, [[<ore:ingotTin>, <ore:ingotTin>, <ore:ingotTin>], [<ore:ingotTin>, <yabba:upgrade_blank>, <ore:ingotTin>], [<ore:ingotTin>, <ore:ingotTin>, <ore:ingotTin>]]);
<yabba:upgrade_iron_tier>.displayName = "石=>锡";
<yabba:upgrade_gold_tier>.displayName = "锡=>金";
	
// Hammer & Painter
recipes.remove(<yabba:painter>);
recipes.addShaped(<yabba:painter>, [[null, <ore:blockWool>, <yabba:upgrade_blank>], [null, <ore:rodStone>, <ore:blockWool>], [<ore:rodStone>, null, null]]);
recipes.remove(<yabba:hammer>);
recipes.addShaped(<yabba:hammer>, [[null, <ore:ingotIron>, <yabba:upgrade_blank>], [null, <ore:rodStone>, <ore:ingotIron>], [<ore:rodStone>, null, null]]);

// Drawer keys
recipes.remove(<storagedrawers:personal_key>);
recipes.addShapeless(<storagedrawers:personal_key>, [<storagedrawers:drawer_key>, <minecraft:wooden_door>]);
recipes.remove(<storagedrawers:quantify_key>);
recipes.addShapeless(<storagedrawers:quantify_key>, [<storagedrawers:drawer_key>, <minecraft:paper>]);
recipes.remove(<storagedrawers:shroud_key>);
recipes.addShapeless(<storagedrawers:shroud_key>, [<storagedrawers:drawer_key>, <ore:blockGlass>]);

// Switch Iron Chest to Tin
recipes.remove(<ironchest:iron_chest>);
recipes.addShaped(<ironchest:iron_chest>, [[<ore:ingotTin>, <ore:ingotTin>, <ore:ingotTin>], [<ore:ingotTin>, <minecraft:chest>, <ore:ingotTin>], [<ore:ingotTin>, <ore:ingotTin>, <ore:ingotTin>]]);
recipes.addShaped(<ironchest:iron_chest>, [[<ore:ingotTin>, <ore:blockGlass>, <ore:ingotTin>], [<ore:blockGlass>, <ironchest:iron_chest:3>, <ore:blockGlass>], [<ore:ingotTin>, <ore:blockGlass>, <ore:ingotTin>]]);
<ironchest:iron_chest>.displayName = "锡箱子";
recipes.remove(<ironchest:iron_gold_chest_upgrade>);
recipes.addShaped(<ironchest:iron_gold_chest_upgrade>, [[<ore:ingotGold>, <ore:ingotGold>, <ore:ingotGold>], [<ore:ingotGold>, <ore:ingotTin>, <ore:ingotGold>], [<ore:ingotGold>, <ore:ingotGold>, <ore:ingotGold>]]);
<ironchest:iron_gold_chest_upgrade>.displayName = "升级：锡>金";
recipes.remove(<ironchest:copper_iron_chest_upgrade>);
recipes.addShaped(<ironchest:copper_iron_chest_upgrade>, [[<ore:ingotTin>, <ore:blockGlass>, <ore:ingotTin>], [<ore:blockGlass>, <ore:ingotCopper>, <ore:blockGlass>], [<ore:ingotTin>, <ore:blockGlass>, <ore:ingotTin>]]);
<ironchest:copper_iron_chest_upgrade>.displayName = "升级：铜>锡";
recipes.remove(<ironchest:wood_iron_chest_upgrade>);
recipes.addShaped(<ironchest:wood_iron_chest_upgrade>, [[<ore:ingotTin>, <ore:ingotTin>, <ore:ingotTin>], [<ore:ingotTin>, <ore:plankWood>, <ore:ingotTin>], [<ore:ingotTin>, <ore:ingotTin>, <ore:ingotTin>]]);
<ironchest:wood_iron_chest_upgrade>.displayName = "升级：木>锡";

// Barrel Connector
recipes.remove(<yabba:item_barrel_connector>);
recipes.addShaped(<yabba:item_barrel_connector>, [[<ore:plankWood>, <yabba:upgrade_blank>, <ore:plankWood>], [<minecraft:comparator>, <ore:gemDiamond>, <minecraft:comparator>], [<ore:plankWood>, <yabba:upgrade_blank>, <ore:plankWood>]]);

// Transprot
recipes.remove(<transprot:dispatcher>);
recipes.addShaped(<transprot:dispatcher>, [[null, <minecraft:ender_pearl>, null], [<thermaldynamics:duct_32>, <ore:plateGold>, <thermaldynamics:duct_32>], [<ore:plateIron>, <ore:plateIron>, <ore:plateIron>]]);


// Ender Chests
recipes.remove(<enderstorage:ender_storage>);
recipes.addShaped(<enderstorage:ender_storage>, [[<terraqueous:item_main:50>, <minecraft:wool>, <terraqueous:item_main:50>], [<minecraft:obsidian>, <ore:chest>, <minecraft:obsidian>], [<terraqueous:item_main:50>, <minecraft:ender_pearl>, <terraqueous:item_main:50>]]);
recipes.addShaped(<enderstorage:ender_storage>.withTag({Frequency: {middle: 1, left: 1, right: 1}}), [[<terraqueous:item_main:50>, <minecraft:wool:1>, <terraqueous:item_main:50>], [<minecraft:obsidian>, <ore:chest>, <minecraft:obsidian>], [<terraqueous:item_main:50>, <minecraft:ender_pearl>, <terraqueous:item_main:50>]]);
recipes.addShaped(<enderstorage:ender_storage>.withTag({Frequency: {middle: 2, left: 2, right: 2}}), [[<terraqueous:item_main:50>, <minecraft:wool:2>, <terraqueous:item_main:50>], [<minecraft:obsidian>, <ore:chest>, <minecraft:obsidian>], [<terraqueous:item_main:50>, <minecraft:ender_pearl>, <terraqueous:item_main:50>]]);
recipes.addShaped(<enderstorage:ender_storage>.withTag({Frequency: {middle: 3, left: 3, right: 3}}), [[<terraqueous:item_main:50>, <minecraft:wool:3>, <terraqueous:item_main:50>], [<minecraft:obsidian>, <ore:chest>, <minecraft:obsidian>], [<terraqueous:item_main:50>, <minecraft:ender_pearl>, <terraqueous:item_main:50>]]);
recipes.addShaped(<enderstorage:ender_storage>.withTag({Frequency: {middle: 4, left: 4, right: 4}}), [[<terraqueous:item_main:50>, <minecraft:wool:4>, <terraqueous:item_main:50>], [<minecraft:obsidian>, <ore:chest>, <minecraft:obsidian>], [<terraqueous:item_main:50>, <minecraft:ender_pearl>, <terraqueous:item_main:50>]]);
recipes.addShaped(<enderstorage:ender_storage>.withTag({Frequency: {middle: 5, left: 5, right: 5}}), [[<terraqueous:item_main:50>, <minecraft:wool:5>, <terraqueous:item_main:50>], [<minecraft:obsidian>, <ore:chest>, <minecraft:obsidian>], [<terraqueous:item_main:50>, <minecraft:ender_pearl>, <terraqueous:item_main:50>]]);
recipes.addShaped(<enderstorage:ender_storage>.withTag({Frequency: {middle: 6, left: 6, right: 6}}), [[<terraqueous:item_main:50>, <minecraft:wool:6>, <terraqueous:item_main:50>], [<minecraft:obsidian>, <ore:chest>, <minecraft:obsidian>], [<terraqueous:item_main:50>, <minecraft:ender_pearl>, <terraqueous:item_main:50>]]);
recipes.addShaped(<enderstorage:ender_storage>.withTag({Frequency: {middle: 7, left: 7, right: 7}}), [[<terraqueous:item_main:50>, <minecraft:wool:7>, <terraqueous:item_main:50>], [<minecraft:obsidian>, <ore:chest>, <minecraft:obsidian>], [<terraqueous:item_main:50>, <minecraft:ender_pearl>, <terraqueous:item_main:50>]]);
recipes.addShaped(<enderstorage:ender_storage>.withTag({Frequency: {middle: 8, left: 8, right: 8}}), [[<terraqueous:item_main:50>, <minecraft:wool:8>, <terraqueous:item_main:50>], [<minecraft:obsidian>, <ore:chest>, <minecraft:obsidian>], [<terraqueous:item_main:50>, <minecraft:ender_pearl>, <terraqueous:item_main:50>]]);
recipes.addShaped(<enderstorage:ender_storage>.withTag({Frequency: {middle: 9, left: 9, right: 9}}), [[<terraqueous:item_main:50>, <minecraft:wool:9>, <terraqueous:item_main:50>], [<minecraft:obsidian>, <ore:chest>, <minecraft:obsidian>], [<terraqueous:item_main:50>, <minecraft:ender_pearl>, <terraqueous:item_main:50>]]);
recipes.addShaped(<enderstorage:ender_storage>.withTag({Frequency: {middle: 10, left: 10, right: 10}}), [[<terraqueous:item_main:50>, <minecraft:wool:10>, <terraqueous:item_main:50>], [<minecraft:obsidian>, <ore:chest>, <minecraft:obsidian>], [<terraqueous:item_main:50>, <minecraft:ender_pearl>, <terraqueous:item_main:50>]]);
recipes.addShaped(<enderstorage:ender_storage>.withTag({Frequency: {middle: 11, left: 11, right: 11}}), [[<terraqueous:item_main:50>, <minecraft:wool:11>, <terraqueous:item_main:50>], [<minecraft:obsidian>, <ore:chest>, <minecraft:obsidian>], [<terraqueous:item_main:50>, <minecraft:ender_pearl>, <terraqueous:item_main:50>]]);
recipes.addShaped(<enderstorage:ender_storage>.withTag({Frequency: {middle: 12, left: 12, right: 12}}), [[<terraqueous:item_main:50>, <minecraft:wool:12>, <terraqueous:item_main:50>], [<minecraft:obsidian>, <ore:chest>, <minecraft:obsidian>], [<terraqueous:item_main:50>, <minecraft:ender_pearl>, <terraqueous:item_main:50>]]);
recipes.addShaped(<enderstorage:ender_storage>.withTag({Frequency: {middle: 13, left: 13, right: 13}}), [[<terraqueous:item_main:50>, <minecraft:wool:13>, <terraqueous:item_main:50>], [<minecraft:obsidian>, <ore:chest>, <minecraft:obsidian>], [<terraqueous:item_main:50>, <minecraft:ender_pearl>, <terraqueous:item_main:50>]]);
recipes.addShaped(<enderstorage:ender_storage>.withTag({Frequency: {middle: 14, left: 14, right: 14}}), [[<terraqueous:item_main:50>, <minecraft:wool:14>, <terraqueous:item_main:50>], [<minecraft:obsidian>, <ore:chest>, <minecraft:obsidian>], [<terraqueous:item_main:50>, <minecraft:ender_pearl>, <terraqueous:item_main:50>]]);
recipes.addShaped(<enderstorage:ender_storage>.withTag({Frequency: {middle: 15, left: 15, right: 15}}), [[<terraqueous:item_main:50>, <minecraft:wool:15>, <terraqueous:item_main:50>], [<minecraft:obsidian>, <ore:chest>, <minecraft:obsidian>], [<terraqueous:item_main:50>, <minecraft:ender_pearl>, <terraqueous:item_main:50>]]);

// Ender Tanks
recipes.remove(<enderstorage:ender_storage:1>);
recipes.addShaped(<enderstorage:ender_storage:1>, [[<terraqueous:item_main:50>, <minecraft:wool>, <terraqueous:item_main:50>], [<minecraft:obsidian>, <minecraft:cauldron>, <minecraft:obsidian>], [<terraqueous:item_main:50>, <minecraft:ender_pearl>, <terraqueous:item_main:50>]]);
recipes.addShaped(<enderstorage:ender_storage:1>.withTag({Frequency: {middle: 1, left: 1, right: 1}}), [[<terraqueous:item_main:50>, <minecraft:wool:1>, <terraqueous:item_main:50>], [<minecraft:obsidian>, <minecraft:cauldron>, <minecraft:obsidian>], [<terraqueous:item_main:50>, <minecraft:ender_pearl>, <terraqueous:item_main:50>]]);
recipes.addShaped(<enderstorage:ender_storage:1>.withTag({Frequency: {middle: 2, left: 2, right: 2}}), [[<terraqueous:item_main:50>, <minecraft:wool:2>, <terraqueous:item_main:50>], [<minecraft:obsidian>, <minecraft:cauldron>, <minecraft:obsidian>], [<terraqueous:item_main:50>, <minecraft:ender_pearl>, <terraqueous:item_main:50>]]);
recipes.addShaped(<enderstorage:ender_storage:1>.withTag({Frequency: {middle: 3, left: 3, right: 3}}), [[<terraqueous:item_main:50>, <minecraft:wool:3>, <terraqueous:item_main:50>], [<minecraft:obsidian>, <minecraft:cauldron>, <minecraft:obsidian>], [<terraqueous:item_main:50>, <minecraft:ender_pearl>, <terraqueous:item_main:50>]]);
recipes.addShaped(<enderstorage:ender_storage:1>.withTag({Frequency: {middle: 4, left: 4, right: 4}}), [[<terraqueous:item_main:50>, <minecraft:wool:4>, <terraqueous:item_main:50>], [<minecraft:obsidian>, <minecraft:cauldron>, <minecraft:obsidian>], [<terraqueous:item_main:50>, <minecraft:ender_pearl>, <terraqueous:item_main:50>]]);
recipes.addShaped(<enderstorage:ender_storage:1>.withTag({Frequency: {middle: 5, left: 5, right: 5}}), [[<terraqueous:item_main:50>, <minecraft:wool:5>, <terraqueous:item_main:50>], [<minecraft:obsidian>, <minecraft:cauldron>, <minecraft:obsidian>], [<terraqueous:item_main:50>, <minecraft:ender_pearl>, <terraqueous:item_main:50>]]);
recipes.addShaped(<enderstorage:ender_storage:1>.withTag({Frequency: {middle: 6, left: 6, right: 6}}), [[<terraqueous:item_main:50>, <minecraft:wool:6>, <terraqueous:item_main:50>], [<minecraft:obsidian>, <minecraft:cauldron>, <minecraft:obsidian>], [<terraqueous:item_main:50>, <minecraft:ender_pearl>, <terraqueous:item_main:50>]]);
recipes.addShaped(<enderstorage:ender_storage:1>.withTag({Frequency: {middle: 7, left: 7, right: 7}}), [[<terraqueous:item_main:50>, <minecraft:wool:7>, <terraqueous:item_main:50>], [<minecraft:obsidian>, <minecraft:cauldron>, <minecraft:obsidian>], [<terraqueous:item_main:50>, <minecraft:ender_pearl>, <terraqueous:item_main:50>]]);
recipes.addShaped(<enderstorage:ender_storage:1>.withTag({Frequency: {middle: 8, left: 8, right: 8}}), [[<terraqueous:item_main:50>, <minecraft:wool:8>, <terraqueous:item_main:50>], [<minecraft:obsidian>, <minecraft:cauldron>, <minecraft:obsidian>], [<terraqueous:item_main:50>, <minecraft:ender_pearl>, <terraqueous:item_main:50>]]);
recipes.addShaped(<enderstorage:ender_storage:1>.withTag({Frequency: {middle: 9, left: 9, right: 9}}), [[<terraqueous:item_main:50>, <minecraft:wool:9>, <terraqueous:item_main:50>], [<minecraft:obsidian>, <minecraft:cauldron>, <minecraft:obsidian>], [<terraqueous:item_main:50>, <minecraft:ender_pearl>, <terraqueous:item_main:50>]]);
recipes.addShaped(<enderstorage:ender_storage:1>.withTag({Frequency: {middle: 10, left: 10, right: 10}}), [[<terraqueous:item_main:50>, <minecraft:wool:10>, <terraqueous:item_main:50>], [<minecraft:obsidian>, <minecraft:cauldron>, <minecraft:obsidian>], [<terraqueous:item_main:50>, <minecraft:ender_pearl>, <terraqueous:item_main:50>]]);
recipes.addShaped(<enderstorage:ender_storage:1>.withTag({Frequency: {middle: 11, left: 11, right: 11}}), [[<terraqueous:item_main:50>, <minecraft:wool:11>, <terraqueous:item_main:50>], [<minecraft:obsidian>, <minecraft:cauldron>, <minecraft:obsidian>], [<terraqueous:item_main:50>, <minecraft:ender_pearl>, <terraqueous:item_main:50>]]);
recipes.addShaped(<enderstorage:ender_storage:1>.withTag({Frequency: {middle: 12, left: 12, right: 12}}), [[<terraqueous:item_main:50>, <minecraft:wool:12>, <terraqueous:item_main:50>], [<minecraft:obsidian>, <minecraft:cauldron>, <minecraft:obsidian>], [<terraqueous:item_main:50>, <minecraft:ender_pearl>, <terraqueous:item_main:50>]]);
recipes.addShaped(<enderstorage:ender_storage:1>.withTag({Frequency: {middle: 13, left: 13, right: 13}}), [[<terraqueous:item_main:50>, <minecraft:wool:13>, <terraqueous:item_main:50>], [<minecraft:obsidian>, <minecraft:cauldron>, <minecraft:obsidian>], [<terraqueous:item_main:50>, <minecraft:ender_pearl>, <terraqueous:item_main:50>]]);
recipes.addShaped(<enderstorage:ender_storage:1>.withTag({Frequency: {middle: 14, left: 14, right: 14}}), [[<terraqueous:item_main:50>, <minecraft:wool:14>, <terraqueous:item_main:50>], [<minecraft:obsidian>, <minecraft:cauldron>, <minecraft:obsidian>], [<terraqueous:item_main:50>, <minecraft:ender_pearl>, <terraqueous:item_main:50>]]);
recipes.addShaped(<enderstorage:ender_storage:1>.withTag({Frequency: {middle: 15, left: 15, right: 15}}), [[<terraqueous:item_main:50>, <minecraft:wool:15>, <terraqueous:item_main:50>], [<minecraft:obsidian>, <minecraft:cauldron>, <minecraft:obsidian>], [<terraqueous:item_main:50>, <minecraft:ender_pearl>, <terraqueous:item_main:50>]]);

// Ender Pouch
recipes.remove(<enderstorage:ender_pouch>);
recipes.addShaped(<enderstorage:ender_pouch>, [[<terraqueous:item_main:50>, <minecraft:wool>, <terraqueous:item_main:50>], [<minecraft:obsidian>, <minecraft:leather>, <minecraft:obsidian>], [<terraqueous:item_main:50>, <minecraft:ender_pearl>, <terraqueous:item_main:50>]]);
recipes.addShaped(<enderstorage:ender_pouch>.withTag({Frequency: {middle: 1, left: 1, right: 1}}), [[<terraqueous:item_main:50>, <minecraft:wool:1>, <terraqueous:item_main:50>], [<minecraft:obsidian>, <minecraft:leather>, <minecraft:obsidian>], [<terraqueous:item_main:50>, <minecraft:ender_pearl>, <terraqueous:item_main:50>]]);
recipes.addShaped(<enderstorage:ender_pouch>.withTag({Frequency: {middle: 2, left: 2, right: 2}}), [[<terraqueous:item_main:50>, <minecraft:wool:2>, <terraqueous:item_main:50>], [<minecraft:obsidian>, <minecraft:leather>, <minecraft:obsidian>], [<terraqueous:item_main:50>, <minecraft:ender_pearl>, <terraqueous:item_main:50>]]);
recipes.addShaped(<enderstorage:ender_pouch>.withTag({Frequency: {middle: 3, left: 3, right: 3}}), [[<terraqueous:item_main:50>, <minecraft:wool:3>, <terraqueous:item_main:50>], [<minecraft:obsidian>, <minecraft:leather>, <minecraft:obsidian>], [<terraqueous:item_main:50>, <minecraft:ender_pearl>, <terraqueous:item_main:50>]]);
recipes.addShaped(<enderstorage:ender_pouch>.withTag({Frequency: {middle: 4, left: 4, right: 4}}), [[<terraqueous:item_main:50>, <minecraft:wool:4>, <terraqueous:item_main:50>], [<minecraft:obsidian>, <minecraft:leather>, <minecraft:obsidian>], [<terraqueous:item_main:50>, <minecraft:ender_pearl>, <terraqueous:item_main:50>]]);
recipes.addShaped(<enderstorage:ender_pouch>.withTag({Frequency: {middle: 5, left: 5, right: 5}}), [[<terraqueous:item_main:50>, <minecraft:wool:5>, <terraqueous:item_main:50>], [<minecraft:obsidian>, <minecraft:leather>, <minecraft:obsidian>], [<terraqueous:item_main:50>, <minecraft:ender_pearl>, <terraqueous:item_main:50>]]);
recipes.addShaped(<enderstorage:ender_pouch>.withTag({Frequency: {middle: 6, left: 6, right: 6}}), [[<terraqueous:item_main:50>, <minecraft:wool:6>, <terraqueous:item_main:50>], [<minecraft:obsidian>, <minecraft:leather>, <minecraft:obsidian>], [<terraqueous:item_main:50>, <minecraft:ender_pearl>, <terraqueous:item_main:50>]]);
recipes.addShaped(<enderstorage:ender_pouch>.withTag({Frequency: {middle: 7, left: 7, right: 7}}), [[<terraqueous:item_main:50>, <minecraft:wool:7>, <terraqueous:item_main:50>], [<minecraft:obsidian>, <minecraft:leather>, <minecraft:obsidian>], [<terraqueous:item_main:50>, <minecraft:ender_pearl>, <terraqueous:item_main:50>]]);
recipes.addShaped(<enderstorage:ender_pouch>.withTag({Frequency: {middle: 8, left: 8, right: 8}}), [[<terraqueous:item_main:50>, <minecraft:wool:8>, <terraqueous:item_main:50>], [<minecraft:obsidian>, <minecraft:leather>, <minecraft:obsidian>], [<terraqueous:item_main:50>, <minecraft:ender_pearl>, <terraqueous:item_main:50>]]);
recipes.addShaped(<enderstorage:ender_pouch>.withTag({Frequency: {middle: 9, left: 9, right: 9}}), [[<terraqueous:item_main:50>, <minecraft:wool:9>, <terraqueous:item_main:50>], [<minecraft:obsidian>, <minecraft:leather>, <minecraft:obsidian>], [<terraqueous:item_main:50>, <minecraft:ender_pearl>, <terraqueous:item_main:50>]]);
recipes.addShaped(<enderstorage:ender_pouch>.withTag({Frequency: {middle: 10, left: 10, right: 10}}), [[<terraqueous:item_main:50>, <minecraft:wool:10>, <terraqueous:item_main:50>], [<minecraft:obsidian>, <minecraft:leather>, <minecraft:obsidian>], [<terraqueous:item_main:50>, <minecraft:ender_pearl>, <terraqueous:item_main:50>]]);
recipes.addShaped(<enderstorage:ender_pouch>.withTag({Frequency: {middle: 11, left: 11, right: 11}}), [[<terraqueous:item_main:50>, <minecraft:wool:11>, <terraqueous:item_main:50>], [<minecraft:obsidian>, <minecraft:leather>, <minecraft:obsidian>], [<terraqueous:item_main:50>, <minecraft:ender_pearl>, <terraqueous:item_main:50>]]);
recipes.addShaped(<enderstorage:ender_pouch>.withTag({Frequency: {middle: 12, left: 12, right: 12}}), [[<terraqueous:item_main:50>, <minecraft:wool:12>, <terraqueous:item_main:50>], [<minecraft:obsidian>, <minecraft:leather>, <minecraft:obsidian>], [<terraqueous:item_main:50>, <minecraft:ender_pearl>, <terraqueous:item_main:50>]]);
recipes.addShaped(<enderstorage:ender_pouch>.withTag({Frequency: {middle: 13, left: 13, right: 13}}), [[<terraqueous:item_main:50>, <minecraft:wool:13>, <terraqueous:item_main:50>], [<minecraft:obsidian>, <minecraft:leather>, <minecraft:obsidian>], [<terraqueous:item_main:50>, <minecraft:ender_pearl>, <terraqueous:item_main:50>]]);
recipes.addShaped(<enderstorage:ender_pouch>.withTag({Frequency: {middle: 14, left: 14, right: 14}}), [[<terraqueous:item_main:50>, <minecraft:wool:14>, <terraqueous:item_main:50>], [<minecraft:obsidian>, <minecraft:leather>, <minecraft:obsidian>], [<terraqueous:item_main:50>, <minecraft:ender_pearl>, <terraqueous:item_main:50>]]);
recipes.addShaped(<enderstorage:ender_pouch>.withTag({Frequency: {middle: 15, left: 15, right: 15}}), [[<terraqueous:item_main:50>, <minecraft:wool:15>, <terraqueous:item_main:50>], [<minecraft:obsidian>, <minecraft:leather>, <minecraft:obsidian>], [<terraqueous:item_main:50>, <minecraft:ender_pearl>, <terraqueous:item_main:50>]]);