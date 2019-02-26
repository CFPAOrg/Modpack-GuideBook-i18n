print("Foundry");

// Metals
mods.foundry.Melting.removeRecipe(<survivalist:rock_ore:2>); 
mods.foundry.Melting.addRecipe(<liquid:liquidiron> * 16, <survivalist:rock_ore>, 1800); 
mods.foundry.Melting.addRecipe(<liquid:liquidcopper> * 16, <survivalist:rock_ore:2>, 1300); 
mods.foundry.Melting.addRecipe(<liquid:liquidtin> * 16, <survivalist:rock_ore:3>, 550); 
mods.foundry.Melting.addRecipe(<liquid:liquidlead> * 16, <survivalist:rock_ore:4>, 650); 
mods.foundry.Melting.addRecipe(<liquid:liquidsilver> * 16, <survivalist:rock_ore:5>, 1250);
mods.foundry.Melting.addRecipe(<liquid:liquidiron> * 16, <oreberries:iron_oreberry>, 1800); 
mods.foundry.Melting.addRecipe(<liquid:liquidgold> * 16, <oreberries:gold_oreberry>, 1350); 
mods.foundry.Melting.addRecipe(<liquid:liquidcopper> * 16, <oreberries:copper_oreberry>, 1300); 
mods.foundry.Melting.addRecipe(<liquid:liquidtin> * 16, <oreberries:tin_oreberry>, 550); 
mods.foundry.Melting.addRecipe(<liquid:liquidlead> * 16, <oreberries:lead_oreberry>, 650); 
mods.foundry.Melting.addRecipe(<liquid:liquidsilver> * 16, <oreberries:silver_oreberry>, 1250);
mods.foundry.Melting.addRecipe(<liquid:cobalt> * 288, <tconstruct:ore>, 2100);
mods.foundry.Melting.addRecipe(<liquid:ardite> * 288, <tconstruct:ore:1>, 2100);

// Stone
mods.foundry.Melting.addRecipe(<liquid:stone> * 18, <survivalist:rock>, 800);
mods.foundry.Melting.addRecipe(<liquid:stone> * 72, <minecraft:stone>, 800);
mods.foundry.Melting.addRecipe(<liquid:stone> * 72, <minecraft:cobblestone>, 800);
mods.foundry.Casting.addRecipe(<minecraft:stone>, <liquid:stone> * 72, <foundry:mold:4>);

// Rocky Chunks
mods.foundry.Melting.addRecipe(<liquid:liquidaluminium> * 144, <magneticraft:rocky_chunks:7>, 900);
mods.foundry.Melting.addRecipe(<liquid:liquidnickel> * 144, <magneticraft:rocky_chunks:10>, 1750);
mods.foundry.Melting.addRecipe(<liquid:liquidzinc> * 144, <magneticraft:rocky_chunks:14>, 700);

// Cobalt & Ardite
mods.foundry.Casting.addRecipe(<tconstruct:metal>, <liquid:cobalt> * 1296, <foundry:mold:4>);
mods.foundry.CastingTable.addBlockRecipe(<tconstruct:metal>, <liquid:cobalt> * 1296);
mods.foundry.Casting.addRecipe(<tconstruct:ingots>, <liquid:cobalt> * 144, <foundry:mold>);
mods.foundry.CastingTable.addIngotRecipe(<tconstruct:ingots>, <liquid:cobalt> * 144);
mods.foundry.Casting.addRecipe(<tconstruct:nuggets>, <liquid:cobalt> * 16, <foundry:mold:26>);
mods.foundry.Casting.addRecipe(<tconstruct:metal:1>, <liquid:ardite> * 1296, <foundry:mold:4>);
mods.foundry.CastingTable.addBlockRecipe(<tconstruct:metal:1>, <liquid:ardite> * 1296);
mods.foundry.Casting.addRecipe(<tconstruct:ingots:1>, <liquid:ardite> * 144, <foundry:mold>);
mods.foundry.CastingTable.addIngotRecipe(<tconstruct:ingots:1>, <liquid:ardite> * 144);
mods.foundry.Casting.addRecipe(<tconstruct:nuggets:1>, <liquid:ardite> * 16, <foundry:mold:26>);
furnace.remove(<tconstruct:ingots:*>, <*>);
mods.thermalexpansion.RedstoneFurnace.addRecipe(<tconstruct:ingots> * 2, <tconstruct:ore>, 1000);
mods.thermalexpansion.RedstoneFurnace.addRecipe(<tconstruct:ingots:1> * 2, <tconstruct:ore:1>, 1000);

// Change Glass Melting
mods.foundry.Melting.removeRecipe(<minecraft:sand>);
mods.foundry.Melting.removeRecipe(<minecraft:glass>);
mods.foundry.Melting.removeRecipe(<minecraft:glass_pane>);
mods.foundry.Melting.removeRecipe(<terraqueous:item_main:108>);
mods.foundry.Melting.addRecipe(<liquid:liquidglass> * 1000, <minecraft:sand>, 1100); 
mods.foundry.Melting.addRecipe(<liquid:liquidglass> * 1000, <minecraft:glass>, 1100); 
mods.foundry.Melting.addRecipe(<liquid:liquidglass> * 375, <minecraft:glass_pane>, 1100); 
mods.foundry.Melting.addRecipe(<liquid:liquidglass> * 375, <terraqueous:item_main:108>, 1100); 

// Remove Duplicate Aluminum
mods.foundry.Casting.removeRecipe(<liquid:liquidaluminium> * 144, <foundry:mold>);
mods.foundry.Casting.addRecipe(<thermalfoundation:material:132>, <liquid:liquidaluminium> * 144, <foundry:mold>);

// Casing using Copper instead of Brass
mods.foundry.Casting.removeRecipe(<liquid:liquidbrass> * 16, <foundry:mold:18>);
mods.foundry.Casting.removeRecipe(<liquid:brass> * 16, <foundry:mold:18>);
mods.foundry.Casting.addRecipe(<foundry:component:6>, <liquid:liquidcopper> * 16, <foundry:mold:18>);
mods.foundry.Casting.addRecipe(<foundry:component:6>, <liquid:copper> * 16, <foundry:mold:18>);

// Bronze to Copper Cauldron
recipes.remove(<foundry:bronzecauldron>);
recipes.addShaped(<foundry:bronzecauldron>, [[<ore:ingotCopper>, null, <ore:ingotCopper>], [<ore:ingotCopper>, null, <ore:ingotCopper>], [<ore:ingotCopper>, <ore:ingotCopper>, <ore:ingotCopper>]]);
<foundry:bronzecauldron>.displayName = "铜质炼药锅";

// Use Copper instead of Bronze here as well
recipes.remove(<foundry:componentblock:3>);
recipes.addShaped(<foundry:componentblock:3>, [[<ore:plateCopper>, <foundry:component:2>, <ore:plateCopper>], [<foundry:component:2>, null, <foundry:component:2>], [<ore:plateCopper>, <foundry:component:2>, <ore:plateCopper>]]);

// Burner Heater needs ImmCraft Furnace
recipes.remove(<foundry:burnerheater>);
recipes.addShaped(<foundry:burnerheater>, [[<ore:plateCopper>], [<foundry:componentblock:3>], [<immcraft:furnace>]]);

// Mold Station needs ImmCraft Furnace
recipes.remove(<foundry:moldstation>);
recipes.addShaped(<foundry:moldstation>, [[<foundry:component:2>, <minecraft:crafting_table>, <foundry:component:2>], [<foundry:component:2>, <minecraft:stone_slab>, <foundry:component:2>], [<foundry:component:2>, <immcraft:furnace>, <foundry:component:2>]]);

// Refractory Hopper doesn't need bucket
recipes.remove(<foundry:refractoryhopper>);
recipes.addShaped(<foundry:refractoryhopper>, [[<foundry:component:2>, null, <foundry:component:2>], [<foundry:component:2>, null, <foundry:component:2>], [null, <foundry:component:2>, null]]);

// Change Glass to Quite Clear Glass
mods.foundry.Casting.removeRecipe(<liquid:liquidglass> * 1000, <foundry:mold:4>);
mods.foundry.CastingTable.removeBlockRecipe(<liquid:liquidglass> * 1000);
mods.foundry.Casting.addRecipe(<tconstruct:clear_glass>, <liquid:liquidglass> * 1000, <foundry:mold:4>, null, 400);
mods.foundry.CastingTable.addBlockRecipe(<tconstruct:clear_glass>, <liquid:liquidglass> * 1000);

// Rods
mods.foundry.Casting.addRecipe(<immersiveengineering:material:1>, <liquid:iron> * 72, <foundry:mold:3>);
mods.foundry.Casting.addRecipe(<immersiveengineering:material:1>, <liquid:liquidiron> * 72, <foundry:mold:3>);
mods.foundry.CastingTable.addRodRecipe(<immersiveengineering:material:1>, <liquid:iron> * 72);
mods.foundry.CastingTable.addRodRecipe(<immersiveengineering:material:1>, <liquid:liquidiron> * 72);
mods.foundry.Melting.addRecipe(<liquid:liquidiron> * 72, <immersiveengineering:material:1>, 1800);
mods.foundry.Casting.addRecipe(<immersiveengineering:material:2>, <liquid:steel> * 72, <foundry:mold:3>);
mods.foundry.Casting.addRecipe(<immersiveengineering:material:2>, <liquid:liquidsteel> * 72, <foundry:mold:3>);
mods.foundry.CastingTable.addRodRecipe(<immersiveengineering:material:2>, <liquid:steel> * 72);
mods.foundry.CastingTable.addRodRecipe(<immersiveengineering:material:2>, <liquid:liquidsteel> * 72);
mods.foundry.Melting.addRecipe(<liquid:liquidsteel> * 72, <immersiveengineering:material:2>, 1800);
mods.foundry.Casting.addRecipe(<immersiveengineering:material:3>, <liquid:aluminum> * 72, <foundry:mold:3>);
mods.foundry.Casting.addRecipe(<immersiveengineering:material:3>, <liquid:liquidaluminium> * 72, <foundry:mold:3>);
mods.foundry.CastingTable.addRodRecipe(<immersiveengineering:material:3>, <liquid:aluminum> * 72);
mods.foundry.CastingTable.addRodRecipe(<immersiveengineering:material:3>, <liquid:liquidaluminium> * 72);
mods.foundry.Melting.addRecipe(<liquid:liquidaluminium> * 72, <immersiveengineering:material:3>, 900);

// Metal Caster
recipes.remove(<foundry:machine:1>);
recipes.addShaped(<foundry:machine:1>, [[<ore:plateIron>, <ore:chest>, <ore:plateIron>], [<earthworks:block_adobe>, <foundry:componentblock>, <earthworks:block_adobe>], [<ore:plateIron>, <ore:chest>, <ore:plateIron>]]);

// Standard Refractory Casing
recipes.remove(<foundry:componentblock>);
recipes.addShaped(<foundry:componentblock>, [[<ore:plateIron>, <earthworks:block_adobe>, <ore:plateIron>], [<earthworks:block_adobe>, null, <earthworks:block_adobe>], [<ore:plateIron>, <earthworks:block_adobe>, <ore:plateIron>]]);

// Getting Molds back
recipes.addShapeless(<foundry:mold:4>, [<foundry:castingtable:3>]);
recipes.addShapeless(<foundry:mold:3>, [<foundry:castingtable:2>]);
recipes.addShapeless(<foundry:mold:1>, [<foundry:castingtable:1>]);
recipes.addShapeless(<foundry:mold>, [<foundry:castingtable>]);

// Remove Machines
mods.jei.JEI.removeAndHide(<foundry:cokeoven>);
mods.jei.JEI.removeAndHide(<foundry:machine:9>);
mods.jei.JEI.removeAndHide(<foundry:alloyfurnace>);

// Heating Coil
recipes.remove(<foundry:component>);
recipes.addShaped(<foundry:component> * 4, [[null, <minecraft:redstone>, null], [<minecraft:redstone>, <immersiveengineering:metal_decoration0:1>, <minecraft:redstone>], [null, <minecraft:redstone>, null]]);

// Portal Stuff
mods.foundry.Infuser.addRecipe(<liquid:poison> * 1000, <liquid:mist_acid> * 1000, <mist:sponge_slime>, 8000);
mods.foundry.AlloyMixer.addRecipe(<liquid:knightslime> * 72, [<liquid:if.pink_slime> * 50, <liquid:poison> * 125, <liquid:stone> * 144, <liquid:liquidsignalum> * 72]);
mods.foundry.Casting.addRecipe(<tconstruct:metal:3>, <liquid:knightslime> * 1296, <foundry:mold:4>);
mods.foundry.CastingTable.addBlockRecipe(<tconstruct:metal:3>, <liquid:knightslime> * 1296);
mods.foundry.Casting.addRecipe(<tconstruct:ingots:3>, <liquid:knightslime> * 144, <foundry:mold>);
mods.foundry.CastingTable.addIngotRecipe(<tconstruct:ingots:3>, <liquid:knightslime> * 144);
mods.tconstruct.Alloy.removeRecipe(<liquid:knightslime>);
<foundry:machine:3>.displayName = "液体灌注机";
#game.setLocalization(tile.foundry.machine.infuser.name,"Liquid Infuser");