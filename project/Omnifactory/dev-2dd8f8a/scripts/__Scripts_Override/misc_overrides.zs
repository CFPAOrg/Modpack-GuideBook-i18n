#priority -943943

import crafttweaker.mods.IMod;
import scripts.Nuclearcraft.purgeFluidFromJEI;

val ofsf = "omnifactory.";

for item in loadedMods["appliedenergistics2"].items {
    if(item.displayName has game.localize(ofsf~"misc.ae2facade")) {
        if(item.displayName has game.localize(ofsf~"omnium_block")) {
            item.addTooltip(format.darkAqua(game.localize(ofsf~"misc.ae2facade.tooltip")));
        }
        else {
            mods.jei.JEI.hide(item); 
        }
    }
}

<modularmachinery:blockcontroller>.addTooltip(format.red(game.localize(ofsf~"mm_controller.tooltip1")));
<modularmachinery:blockcontroller>.addTooltip(format.red(game.localize(ofsf~"mm_controller.tooltip2")));

<extendedcrafting:trimmed:5>.addTooltip(game.localize(ofsf~"blacksteel_block"));
<extendedcrafting:trimmed:5>.addTooltip(
	format.gray(
		format.italic(ofsf~"blacksteel_block.tooltip")));

<gregtech:meta_item_1:15154>.addTooltip(game.localize(ofsf~"red_lens"));
<gregtech:meta_item_1:15113>.addTooltip(game.localize(ofsf~"green_lens"));
<gregtech:meta_item_1:15092>.addTooltip(game.localize(ofsf~"blue_lens"));
<gregtech:meta_item_1:15214>.addTooltip(game.localize(ofsf~"draconium_lens"));

for liquid in game.liquids {
    if(liquid.displayName has game.localize(ofsf~"ncfluid.1") |
       liquid.displayName has game.localize(ofsf~"ncfluid.2") |
       liquid.displayName has game.localize(ofsf~"ncfluid.3") |
       liquid.displayName has game.localize(ofsf~"ncfluid.4") |
       liquid.displayName has game.localize(ofsf~"ncfluid.5") ) {
           purgeFluidFromJEI(liquid.name);
           mods.jei.JEI.hide(liquid*1000);
    }
}
