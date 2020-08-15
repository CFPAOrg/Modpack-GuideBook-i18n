import loottweaker.vanilla.loot.LootTables;
import loottweaker.vanilla.loot.LootTable;
import loottweaker.vanilla.loot.LootPool;
import loottweaker.vanilla.loot.Functions;
import loottweaker.vanilla.loot.Conditions;
import crafttweaker.item.IItemStack;


print("----------------LootTables. Start------------------");
	
	#Bone Shards - Passive
var passiveBoneMobs = [
	"minecraft:entities/llama",
	"minecraft:entities/cow",
	"minecraft:entities/chicken",
	"minecraft:entities/sheep",
	"minecraft:entities/pig",
	"minecraft:entities/rabbit",
	"minecraft:entities/donkey",
	"minecraft:entities/horse",
	"minecraft:entities/mule",
	"minecraft:entities/ocelot",
	"minecraft:entities/parrot",
	"minecraft:entities/polar_bear",
	"emberroot:entity/deer",
	"emberroot:entity/owl",
	"emberroot:entity/wolf_dire"
	] as string[];

for i in passiveBoneMobs {
	var table = LootTables.getTable(i);
	var poolBone = table.addPool("boneShard", 1, 1, 0, 0);
	poolBone.addItemEntryHelper(<primal_tech:bone_shard>, 1, 0, [], [Conditions.killedByPlayer()]);
}

	#Blitz
LootTables.getTable("thermalfoundation:entities/blitz").getPool("blitz_niter_dust").removeEntry("thermalfoundation:material");
LootTables.getTable("thermalfoundation:entities/blitz").getPool("blitz_niter_dust").addItemEntryHelper(<ore:dustNiter>.firstItem, 1, 0, [], []);

	#EmberRoots
LootTables.getTable("emberroot:entity/deer").getPool("main").removeEntry("minecraft:mutton");
LootTables.getTable("emberroot:entity/deer").getPool("main").addItemEntryHelper(<harvestcraft:venisonrawitem>, 1, 0, [], []);
	

	#Vanilla
LootTables.getTable("minecraft:entities/villager").addPool("heart", 1, 1, 0, 0);
LootTables.getTable("minecraft:entities/villager").getPool("heart").addItemEntryHelper(<cyberware:body_part:2>, 1, 0, [], [Conditions.killedByPlayer()]);

	#fishing
LootTables.getTable("minecraft:gameplay/fishing/treasure").getPool("main").removeEntry("minecraft:book");

<cyberware:body_part:2>.addTooltip(format.darkRed("可以通过杀死村民获得。"));

var vanillaChests = [
	"minecraft:chests/abandoned_mineshaft",
	"minecraft:chests/desert_pyramid",
	"minecraft:chests/igloo_chest",
	"minecraft:chests/jungle_temple",
	"minecraft:chests/jungle_temple_dispenser",
	"minecraft:chests/end_city_treasure",
	"minecraft:chests/simple_dungeon",
	"minecraft:chests/nether_bridge",
	"minecraft:chests/stronghold_corridor",
	"minecraft:chests/stronghold_crossing",
	"minecraft:chests/woodland_mansion",
	"minecraft:chests/stronghold_library",
	"minecraft:chests/village_blacksmith"
	] as string[];
	
	#Abandoned Mineshaft
var mineshaftDisabled as string[][string] = {
	"main" : [
		"minecraft:iron_pickaxe",
		"astralsorcery:constellation_paper",
		"#gregtech:loot_1xitem.meta_item@10062",
		"#gregtech:loot_1xitem.meta_item@10035",
		"#gregtech:loot_1xitem.meta_item@8157",
		"#gregtech:loot_1xitem.meta_item@8117",
		"#gregtech:loot_1xitem.meta_item@8212",
		"#gregtech:loot_1xitem.meta_item@8243",
		"#gregtech:loot_1xitem.meta_item@8244",
		"#gregtech:loot_1xitem.meta_item@8154",
		"#gregtech:loot_1xitem.emerald@0",
		"#gregtech:loot_1xitem.meta_item@1234",
		"#gregtech:loot_1xitem.meta_item@2234",
		"#gregtech:loot_1xitem.meta_item@10184",
		"#gregtech:loot_1xitem.meta_item@10095",
		"#gregtech:loot_1xitem.meta_item@1247",
		"#gregtech:loot_1xitem.meta_item@2247",
		"minecraft:name_tag",
		"cyberware:neuropozyne"
	],
	"pool1" : [
		"minecraft:melon_seeds",
		"minecraft:iron_ingot",
		"minecraft:redstone",
		"minecraft:coal",
		"minecraft:bread",
		"minecraft:pumpkin_seeds"
	]
};

for pool, entries in mineshaftDisabled {
	for entry in entries {
		LootTables.getTable("minecraft:chests/abandoned_mineshaft")
			.getPool(pool)
			.removeEntry(entry);
		print("Removed " + entry + " from " + pool +  " in mineshafts.");
	}
}

	#Desert Pyramids
var desertDisabled as string[][string] = {
	"main" : [
		"minecraft:rotten_flesh",
		"minecraft:saddle",
		"minecraft:iron_horse_armor",
		"minecraft:golden_horse_armor",
		"minecraft:diamond_horse_armor",
		"astralsorcery:constellation_paper",
		"#gregtech:loot_1xitem.meta_item@10062",
		"#gregtech:loot_1xitem.meta_item@10051",
		"#gregtech:loot_1xitem.meta_item@8154",
		"#gregtech:loot_1xitem.meta_item@8157",
		"#gregtech:loot_1xitem.meta_item@8117",
		"#gregtech:loot_1xitem.meta_item@8212",
		"#gregtech:loot_1xitem.meta_item@8243",
		"#gregtech:loot_1xitem.meta_item@8244",
		"cyberware:neuropozyne"
	],
	"pool1" : [
		"minecraft:bone",
		"minecraft:rotten_flesh",
		"minecraft:string",
		"minecraft:sand"
	]
};

for pool, entries in desertDisabled {
	for entry in entries {
		LootTables.getTable("minecraft:chests/desert_pyramid")
			.getPool(pool)
			.removeEntry(entry);
		print("Removed " + entry + " from " + pool +  " in desert pyramids.");
	}
}
LootTables.getTable("minecraft:chests/desert_pyramid").removePool("Ender IO");


LootTables.getTable("minecraft:chests/igloo_chest").getPool("main").removeEntry("minecraft:stone_axe");
LootTables.getTable("minecraft:chests/igloo_chest").getPool("main").removeEntry("astralsorcery:constellation_paper");
LootTables.getTable("minecraft:chests/nether_bridge").getPool("main").removeEntry("minecraft:golden_chestplate");
LootTables.getTable("minecraft:chests/nether_bridge").getPool("main").removeEntry("minecraft:golden_horse_armor");
LootTables.getTable("minecraft:chests/nether_bridge").getPool("main").removeEntry("minecraft:iron_horse_armor");
LootTables.getTable("minecraft:chests/nether_bridge").getPool("main").removeEntry("minecraft:diamond_horse_armor");
LootTables.getTable("minecraft:chests/nether_bridge").getPool("main").removeEntry("cyberware:surgery_apparatus");

	#Blacksmiths
var blacksmithDisabled as string[][string] = {
	"main" : [
		"minecraft:golden_horse_armor",
		"minecraft:diamond_horse_armor",
		"minecraft:iron_horse_armor",
		"minecraft:bread",
		"minecraft:apple",
		"minecraft:iron_sword",
		"minecraft:iron_helmet",
		"minecraft:iron_boots",
		"minecraft:iron_pickaxe",
		"minecraft:obsidian",
		"minecraft:sapling",
		"minecraft:saddle",
		"#gregtech:loot_1xitem.meta_item@2016",
		"#gregtech:loot_1xitem.meta_item@2042",
		"#gregtech:loot_1xitem.meta_item@10039",
		"#gregtech:loot_1xitem.meta_item@10184",
		"#gregtech:loot_1xitem.meta_item@10095",
		"#gregtech:loot_1xitem.meta_item@10094",
		"#gregtech:loot_1xitem.meta_item@10234",
		"#gregtech:loot_1xitem.meta_item@8247"
	]
};

for pool, entries in blacksmithDisabled {
	for entry in entries {
		LootTables.getTable("minecraft:chests/village_blacksmith")
			.getPool(pool)
			.removeEntry(entry);
		print("Removed " + entry + " from " + pool +  " in blacksmiths.");
	}
}
LootTables.getTable("minecraft:chests/village_blacksmith").removePool("Ender IO");


	#Jungle Temple
LootTables.getTable("minecraft:chests/jungle_temple").removePool("Ender IO");

	#Desert Pyramids
var jungleTempleDisabled as string[][string] = {
	"main" : [
		"minecraft:rotten_flesh",
		"minecraft:saddle",
		"minecraft:iron_horse_armor",
		"minecraft:golden_horse_armor",
		"minecraft:diamond_horse_armor",
		"astralsorcery:constellation_paper",
		"#gregtech:loot_1xitem.meta_item@32008",	//ancient gold coins
		"#gregtech:loot_1xitem.meta_item@10095",
		"#gregtech:loot_1xitem.meta_item@8154",
		"#gregtech:loot_1xitem.meta_item@8157",
		"#gregtech:loot_1xitem.meta_item@8117",
		"#gregtech:loot_1xitem.meta_item@8212",
		"#gregtech:loot_1xitem.meta_item@8243",
		"#gregtech:loot_1xitem.meta_item@8244",
		"cyberware:neuropozyne"
	]
};

for pool, entries in jungleTempleDisabled {
	for entry in entries {
		LootTables.getTable("minecraft:chests/jungle_temple")
			.getPool(pool)
			.removeEntry(entry);
		print("Removed " + entry + " from " + pool +  " in jungle temples.");
	}
}

	#Jungle Temple - Dispenser
LootTables.getTable("minecraft:chests/jungle_temple_dispenser").removePool("Ender IO");

LootTables.getTable("minecraft:chests/woodland_mansion").getPool("main").removeEntry("minecraft:chainmail_chestplate");
LootTables.getTable("minecraft:chests/woodland_mansion").getPool("main").removeEntry("minecraft:diamond_hoe");

LootTables.getTable("minecraft:chests/abandoned_mineshaft").removePool("Ender IO");

LootTables.getTable("minecraft:chests/end_city_treasure").removePool("Ender IO");
LootTables.getTable("minecraft:chests/igloo_chest").removePool("Ender IO");

LootTables.getTable("minecraft:chests/nether_bridge").removePool("Ender IO");

	#Astral Sorcery
LootTables.getTable("astralsorcery:shooting_star").getPool("astralsorcery:shooting_star").removeEntry("minecraft:glowstone_dust");
LootTables.getTable("astralsorcery:chest_shrine").getPool("astralsorcery:chest_shrine").removeEntry("astralsorcery:itemconstellationpaper");
LootTables.getTable("astralsorcery:chest_shrine").getPool("astralsorcery:chest_shrine").removeEntry("minecraft:glowstone_dust");

	#Botania
LootTables.getTable("botania:inject/simple_dungeon").getPool("main").removeEntry("botania:manaResource");
LootTables.getTable("botania:inject/stronghold_corridor").getPool("main").removeEntry("botania:manaResource");

	#Extra Utilities 2
LootTables.getTable("minecraft:entities/wither_skeleton").removePool("pool2");

	#Evoker
var evokerMain = LootTables.getTable("minecraft:entities/evocation_illager").getPool("main");
evokerMain.removeEntry("minecraft:totem_of_undying");
evokerMain.addItemEntry(<minecraft:totem_of_undying>, 1, 0);
evokerMain.addEmptyEntry(9, "empty");
LootTables.getTable("minecraft:entities/evocation_illager").getPool("pool1").removeEntry("minecraft:emerald");

	#Spirit
LootTables.getTable("emberroot:entity/sprite_greater").getPool("main").removeEntry("minecraft:emerald");

	#Simple Dungeon
var simpleDungeonDisabled as string[][string] = {
	"main" : [
		"minecraft:name_tag",
		"minecraft:golden_horse_armor",
		"minecraft:iron_horse_armor",
		"minecraft:diamond_horse_armor",
		"#gregtech:loot_1xitem.meta_item@32100",
		"#gregtech:loot_1xitem.meta_item@10062",
		"#gregtech:loot_1xitem.meta_item@10035",
		"#gregtech:loot_1xitem.meta_item@10184",
		"#gregtech:loot_1xitem.meta_item@10095",
		"#gregtech:loot_1xitem.meta_item@10039",
		"#gregtech:loot_1xitem.meta_item@10234",
		"#gregtech:loot_1xitem.meta_item@8247",
		"#gregtech:loot_1xitem.emerald@0",
		"#gregtech:loot_1xitem.meta_item@8154",
		"#gregtech:loot_1xitem.meta_item@8157",
		"#gregtech:loot_1xitem.meta_item@8117",
		"#gregtech:loot_1xitem.meta_item@8212",
		"#gregtech:loot_1xitem.meta_item@8243",
		"#gregtech:loot_1xitem.meta_item@8244",
		"#gregtech:loot_1xitem.meta_item@2001",
		"#gregtech:loot_1xitem.meta_item@2042",
		"#gregtech:loot_1xitem.meta_item@2016",
		"cyberware:neuropozyne"
	],
	"pool1" : [
		"minecraft:wheat",
		"minecraft:bread",
		"minecraft:coal",
		"minecraft:melon_seeds",
		"minecraft:pumpkin_seeds",
		"minecraft:beetroot_seeds"
	],
	"pool2" : [
		"minecraft:gunpowder",
		"minecraft:rotten_flesh",
		"minecraft:string"
	]
};

for pool, entries in simpleDungeonDisabled {
	for entry in entries {
		LootTables.getTable("minecraft:chests/simple_dungeon")
			.getPool(pool)
			.removeEntry(entry);
		print("Removed " + entry + " from " + pool +  " in mineshafts.");
	}
}

LootTables.getTable("minecraft:chests/simple_dungeon").removePool("Ender IO");

	#Zombie
LootTables.getTable("minecraft:entities/zombie").getPool("pool1").removeEntry("minecraft:iron_ingot");

	#Zombie Pigman
LootTables.getTable("minecraft:entities/zombie_pigman").removePool("pool1"); 	//gold nugget pool
LootTables.getTable("minecraft:entities/zombie_pigman").removePool("pool2");	// gold ingot pool

print("-----------------LootTables. End-------------------");