#priority -943943

import crafttweaker.mods.IMod;
import scripts.Nuclearcraft.purgeFluidFromJEI;

val ofsf = "omnifactory.";

<extendedcrafting:storage:4>.displayName = game.localize(ofsf~"omnium_block");
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

// FIX: Tooltips, can't be OVERWRITTEN
<modularmachinery:blockcontroller>.addTooltip(format.red(game.localize(ofsf~"mm_controller.tooltip1")));
<modularmachinery:blockcontroller>.addTooltip(format.red(game.localize(ofsf~"mm_controller.tooltip2")));

<extendedcrafting:trimmed:5>.addTooltip(game.localize(ofsf~"blacksteel_block"));
<extendedcrafting:trimmed:5>.addTooltip(format.gray(format.italic(game.localize(ofsf~"blacksteel_block.tooltip"))));

<gregtech:meta_item_1:15154>.addTooltip(game.localize(ofsf~"red_lens"));
<gregtech:meta_item_1:15113>.addTooltip(game.localize(ofsf~"green_lens"));
<gregtech:meta_item_1:15092>.addTooltip(game.localize(ofsf~"blue_lens"));
<gregtech:meta_item_1:15214>.addTooltip(game.localize(ofsf~"draconium_lens"));

<contenttweaker:endstonedust>.addTooltip(format.red(game.localize(ofsf~"obsolete")));
<contenttweaker:endstonedust>.addTooltip(format.red(game.localize(ofsf~"endstonedust.tooltip")));

<contenttweaker:pulsatingwire>.addTooltip(format.red(game.localize(ofsf~"obsolete")));
<contenttweaker:pulsatingwire>.addTooltip(format.red(game.localize(ofsf~"pulsatingwire.tooltip")));

val ttt1 = <actuallyadditions:item_misc:16>;
ttt1.removeTooltip("^(.*)exploration(.*)");
ttt1.removeTooltip("^(.*)purchased(.*)");
ttt1.addTooltip(format.red(game.localize(ofsf~"drillcore.tooltip1")));
ttt1.addTooltip(format.red(game.localize(ofsf~"drillcore.tooltip2")));
