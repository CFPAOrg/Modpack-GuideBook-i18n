print("Biomes O Plenty");

// OreDict BOP and Forestry Ash
<ore:dustAsh>.add(<biomesoplenty:ash>);

// Make ash burnable
furnace.setFuel(<ore:dustAsh>, 50);
furnace.setFuel(<biomesoplenty:ash_block>, 200);

// Remove ash to coal recipe
recipes.remove(<minecraft:coal>);
recipes.addShapeless(<minecraft:coal> * 9, [<ore:blockCoal>]);

// Change ash recipes to use OreDict
recipes.remove(<biomesoplenty:ash_block>);
recipes.addShaped("Ex-AshBlock", <biomesoplenty:ash_block>, [[<ore:dustAsh>, <ore:dustAsh>], [<ore:dustAsh>, <ore:dustAsh>]]);

recipes.removeShapeless(<minecraft:dye:8>, [<biomesoplenty:ash>]);
recipes.addShapeless(<minecraft:dye:8> * 2, [<ore:dustAsh>]);

// Remove Water Recipe for Mud
recipes.removeShapeless(<biomesoplenty:mud>);

// Disable Pixied Dust in favour of Botania
mods.jei.JEI.removeAndHide(<biomesoplenty:pixie_dust>);
recipes.remove(<biomesoplenty:ambrosia>);
recipes.addShapeless(<biomesoplenty:ambrosia>, [<botania:manaresource:8>, <minecraft:potion:*>, <biomesoplenty:jar_filled>]);

// Rename Terrestial Artifact
<biomesoplenty:terrestrial_artifact>.displayName = "艾柯索瑞亚工件";