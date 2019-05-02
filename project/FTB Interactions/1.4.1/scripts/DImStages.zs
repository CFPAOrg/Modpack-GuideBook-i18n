import mods.zenstages.ZenStager;
import mods.zenstages.Stage;
import crafttweaker.item.IItemStack;
import crafttweaker.player.IPlayer;
import crafttweaker.events.IEventManager;
import crafttweaker.event.PlayerChangedDimensionEvent;
import crafttweaker.event.PlayerPickupItemEvent;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.event.PlayerCraftedEvent;

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

print("----------------Dimension Stages End-------------------");


mods.DimensionStages.addDimensionStage("nether", -1);
mods.DimensionStages.addDimensionStage("space", -2);
mods.DimensionStages.addDimensionStage("luna", 145);
mods.DimensionStages.addDimensionStage("euclydes", 146);
mods.DimensionStages.addDimensionStage("aurellia", 147);
mods.DimensionStages.addDimensionStage("end", 1);


events.onPlayerCrafted(function(craftEvent as crafttweaker.event.PlayerCraftedEvent) {
val item = <sonarcore:stablestonerimmed_black>;
val message = "You have now unlocked access to the nether, your next step will be unlocking access to space with a guidance computer.";

	if (isNull(craftEvent.output)){
		return;
	}
	
    if (item.matches(craftEvent.output)) { 
		if (!craftEvent.player.hasGameStage("nether")){
			craftEvent.player.addGameStage("nether");
			craftEvent.player.sendChat(message);
		}
	}
});

events.onPlayerPickupItem(function(pickupEvent as crafttweaker.event.PlayerPickupItemEvent) {
val item = <sonarcore:stablestonerimmed_black>;
val message = "You have now unlocked access to the nether, your next step will be unlocking access to space with a guidance computer.";
    if (item.matches(pickupEvent.item.item)) { 
		if (!pickupEvent.player.hasGameStage("nether")){
			pickupEvent.player.addGameStage("nether");
			pickupEvent.player.sendChat(message);
		}
	}
});

events.onPlayerCrafted(function(craftEvent as crafttweaker.event.PlayerCraftedEvent) {
val item = <advancedrocketry:guidancecomputer>;
val message = "You have now unlocked access to the space and Luna, to gain access to Euclydes prime you will need to goto Luna.";

	if (isNull(craftEvent.output)){
		return;
	}

    if (item.matches(craftEvent.output)) { 
		if (!craftEvent.player.hasGameStage("space")){
			craftEvent.player.addGameStage("space");
			craftEvent.player.addGameStage("luna");
			craftEvent.player.sendChat(message);
		}
	}
});

events.onPlayerPickupItem(function(pickupEvent as crafttweaker.event.PlayerPickupItemEvent) {
val item = <advancedrocketry:guidancecomputer>;
val message = "You have now unlocked access to the space and Luna, to gain access to Euclydes prime you will need to goto Luna.";
    if (item.matches(pickupEvent.item.item)) { 
		if (!pickupEvent.player.hasGameStage("space")){
			pickupEvent.player.addGameStage("space");
			pickupEvent.player.addGameStage("luna");
			pickupEvent.player.sendChat(message);
		}
	}
});

events.onPlayerChangedDimension(function(event as crafttweaker.event.PlayerChangedDimensionEvent){
val message = "Welcome to Luna! To progress further you will need to locate Euclydes via satelite search using the Euclydes artifact.";
	if (!event.player.hasGameStage("euclydes") && event.to == 145){
		event.player.addGameStage("euclydes");
		event.player.addGameStage("space");
		event.player.addGameStage("luna");
		event.player.sendChat(message);
	}
return;
		
});

events.onPlayerChangedDimension(function(event as crafttweaker.event.PlayerChangedDimensionEvent){
val message = "Welcome to Euclydes Prime! To progress further you will need to build an artificial end portal and visit the end.";
	if (!event.player.hasGameStage("end") && event.to == 146){
		event.player.addGameStage("end");
		event.player.addGameStage("space");
		event.player.addGameStage("luna");
		event.player.addGameStage("euclydes");
		event.player.sendChat(message);
	}
return;
});

events.onPlayerChangedDimension(function(event as crafttweaker.event.PlayerChangedDimensionEvent){
val message = "Welcome to The End! To progress further you will need to Locate and fly to the distance planet of Aurellia, orbiting the Xol Blackhole.";
	if (!event.player.hasGameStage("aurellia") && event.to == 1){
		event.player.addGameStage("aurellia");
		event.player.addGameStage("end");
		event.player.addGameStage("space");
		event.player.addGameStage("luna");
		event.player.addGameStage("euclydes");
		event.player.sendChat(message);
	}
return;
});


print("----------------Dimension Stages End-------------------");

