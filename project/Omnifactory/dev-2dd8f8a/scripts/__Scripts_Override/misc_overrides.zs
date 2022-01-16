#priority -943943

import crafttweaker.mods.IMod;
import scripts.Nuclearcraft.purgeFluidFromJEI;

val ofsf = "omnifactory.";

for item in loadedMods["appliedenergistics2"].items {
    if(item.displayName has game.localize(ofsf~"ae2facade")) {
        if(item.displayName has game.localize(ofsf~"omnium_block")) {
            item.addTooltip(format.darkAqua(game.localize(ofsf~"ae2facade.tooltip")));
        }
        else {
            mods.jei.JEI.hide(item);
        }
    }
}

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
