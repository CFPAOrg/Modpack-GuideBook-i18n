<jwcrafter:crafter>.addTooltip(format.green("每合成一种物品会消耗80RF。该机器的最大能量容量为1000 RF。"));

<amnesia:memories>.addTooltip(format.green("这些方块可以在地下挖掘到。它们可以在y轴的0-32处找到"));

val crafter = <jwcrafter:crafter>;
val star = <minecraft:nether_star>;

recipes.remove(<jwcrafter:crafter>);

recipes.addShaped("Crafter", crafter,
 [[<amnesia:recipe_cure>,<amnesia:recipe_cure>,<amnesia:recipe_cure>],
  [<amnesia:memories>,<minecraft:crafting_table>,<amnesia:memories>],
  [<amnesia:recipe_reset>,<amnesia:recipe_reset>,<amnesia:recipe_reset>]]);

  <amnesia:amnesia_clock>.addTooltip(format.green("该时钟会显示失忆症发生前还剩下多少时间"));
  <amnesia:recipe_reset>.addTooltip(format.green("该物品会导致失忆症发生"));
  <amnesia:recipe_cure>.addTooltip(format.green("这个物品会将时间延长5分钟，直到失忆症发生"));
  <amnesia:golden_soul_sand>.addTooltip(format.green("完成所有进度的奖励"));

  <craftingamnesia:recipe_lock>.addTooltip(format.green("此物品可用于恢复配方，将它与要恢复配方的物品一同合成时，这个物品将恢复成原本的配方，并且永远不会改变"));

  recipes.addShaped("star", star,
 [[<amnesia:memories_compressed_3>,<amnesia:memories_compressed_3>,<amnesia:memories_compressed_3>],
  [<amnesia:memories_compressed_3>,<amnesia:memories_compressed_3>,<amnesia:memories_compressed_3>],
  [<amnesia:memories_compressed_3>,<amnesia:memories_compressed_3>,<amnesia:memories_compressed_3>]]);

val reset = <amnesia:recipe_reset>;
val cure = <amnesia:recipe_cure>;

  recipes.remove(<amnesia:recipe_reset>);
  recipes.remove(<amnesia:recipe_cure>);

  recipes.addShaped("Reset", reset,
 [[<amnesia:memories>,<amnesia:memories>,<amnesia:memories>],
  [<minecraft:nether_star>,<amnesia:memories>,<minecraft:nether_star>],
  [<amnesia:memories>,<amnesia:memories>,<amnesia:memories>]]);
  recipes.addShaped("Cure", cure,
 [[<amnesia:memories>,<minecraft:nether_star>,<amnesia:memories>],
  [<amnesia:memories>,<amnesia:memories>,<amnesia:memories>],
  [<amnesia:memories>,<minecraft:nether_star>,<amnesia:memories>]]);