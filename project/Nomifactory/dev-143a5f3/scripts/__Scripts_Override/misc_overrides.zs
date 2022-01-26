#priority -943943

import crafttweaker.mods.IMod;
import scripts.Nuclearcraft.purgeFluidFromJEI;

val ofsf = "nomifactory.";

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

<gregtech:meta_item_2:32494>.removeTooltip("量子计算机诞生了！");
<gregtech:meta_item_2:32447>.removeTooltip("一个不错的电路板基板");
<gregtech:meta_item_2:32447>.removeTooltip("一块优质基板");
<gregtech:meta_item_2:32492>.removeTooltip("比以往任何时候都小");
<gregtech:meta_item_2:32487>.removeTooltip("一块基础的电路");
<gregtech:meta_item_2:32498>.removeTooltip("你感觉脊背发凉直冒冷汗，好像它正盯着你看似的。");
<gregtech:meta_item_2:32499>.removeTooltip("可以运行 Minecraft");
