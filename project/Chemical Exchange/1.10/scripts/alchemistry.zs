import mods.alchemistry.Dissolver;
import mods.alchemistry.Combiner;
import mods.alchemistry.Util;
import scripts._func.disable;

<alchemistry:element:4>.addTooltip("从碎石机中获取铍粉");

recipes.remove(<alchemistry:fission_controller>);
recipes.addShaped(<alchemistry:fission_controller>,
[[<ore:ingotDubnium>,<ore:ingotFermium>,<ore:ingotNobelium>],
 [<minecraft:glass>,<projectex:matter:11>,<ore:ingotNobelium>],
 [<ore:ingotRutherfordium>,<ore:ingotSeaborgium>,<ore:ingotBohrium>]]);

recipes.remove(<alchemistry:fusion_controller>);
recipes.addShaped(<alchemistry:fusion_controller>,
[[<ore:ingotHassium>,<ore:ingotMeitnerium>,<ore:ingotOganesson>],
 [<minecraft:glass>,<projectex:matter:11>,<ore:ingotTennessine>],
 [<ore:ingotDarmstadtium>,<enderio:item_alloy_endergy_ingot:3>,<ore:ingotTitanium>]]);

val tungsten = Util.get("tungsten");
val siliconDioxide = Util.get("silicon_dioxide");
val magnesiumOxide = Util.get("magnesium_oxide");
val osmium = Util.get("osmium");
val chromium = Util.get("chromium");

mods.alchemistry.Liquifier.addRecipe(<liquid:lava>*125,<alchemistry:element:15>);

recipes.remove(<alchemistry:chemical_combiner>);
recipes.remove(<alchemistry:chemical_dissolver>);

recipes.replaceAllOccurences(<minecraft:stone>,<ore:ingotTungsten>,<alchemistry:evaporator>);

Combiner.setAsStaged(<minecraft:cactus>,"cactus");// output, String stage);

Combiner.setAsStaged(<minecraft:stone:1>,"aluminum");
Combiner.setAsStaged(<minecraft:stone:2>,"aluminum");
Combiner.setAsStaged(<minecraft:stone:3>,"aluminum");
Combiner.setAsStaged(<minecraft:stone:4>,"aluminum");
Combiner.setAsStaged(<minecraft:stone:5>,"aluminum");
Combiner.setAsStaged(<minecraft:stone:6>,"aluminum");

Combiner.setAsStaged(<minecraft:grass>,"sapling");
Combiner.setAsStaged(<minecraft:carrot>,"sapling");
Combiner.setAsStaged(<minecraft:reeds>,"sapling");
Combiner.setAsStaged(<minecraft:apple>,"sapling");
Combiner.setAsStaged(<minecraft:log>,"sapling");
Combiner.setAsStaged(<minecraft:log:1>,"sapling");
Combiner.setAsStaged(<minecraft:log:2>,"sapling");
Combiner.setAsStaged(<minecraft:log:3>,"sapling");
Combiner.setAsStaged(<minecraft:log2>,"sapling");
Combiner.setAsStaged(<minecraft:log2:1>,"sapling");


Combiner.removeRecipe(<minecraft:gunpowder>);
Combiner.removeRecipe(<minecraft:rotten_flesh>);
Combiner.removeRecipe(<minecraft:bone>);

Dissolver.removeRecipe(<minecraft:stone:5>);
Dissolver.addRecipe(<minecraft:stone:5>, true, 1, 
[[4.0, <alchemistry:compound:3>], 
[3.0, <alchemistry:element:26>], 
[4.0, <alchemistry:compound:5>], 
[10.0, <alchemistry:compound:1>], 
[4.0, <alchemistry:element:20>],
[2.0, <alchemistry:element:5>],
[2.0, <alchemistry:element:47>]]);

Dissolver.removeRecipe(<minecraft:stone:6>);
Dissolver.addRecipe(<minecraft:stone:6>, true, 1, 
[[4.0, <alchemistry:compound:3>], 
[3.0, <alchemistry:element:26>], 
[4.0, <alchemistry:compound:5>], 
[10.0, <alchemistry:compound:1>], 
[4.0, <alchemistry:element:20>],
[2.0, <alchemistry:element:5>],
[2.0, <alchemistry:element:47>]]);



Dissolver.removeRecipe(<minecraft:cobblestone:0>);
Dissolver.addRecipe(<minecraft:cobblestone:0>, true, 1, 
[[700.0, null], 
[4.0, <alchemistry:element:26>], 
[1.5, <alchemistry:element:79>], 
[10.0, <alchemistry:compound:1>], 
[1.0, <alchemistry:element:66>], 
[1.5, <alchemistry:element:40>], 
[1.0, <alchemistry:element:28>], 
[1.0, <alchemistry:element:31>], 
[1.0, <alchemistry:element:74>]]);

Dissolver.removeRecipe(<minecraft:stone:0>);
Dissolver.addRecipe(<minecraft:stone:0>, true, 1, 
[[20.0, null], 
[4.0, <alchemistry:element:26>], 
[1.5, <alchemistry:element:79>], 
[20.0, <alchemistry:compound:1>], 
[0.5, <alchemistry:element:66>], 
[1.25, <alchemistry:element:40>], 
[1.0, <alchemistry:element:74>], 
[1.0, <alchemistry:element:28>], 
[1.0, <alchemistry:element:31>]]);

Dissolver.addRecipe(<tp:plump_peach>, true, 1, 
[[1.0, <alchemistry:compound:0>, <alchemistry:compound:11>]]);


Dissolver.addRecipe(<tp:plump_pear>, true, 1, 
[[1.0, <alchemistry:compound:0>, <alchemistry:compound:11>]]);

val uranium = mods.alchemistry.Util.get("uranium");
Dissolver.addRecipe(<nuclearcraft:uranium>, true, 1, 
[[1.0, uranium*2]]);
Dissolver.addRecipe(<nuclearcraft:uranium:4>, true, 1, 
[[1.0, uranium*2]]);
Dissolver.addRecipe(<nuclearcraft:uranium:8>, true, 1, 
[[1.0, uranium*2]]);

val plutonium = mods.alchemistry.Util.get("plutonium");
Dissolver.addRecipe(<nuclearcraft:plutonium>, true, 1, 
[[1.0, plutonium*2]]);
Dissolver.addRecipe(<nuclearcraft:plutonium:4>, true, 1, 
[[1.0, plutonium*2]]);
Dissolver.addRecipe(<nuclearcraft:plutonium:8>, true, 1, 
[[1.0, plutonium*2]]);
Dissolver.addRecipe(<nuclearcraft:plutonium:12>, true, 1, 
[[1.0, plutonium*2]]);


val curium = mods.alchemistry.Util.get("curium");
Dissolver.addRecipe(<nuclearcraft:curium>, true, 1, 
[[1.0, curium*2]]);
Dissolver.addRecipe(<nuclearcraft:curium:4>, true, 1, 
[[1.0, curium*2]]);
Dissolver.addRecipe(<nuclearcraft:curium:8>, true, 1, 
[[1.0, curium*2]]);
Dissolver.addRecipe(<nuclearcraft:curium:12>, true, 1, 
[[1.0, curium*2]]);

val californium = mods.alchemistry.Util.get("californium");
Dissolver.addRecipe(<nuclearcraft:californium>, true, 1, 
[[1.0, californium*2]]);
Dissolver.addRecipe(<nuclearcraft:californium:4>, true, 1, 
[[1.0, californium*2]]);
Dissolver.addRecipe(<nuclearcraft:californium:8>, true, 1, 
[[1.0, californium*2]]);
Dissolver.addRecipe(<nuclearcraft:californium:12>, true, 1, 
[[1.0, californium*2]]);




val americium = mods.alchemistry.Util.get("americium");
Dissolver.addRecipe(<nuclearcraft:americium>, true, 1, 
[[1.0, americium*2]]);
Dissolver.addRecipe(<nuclearcraft:americium:4>, true, 1, 
[[1.0, americium*2]]);
Dissolver.addRecipe(<nuclearcraft:americium:8>, true, 1, 
[[1.0, americium*2]]);

val neptunium = mods.alchemistry.Util.get("neptunium");
Dissolver.addRecipe(<nuclearcraft:neptunium>, true, 1, 
[[1.0, neptunium*2]]);
Dissolver.addRecipe(<nuclearcraft:neptunium:4>, true, 1, 
[[1.0, neptunium*2]]);

val berkelium = mods.alchemistry.Util.get("berkelium");
Dissolver.addRecipe(<nuclearcraft:berkelium>, true, 1, 
[[1.0, berkelium*2]]);
Dissolver.addRecipe(<nuclearcraft:berkelium:4>, true, 1, 
[[1.0, berkelium*2]]);


val hydroxylapatite = Util.get("hydroxylapatite");
val ruthenium = Util.get("ruthenium");
val palladium = Util.get("palladium");
val rhodium = Util.get("rhodium");
val mercury = Util.get("mercury");
val einstein = Util.get("einsteinium");
val fermium = Util.get("fermium");
val nobelium = Util.get("nobelium");
val lawrencium = Util.get("lawrencium");
val rutherfordium = Util.get("rutherfordium");
val dubnium = Util.get("dubnium");
val seaborgium = Util.get("seaborgium");
val bohrium = Util.get("bohrium");//')
val hassium = Util.get("hassium");
val meitnerium = Util.get("meitnerium");
val oganesson = Util.get("oganesson");
val darmstadtium = Util.get("darmstadtium");
val tennessine = Util.get("tennessine");
val livermorium = Util.get("livermorium");
val moscovium = Util.get("moscovium");
val carbon = Util.get("carbon");

val argon = Util.get("argon");
val scandium = Util.get("scandium");
val krypton = Util.get("krypton");
val rubidium = Util.get("rubidium");
val yttrium = Util.get("yttrium");
val niobium = Util.get("niobium");
val molybdenum = Util.get("molybdenum");

val tellurium = Util.get("tellurium");
val xenon = Util.get("xenon");
val cesium = Util.get("cesium");//')
val lanthanum = Util.get("lanthanum");
val cerium = Util.get("cerium");//')

Dissolver.addRecipe(<minecraft:skull>,true,1,[[1.0,hydroxylapatite*4,ruthenium*8]]);
Dissolver.addRecipe(<minecraft:skull:2>,true,1,[[1.0,hydroxylapatite*4,palladium*8]]);
Dissolver.addRecipe(<minecraft:skull:4>,true,1,[[1.0,hydroxylapatite*4,rhodium*8]]);

Dissolver.addRecipe(<deepmoblearning:pristine_matter_skeleton>,true,1,[[1.0,mercury*8,siliconDioxide*8,einstein*2]]);
Dissolver.addRecipe(<deepmoblearning:pristine_matter_zombie>,true,1,[[1.0,mercury*8,siliconDioxide*8,fermium*2]]);
Dissolver.addRecipe(<deepmoblearning:pristine_matter_creeper>,true,1,[[1.0,mercury*8,siliconDioxide*8,nobelium*2]]);
Dissolver.addRecipe(<deepmoblearning:pristine_matter_spider>,true,1,[[1.0,mercury*8,siliconDioxide*8,lawrencium*2]]);
Dissolver.addRecipe(<deepmoblearning:pristine_matter_slime>,true,1,[[1.0,mercury*8,siliconDioxide*8,rutherfordium*2]]);
Dissolver.addRecipe(<deepmoblearning:pristine_matter_witch>,true,1,[[1.0,mercury*8,siliconDioxide*8,dubnium*2]]);
Dissolver.addRecipe(<deepmoblearning:pristine_matter_blaze>,true,1,[[1.0,mercury*8,siliconDioxide*8,seaborgium*2]]);
Dissolver.addRecipe(<deepmoblearning:pristine_matter_ghast>,true,1,[[1.0,mercury*8,siliconDioxide*8,bohrium*2]]);
Dissolver.addRecipe(<deepmoblearning:pristine_matter_wither_skeleton>,true,1,[[1.0,mercury*8,siliconDioxide*8,hassium*2]]);
Dissolver.addRecipe(<deepmoblearning:pristine_matter_enderman>,true,1,[[1.0,mercury*8,siliconDioxide*8,meitnerium*2]]);
Dissolver.addRecipe(<deepmoblearning:pristine_matter_shulker>,true,1,[[1.0,mercury*8,siliconDioxide*8,darmstadtium*2]]);
Dissolver.addRecipe(<deepmoblearning:pristine_matter_wither>,true,1,[[1.0,mercury*8,siliconDioxide*8,oganesson*2]]);
Dissolver.addRecipe(<deepmoblearning:pristine_matter_dragon>,true,1,[[1.0,mercury*8,siliconDioxide*8,tennessine*2]]);
Dissolver.addRecipe(<projecte:item.pe_matter>,true,1,[[1.0,carbon*256,livermorium*2]]);
Dissolver.addRecipe(<projecte:item.pe_matter:1>,true,1,[[1.0,carbon*64,moscovium*2]]);
Dissolver.addRecipe(<projectex:matter>,true,1,[[1.0,carbon*64,argon*2]]);
Dissolver.addRecipe(<projectex:matter:1>,true,1,[[1.0,carbon*64,scandium*2]]);
Dissolver.addRecipe(<projectex:matter:2>,true,1,[[1.0,carbon*64,krypton*2]]);
Dissolver.addRecipe(<projectex:matter:3>,true,1,[[1.0,carbon*64,rubidium*2]]);
Dissolver.addRecipe(<projectex:matter:4>,true,1,[[1.0,carbon*64,yttrium*2]]);
Dissolver.addRecipe(<projectex:matter:5>,true,1,[[1.0,carbon*64,niobium*2]]);
Dissolver.addRecipe(<projectex:matter:6>,true,1,[[1.0,carbon*64,molybdenum*2]]);
Dissolver.addRecipe(<projectex:matter:7>,true,1,[[1.0,carbon*64,tellurium*2]]);
Dissolver.addRecipe(<projectex:matter:8>,true,1,[[1.0,carbon*64,xenon*2]]);
Dissolver.addRecipe(<projectex:matter:9>,true,1,[[1.0,carbon*64,cesium*2]]);
Dissolver.addRecipe(<projectex:matter:10>,true,1,[[1.0,carbon*64,lanthanum*2]]);
Dissolver.addRecipe(<projectex:matter:11>,true,1,[[1.0,carbon*64,cerium*2]]);


//mods.alchemistry.Combiner.addRecipe(IItemStack output, IItemstack[] input);
Combiner.addRecipe(<appliedenergistics2:sky_stone_block>,
[tungsten*1,siliconDioxide*4,magnesiumOxide*4]);

Combiner.addRecipe(<appliedenergistics2:material>,
[osmium*2,siliconDioxide*4,chromium*2]);

val germanium = Util.get("germanium");//')
val zincOxide = Util.get("zinc_oxide");
val sulfur = Util.get("sulfur");
Combiner.addRecipe(<minecraft:netherrack>*4,
[siliconDioxide*2,zincOxide*2,sulfur]);

Dissolver.removeRecipe(<minecraft:spider_eye:0>);
Dissolver.addRecipe(<minecraft:spider_eye:0>, false, 1, 
[[100.0, <alchemistry:compound:52> * 2 , <alchemistry:compound:9> * 2],
 [1.0,<alchemistry:element:23> ]]);

Dissolver.removeRecipe(<minecraft:grass>);
Dissolver.removeRecipe(<minecraft:dirt>);
Dissolver.removeRecipe(<minecraft:dirt:1>);

Combiner.addRecipe(<minecraft:coal_block>,
[carbon*8,carbon*8,carbon*8,
 carbon*8,carbon*8,carbon*8,
 carbon*8,carbon*8,carbon*8]);

val samarium = Util.get("samarium");
val protein = Util.get("protein");

Dissolver.addRecipe(<tombstone:crafting_ingredient:3>,false,1,
[[10.0,samarium]]);

Dissolver.addRecipe(<minecraft:arrow>,false,1,
[[5.0,protein],
 [5.0,siliconDioxide]]);

val iron = Util.get("iron");
val strontiumCarbonate = Util.get("strontium_carbonate");
val ironOxide = Util.get("iron_oxide");
Combiner.addRecipe(<enderio:item_alloy_ingot:4>,
[iron*16,strontiumCarbonate,ironOxide]);

Dissolver.addRecipe(<morecharcoal:charcoal_chunk>,true,1,
[[100.0,carbon]]);