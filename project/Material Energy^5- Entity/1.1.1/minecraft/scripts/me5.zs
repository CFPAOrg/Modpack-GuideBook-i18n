<contenttweaker:raw_silverfish_meat>.addTooltip("尸臭味");
<contenttweaker:cooked_silverfish_meat>.addTooltip("给予急迫I");

<contenttweaker:cooked_spider_leg>.addTooltip("给予速度I");
<contenttweaker:raw_spider_leg>.addTooltip("还在抽搐");

//mods.alchemistry.Evaporator.addRecipe(IItemStack output, ILiquidStack input);
mods.alchemistry.Evaporator.addRecipe(<tconstruct:edible:3>,<liquid:blood>*250);

mods.alchemistry.Dissolver.removeRecipe(<tconstruct:edible:3>);
mods.alchemistry.Dissolver.addRecipe(<tconstruct:edible:3>, false, 5,
[[20, <alchemistry:compound:10>]]);


//mods.alchemistry.Combiner.addRecipe(IItemStack output, IItemstack[] input);
mods.alchemistry.Combiner.addRecipe(<enderio:item_material:20>,
    [<alchemistry:element:8>*64,<alchemistry:element:8>*64,<alchemistry:element:8>*64,
     <alchemistry:element:1>*64, <alchemistry:element:1>*64, <alchemistry:element:1>*64,
     <alchemistry:element:6>*64, <alchemistry:element:6>*64, <alchemistry:element:6>*64]);
mods.alchemistry.Combiner.addRecipe(<minecraft:netherrack>,
    [<alchemistry:compound:1>*1,<alchemistry:element:38>*2]);


//mods.alchemistry.Util.createCompound(int meta, String name, int red, int green, int blue, Object[][] components);




mods.alchemistry.Dissolver.addRecipe(<minecraft:cookie>, false, 1, [[80, <alchemistry:element:29> * 2],[100, <alchemistry:compound:11>]]);
mods.alchemistry.Dissolver.addRecipe(<minecraft:cookie>, false, 1, [[80, <alchemistry:element:29> * 2],[100, <alchemistry:compound:11>]]);
mods.alchemistry.Dissolver.addRecipe(<minecraft:beetroot_seeds>, false, 1, [[20, <alchemistry:compound:17> * 2],[40, <alchemistry:compound:10>]]);
mods.alchemistry.Dissolver.removeRecipe(<thermalfoundation:material:0>);
mods.alchemistry.Dissolver.addRecipe(<thermalfoundation:material:0>, false, 1, [[25, <alchemistry:element:79> * 4],[25, <alchemistry:element:50> * 4],[25, <alchemistry:element:28> * 4],[25, <alchemistry:element:47> * 4]]);

//mods.alchemistry.Combiner.addRecipe(IItemStack output, IItemstack[] input);