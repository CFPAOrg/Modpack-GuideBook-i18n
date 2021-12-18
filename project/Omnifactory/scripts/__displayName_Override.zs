//覆盖部分被写死在原脚本中的显示名改动，方便通过 lang 进行本地化

#priority -943943

import crafttweaker.item.IItemStack;

val DNMap as string[IItemStack] = {
    <actuallyadditions:block_misc:9> : "aluminium_casing",
    <advancedrocketry:fuelingstation> : "fueling_station",
    <enderio:block_dark_iron_bars> : "dark_steel_bars",
    <armorplus:coal_helmet> : "cp_helmet",
    <armorplus:coal_chestplate> : "cp_chestplate",
    <armorplus:coal_leggings> : "cp_leggings",
    <armorplus:coal_boots> : "cp_boots"
};

for item in DNMap{
    item.displayName = game.localize("omnifactory."~DNMap[item]);
}
