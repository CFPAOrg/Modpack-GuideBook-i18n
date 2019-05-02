import mods.zenstages.ZenStager;
import mods.zenstages.Stage;
import crafttweaker.item.IItemStack;
import crafttweaker.player.IPlayer;
import crafttweaker.events.IEventManager;
import crafttweaker.event.PlayerChangedDimensionEvent;
import crafttweaker.event.PlayerPickupItemEvent;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;

#dimensions
#Terra - 0 - (Void Dimension)
#Nova - 100 - (Overworld)
#145 - Luna
#146 - Euclydes
#147 - Aurellia
#-1 - Nether
#2 - space
#1 - Ehe end

// Skeletons require stage two, or any spawner.
//mods.mobStages.addStage("two", "minecraft:skeleton");
//mods.MobStages.toggleSpawner("minecraft:skeleton", true);

# Valid stages:
#moboverworld
#mobbronze
#mobnether
#mobspace
#mobnever

#triggers


//Overworld mobstage

events.onPlayerChangedDimension(function(event as crafttweaker.event.PlayerChangedDimensionEvent){
val overworldMessage = "Welcome to overworld! You'll remain in this stage until you get your bearings and get some key tasks out of the way, once you're ready to proceed you'll need to grab some brass.";
	if (!event.player.hasGameStage("moboverworld") && event.to == 100){
		event.player.addGameStage("moboverworld");
		event.player.sendChat(overworldMessage);
	}
return;

});

//Nether mobstage
events.onPlayerChangedDimension(function(event as crafttweaker.event.PlayerChangedDimensionEvent){
val netherMessage = "Venturing into even more dangerous dimensions? Well, You are a bright one aren't you. I suppose that means you're ready for the worst of the worst? Well, cant's say I didnt warn you.";
	if (!event.player.hasGameStage("mobnether") && event.to == -1){
		event.player.addGameStage("mobnether");
		event.player.addGameStage("moboverworld");
		event.player.addGameStage("mobbronze");
		event.player.sendChat(netherMessage);
	}

});

//Space mobstage
events.onPlayerChangedDimension(function(event as crafttweaker.event.PlayerChangedDimensionEvent){
val spaceMessage = "Well, you know what they say about curiosity... Your meddling in extradimensional and spacial affairs has welcomed the most deadly enemies in the known universe to your door. Well Done, you've probably killed us all.";
	if (!event.player.hasGameStage("mobspace") && (event.to == -2 || event.to == 145)){
		event.player.addGameStage("mobspace");
		event.player.addGameStage("mobnether");
		event.player.addGameStage("moboverworld");
		event.player.addGameStage("mobbronze");
		event.player.sendChat(spaceMessage);
	}
});


//brass mobstage

events.onPlayerPickupItem(function(pickupEvent as crafttweaker.event.PlayerPickupItemEvent) {
val thaumBrass = <thaumcraft:ingot:2>;
val gtBrass = ingotGTBrass;
val bronzeMessage = "Now things are getting spicey, all but the worst monsters known to this world will now be unleashed on you, hope you're prepared, because the rest of us probably aren't, thanks for that.";
    if (thaumBrass.matches(pickupEvent.item.item) || gtBrass.matches(pickupEvent.item.item)) { // tcBrass || event.item.item == gtBrass) {
		if (!pickupEvent.player.hasGameStage("mobbronze")){
			pickupEvent.player.addGameStage("overworldMobs");
			pickupEvent.player.addGameStage("mobbronze");
			pickupEvent.player.sendChat(bronzeMessage);
		}
	}
});


print("---------------Mob Stages Start------------------");

var StageMap as Stage[string] = ZenStager.getStageMap();

var bannedMobs = [
	"cyberware:cyberzombie",
	"emberroot:withercat",
	"chickens:chickenschicken" //until we're ready to use them
	] as string[];

for i in bannedMobs {
	mods.MobStages.addStage("mobnever", i);
	mods.MobStages.toggleSpawner(i, false);
}

var overworldMobs = [
	"dmonsters:baby",
	"dmonsters:entrail",
	"dmonsters:freezer",
	"dmonsters:luckyegg",
	"dmonsters:wideman",
	"emberroot:creeper",
	"dmonsters:zombiechicken",
	"emberroot:dire_wolf",
	"emberroot:enderminy",
	"emberroot:fallenmount",
	"emberroot:hero",
	"emberroot:rainbowslime",
	"emberroot:rootsonesprite",
	"emberroot:rootsonespriteboss",
	"emberroot:rootsonespritegreater",
	"emberroot:rootsonespriteling",
	"emberroot:skeleton_frozen",
	"emberroot:slime",
	"emberroot:sprouts",
	"emberroot:timberwolf",
	"industrialforegoing:pink_slime",
	"minecraft:blaze",
	"minecraft:elder_guardian",
	"minecraft:endermite",
	"minecraft:evocation_illager",
	"minecraft:giant",
	"minecraft:guardian",
	"minecraft:husk",
	"minecraft:silverfish",
	"minecraft:skeleton_horse",
	"minecraft:spider",
	"minecraft:stray",
	"minecraft:vex",
	"minecraft:vindication_illager",
	"minecraft:zombie",
	"minecraft:zombie_horse",
	"minecraft:zombie_pigman",
	"minecraft:zombie_villager",
	"thaumcraft:brainyzombie",
	"thaumcraft:mindspider",
	"thaumcraft:spellbat",
	"thaumcraft:taintacle",
	"thaumcraft:taintaclegiant",
	"thaumcraft:taintacletiny",
	"thaumcraft:taintcrawler",
	"thaumcraft:taintseed",
	"thaumcraft:taintseedprime",
	"thaumcraft:taintswarm",
	"thaumcraft:thaumslime",
	"thaumcraft:wisp"
	] as string[];

for i in overworldMobs {
	mods.MobStages.addStage("moboverworld", i);
	mods.MobStages.toggleSpawner(i, true);
}

	#mobStageBronze
var  bronzeMobs = [
	"thaumcraft:cultistcleric",
	"minecraft:cave_spider",
	"dmonsters:climber",
	"minecraft:skeleton",
	"dmonsters:present",
	"dmonsters:mutantsteve",
	"minecraft:creeper",
	"thaumcraft:eldritchcrab",
	"thaumcraft:eldritchgolem",
	"thaumcraft:eldritchguardian",
	"thaumcraft:eldritchorb",
	"emberroot:knight_fallen",
	"thaumcraft:eldritchwarden",
	"quark:wraith",
	"thermalfoundation:basalz",
	"thermalfoundation:blitz",
	"thaumcraft:giantbrainyzombie",
	"thermalfoundation:blizz"
	] as string[];

for i in bronzeMobs {
	mods.MobStages.addStage("mobbronze", i);
	mods.MobStages.toggleSpawner(i, true);
}

	#mobStageNether
var  netherMobs = [
	"dmonsters:hauntedcow",
	"dmonsters:stranger",
	"emberroot:rainbow_golem",
    "emberroot:fairies",
	"thaumcraft:cultistportalgreater",
	"minecraft:witch",
	"thaumcraft:cultistknight",
	"thaumcraft:cultistleader",
	"thaumcraft:cultistportallesser",
	"minecraft:enderman",
	"dmonsters:woman",
	"thaumcraft:firebat",
	"mekanism:babyskeleton",
	"minecraft:wither_skeleton",
] as string[];

for i in netherMobs {
	mods.MobStages.addStage("mobnether", i);
	mods.MobStages.toggleSpawner(i, true);
}

	#Space
var  spaceMobs = [
	"thaumcraft:fluxrift",
	"iceandfire:deathworm",
	"iceandfire:deathwormegg",
	"lcrdrfs:jet_pack_spider",
	"lcrdrfs:laser_creeper",
	"lcrdrfs:robo_dino",
	"emberroot:witherwitch"
] as string[];

for i in spaceMobs {
	mods.MobStages.addStage("mobspace", i);
	mods.MobStages.toggleSpawner(i, true);
}




print("----------------Mob Stages End-------------------");
