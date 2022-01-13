#priority -943943

import crafttweaker.mods.IMod;

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
