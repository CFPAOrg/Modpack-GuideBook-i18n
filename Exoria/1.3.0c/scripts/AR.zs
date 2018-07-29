print("Advanced Rocketry");

// Warp Artifacts
<biomesoplenty:terrestrial_artifact>.addTooltip(format.yellow("跃迁工件"));
<minecraft:ghast_tear>.addTooltip(format.yellow("跃迁工件"));
<biomesoplenty:crystal_shard>.addTooltip(format.yellow("跃迁工件"));
<advancedrocketry:crystal>.addTooltip(format.yellow("跃迁工件"));
<defiledlands:calling_stone>.addTooltip(format.yellow("跃迁工件"));

recipes.remove(<defiledlands:calling_stone>);
recipes.addShaped(<defiledlands:calling_stone>, [[<defiledlands:hephaestite_block>, <defiledlands:scarlite>, <defiledlands:umbrium_block>], [<defiledlands:scarlite>, <defiledlands:black_heart>, <defiledlands:scarlite>], [<defiledlands:umbrium_block>, <defiledlands:scarlite>, <defiledlands:hephaestite_block>]]);
recipes.addShaped(<defiledlands:calling_stone>, [[<defiledlands:umbrium_block>, <defiledlands:scarlite>, <defiledlands:hephaestite_block>], [<defiledlands:scarlite>, <defiledlands:black_heart>, <defiledlands:scarlite>], [<defiledlands:hephaestite_block>, <defiledlands:scarlite>, <defiledlands:umbrium_block>]]);

// Carbon Brick
recipes.remove(<advancedrocketry:misc:1>);
recipes.addShaped(<advancedrocketry:misc:1>, [[<ore:fuelCoke>, <ore:fuelCoke>, <ore:fuelCoke>]]);

// Circuit
recipes.remove(<advancedrocketry:ic:*>);
recipes.addShaped(<advancedrocketry:ic>, [[<fp:spaceship:9>, null, <fp:spaceship:9>], [<fp:spaceship:9>, <forestry:chipsets:1>, <fp:spaceship:9>], [<fp:spaceship:9>, null, <fp:spaceship:9>]]);
recipes.addShapeless(<advancedrocketry:ic:1>, [<advancedrocketry:ic>, <fp:chip:4>]);
recipes.addShaped(<advancedrocketry:ic:2>, [[<fp:spaceship:9>, null, <fp:spaceship:9>], [<fp:spaceship:9>, <genetics:misc:8>, <fp:spaceship:9>], [<fp:spaceship:9>, null, <fp:spaceship:9>]]);
recipes.addShaped(<advancedrocketry:ic:3>, [[<fp:chip>, <advgenerators:controller>, <fp:chip>], [<fp:spaceship:5>, <fp:core:4>, <fp:spaceship:5>], [<fp:chip>, <advancedrocketry:ic>, <fp:chip>]]);
recipes.addShaped(<advancedrocketry:ic:4>, [[<fp:chip:2>, <advgenerators:controller>, <fp:chip:2>], [<fp:spaceship:6>, <fp:core:4>, <fp:spaceship:6>], [<fp:chip:2>, <advancedrocketry:ic>, <fp:chip:2>]]);
recipes.addShaped(<advancedrocketry:ic:5>, [[<fp:chip:2>, <advgenerators:controller>, <fp:chip:2>], [<fp:spaceship:54>, <fp:core:4>, <fp:spaceship:54>], [<fp:chip:2>, <advancedrocketry:ic>, <fp:chip:2>]]);

// User Interface
recipes.remove(<advancedrocketry:misc>);
recipes.addShaped(<advancedrocketry:misc>, [[<minecraft:glass_pane>, <minecraft:glass_pane>, <minecraft:glass_pane>], [<minecraft:stone_button>, <fp:spaceship:27>, <minecraft:stone_button>], [<minecraft:glass_pane>, <minecraft:glass_pane>, <minecraft:glass_pane>]]);

// Machine Structure
recipes.remove(<libvulpes:structuremachine>);
recipes.addShaped(<libvulpes:structuremachine>, [[<fp:erz_blocke:4>, <fp:erz_blocke:4>, <fp:erz_blocke:4>], [<fp:erz_blocke:4>, <ore:gearSteel>, <fp:erz_blocke:4>], [<fp:erz_blocke:4>, <fp:erz_blocke:4>, <fp:erz_blocke:4>]]);

// Battery
recipes.remove(<libvulpes:battery>);
recipes.addShaped(<libvulpes:battery>, [[null, <fp:spaceship:11>], [<ore:plateTin>, <fp:neonbattery>, <ore:plateTin>], [<ore:plateTin>, <fp:spaceship:54>, <ore:plateTin>]]);

// Rocket Assembling Machine
recipes.remove(<advancedrocketry:rocketbuilder>);
recipes.addShaped(<advancedrocketry:rocketbuilder>, [[<ore:stickTitanium>, <advancedrocketry:misc>, <ore:stickTitanium>], [<advancedrocketry:ic:3>, <libvulpes:structuremachine>, <advancedrocketry:ic:3>], [<ore:gearTitanium>, <advancedrocketry:launchpad>, <ore:gearTitanium>]]);

// Satellite Builder
recipes.remove(<advancedrocketry:satellitebuilder>);
recipes.addShaped(<advancedrocketry:satellitebuilder>, [[<ore:plateIridium>, <advancedrocketry:satellite>, <ore:plateIridium>], [<advancedrocketry:ic:3>, <libvulpes:structuremachine>, <advancedrocketry:ic:3>], [<advancedrocketry:ic>, <advancedrocketry:dataunit>, <advancedrocketry:ic>]]);

// Satellite
recipes.remove(<advancedrocketry:satellite>);
recipes.addShaped(<advancedrocketry:satellite>, [[<ore:plateAluminum>, <ore:plateAluminum>, <ore:plateAluminum>], [<ore:stickTitanium>, <advancedrocketry:ic:3>, <ore:stickTitanium>], [<ore:plateAluminum>, <ore:plateAluminum>, <ore:plateAluminum>]]);

// Satellite Functions
recipes.remove(<advancedrocketry:satelliteprimaryfunction:1>);
recipes.addShaped(<advancedrocketry:satelliteprimaryfunction:1>, [[<advancedrocketry:satelliteprimaryfunction>, <advancedrocketry:ic:1>, <advancedrocketry:satelliteprimaryfunction>], [<fp:spaceship:15>, <advancedrocketry:ic>, <fp:spaceship:15>]]);
recipes.remove(<advancedrocketry:satelliteprimaryfunction:2>);
recipes.addShaped(<advancedrocketry:satelliteprimaryfunction:2>, [[<advancedrocketry:satelliteprimaryfunction>, <libvulpes:productdust>, <advancedrocketry:satelliteprimaryfunction>], [<fp:spaceship:15>, <advancedrocketry:ic>, <fp:spaceship:15>]]);
recipes.remove(<advancedrocketry:satelliteprimaryfunction:3>);
recipes.addShaped(<advancedrocketry:satelliteprimaryfunction:3>, [[<advancedrocketry:lens>, <advancedrocketry:ic:1>, <advancedrocketry:lens>], [<fp:spaceship:15>, <advancedrocketry:ic>, <fp:spaceship:15>]]);

// Data Storage Unit
recipes.remove(<advancedrocketry:dataunit>);
recipes.addShapeless(<advancedrocketry:dataunit>, [<advancedrocketry:ic>, <fp:aiflash5>]);

// Warp Controller
recipes.remove(<advancedrocketry:warpmonitor>);
mods.extendedcrafting.TableCrafting.addShaped(<advancedrocketry:warpmonitor>, [[<libvulpes:structuremachine>, <libvulpes:structuremachine>, <libvulpes:structuremachine>, <libvulpes:structuremachine>, <libvulpes:structuremachine>, <libvulpes:structuremachine>, <libvulpes:structuremachine>], [<libvulpes:structuremachine>, <fp:compactenergycell>, <advancedrocketry:ic:3>, <fp:antenne>, <advancedrocketry:ic:3>, <fp:compactenergycell>, <libvulpes:structuremachine>], [<libvulpes:structuremachine>, <advancedrocketry:ic:3>, <fp:spaceship:54>, <fp:spaceship:54>, <fp:spaceship:54>, <advancedrocketry:ic:3>, <libvulpes:structuremachine>], [<libvulpes:structuremachine>, <ore:blockIridium>, <fp:spaceship:29>, <waystones:warp_stone>, <fp:spaceship:29>, <ore:blockIridium>, <libvulpes:structuremachine>], [<libvulpes:structuremachine>, <advancedrocketry:ic:3>, <fp:spaceship:27>, <fp:spaceship:27>, <fp:spaceship:27>, <advancedrocketry:ic:3>, <libvulpes:structuremachine>], [<libvulpes:structuremachine>, <fp:compactenergycell>, <advancedrocketry:ic:3>, <ore:blockIridium>, <advancedrocketry:ic:3>, <fp:compactenergycell>, <libvulpes:structuremachine>], [<libvulpes:structuremachine>, <libvulpes:structuremachine>, <libvulpes:structuremachine>, <libvulpes:structuremachine>, <libvulpes:structuremachine>, <libvulpes:structuremachine>, <libvulpes:structuremachine>]]); 

// Tanks
recipes.addShaped(<advancedrocketry:pressuretank>, [[<ore:plateIron>], [<ore:plateIron>]]);
recipes.addShaped(<advancedrocketry:pressuretank:1>, [[<ore:plateSteel>], [<ore:plateSteel>]]);
recipes.addShaped(<advancedrocketry:pressuretank:2>, [[<ore:plateAluminum>], [<ore:plateAluminum>]]);
recipes.addShaped(<advancedrocketry:pressuretank:3>, [[<ore:plateTitanium>], [<ore:plateTitanium>]]);

// Carbon Cartridge
recipes.remove(<advancedrocketry:carbonscrubbercartridge>);
recipes.addShaped(<advancedrocketry:carbonscrubbercartridge>, [[<ore:plateIron>, <minecraft:iron_bars>, <ore:plateIron>], [<ore:plateIron>, <minecraft:iron_bars>, <ore:plateIron>], [<ore:plateIron>, <minecraft:iron_bars>, <ore:plateIron>]]);

// Coil
recipes.remove(<libvulpes:coil0:*>);
recipes.addShaped(<libvulpes:coil0:2>, [[<ore:ingotGold>, <ore:ingotGold>, <ore:ingotGold>], [<ore:ingotGold>, <thermalfoundation:material:515>, <ore:ingotGold>], [<ore:ingotGold>, <ore:ingotGold>, <ore:ingotGold>]]);
recipes.addShaped(<libvulpes:coil0:4>, [[<ore:ingotCopper>, <ore:ingotCopper>, <ore:ingotCopper>], [<ore:ingotCopper>, <thermalfoundation:material:515>, <ore:ingotCopper>], [<ore:ingotCopper>, <ore:ingotCopper>, <ore:ingotCopper>]]);
recipes.addShaped(<libvulpes:coil0:7>, [[<ore:ingotTitanium>, <ore:ingotTitanium>, <ore:ingotTitanium>], [<ore:ingotTitanium>, <thermalfoundation:material:515>, <ore:ingotTitanium>], [<ore:ingotTitanium>, <ore:ingotTitanium>, <ore:ingotTitanium>]]);
recipes.addShaped(<libvulpes:coil0:9>, [[<ore:ingotAluminum>, <ore:ingotAluminum>, <ore:ingotAluminum>], [<ore:ingotAluminum>, <thermalfoundation:material:515>, <ore:ingotAluminum>], [<ore:ingotAluminum>, <ore:ingotAluminum>, <ore:ingotAluminum>]]);
recipes.addShaped(<libvulpes:coil0:10>, [[<ore:ingotIridium>, <ore:ingotIridium>, <ore:ingotIridium>], [<ore:ingotIridium>, <thermalfoundation:material:515>, <ore:ingotIridium>], [<ore:ingotIridium>, <ore:ingotIridium>, <ore:ingotIridium>]]);

// Launch Pad
recipes.remove(<advancedrocketry:launchpad>);
recipes.addShaped(<advancedrocketry:launchpad> * 2, [[<earthworks:block_concrete>, <earthworks:block_concrete>, <earthworks:block_concrete>], [<earthworks:block_concrete>, <minecraft:iron_bars>, <earthworks:block_concrete>], [<earthworks:block_concrete>, <earthworks:block_concrete>, <earthworks:block_concrete>]]);

// Remove unnecessary stuff
mods.jei.JEI.removeAndHide(<advancedrocketry:loader:2>);
mods.jei.JEI.removeAndHide(<advancedrocketry:loader:3>);
mods.jei.JEI.removeAndHide(<advancedrocketry:loader:4>);
mods.jei.JEI.removeAndHide(<advancedrocketry:loader:5>);
mods.jei.JEI.removeAndHide(<advancedrocketry:loader:6>);
mods.jei.JEI.removeAndHide(<advancedrocketry:precisionassemblingmachine>);
mods.jei.JEI.removeAndHide(<advancedrocketry:blastbrick>);
mods.jei.JEI.removeAndHide(<advancedrocketry:cuttingmachine>);
mods.jei.JEI.removeAndHide(<advancedrocketry:observatory>);
mods.jei.JEI.removeAndHide(<advancedrocketry:concrete>);
mods.jei.JEI.removeAndHide(<advancedrocketry:planetselector>);
mods.jei.JEI.removeAndHide(<advancedrocketry:planetanalyser>);
mods.jei.JEI.removeAndHide(<advancedrocketry:arcfurnace>);
mods.jei.JEI.removeAndHide(<advancedrocketry:lathe>);
mods.jei.JEI.removeAndHide(<advancedrocketry:rollingmachine>);
mods.jei.JEI.removeAndHide(<advancedrocketry:platepress>);
mods.jei.JEI.removeAndHide(<advancedrocketry:electrolyser>);
mods.jei.JEI.removeAndHide(<advancedrocketry:landingpad>);
mods.jei.JEI.removeAndHide(<advancedrocketry:drill>);
mods.jei.JEI.removeAndHide(<advancedrocketry:biomescanner>);
mods.jei.JEI.removeAndHide(<advancedrocketry:terraformer>);
mods.jei.JEI.removeAndHide(<advancedrocketry:deployablerocketbuilder>);
mods.jei.JEI.removeAndHide(<advancedrocketry:railgun>);
mods.jei.JEI.removeAndHide(<advancedrocketry:forcefieldprojector>);
mods.jei.JEI.removeAndHide(<advancedrocketry:spacelaser>);
