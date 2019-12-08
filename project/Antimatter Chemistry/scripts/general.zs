import crafttweaker.item.IItemStack;
import crafttweaker.item.IItemDefinition;


val white = <minecraft:concrete>;
val orange = <minecraft:concrete:1>;
val magenta = <minecraft:concrete:2>;
val lightBlue = <minecraft:concrete:3>;
val yellow = <minecraft:concrete:4>;
val lime = <minecraft:concrete:5>;
val pink = <minecraft:concrete:6>;
val gray = <minecraft:concrete:7>;
val lightGray = <minecraft:concrete:8>;
val cyan = <minecraft:concrete:9>;
val purple = <minecraft:concrete:10>;
val blue = <minecraft:concrete:11>;
val brown = <minecraft:concrete:12>;
val green = <minecraft:concrete:13>;
val red = <minecraft:concrete:14>;
val black = <minecraft:concrete:15>;


white.displayName = "白色反物质";
orange.displayName = "橙色反物质";
magenta.displayName = "品红色反物质";
lightBlue.displayName = "浅蓝色反物质";
yellow.displayName = "黄色反物质";
lime.displayName = "黄绿色反物质";
pink.displayName = "粉色反物质";
gray.displayName = "灰色反物质";
lightGray.displayName = "亮灰色反物质";
cyan.displayName = "青色反物质";
purple.displayName = "紫色反物质";
blue.displayName = "蓝色反物质";
brown.displayName = "棕色反物质";
green.displayName = "绿色反物质";
red.displayName = "红色反物质";
black.displayName = "黑色反物质";


val carbon = mods.alchemistry.Util.get("carbon");
val copper = mods.alchemistry.Util.get("copper");
val ironOxide = mods.alchemistry.Util.get("iron oxide");
val tungsten = mods.alchemistry.Util.get("tungsten");
val magnesium = mods.alchemistry.Util.get("magnesium");
val gallium = mods.alchemistry.Util.get("gallium");
val niobium = mods.alchemistry.Util.get("niobium");
val sulfur = mods.alchemistry.Util.get("sulfur");
val neon = mods.alchemistry.Util.get("neon");
val argon = mods.alchemistry.Util.get("argon");
val iodine = mods.alchemistry.Util.get("iodine");
val barium = mods.alchemistry.Util.get("barium");
val neodymium = mods.alchemistry.Util.get("neodymium");
val rubidium = mods.alchemistry.Util.get("rubidium");
val iron = mods.alchemistry.Util.get("iron");

recipes.addShaped(lightGray*8,
[[white,white,white],
 [white,iron,white],
 [white,white,white]]);

recipes.addShaped(orange*8,
[[white,white,white],
 [white,copper,white],
 [white,white,white]]);

recipes.addShaped(red*8,
[[white,white,white],
 [white,ironOxide,white],
 [white,white,white]]);

recipes.addShaped(gray*8,
[[white,white,white],
 [white,tungsten,white],
 [white,white,white]]);

recipes.addShaped(pink*8,
[[white,white,white],
 [white,magnesium,white],
 [white,white,white]]);

recipes.addShaped(black*8,
[[white,white,white],
 [white,carbon,white],
 [white,white,white]]);

 recipes.addShaped(green*8,
[[white,white,white],
 [white,rubidium,white],
 [white,white,white]]);

 recipes.addShaped(brown*8,
[[white,white,white],
 [white,neodymium,white],
 [white,white,white]]);

recipes.addShaped(blue*8,
[[white,white,white],
 [white,argon,white],
 [white,white,white]]);

recipes.addShaped(purple*8,
[[white,white,white],
 [white,iodine,white],
 [white,white,white]]);

recipes.addShaped(cyan*8,
[[white,white,white],
 [white,barium,white],
 [white,white,white]]);

recipes.addShaped(lime*8,
[[white,white,white],
 [white,neon,white],
 [white,white,white]]);

recipes.addShaped(yellow*8,
[[white,white,white],
 [white,sulfur,white],
 [white,white,white]]);

recipes.addShaped(lightBlue*8,
[[white,white,white],
 [white,niobium,white],
 [white,white,white]]);

recipes.addShaped(magenta*8,
[[white,white,white],
 [white,gallium,white],
 [white,white,white]]);



val blazePowder = <minecraft:blaze_powder>;
recipes.addShapeless(<minecraft:blaze_rod>,
[blazePowder,blazePowder,blazePowder,blazePowder,blazePowder]);

val pyroDust = <thermalfoundation:material:1024>;
recipes.addShaped(<minecraft:spawn_egg>.withTag({EntityTag: {id: "minecraft:creeper"}}),
[[<minecraft:gunpowder>,<minecraft:gunpowder>,<minecraft:gunpowder>],
 [<minecraft:gunpowder>, pyroDust,<minecraft:gunpowder>],
 [<minecraft:gunpowder>,<minecraft:egg>,<minecraft:gunpowder>]]);

recipes.addShaped(<minecraft:spawn_egg>.withTag({EntityTag: {id: "minecraft:skeleton"}}),
[[<minecraft:bone>,<minecraft:bone>,<minecraft:bone>],
 [<minecraft:bone>, pyroDust, <minecraft:bone>],
 [<minecraft:bone>,<minecraft:egg>,<minecraft:bone>]]);

recipes.addShaped(<minecraft:spawn_egg>.withTag({EntityTag: {id: "minecraft:zombie"}}),
[[<minecraft:rotten_flesh>,<minecraft:rotten_flesh>,<minecraft:rotten_flesh>],
 [<minecraft:rotten_flesh>, pyroDust, <minecraft:rotten_flesh>],
 [<minecraft:rotten_flesh>,<minecraft:egg>,<minecraft:rotten_flesh>]]);

recipes.addShaped(<minecraft:spawn_egg>.withTag({EntityTag: {id: "minecraft:shulker"}}),
[[<minecraft:end_stone>,<minecraft:end_stone>,<minecraft:end_stone>],
 [<forbidden_arcanus:chorus_pearl>, pyroDust, <forbidden_arcanus:chorus_pearl>],
 [<minecraft:end_stone>,<minecraft:egg>,<minecraft:end_stone>]]);

recipes.addShaped(<minecraft:spawn_egg>.withTag({EntityTag: {id: "tconstruct:blueslime"}}),
[[<tp:colored_dust:10>,<minecraft:slime>,<tp:colored_dust:10>],
 [<minecraft:slime>, pyroDust, <minecraft:slime>],
 [<tp:colored_dust:10>,<minecraft:egg>,<tp:colored_dust:10>]]);

recipes.remove(<minecraft:nether_star>);
recipes.addShapeless(<minecraft:nether_star>*9, [<tp:netherstar_block>]);

recipes.addShapeless(<ftbquests:book>,[<minecraft:reeds>,<minecraft:stone>]);

for i in 0 to 16 {
	scripts._func.disable(<minecraft:concrete_powder>.definition.makeStack(i));
}

val pulverizedCharcoal = <thermalfoundation:material:769>;
<ore:dyeBlack>.add(pulverizedCharcoal);

recipes.addShapeless(<minecraft:clay_ball>*4,[<minecraft:clay>]);

mods.jei.JEI.removeAndHide(<appliedenergistics2:material:5>);
mods.jei.JEI.removeAndHide(<refinedstorage:silicon>);

furnace.remove(<refinedstorage:silicon>);
furnace.remove(<appliedenergistics2:material:5>);

furnace.addRecipe(<nuclearcraft:gem:6>,<minecraft:quartz>);
furnace.addRecipe(<nuclearcraft:gem:6>,<ore:dustQuartz>);
furnace.addRecipe(<nuclearcraft:gem:6>,<ore:dustCertusQuartz>);

recipes.remove(<minecraft:end_rod>);
recipes.addShaped(<minecraft:end_rod>,
[[<minecraft:blaze_rod>],
 [<minecraft:chorus_fruit_popped>],
 [<ore:ingotAmericium>]]);

val greenSlime = <minecraft:slime_ball>;
val blueSlime = <tconstruct:edible:1>;
val purpleSlime = <tconstruct:edible:2>;
val redSlime = <tconstruct:edible:3>;
val orangeSlime = <tconstruct:edible:4>;

recipes.remove(<minecraft:slime>);
recipes.addShaped(<minecraft:slime>,
[[greenSlime,greenSlime,greenSlime],
 [greenSlime,greenSlime,greenSlime],
 [greenSlime,greenSlime,greenSlime]]);

recipes.addShaped(<minecraft:slime>,
[[blueSlime,blueSlime,blueSlime],
 [blueSlime,blueSlime,blueSlime],
 [blueSlime,blueSlime,blueSlime]]);

recipes.addShaped(<minecraft:slime>,
[[purpleSlime,purpleSlime,purpleSlime],
 [purpleSlime,purpleSlime,purpleSlime],
 [purpleSlime,purpleSlime,purpleSlime]]);

recipes.addShaped(<minecraft:slime>,
[[redSlime,redSlime,redSlime],
 [redSlime,redSlime,redSlime],
 [redSlime,redSlime,redSlime]]);

recipes.addShaped(<minecraft:slime>,
[[orangeSlime,orangeSlime,orangeSlime],
 [orangeSlime,orangeSlime,orangeSlime],
 [orangeSlime,orangeSlime,orangeSlime]]);

recipes.addShaped(<minecraft:elytra>,
[[null,<openblocks:hang_glider>,null],
[<ore:ingotAluminum>,<minecraft:nether_star>,<ore:ingotAluminum>],
[<ore:ingotAluminum>,null,<ore:ingotAluminum>]]);