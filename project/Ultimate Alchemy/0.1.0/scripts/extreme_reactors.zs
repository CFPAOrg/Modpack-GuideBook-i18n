import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;

import mods.tconstruct.Alloy;
import mods.tconstruct.Casting;
import mods.tconstruct.Melting;

Casting.addBasinRecipe(<bigreactors:blockmetals>, null, <liquid:yellorium>, 144 * 9);
Casting.addTableRecipe(<bigreactors:ingotmetals>, <tconstruct:cast_custom>, <liquid:yellorium>, 144, false);

Alloy.addRecipe(<liquid:yellorium> * 2, [<liquid:lava> * 1, <liquid:glowstone> * 1]);

scripts.globals.replaceShaped("bigreactors:reactorcontroller", <bigreactors:reactorcontroller>, [[<bigreactors:reactorcasing>, null, <bigreactors:reactorcasing>], [<ore:ingotUranium>, (<minecraft:diamond:*> | <extrautils2:suncrystal>), <ore:ingotUranium>], [<bigreactors:reactorcasing>, <minecraft:redstone:*>, <bigreactors:reactorcasing>]]);