import mods.tconstruct.Alloy;
import mods.tconstruct.Casting;
import mods.tconstruct.Melting;

Alloy.addRecipe(<liquid:menrilresin> * 2, [<fluid:water> * 1, <fluid:low_energy_redstone> * 1]);

scripts.globals.addFilling(<integrateddynamics:menril_berries>, <minecraft:wheat_seeds>, <liquid:menrilresin>, 10, false);
//Casting.addTableRecipe(<integrateddynamics:crystalized_chorus_chunk>, <minecraft:ender_pearl>, <liquid:menrilresin>, 10, true);

scripts.globals.addFilling(<minecraft:shulker_shell>, <ore:chestWood>, <liquid:liquidchorus>, 500, true);
