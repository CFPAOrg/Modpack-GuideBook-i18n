print("Embers");

//Vacuum Hopper
recipes.remove(<embers:vacuum>);
recipes.addShaped(<embers:vacuum>, [[<ore:plateLead>, null, <ore:plateLead>], [<ore:plateLead>, <minecraft:chest>, <ore:plateLead>], [null, <ore:plateLead>, null]]);
recipes.addShaped(<embers:vacuum>, [[<ore:plateLead>, null, <ore:plateLead>], [<ore:plateLead>, <immcraft:chest>, <ore:plateLead>], [null, <ore:plateLead>, null]]);

// Fluid Pipe needs Tin
recipes.remove(<embers:pipe>);
recipes.addShaped(<embers:pipe> * 8, [[<ore:ingotTin>, <ore:plateTin>, <ore:ingotTin>]]);

// Make Extractors easier
recipes.remove(<embers:pump>);
recipes.addShaped(<embers:pump>, [[<embers:pipe>, <actuallyadditions:item_misc:5>, <embers:pipe>]]);
recipes.remove(<embers:item_pump>);
recipes.addShaped(<embers:item_pump>, [[<embers:item_pipe>, <actuallyadditions:item_misc:5>, <embers:item_pipe>]]);

// Caminite
recipes.remove(<embers:blend_caminite>);
recipes.addShapeless(<embers:blend_caminite> * 4, [<appliedenergistics2:material:3>, <appliedenergistics2:material:3>, <minecraft:clay_ball>, <ore:dustSulfur>]);

// Mechanical Core
recipes.remove(<embers:mech_core>);
recipes.addShaped(<embers:mech_core>, [[<ore:plateLead>, <embers:item_pipe>, <ore:plateLead>], [<embers:item_pipe>, <embers:archaic_circuit>, <embers:item_pipe>], [<ore:plateLead>, <embers:item_pipe>, <ore:plateLead>]]);

// Bore
recipes.remove(<embers:ember_bore>);
recipes.addShaped(<embers:ember_bore>, [[<embers:block_caminite_brick>, <embers:block_caminite_brick>, <embers:block_caminite_brick>], [<embers:block_caminite_brick>, <embers:mech_core>, <embers:block_caminite_brick>], [<ore:plateIron>, <primal:diamond_pickaxe>, <ore:plateIron>]]);

// Gauge
recipes.remove(<embers:ember_detector>);
recipes.addShaped(<embers:ember_detector>, [[null, <ore:ingotIron>, null], [<ore:ingotCopper>, <embers:caminite_lever>, <ore:ingotCopper>], [<ore:ingotCopper>, <ore:ingotIron>, <ore:ingotCopper>]]);

// Dials
recipes.remove(<embers:fluid_gauge>);
recipes.addShaped(<embers:fluid_gauge>, [[<embers:caminite_lever>], [<ore:ingotTin>]]);
recipes.remove(<embers:ember_gauge>);
recipes.addShaped(<embers:ember_gauge>, [[<embers:caminite_lever>], [<ore:ingotCopper>]]);

// Hammer
recipes.remove(<embers:tinker_hammer>);
recipes.addShaped(<embers:tinker_hammer>, [[<primal:sarsen_stone>, <primal:sarsen_stone>, <primal:sarsen_stone>], [null, <ore:stickWood>, null], [null, <ore:stickWood>, null]]);

// Emitter
recipes.remove(<embers:ember_emitter>);
recipes.addShaped(<embers:ember_emitter> * 2, [[null, <ore:ingotCopper>, null], [null, <ore:ingotCopper>, null], [<embers:plate_caminite>, <embers:shard_ember>, <embers:plate_caminite>]]);

// Receptor
recipes.remove(<embers:ember_receiver>);
recipes.addShaped(<embers:ember_receiver> * 2, [[<ore:ingotLead>, null, <ore:ingotLead>], [<embers:plate_caminite>, <embers:shard_ember>, <embers:plate_caminite>]]);

// Activator
recipes.remove(<embers:ember_activator>);
recipes.addShaped(<embers:ember_activator>, [[<primal:sarsen_stone>, <primal:sarsen_stone>, <primal:sarsen_stone>], [<embers:item_pipe>, <minecraft:furnace>, <embers:item_pipe>], [<embers:block_caminite_brick_slab>, <embers:block_caminite_brick_slab>, <embers:block_caminite_brick_slab>]]);

// Melter
recipes.remove(<embers:block_furnace>);
recipes.addShaped(<embers:block_furnace>, [[<embers:block_caminite_brick>, <embers:block_caminite_brick>, <embers:block_caminite_brick>], [<embers:item_pipe>, <embers:bin>, <embers:pipe>], [<primal:sarsen_stone>, <minecraft:furnace>, <primal:sarsen_stone>]]);

// Mixer Centrifuge
recipes.remove(<embers:mixer>);
recipes.addShaped(<embers:mixer>, [[<primal:sarsen_stone>, <primal:sarsen_stone>, <primal:sarsen_stone>], [<embers:pipe>, <embers:mech_core>, <embers:pipe>], [<embers:block_caminite_brick_slab>, <embers:block_caminite_brick_slab>, <embers:block_caminite_brick_slab>]]);

// Bin
recipes.remove(<embers:bin>);
recipes.addShaped(<embers:bin>, [[<primal:sarsen_stone>, null, <primal:sarsen_stone>], [<primal:sarsen_stone>, null, <primal:sarsen_stone>], [<primal:sarsen_stone>, <primal:sarsen_stone>, <primal:sarsen_stone>]]);

// Stamper
recipes.remove(<embers:stamper>);
recipes.addShaped(<embers:stamper>, [[<embers:block_caminite_brick>, <primal:sarsen_stone>, <embers:block_caminite_brick>], [<ore:plateLead>, <minecraft:piston>, <ore:plateLead>], [<embers:block_caminite_brick>, null, <embers:block_caminite_brick>]]);

// Stamper Base
recipes.remove(<embers:stamper_base>);
recipes.addShaped(<embers:stamper_base>, [[<primal:sarsen_stone>, null, <primal:sarsen_stone>], [<embers:block_caminite_brick>, null, <embers:block_caminite_brick>], [<embers:block_caminite_brick>, <embers:block_caminite_brick>, <embers:block_caminite_brick>]]);

// Copper Cell
recipes.remove(<embers:copper_cell>);
recipes.addShaped(<embers:copper_cell>, [[<embers:block_caminite_brick>, <ore:plateBronze>, <embers:block_caminite_brick>], [<ore:plateBronze>, <ore:blockBronze>, <ore:plateBronze>], [<embers:block_caminite_brick>, <ore:plateBronze>, <embers:block_caminite_brick>]]);
<embers:copper_cell>.displayName = "灰烬能量单元";

// Pressure Refinery
recipes.remove(<embers:boiler>);
recipes.addShaped(<embers:boiler>, [[<ore:ingotCopper>, <ore:ingotCopper>, <ore:ingotCopper>], [<ore:ingotIron>, <embers:ember_activator>, <ore:ingotIron>], [<ore:ingotIron>, <ore:blockCopper>, <ore:ingotIron>]]);

// Auto Breaker
recipes.remove(<embers:breaker>);
recipes.addShaped(<embers:breaker>, [[<ore:plateIron>, <ore:plateIron>, <ore:plateIron>], [<ore:plateLead>, <minecraft:piston>, <ore:plateLead>], [<ore:plateLead>, null, <ore:plateLead>]]);

// Exchange Tablet
recipes.remove(<embers:alchemy_tablet>);
recipes.addShaped(<embers:alchemy_tablet>, [[null, <ore:plateDawnstone>, null], [<embers:block_caminite_brick_slab>, <ore:blockDawnstone>, <embers:block_caminite_brick_slab>], [<embers:stairs_caminite_brick>, <embers:block_caminite_brick_slab>, <embers:stairs_caminite_brick>]]);

// Remove Dawnstone conversion
recipes.remove(<embers:plate_dawnstone>);

// Wrought Iron Tile Duplicate recipes
recipes.remove(<soot:wrought_tile>);
recipes.addShaped(<soot:wrought_tile> * 16, [[<ore:plateIron>, null, <ore:plateIron>], [null, null, null], [<ore:plateIron>, null, <ore:plateIron>]]);

// Disable Plates Hammering
mods.jei.JEI.removeAndHide(<embers:plate_bronze>);
mods.jei.JEI.removeAndHide(<embers:plate_copper>);
mods.jei.JEI.removeAndHide(<embers:plate_lead>);
mods.jei.JEI.removeAndHide(<embers:plate_silver>);
mods.jei.JEI.removeAndHide(<embers:plate_iron>);
mods.jei.JEI.removeAndHide(<embers:plate_gold>);
mods.jei.JEI.removeAndHide(<embers:plate_mithril>);
mods.jei.JEI.removeAndHide(<embers:plate_aluminum>);
mods.jei.JEI.removeAndHide(<embers:plate_electrum>);
mods.jei.JEI.removeAndHide(<embers:plate_nickel>);
mods.jei.JEI.removeAndHide(<embers:plate_tin>);

// Metal Press Dawnstone Plate
mods.immersiveengineering.MetalPress.addRecipe(<embers:plate_dawnstone>, <embers:ingot_dawnstone>, <immersiveengineering:mold>, 2400);

// Archaic Edge
recipes.remove(<embers:archaic_edge>);
mods.embers.Alchemy.add(<embers:archaic_edge>, [<embers:ancient_motive_core>, <embers:archaic_brick>, <embers:archaic_brick>, <embers:archaic_brick>, <embers:archaic_brick>], 0 to 0, 0 to 0, 0 to 0, 0 to 0, 24 to 32);

// Melter Foundry fix
mods.embers.Melter.remove(<liquid:iron> * 288);
mods.embers.Melter.remove(<liquid:iron> * 144);
mods.embers.Melter.remove(<liquid:iron> * 16);
mods.embers.Melter.remove(<liquid:gold> * 288);
mods.embers.Melter.remove(<liquid:gold> * 144);
mods.embers.Melter.remove(<liquid:gold> * 16);
mods.embers.Melter.remove(<liquid:silver> * 288);
mods.embers.Melter.remove(<liquid:silver> * 144);
mods.embers.Melter.remove(<liquid:silver> * 16);
mods.embers.Melter.remove(<liquid:copper> * 288);
mods.embers.Melter.remove(<liquid:copper> * 144);
mods.embers.Melter.remove(<liquid:copper> * 16);
mods.embers.Melter.remove(<liquid:lead> * 288);
mods.embers.Melter.remove(<liquid:lead> * 144);
mods.embers.Melter.remove(<liquid:lead> * 16);
mods.embers.Melter.remove(<liquid:aluminum> * 288);
mods.embers.Melter.remove(<liquid:aluminum> * 144);
mods.embers.Melter.remove(<liquid:aluminum> * 16);
mods.embers.Melter.remove(<liquid:nickel> * 288);
mods.embers.Melter.remove(<liquid:nickel> * 144);
mods.embers.Melter.remove(<liquid:nickel> * 16);
mods.embers.Melter.remove(<liquid:tin> * 288);
mods.embers.Melter.remove(<liquid:tin> * 144);
mods.embers.Melter.remove(<liquid:tin> * 16);
mods.embers.Melter.remove(<liquid:electrum> * 144);
mods.embers.Melter.remove(<liquid:electrum> * 16);
mods.embers.Melter.remove(<liquid:bronze> * 144);
mods.embers.Melter.remove(<liquid:bronze> * 16);

mods.embers.Melter.add(<liquid:liquidiron> * 16, <survivalist:rock_ore>);
mods.embers.Melter.add(<liquid:liquidiron> * 16, <ore:nuggetIron>);
mods.embers.Melter.add(<liquid:liquidiron> * 144, <ore:ingotIron>);
mods.embers.Melter.add(<liquid:liquidiron> * 144, <ore:plateIron>);
mods.embers.Melter.add(<liquid:liquidiron> * 576, <ore:gearIron>);
mods.embers.Melter.add(<liquid:liquidiron> * 1296, <ore:blockIron>);

mods.embers.Melter.add(<liquid:liquidgold> * 16, <ore:nuggetGold>);
mods.embers.Melter.add(<liquid:liquidgold> * 144, <ore:ingotGold>);
mods.embers.Melter.add(<liquid:liquidgold> * 144, <ore:plateGold>);
mods.embers.Melter.add(<liquid:liquidgold> * 576, <ore:gearGold>);
mods.embers.Melter.add(<liquid:liquidgold> * 1296, <ore:blockGold>);

mods.embers.Melter.add(<liquid:liquidsilver> * 16, <survivalist:rock_ore:5>);
mods.embers.Melter.add(<liquid:liquidsilver> * 16, <ore:nuggetSilver>);
mods.embers.Melter.add(<liquid:liquidsilver> * 144, <ore:ingotSilver>);
mods.embers.Melter.add(<liquid:liquidsilver> * 144, <ore:plateSilver>);
mods.embers.Melter.add(<liquid:liquidsilver> * 576, <ore:gearSilver>);
mods.embers.Melter.add(<liquid:liquidsilver> * 1296, <ore:blockSilver>);

mods.embers.Melter.add(<liquid:liquidcopper> * 16, <survivalist:rock_ore:2>);
mods.embers.Melter.add(<liquid:liquidcopper> * 16, <ore:nuggetCopper>);
mods.embers.Melter.add(<liquid:liquidcopper> * 144, <ore:ingotCopper>);
mods.embers.Melter.add(<liquid:liquidcopper> * 144, <ore:plateCopper>);
mods.embers.Melter.add(<liquid:liquidcopper> * 576, <ore:gearCopper>);
mods.embers.Melter.add(<liquid:liquidcopper> * 1296, <ore:blockCopper>);

mods.embers.Melter.add(<liquid:liquidlead> * 16, <survivalist:rock_ore:4>);
mods.embers.Melter.add(<liquid:liquidlead> * 16, <ore:nuggetLead>);
mods.embers.Melter.add(<liquid:liquidlead> * 144, <ore:ingotLead>);
mods.embers.Melter.add(<liquid:liquidlead> * 144, <ore:plateLead>);
mods.embers.Melter.add(<liquid:liquidlead> * 576, <ore:gearLead>);
mods.embers.Melter.add(<liquid:liquidlead> * 1296, <ore:blockLead>);

mods.embers.Melter.add(<liquid:liquidaluminium> * 16, <ore:nuggetAluminum>);
mods.embers.Melter.add(<liquid:liquidaluminium> * 144, <ore:ingotAluminum>);
mods.embers.Melter.add(<liquid:liquidaluminium> * 144, <ore:plateAluminum>);
mods.embers.Melter.add(<liquid:liquidaluminium> * 576, <ore:gearAluminum>);
mods.embers.Melter.add(<liquid:liquidaluminium> * 1296, <ore:blockAluminum>);

mods.embers.Melter.add(<liquid:liquidnickel> * 16, <ore:nuggetNickel>);
mods.embers.Melter.add(<liquid:liquidnickel> * 144, <ore:ingotNickel>);
mods.embers.Melter.add(<liquid:liquidnickel> * 144, <ore:plateNickel>);
mods.embers.Melter.add(<liquid:liquidnickel> * 576, <ore:gearNickel>);
mods.embers.Melter.add(<liquid:liquidnickel> * 1296, <ore:blockNickel>);

mods.embers.Melter.add(<liquid:liquidtin> * 16, <survivalist:rock_ore:3>);
mods.embers.Melter.add(<liquid:liquidtin> * 16, <ore:nuggetTin>);
mods.embers.Melter.add(<liquid:liquidtin> * 144, <ore:ingotTin>);
mods.embers.Melter.add(<liquid:liquidtin> * 144, <ore:plateTin>);
mods.embers.Melter.add(<liquid:liquidtin> * 576, <ore:gearTin>);
mods.embers.Melter.add(<liquid:liquidtin> * 1296, <ore:blockTin>);

mods.embers.Melter.add(<liquid:liquidbronze> * 16, <ore:nuggetBronze>);
mods.embers.Melter.add(<liquid:liquidbronze> * 144, <ore:ingotBronze>);
mods.embers.Melter.add(<liquid:liquidbronze> * 144, <ore:plateBronze>);
mods.embers.Melter.add(<liquid:liquidbronze> * 576, <ore:gearBronze>);
mods.embers.Melter.add(<liquid:liquidbronze> * 1296, <ore:blockBronze>);

mods.embers.Melter.add(<liquid:liquidelectrum> * 16, <ore:nuggetElectrum>);
mods.embers.Melter.add(<liquid:liquidelectrum> * 144, <ore:ingotElectrum>);
mods.embers.Melter.add(<liquid:liquidelectrum> * 144, <ore:plateElectrum>);
mods.embers.Melter.add(<liquid:liquidelectrum> * 576, <ore:gearElectrum>);
mods.embers.Melter.add(<liquid:liquidelectrum> * 1296, <ore:blockElectrum>);

mods.embers.Melter.add(<liquid:liquidinvar> * 16, <ore:nuggetInvar>);
mods.embers.Melter.add(<liquid:liquidinvar> * 144, <ore:ingotInvar>);
mods.embers.Melter.add(<liquid:liquidinvar> * 144, <ore:plateInvar>);
mods.embers.Melter.add(<liquid:liquidinvar> * 576, <ore:gearInvar>);
mods.embers.Melter.add(<liquid:liquidinvar> * 1296, <ore:blockInvar>);

mods.embers.Melter.add(<liquid:liquidsteel> * 16, <ore:nuggetSteel>);
mods.embers.Melter.add(<liquid:liquidsteel> * 144, <ore:ingotSteel>);
mods.embers.Melter.add(<liquid:liquidsteel> * 144, <ore:plateSteel>);
mods.embers.Melter.add(<liquid:liquidsteel> * 576, <ore:gearSteel>);
mods.embers.Melter.add(<liquid:liquidsteel> * 1296, <ore:blockSteel>);

mods.embers.Mixer.add(<liquid:bronze> * 8, [<liquid:liquidcopper> * 6, <liquid:liquidtin> * 2]);
mods.embers.Mixer.add(<liquid:electrum> * 8, [<liquid:liquidgold> * 4, <liquid:liquidsilver> * 4]);
mods.embers.Mixer.add(<liquid:dawnstone> * 8, [<liquid:liquidgold> * 4, <liquid:liquidcopper> * 4]);
mods.embers.Mixer.add(<liquid:bronze> * 8, [<liquid:liquidcopper> * 6, <liquid:tin> * 2]);
mods.embers.Mixer.add(<liquid:electrum> * 8, [<liquid:liquidgold> * 4, <liquid:silver> * 4]);
mods.embers.Mixer.add(<liquid:dawnstone> * 8, [<liquid:liquidgold> * 4, <liquid:copper> * 4]);
mods.embers.Mixer.add(<liquid:bronze> * 8, [<liquid:copper> * 6, <liquid:liquidtin> * 2]);
mods.embers.Mixer.add(<liquid:electrum> * 8, [<liquid:gold> * 4, <liquid:liquidsilver> * 4]);
mods.embers.Mixer.add(<liquid:dawnstone> * 8, [<liquid:gold> * 4, <liquid:liquidcopper> * 4]);

// Stamper
mods.embers.Stamper.remove(<embers:plate_iron>);
mods.embers.Stamper.add(<minecraft:iron_ingot>, <liquid:liquidiron> * 144, <embers:stamp_bar>);
mods.embers.Stamper.add(<thermalfoundation:material:32>, <liquid:liquidiron> * 144, <embers:stamp_plate>);
mods.embers.Stamper.add(<thermalfoundation:material:32>, <liquid:iron> * 144, <embers:stamp_plate>);

mods.embers.Stamper.remove(<embers:plate_gold>);
mods.embers.Stamper.add(<minecraft:gold_ingot>, <liquid:liquidgold> * 144, <embers:stamp_bar>);
mods.embers.Stamper.add(<thermalfoundation:material:33>, <liquid:liquidgold> * 144, <embers:stamp_plate>);
mods.embers.Stamper.add(<thermalfoundation:material:33>, <liquid:gold> * 144, <embers:stamp_plate>);

mods.embers.Stamper.remove(<embers:ingot_copper>);
mods.embers.Stamper.remove(<embers:plate_copper>);
mods.embers.Stamper.add(<thermalfoundation:material:128>, <liquid:liquidcopper> * 144, <embers:stamp_bar>);
mods.embers.Stamper.add(<thermalfoundation:material:320>, <liquid:liquidcopper> * 144, <embers:stamp_plate>);
mods.embers.Stamper.add(<thermalfoundation:material:128>, <liquid:copper> * 144, <embers:stamp_bar>);
mods.embers.Stamper.add(<thermalfoundation:material:320>, <liquid:copper> * 144, <embers:stamp_plate>);

mods.embers.Stamper.remove(<embers:ingot_tin>);
mods.embers.Stamper.remove(<embers:plate_tin>);
mods.embers.Stamper.add(<thermalfoundation:material:129>, <liquid:liquidtin> * 144, <embers:stamp_bar>);
mods.embers.Stamper.add(<thermalfoundation:material:321>, <liquid:liquidtin> * 144, <embers:stamp_plate>);
mods.embers.Stamper.add(<thermalfoundation:material:129>, <liquid:tin> * 144, <embers:stamp_bar>);
mods.embers.Stamper.add(<thermalfoundation:material:321>, <liquid:tin> * 144, <embers:stamp_plate>);

mods.embers.Stamper.remove(<embers:ingot_silver>);
mods.embers.Stamper.remove(<embers:plate_silver>);
mods.embers.Stamper.add(<thermalfoundation:material:130>, <liquid:liquidsilver> * 144, <embers:stamp_bar>);
mods.embers.Stamper.add(<thermalfoundation:material:322>, <liquid:liquidsilver> * 144, <embers:stamp_plate>);
mods.embers.Stamper.add(<thermalfoundation:material:130>, <liquid:silver> * 144, <embers:stamp_bar>);
mods.embers.Stamper.add(<thermalfoundation:material:322>, <liquid:silver> * 144, <embers:stamp_plate>);

mods.embers.Stamper.remove(<embers:ingot_lead>);
mods.embers.Stamper.remove(<embers:plate_lead>);
mods.embers.Stamper.add(<thermalfoundation:material:131>, <liquid:liquidlead> * 144, <embers:stamp_bar>);
mods.embers.Stamper.add(<thermalfoundation:material:323>, <liquid:liquidlead> * 144, <embers:stamp_plate>);
mods.embers.Stamper.add(<thermalfoundation:material:131>, <liquid:lead> * 144, <embers:stamp_bar>);
mods.embers.Stamper.add(<thermalfoundation:material:323>, <liquid:lead> * 144, <embers:stamp_plate>);

mods.embers.Stamper.remove(<embers:ingot_aluminum>);
mods.embers.Stamper.remove(<embers:plate_aluminum>);
mods.embers.Stamper.add(<thermalfoundation:material:132>, <liquid:liquidaluminium> * 144, <embers:stamp_bar>);
mods.embers.Stamper.add(<thermalfoundation:material:324>, <liquid:liquidaluminium> * 144, <embers:stamp_plate>);
mods.embers.Stamper.add(<thermalfoundation:material:132>, <liquid:aluminum> * 144, <embers:stamp_bar>);
mods.embers.Stamper.add(<thermalfoundation:material:324>, <liquid:aluminum> * 144, <embers:stamp_plate>);

mods.embers.Stamper.remove(<embers:ingot_nickel>);
mods.embers.Stamper.remove(<embers:plate_nickel>);
mods.embers.Stamper.add(<thermalfoundation:material:133>, <liquid:liquidnickel> * 144, <embers:stamp_bar>);
mods.embers.Stamper.add(<thermalfoundation:material:325>, <liquid:liquidnickel> * 144, <embers:stamp_plate>);
mods.embers.Stamper.add(<thermalfoundation:material:133>, <liquid:nickel> * 144, <embers:stamp_bar>);
mods.embers.Stamper.add(<thermalfoundation:material:325>, <liquid:nickel> * 144, <embers:stamp_plate>);

mods.embers.Stamper.remove(<embers:ingot_electrum>);
mods.embers.Stamper.remove(<embers:plate_electrum>);
mods.embers.Stamper.add(<thermalfoundation:material:161>, <liquid:liquidelectrum> * 144, <embers:stamp_bar>);
mods.embers.Stamper.add(<thermalfoundation:material:353>, <liquid:liquidelectrum> * 144, <embers:stamp_plate>);
mods.embers.Stamper.add(<thermalfoundation:material:161>, <liquid:electrum> * 144, <embers:stamp_bar>);
mods.embers.Stamper.add(<thermalfoundation:material:353>, <liquid:electrum> * 144, <embers:stamp_plate>);

mods.embers.Stamper.remove(<embers:ingot_bronze>);
mods.embers.Stamper.remove(<embers:plate_bronze>);
mods.embers.Stamper.add(<thermalfoundation:material:163>, <liquid:liquidbronze> * 144, <embers:stamp_bar>);
mods.embers.Stamper.add(<thermalfoundation:material:355>, <liquid:liquidbronze> * 144, <embers:stamp_plate>);
mods.embers.Stamper.add(<thermalfoundation:material:163>, <liquid:bronze> * 144, <embers:stamp_bar>);
mods.embers.Stamper.add(<thermalfoundation:material:355>, <liquid:bronze> * 144, <embers:stamp_plate>);