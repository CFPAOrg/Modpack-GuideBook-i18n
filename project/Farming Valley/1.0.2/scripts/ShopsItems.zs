// --- Created by Kehaan ---
// recipes.remove(x);
// x.addTooltip(format.green("This item can be bought at the x"));
// mods.harvestfestival.Shops.addPurchasable("harvestfestival:x", x, y);


// --- Guidebooks ---
mods.harvestfestival.Shops.addPurchasableToBuilder(<enchiridion:book>.withTag({identifier: "Guide_On_How_To_Summon_Harvest_Goddess"}), 0, 0, 10);
mods.harvestfestival.Shops.addPurchasableToBuilder(<checklist:task_book>, 0, 0, 10);
<checklist:task_book>.addTooltip(format.green("可以在Yulif和Cloe处购买"));
<enchiridion:book>.withTag({identifier: "Guide_On_How_To_Summon_Harvest_Goddess"}).addTooltip(format.green("可以在Yulif和Cloe处购买"));

// --- ArchitectureCraft ---
recipes.remove(<architecturecraft:hammer>);
recipes.remove(<architecturecraft:sawbench>);
recipes.remove(<architecturecraft:chisel>);

mods.harvestfestival.Shops.addPurchasableToBuilder(<architecturecraft:sawbench>, 0, 0, 10000);
mods.harvestfestival.Shops.addPurchasableToBuilder(<architecturecraft:chisel>, 0, 0, 1500);
mods.harvestfestival.Shops.addPurchasableToBuilder(<architecturecraft:hammer>, 0, 0, 1500);

<architecturecraft:hammer>.addTooltip(format.green("可以在Yulif处购买"));
<architecturecraft:sawbench>.addTooltip(format.green("可以在Yulif处购买"));
<architecturecraft:chisel>.addTooltip(format.green("可以在Yulif处购买"));

// --- Coins ---
mods.harvestfestival.Shops.addPurchasableToBuilder(<coins:coin>, 0, 0, 10);
mods.harvestfestival.Shops.addPurchasableToBuilder(<coins:coin:1>, 0, 0, 100);
mods.harvestfestival.Shops.addPurchasableToBuilder(<coins:coin:2>, 0, 0, 1000);
mods.harvestfestival.Shops.addPurchasableToBuilder(<coins:coin:3>, 0, 0, 10000);
mods.harvestfestival.Shops.addPurchasableToBuilder(<coins:coin:4>, 0, 0, 1000000);

<coins:coin>.addTooltip(format.green("你可以等价出售/购买此物品，非常便于服务器中的交易。"));
<coins:coin:1>.addTooltip(format.green("你可以等价出售/购买此物品，非常便于服务器中的交易。"));
<coins:coin:2>.addTooltip(format.green("你可以等价出售/购买此物品，非常便于服务器中的交易。"));
<coins:coin:3>.addTooltip(format.green("你可以等价出售/购买此物品，非常便于服务器中的交易。"));
<coins:coin:4>.addTooltip(format.green("你可以等价出售/购买此物品，非常便于服务器中的交易。"));
<coins:coin>.addTooltip(format.green("可以在Yulif处购买"));
<coins:coin:1>.addTooltip(format.green("可以在Yulif处购买"));
<coins:coin:2>.addTooltip(format.green("可以在Yulif处购买"));
<coins:coin:3>.addTooltip(format.green("可以在Yulif处购买"));
<coins:coin:4>.addTooltip(format.green("可以在Yulif处购买"));

// --- HFReader ---
recipes.remove(<harvestreader:cropreader>);
mods.harvestfestival.Shops.addPurchasable("harvestfestival:general", <harvestreader:cropreader>, 1000);
<harvestreader:cropreader>.addTooltip(format.green("可以在Jenni处购买"));
<harvestreader:cropreader>.addTooltip(format.green("使用它右键作物来获取信息"));

// --- Decocraft ---
recipes.remove(<props:props:508>);
recipes.remove(<props:clay>);
recipes.remove(<props:clay:1>);
recipes.remove(<props:clay:2>);

mods.harvestfestival.Shops.addPurchasableToBuilder(<props:props:508>, 0, 0, 5000);
mods.harvestfestival.Shops.addPurchasableToBuilder(<props:clay>, 0, 0, 10);
mods.harvestfestival.Shops.addPurchasableToBuilder(<props:clay:1>, 0, 0, 10);
mods.harvestfestival.Shops.addPurchasableToBuilder(<props:clay:2>, 0, 0, 10);

<props:props:508>.addTooltip(format.green("可以在Yulif处购买"));
<props:clay>.addTooltip(format.green("可以在Yulif处购买"));
<props:clay:1>.addTooltip(format.green("可以在Yulif处购买"));
<props:clay:2>.addTooltip(format.green("可以在Yulif处购买"));

// --- Immersive Engineering ---
recipes.remove(<immersiveengineering:material:8>);
recipes.remove(<immersiveengineering:connector>);
recipes.remove(<immersiveengineering:connector:2>);
recipes.remove(<immersiveengineering:connector:4>);
recipes.remove(<immersiveengineering:wirecoil>);
recipes.remove(<immersiveengineering:wirecoil:1>);
recipes.remove(<immersiveengineering:wirecoil:2>);
recipes.remove(<immersiveengineering:drillhead:1>);
recipes.remove(<immersiveengineering:metal:3>);
recipes.remove(<immersiveengineering:metal:2>);
recipes.remove(<immersiveengineering:metal>);
recipes.remove(<immersiveengineering:metal:1>);
recipes.remove(<immersiveengineering:metal:5>);
recipes.remove(<immersiveengineering:metal:4>);
recipes.remove(<immersiveengineering:metalDecoration0>);
recipes.remove(<immersiveengineering:metalDecoration0:1>);
recipes.remove(<immersiveengineering:metalDecoration0:2>);
recipes.remove(<immersiveengineering:woodenDevice0:2>);
recipes.remove(<immersiveengineering:tool:1>);
recipes.remove(<immersiveengineering:tool:2>);
recipes.remove(<immersiveengineering:stoneDecoration:1>);
recipes.remove(<immersiveengineering:metalDecoration0:3>);

<immersiveengineering:material:8>.addTooltip(format.green("这个物品可以在杂货铺购买"));
<immersiveengineering:connector>.addTooltip(format.green("这个物品可以在杂货铺购买"));
<immersiveengineering:connector:2>.addTooltip(format.green("这个物品可以在杂货铺购买"));
<immersiveengineering:connector:4>.addTooltip(format.green("这个物品可以在杂货铺购买"));
<immersiveengineering:wirecoil>.addTooltip(format.green("这个物品可以在杂货铺购买"));
<immersiveengineering:wirecoil:1>.addTooltip(format.green("这个物品可以在杂货铺购买"));
<immersiveengineering:wirecoil:2>.addTooltip(format.green("这个物品可以在杂货铺购买"));
<immersiveengineering:metalDecoration0>.addTooltip(format.green("这个物品可以在杂货铺购买"));
<immersiveengineering:metalDecoration0:1>.addTooltip(format.green("这个物品可以在杂货铺购买"));
<immersiveengineering:metalDecoration0:2>.addTooltip(format.green("这个物品可以在杂货铺购买"));
<immersiveengineering:woodenDevice0:2>.addTooltip(format.green("这个物品可以在杂货铺购买"));
<immersiveengineering:tool:1>.addTooltip(format.green("这个物品可以在杂货铺购买"));
<immersiveengineering:tool>.addTooltip(format.green("这个物品可以在杂货铺购买"));
<immersiveengineering:tool:2>.addTooltip(format.green("这个物品可以在杂货铺购买"));
<immersiveengineering:metal:3>.addTooltip(format.green("这个物品可以在铁匠铺购买"));
<immersiveengineering:metal:2>.addTooltip(format.green("这个物品可以在铁匠铺购买"));
<immersiveengineering:metal>.addTooltip(format.green("这个物品可以在铁匠铺购买"));
<immersiveengineering:metal:1>.addTooltip(format.green("这个物品可以在铁匠铺购买"));
<immersiveengineering:metal:5>.addTooltip(format.green("这个物品可以在铁匠铺购买"));
<immersiveengineering:metal:4>.addTooltip(format.green("这个物品可以在铁匠铺购买"));
<immersiveengineering:ore>.addTooltip(format.green("这个物品可以在铁匠铺购买"));
<immersiveengineering:ore:1>.addTooltip(format.green("不会生成在世界中，请在铁匠铺购买"));
<immersiveengineering:ore:2>.addTooltip(format.green("不会生成在世界中，请在铁匠铺购买"));
<immersiveengineering:ore:3>.addTooltip(format.green("不会生成在世界中，请在铁匠铺购买"));
<immersiveengineering:ore:4>.addTooltip(format.green("不会生成在世界中，请在铁匠铺购买"));
<immersiveengineering:ore:5>.addTooltip(format.green("不会生成在世界中，请在铁匠铺购买"));
<immersiveengineering:stoneDecoration:1>.addTooltip(format.green("这个物品可以在铁匠铺购买"));
<immersiveengineering:drillhead:1>.addTooltip(format.green("这个物品可以在矿工小屋购买"));
<immersiveengineering:metalDecoration0:3>.addTooltip(format.green("这个物品可以在铁匠铺购买"));

mods.harvestfestival.Shops.addPurchasable("harvestfestival:general", <immersiveengineering:material:8>, 500);
mods.harvestfestival.Shops.addPurchasable("harvestfestival:general",<immersiveengineering:connector>, 500);
mods.harvestfestival.Shops.addPurchasable("harvestfestival:general",<immersiveengineering:connector:2>, 500);
mods.harvestfestival.Shops.addPurchasable("harvestfestival:general",<immersiveengineering:connector:4>, 500);
mods.harvestfestival.Shops.addPurchasable("harvestfestival:general",<immersiveengineering:wirecoil>, 500);
mods.harvestfestival.Shops.addPurchasable("harvestfestival:general",<immersiveengineering:wirecoil:1>, 500);
mods.harvestfestival.Shops.addPurchasable("harvestfestival:general",<immersiveengineering:wirecoil:2>, 500);
mods.harvestfestival.Shops.addPurchasable("harvestfestival:general",<immersiveengineering:metalDecoration0>, 500);
mods.harvestfestival.Shops.addPurchasable("harvestfestival:general",<immersiveengineering:metalDecoration0:1>, 500);
mods.harvestfestival.Shops.addPurchasable("harvestfestival:general",<immersiveengineering:metalDecoration0:2>, 500);
mods.harvestfestival.Shops.addPurchasable("harvestfestival:general",<immersiveengineering:woodenDevice0:2>, 500);
mods.harvestfestival.Shops.addPurchasable("harvestfestival:general",<immersiveengineering:tool>, 2500);
mods.harvestfestival.Shops.addPurchasable("harvestfestival:general",<immersiveengineering:tool:2>, 2500);
mods.harvestfestival.Shops.addPurchasable("harvestfestival:miner",<immersiveengineering:drillhead:1>, 10000);
mods.harvestfestival.Shops.addPurchasable("harvestfestival:blacksmith", <immersiveengineering:metal:3>, 100);
mods.harvestfestival.Shops.addPurchasable("harvestfestival:blacksmith", <immersiveengineering:metal:2>, 100);
mods.harvestfestival.Shops.addPurchasable("harvestfestival:blacksmith", <immersiveengineering:metal>, 100);
mods.harvestfestival.Shops.addPurchasable("harvestfestival:blacksmith", <immersiveengineering:metal:1>, 100);
mods.harvestfestival.Shops.addPurchasable("harvestfestival:blacksmith", <immersiveengineering:metal:5>, 100);
mods.harvestfestival.Shops.addPurchasable("harvestfestival:blacksmith", <immersiveengineering:metal:4>, 100);
mods.harvestfestival.Shops.addPurchasable("harvestfestival:blacksmith", <immersiveengineering:stoneDecoration:1>, 1000);

mods.harvestfestival.Shops.addPurchasable("harvestfestival:blacksmith", <immersiveengineering:metalDecoration0:3>, 2500);

// RailCraft
recipes.remove(<railcraft:borehead_iron>);
<railcraft:borehead_iron>.addTooltip(format.green("这个物品可以在矿工小屋购买"));
mods.harvestfestival.Shops.addPurchasable("harvestfestival:miner", <railcraft:borehead_iron>, 100000);

recipes.remove(<railcraft:rail>);
recipes.remove(<railcraft:rail:1>);
recipes.remove(<railcraft:rail:3>);
recipes.remove(<railcraft:rail:4>);
recipes.remove(<railcraft:rail:5>);
recipes.remove(<railcraft:rebar>);
recipes.remove(<railcraft:track_parts>);

<railcraft:rail>.addTooltip(format.green("这个物品可以在铁匠铺购买"));
<railcraft:rail:1>.addTooltip(format.green("这个物品可以在铁匠铺购买"));
<railcraft:rail:3>.addTooltip(format.green("这个物品可以在铁匠铺购买"));
<railcraft:rail:4>.addTooltip(format.green("这个物品可以在铁匠铺购买"));
<railcraft:rail:5>.addTooltip(format.green("这个物品可以在铁匠铺购买"));
<railcraft:rebar>.addTooltip(format.green("这个物品可以在铁匠铺购买"));
<railcraft:track_parts>.addTooltip(format.green("这个物品可以在铁匠铺购买"));

mods.harvestfestival.Shops.addPurchasable("harvestfestival:blacksmith", <railcraft:rail> * 8, 800);
mods.harvestfestival.Shops.addPurchasable("harvestfestival:blacksmith", <railcraft:rail:1> * 8, 800);
mods.harvestfestival.Shops.addPurchasable("harvestfestival:blacksmith", <railcraft:rail:3> * 8, 1000);
mods.harvestfestival.Shops.addPurchasable("harvestfestival:blacksmith", <railcraft:rail:4> * 8, 1400);
mods.harvestfestival.Shops.addPurchasable("harvestfestival:blacksmith", <railcraft:rail:5> * 6, 600);
mods.harvestfestival.Shops.addPurchasable("harvestfestival:blacksmith", <railcraft:rebar> * 8, 600);
mods.harvestfestival.Shops.addPurchasable("harvestfestival:blacksmith", <railcraft:track_parts>, 250);

// Psi

recipes.remove(<psi:programmer>);
recipes.remove(<psi:cadAssembler>);
recipes.remove(<psi:cadAssembly>);
recipes.remove(<psi:cadAssembly:1>);
<psi:programmer>.addTooltip(format.green("这个物品可以在杂货铺购买"));
<psi:cadAssembler>.addTooltip(format.green("这个物品可以在杂货铺购买"));
<psi:cadAssembly>.addTooltip(format.green("这个物品可以在杂货铺购买"));
<psi:cadAssembly:1>.addTooltip(format.green("这个物品可以在杂货铺购买"));
mods.harvestfestival.Shops.addPurchasable("harvestfestival:general", <psi:programmer>, 100000);
mods.harvestfestival.Shops.addPurchasable("harvestfestival:general", <psi:cadAssembler>, 100000);
mods.harvestfestival.Shops.addPurchasable("harvestfestival:general", <psi:cadAssembly>, 5000);
mods.harvestfestival.Shops.addPurchasable("harvestfestival:general", <psi:cadAssembly:1>, 5000);

// StorageDrawers

recipes.remove(<storagedrawers:controller>);
recipes.remove(<storagedrawers:compDrawers>);
recipes.remove(<storagedrawers:tape>);
recipes.remove(<storagedrawers:upgradeTemplate>);

<storagedrawers:tape>.addTooltip(format.green("这个物品可以在杂货铺购买"));
<storagedrawers:controller>.addTooltip(format.green("这个物品可以在铁匠铺购买"));
<storagedrawers:compDrawers>.addTooltip(format.green("这个物品可以在铁匠铺购买"));
<storagedrawers:upgradeTemplate>.addTooltip(format.green("这个物品可以在杂货铺购买"));

mods.harvestfestival.Shops.addPurchasable("harvestfestival:blacksmith", <storagedrawers:controller>, 5000);
mods.harvestfestival.Shops.addPurchasable("harvestfestival:blacksmith", <storagedrawers:compDrawers>, 5000);
mods.harvestfestival.Shops.addPurchasable("harvestfestival:general", <storagedrawers:tape>, 250);
mods.harvestfestival.Shops.addPurchasable("harvestfestival:general", <storagedrawers:upgradeTemplate>, 500);

// Forestry
recipes.remove(<forestry:sturdyMachine>);
recipes.remove(<forestry:scoop>);
recipes.remove(<forestry:smoker>);
recipes.remove(<forestry:grafter>);
recipes.remove(<forestry:ingotBronze>);
recipes.remove(<forestry:ingotTin>);
recipes.remove(<forestry:ffarm>);

mods.harvestfestival.Shops.addPurchasable("harvestfestival:barn", <forestry:ffarm>.withTag({FarmBlock: 0}), 2000);
mods.harvestfestival.Shops.addPurchasable("harvestfestival:barn", <forestry:ffarm>.withTag({FarmBlock: 1}), 2000);
mods.harvestfestival.Shops.addPurchasable("harvestfestival:barn", <forestry:ffarm>.withTag({FarmBlock: 2}), 2000);
mods.harvestfestival.Shops.addPurchasable("harvestfestival:barn", <forestry:ffarm>.withTag({FarmBlock: 3}), 2000);
mods.harvestfestival.Shops.addPurchasable("harvestfestival:barn", <forestry:ffarm>.withTag({FarmBlock: 4}), 2000);
mods.harvestfestival.Shops.addPurchasable("harvestfestival:barn", <forestry:ffarm>.withTag({FarmBlock: 5}), 2000);
mods.harvestfestival.Shops.addPurchasable("harvestfestival:barn", <forestry:ffarm>.withTag({FarmBlock: 6}), 2000);
mods.harvestfestival.Shops.addPurchasable("harvestfestival:barn", <forestry:ffarm>.withTag({FarmBlock: 7}), 2000);
mods.harvestfestival.Shops.addPurchasable("harvestfestival:barn", <forestry:ffarm>.withTag({FarmBlock: 8}), 2000);
mods.harvestfestival.Shops.addPurchasable("harvestfestival:barn", <forestry:ffarm>.withTag({FarmBlock: 9}), 2000);
mods.harvestfestival.Shops.addPurchasable("harvestfestival:barn", <forestry:ffarm>.withTag({FarmBlock: 10}), 2000);
mods.harvestfestival.Shops.addPurchasable("harvestfestival:barn", <forestry:ffarm>.withTag({FarmBlock: 11}), 2000);

mods.harvestfestival.Shops.addPurchasable("harvestfestival:blacksmith", <forestry:ingotTin>, 100);
mods.harvestfestival.Shops.addPurchasable("harvestfestival:blacksmith", <forestry:sturdyMachine>, 20000);
mods.harvestfestival.Shops.addPurchasable("harvestfestival:general", <forestry:scoop>, 2000);
mods.harvestfestival.Shops.addPurchasable("harvestfestival:general", <forestry:smoker>, 2000);
mods.harvestfestival.Shops.addPurchasable("harvestfestival:general", <forestry:grafter>, 2000);
mods.harvestfestival.Shops.addPurchasable("harvestfestival:miner", <forestry:resources>, 100);
mods.harvestfestival.Shops.addPurchasable("harvestfestival:blacksmith", <forestry:ingotBronze>, 100);

<forestry:resources>.addTooltip(format.green("这个物品可以在矿工小屋购买"));
<forestry:sturdyMachine>.addTooltip(format.green("这个物品可以在铁匠铺购买"));
<forestry:scoop>.addTooltip(format.green("这个物品可以在杂货铺购买"));
<forestry:smoker>.addTooltip(format.green("这个物品可以在杂货铺购买"));
<forestry:grafter>.addTooltip(format.green("这个物品可以在杂货铺购买"));
<forestry:ingotBronze>.addTooltip(format.green("这个物品可以在铁匠铺购买"));
<forestry:ingotTin>.addTooltip(format.green("这个物品可以在铁匠铺购买"));
<forestry:resources:2>.addTooltip(format.green("不会生成在世界中，请在铁匠铺购买"));

<forestry:ffarm>.addTooltip(format.green("这个物品可以在畜牧场的Jim处购买（不能用于作物）"));
recipes.remove(<forestry:bee_house>);

mods.harvestfestival.Shops.addPurchasable("harvestfestival:general", <forestry:bee_house>, 10000);
<forestry:bee_house>.addTooltip(format.green("这个物品可以在杂货铺购买"));

recipes.remove(<forestry:minerBag>);
<forestry:minerBag>.addTooltip(format.green("这个物品可以在矿工小屋购买"));
mods.harvestfestival.Shops.addPurchasable("harvestfestival:miner", <forestry:minerBag>, 25000);

// Botania

recipes.remove(<botania:altar>);

mods.harvestfestival.Shops.addShopToNPC("katlin", "Gadgets", "你好，我竟然有一家售卖杂货的小商店？！", "friday,5000,16000;monday,5000,16000;tuesday,5000,16000", "如果你想知道我卖什么，请在周五、周一和周二的5点至16点来这");
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:gadgets", <botania:altar>, 100000);
<botania:altar>.addTooltip(format.green("这个物品能够在咖啡屋的Katlin处购买"));

recipes.remove(<botania:pestleAndMortar>);
mods.harvestfestival.Shops.addPurchasable("harvestfestival:general", <botania:pestleAndMortar>, 2500);
<botania:pestleAndMortar>.addTooltip(format.green("这个物品可以在杂货铺购买"));

// Church

mods.harvestfestival.Shops.addShopToNPC("thomas", "Church", "欢迎来到教堂！", "monday,1000,7000;tuesday,1000,7000;wednesday,1000,7000", "我的小店在周一至周三的1点到7点营业");
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:church", <biomesoplenty:sapling_1:7>, 5000);
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:church", <botania:tinyPotato>, 1000);
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:church", <botania:cosmetic:30>, 500);

<biomesoplenty:sapling_1:7>.addTooltip(format.green("可以在教堂处购买"));
<botania:tinyPotato>.addTooltip(format.green("可以在教堂处购买"));
<botania:cosmetic:30>.addTooltip(format.green("可以在教堂处购买"));

// Super Circuit Maker
recipes.remove(<rscircuits:screwdriver>);
recipes.remove(<rscircuits:multimeter>);

mods.harvestfestival.Shops.addPurchasable("harvestfestival:general", <rscircuits:screwdriver>, 5000);
mods.harvestfestival.Shops.addPurchasable("harvestfestival:general", <rscircuits:multimeter>, 5000);

<rscircuits:screwdriver>.addTooltip(format.green("这个物品可以在杂货铺购买"));
<rscircuits:multimeter>.addTooltip(format.green("这个物品可以在杂货铺购买"));

// SpiceOfLife
recipes.remove(<spiceoflife:lunchbag>);
recipes.remove(<spiceoflife:lunchbox>);

mods.harvestfestival.Shops.addPurchasable("harvestfestival:cafe", <spiceoflife:lunchbox>, 2000);
<spiceoflife:lunchbox>.addTooltip(format.green("这个物品能够在咖啡屋购买"));
mods.harvestfestival.Shops.addPurchasable("harvestfestival:cafe", <spiceoflife:lunchbag>, 2000);
<spiceoflife:lunchbag>.addTooltip(format.green("这个物品能够在咖啡屋购买"));

// Aquaculture
recipes.remove(<aquaculture:fishing_rod>);
recipes.remove(<aquaculture:iron_fishing_rod>);
recipes.remove(<aquaculture:gold_fishing_rod>);
recipes.remove(<aquaculture:diamond_fishing_rod>);

mods.harvestfestival.Shops.adjustPurchasable("harvestfestival:baitshop", "aquaculture_iron_fishing_rod", 1500);
mods.harvestfestival.Shops.adjustPurchasable("harvestfestival:baitshop", "aquaculture_gold_fishing_rod", 1000);
mods.harvestfestival.Shops.adjustPurchasable("harvestfestival:baitshop", "aquaculture_diamond_fishing_rod", 5000);

<aquaculture:fishing_rod>.addTooltip(format.green("这个物品可以在钓鱼小屋处购买"));
<aquaculture:iron_fishing_rod>.addTooltip(format.green("这个物品可以在钓鱼小屋处购买"));
<aquaculture:gold_fishing_rod>.addTooltip(format.green("这个物品可以在钓鱼小屋处购买"));
<aquaculture:diamond_fishing_rod>.addTooltip(format.green("这个物品可以在钓鱼小屋处购买"));

// Chisel And Bits
recipes.remove(<chiselsandbits:chisel_stone>);
recipes.remove(<chiselsandbits:chisel_iron>);
recipes.remove(<chiselsandbits:chisel_gold>);
recipes.remove(<chiselsandbits:chisel_diamond>);
recipes.remove(<chiselsandbits:bitsaw_diamond>);

<chiselsandbits:chisel_stone>.addTooltip(format.green("请使用钻石凿子"));
<chiselsandbits:chisel_iron>.addTooltip(format.green("请使用钻石凿子"));
<chiselsandbits:chisel_gold>.addTooltip(format.green("请使用钻石凿子"));
<chiselsandbits:chisel_diamond>.addTooltip(format.green("这个物品可以在杂货铺购买"));
<chiselsandbits:bitsaw_diamond>.addTooltip(format.green("这个物品可以在杂货铺购买"));

mods.harvestfestival.Shops.addPurchasable("harvestfestival:general", <chiselsandbits:chisel_diamond>, 2500);
mods.harvestfestival.Shops.addPurchasable("harvestfestival:general", <chiselsandbits:bitsaw_diamond>, 2500);

// --- Cyclic ---
recipes.remove(<cyclicmagic:tool_warp_home>);
recipes.remove(<cyclicmagic:sprout_seed>);
recipes.remove(<cyclicmagic:tool_auto_torch>);
recipes.remove(<cyclicmagic:sleeping_mat>);
recipes.remove(<cyclicmagic:book_ender>);
recipes.remove(<cyclicmagic:apple_emerald>);
recipes.remove(<cyclicmagic:tool_mount>);
recipes.remove(<cyclicmagic:ender_pearl_mounted>);
recipes.remove(<cyclicmagic:uncrafting_block>);
recipes.remove(<cyclicmagic:chest_sack_empty>);
recipes.remove(<cyclicmagic:storage_bag>);
recipes.remove(<cyclicmagic:sack_ender>);
recipes.remove(<cyclicmagic:horse_upgrade_speed>);
recipes.remove(<cyclicmagic:horse_upgrade_variant>);
recipes.remove(<cyclicmagic:horse_upgrade_jump>);
recipes.remove(<cyclicmagic:horse_upgrade_health>);
recipes.remove(<cyclicmagic:horse_upgrade_type>);
recipes.remove(<cyclicmagic:block_fishing>);
recipes.remove(<cyclicmagic:ender_fishing>);
recipes.remove(<cyclicmagic:glove_climb>);
recipes.remove(<cyclicmagic:ender_blaze>);
recipes.remove(<cyclicmagic:ender_lightning>);
recipes.remove(<cyclicmagic:fire_killer>);
recipes.remove(<cyclicmagic:ender_water>);
recipes.remove(<cyclicmagic:glowing_chorus>);

recipes.remove(<cyclicmagic:block_shears>);
recipes.remove(<cyclicmagic:plate_vector>);
recipes.remove(<cyclicmagic:purple_boots>);
recipes.remove(<cyclicmagic:purple_leggings>);
recipes.remove(<cyclicmagic:password_remote>);
recipes.remove(<cyclicmagic:ender_dungeon>);
recipes.remove(<cyclicmagic:purple_helmet>);
recipes.remove(<cyclicmagic:purple_chestplate>);
recipes.remove(<cyclicmagic:ender_wool>);
recipes.remove(<cyclicmagic:mattock>);
recipes.remove(<cyclicmagic:tool_trade>);

<cyclicmagic:tool_warp_home>.addTooltip(format.green("这个物品能够在咖啡屋的Katlin处购买"));
<cyclicmagic:sprout_seed>.addTooltip(format.green("这个物品能够在咖啡屋的Katlin处购买"));
<cyclicmagic:tool_auto_torch>.addTooltip(format.green("这个物品能够在咖啡屋的Katlin处购买"));
<cyclicmagic:sleeping_mat>.addTooltip(format.green("这个物品能够在咖啡屋的Katlin处购买"));
<cyclicmagic:book_ender>.addTooltip(format.green("这个物品能够在咖啡屋的Katlin处购买"));
<cyclicmagic:apple_emerald>.addTooltip(format.green("这个物品能够在咖啡屋的Katlin处购买"));
<cyclicmagic:tool_mount>.addTooltip(format.green("这个物品能够在咖啡屋的Katlin处购买"));
<cyclicmagic:ender_pearl_mounted>.addTooltip(format.green("这个物品能够在咖啡屋的Katlin处购买"));
<cyclicmagic:uncrafting_block>.addTooltip(format.green("这个物品能够在咖啡屋的Katlin处购买"));
<cyclicmagic:chest_sack_empty>.addTooltip(format.green("这个物品能够在咖啡屋的Katlin处购买"));
<cyclicmagic:storage_bag>.addTooltip(format.green("这个物品能够在咖啡屋的Katlin处购买"));
<cyclicmagic:sack_ender>.addTooltip(format.green("这个物品能够在咖啡屋的Katlin处购买"));
<cyclicmagic:horse_upgrade_speed>.addTooltip(format.green("这个物品可以在畜牧场购买"));
<cyclicmagic:horse_upgrade_variant>.addTooltip(format.green("这个物品可以在畜牧场购买"));
<cyclicmagic:horse_upgrade_jump>.addTooltip(format.green("这个物品可以在畜牧场购买"));
<cyclicmagic:horse_upgrade_health>.addTooltip(format.green("这个物品可以在畜牧场购买"));
<cyclicmagic:horse_upgrade_type>.addTooltip(format.green("这个物品可以在畜牧场购买"));
<cyclicmagic:block_fishing>.addTooltip(format.green("这个物品可以在鱼饵店（Baitshop）购买"));
<cyclicmagic:ender_fishing>.addTooltip(format.green("这个物品可以在鱼饵店（Baitshop）购买"));
<cyclicmagic:glove_climb>.addTooltip(format.green("这个物品能够在咖啡屋的Katlin处购买"));
<cyclicmagic:ender_blaze>.addTooltip(format.green("这个物品能够在咖啡屋的Katlin处购买"));
<cyclicmagic:ender_lightning>.addTooltip(format.green("这个物品能够在咖啡屋的Katlin处购买"));
<cyclicmagic:fire_killer>.addTooltip(format.green("这个物品能够在咖啡屋的Katlin处购买"));
<cyclicmagic:ender_water>.addTooltip(format.green("这个物品能够在咖啡屋的Katlin处购买"));
<cyclicmagic:glowing_chorus>.addTooltip(format.green("这个物品能够在咖啡屋的Katlin处购买"));

<cyclicmagic:block_shears>.addTooltip(format.green("这个物品能够在咖啡屋的Katlin处购买"));
<cyclicmagic:plate_vector>.addTooltip(format.green("这个物品能够在咖啡屋的Katlin处购买"));
<cyclicmagic:purple_boots>.addTooltip(format.green("这个物品能够在咖啡屋的Katlin处购买"));
<cyclicmagic:purple_leggings>.addTooltip(format.green("这个物品能够在咖啡屋的Katlin处购买"));
<cyclicmagic:password_remote>.addTooltip(format.green("这个物品能够在咖啡屋的Katlin处购买"));
<cyclicmagic:ender_dungeon>.addTooltip(format.green("这个物品能够在咖啡屋的Katlin处购买"));
<cyclicmagic:purple_helmet>.addTooltip(format.green("这个物品能够在咖啡屋的Katlin处购买"));
<cyclicmagic:purple_chestplate>.addTooltip(format.green("这个物品能够在咖啡屋的Katlin处购买"));
<cyclicmagic:ender_wool>.addTooltip(format.green("这个物品能够在咖啡屋的Katlin处购买"));
<cyclicmagic:mattock>.addTooltip(format.green("这个物品能够在咖啡屋的Katlin处购买"));
<cyclicmagic:tool_trade>.addTooltip(format.green("这个物品能够在咖啡屋的Katlin处购买"));

mods.harvestfestival.Shops.addPurchasable("harvestfestival:barn",<cyclicmagic:horse_upgrade_speed>, 500);
mods.harvestfestival.Shops.addPurchasable("harvestfestival:barn",<cyclicmagic:horse_upgrade_variant>, 500);
mods.harvestfestival.Shops.addPurchasable("harvestfestival:barn",<cyclicmagic:horse_upgrade_jump>, 500);
mods.harvestfestival.Shops.addPurchasable("harvestfestival:barn",<cyclicmagic:horse_upgrade_health>, 500);
mods.harvestfestival.Shops.addPurchasable("harvestfestival:barn",<cyclicmagic:horse_upgrade_type>, 500);
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:gadgets", <cyclicmagic:tool_warp_home>, 10000);
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:gadgets", <cyclicmagic:sprout_seed>, 500);
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:gadgets", <cyclicmagic:tool_auto_torch>, 2500);
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:gadgets", <cyclicmagic:sleeping_mat>, 4000);
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:gadgets", <cyclicmagic:book_ender>, 25000);
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:gadgets", <cyclicmagic:apple_emerald>, 7500);
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:gadgets", <cyclicmagic:tool_mount>, 2000);
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:gadgets", <cyclicmagic:ender_pearl_mounted>, 5000);
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:gadgets", <cyclicmagic:uncrafting_block>, 50000);
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:gadgets", <cyclicmagic:chest_sack_empty>, 5000);
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:gadgets", <cyclicmagic:storage_bag>, 75000);
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:gadgets", <cyclicmagic:sack_ender>, 100000);
mods.harvestfestival.Shops.addPurchasable("harvestfestival:baitshop", <cyclicmagic:block_fishing>, 75000);
mods.harvestfestival.Shops.addPurchasable("harvestfestival:baitshop", <cyclicmagic:ender_fishing>, 2500);
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:gadgets", <cyclicmagic:glove_climb>, 5000);
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:gadgets", <cyclicmagic:ender_blaze>, 250);
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:gadgets", <cyclicmagic:ender_lightning>, 250);
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:gadgets", <cyclicmagic:fire_killer>, 5000);
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:gadgets", <cyclicmagic:ender_water>, 250);
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:gadgets", <cyclicmagic:glowing_chorus>, 750);

mods.harvestfestival.Shops.addPurchasable("MineTweaker3:gadgets", <cyclicmagic:block_shears>, 50000);
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:gadgets", <cyclicmagic:plate_vector>, 10000);
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:gadgets", <cyclicmagic:purple_boots>, 10000);
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:gadgets", <cyclicmagic:purple_leggings>, 10000);
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:gadgets", <cyclicmagic:password_remote>, 10000);
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:gadgets", <cyclicmagic:ender_dungeon>, 10000);
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:gadgets", <cyclicmagic:purple_helmet>, 10000);
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:gadgets", <cyclicmagic:purple_chestplate>, 10000);
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:gadgets", <cyclicmagic:ender_wool>, 2500);
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:gadgets", <cyclicmagic:mattock>, 50000);
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:gadgets", <cyclicmagic:tool_trade>, 25000);

recipes.remove(<cyclicmagic:dynamite_mining>);
<cyclicmagic:dynamite_mining>.addTooltip(format.green("这个物品可以在矿工小屋购买"));
mods.harvestfestival.Shops.addPurchasable("harvestfestival:miner", <cyclicmagic:dynamite_mining>, 500);
recipes.remove(<cyclicmagic:dynamite_safe>);
<cyclicmagic:dynamite_safe>.addTooltip(format.green("这个物品可以在矿工小屋购买"));
mods.harvestfestival.Shops.addPurchasable("harvestfestival:miner", <cyclicmagic:dynamite_safe>, 500);

recipes.remove(<cyclicmagic:ender_tnt_1>);
<cyclicmagic:ender_tnt_1>.addTooltip(format.green("这个物品可以在矿工小屋购买"));
mods.harvestfestival.Shops.addPurchasable("harvestfestival:miner", <cyclicmagic:ender_tnt_1>, 100);

recipes.remove(<cyclicmagic:magic_net>);
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:gadgets", <cyclicmagic:magic_net>, 500);
<cyclicmagic:magic_net>.addTooltip(format.green("这个物品能够在咖啡屋的Katlin处购买"));
recipes.remove(<cyclicmagic:exp_pylon>);
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:gadgets", <cyclicmagic:exp_pylon>, 25000);
<cyclicmagic:exp_pylon>.addTooltip(format.green("这个物品能够在咖啡屋的Katlin处购买"));

// Refined Storage
recipes.remove(<refinedstorage:quartz_enriched_iron>);
recipes.remove(<refinedstorage:machine_casing>);

<refinedstorage:quartz_enriched_iron>.addTooltip(format.green("这个物品可以在铁匠铺购买"));
<refinedstorage:machine_casing>.addTooltip(format.green("这个物品可以在铁匠铺购买"));

mods.harvestfestival.Shops.addPurchasable("harvestfestival:blacksmith", <refinedstorage:quartz_enriched_iron>, 100);
mods.harvestfestival.Shops.addPurchasable("harvestfestival:blacksmith", <refinedstorage:machine_casing>, 25000);

// --- Bibliocraft ---

recipes.remove(<bibliocraft:LampGold>);
recipes.remove(<bibliocraft:LampIron>);
recipes.remove(<bibliocraft:LanternGold>);
recipes.remove(<bibliocraft:LanternIron>);
recipes.remove(<bibliocraft:FramingSaw>);
recipes.remove(<bibliocraft:TypesettingTable>);
recipes.remove(<bibliocraft:PrintingPress>);
recipes.remove(<bibliocraft:BiblioClipboard>);
recipes.remove(<bibliocraft:Bookcase>);
recipes.remove(<bibliocraft:Shelf>);
recipes.remove(<bibliocraft:PotionShelf>);
recipes.remove(<bibliocraft:ToolRack>);
recipes.remove(<bibliocraft:Table>);
recipes.remove(<bibliocraft:Desk>);
recipes.remove(<bibliocraft:FramedChest>);
recipes.remove(<bibliocraft:Seat>);
recipes.remove(<bibliocraft:Case>);
recipes.remove(<bibliocraft:FancyWorkbench>);
recipes.remove(<bibliocraft:Label>);
recipes.remove(<bibliocraft:Clock>);
recipes.remove(<bibliocraft:ArmorStand>);
recipes.remove(<bibliocraft:Bell>);

<bibliocraft:LampGold>.addTooltip(format.green("可以在Yulif处购买"));
<bibliocraft:LampIron>.addTooltip(format.green("可以在Yulif处购买"));
<bibliocraft:LanternGold>.addTooltip(format.green("可以在Yulif处购买"));
<bibliocraft:LanternIron>.addTooltip(format.green("可以在Yulif处购买"));
<bibliocraft:FramingSaw>.addTooltip(format.green("可以在Yulif处购买"));
<bibliocraft:TypesettingTable>.addTooltip(format.green("可以在Yulif处购买"));
<bibliocraft:PrintingPress>.addTooltip(format.green("可以在Yulif处购买"));
<bibliocraft:BiblioClipboard>.addTooltip(format.green("可以在Yulif处购买"));
<bibliocraft:Bookcase>.addTooltip(format.green("可以在Yulif处购买"));
<bibliocraft:Shelf>.addTooltip(format.green("可以在Yulif处购买"));
<bibliocraft:PotionShelf>.addTooltip(format.green("可以在Yulif处购买"));
<bibliocraft:ToolRack>.addTooltip(format.green("可以在Yulif处购买"));
<bibliocraft:Desk>.addTooltip(format.green("可以在Yulif处购买"));
<bibliocraft:Table>.addTooltip(format.green("可以在Yulif处购买"));
<bibliocraft:FramedChest>.addTooltip(format.green("可以在Yulif处购买"));
<bibliocraft:Seat>.addTooltip(format.green("可以在Yulif处购买"));
<bibliocraft:Case>.addTooltip(format.green("可以在Yulif处购买"));
<bibliocraft:FancyWorkbench>.addTooltip(format.green("可以在Yulif处购买"));
<bibliocraft:Label>.addTooltip(format.green("可以在Yulif处购买"));
<bibliocraft:Clock>.addTooltip(format.green("可以在Yulif处购买"));
<bibliocraft:ArmorStand>.addTooltip(format.green("可以在Yulif处购买"));
<bibliocraft:Bell>.addTooltip(format.green("可以在Yulif处购买"));

mods.harvestfestival.Shops.addPurchasableToBuilder(<bibliocraft:LampGold>, 0, 0, 500);
mods.harvestfestival.Shops.addPurchasableToBuilder(<bibliocraft:LampIron>, 0, 0, 500);
mods.harvestfestival.Shops.addPurchasableToBuilder(<bibliocraft:LanternGold>, 0, 0, 500);
mods.harvestfestival.Shops.addPurchasableToBuilder(<bibliocraft:LanternIron>, 0, 0, 500);
mods.harvestfestival.Shops.addPurchasableToBuilder(<bibliocraft:FramingSaw>, 1, 0, 500);
mods.harvestfestival.Shops.addPurchasableToBuilder(<bibliocraft:TypesettingTable>, 0, 0, 2000);
mods.harvestfestival.Shops.addPurchasableToBuilder(<bibliocraft:PrintingPress>, 0, 0, 2000);
mods.harvestfestival.Shops.addPurchasableToBuilder(<bibliocraft:BiblioClipboard>, 0, 0, 500);
mods.harvestfestival.Shops.addPurchasableToBuilder(<bibliocraft:Bookcase>, 6, 0, 500);
mods.harvestfestival.Shops.addPurchasableToBuilder(<bibliocraft:Shelf>, 6, 0, 500);
mods.harvestfestival.Shops.addPurchasableToBuilder(<bibliocraft:PotionShelf>, 3, 0, 500);
mods.harvestfestival.Shops.addPurchasableToBuilder(<bibliocraft:ToolRack>, 3, 0, 500);
mods.harvestfestival.Shops.addPurchasableToBuilder(<bibliocraft:Desk>, 32, 0, 500);
mods.harvestfestival.Shops.addPurchasableToBuilder(<bibliocraft:Table>, 16, 0, 500);
mods.harvestfestival.Shops.addPurchasableToBuilder(<bibliocraft:FramedChest>, 16, 0, 500);
mods.harvestfestival.Shops.addPurchasableToBuilder(<bibliocraft:Seat>, 6, 0, 500);
mods.harvestfestival.Shops.addPurchasableToBuilder(<bibliocraft:Case>, 6, 0, 500);
mods.harvestfestival.Shops.addPurchasableToBuilder(<bibliocraft:FancyWorkbench>, 16, 0, 500);
mods.harvestfestival.Shops.addPurchasableToBuilder(<bibliocraft:Label>, 2, 0, 500);
mods.harvestfestival.Shops.addPurchasableToBuilder(<bibliocraft:Clock>, 32, 0, 500);
mods.harvestfestival.Shops.addPurchasableToBuilder(<bibliocraft:ArmorStand>, 16, 0, 500);
mods.harvestfestival.Shops.addPurchasableToBuilder(<bibliocraft:Bell>, 16, 0, 250);

// --- InventoryPets ---

recipes.remove(<inventorypets:cow_pet>);
recipes.remove(<inventorypets:sheep_pet>);
recipes.remove(<inventorypets:pig_pet>);
recipes.remove(<inventorypets:squid_pet>);
recipes.remove(<inventorypets:ocelot_pet>);
recipes.remove(<inventorypets:mooshroom_pet>);
recipes.remove(<inventorypets:ghast_pet>);
recipes.remove(<inventorypets:spider_pet>);
recipes.remove(<inventorypets:iron_golem_pet>);
recipes.remove(<inventorypets:snow_golem_pet>);
recipes.remove(<inventorypets:enderman_pet>);
recipes.remove(<inventorypets:creeper_pet>);
recipes.remove(<inventorypets:magma_cube_pet>);
recipes.remove(<inventorypets:wither_pet>);
recipes.remove(<inventorypets:blaze_pet>);
recipes.remove(<inventorypets:bed_pet>);
recipes.remove(<inventorypets:chest_pet>);
recipes.remove(<inventorypets:double_chest_pet>);
recipes.remove(<inventorypets:ender_chest_pet>);
recipes.remove(<inventorypets:furnace_pet>);
recipes.remove(<inventorypets:crafting_table_pet>);
recipes.remove(<inventorypets:enchanting_table_pet>);
recipes.remove(<inventorypets:jukebox_pet>);
recipes.remove(<inventorypets:brewing_stand_pet>);
recipes.remove(<inventorypets:nether_portal_pet>);
recipes.remove(<inventorypets:sponge_pet>);
recipes.remove(<inventorypets:purplicious_cow_pet>);
recipes.remove(<inventorypets:mickerson_pet>);
recipes.remove(<inventorypets:pingot_pet>);
recipes.remove(<inventorypets:qcm_pet>);
recipes.remove(<inventorypets:banana_pet>);
recipes.remove(<inventorypets:loot_pet>);
recipes.remove(<inventorypets:slime_pet>);
recipes.remove(<inventorypets:cloud_pet>);
recipes.remove(<inventorypets:pufferfish_pet>);
recipes.remove(<inventorypets:black_hole_pet>);
recipes.remove(<inventorypets:quiver_pet>);
recipes.remove(<inventorypets:pacman_pet>);
recipes.remove(<inventorypets:cheetah_pet>);
recipes.remove(<inventorypets:house_pet>);
recipes.remove(<inventorypets:silverfish_pet>);
recipes.remove(<inventorypets:wolf_pet>);
recipes.remove(<inventorypets:apple_pet>);
recipes.remove(<inventorypets:shield_pet>);
recipes.remove(<inventorypets:heart_pet>);
recipes.remove(<inventorypets:moon_pet>);
recipes.remove(<inventorypets:dubstep_pet>);
recipes.remove(<inventorypets:juggernaut_pet>);
recipes.remove(<inventorypets:illuminati_pet>.withTag({slowDelay: 6000}));
recipes.remove(<inventorypets:grave_pet>);
recipes.remove(<inventorypets:easter_egg>);
recipes.remove(<inventorypets:feed_bag>);


mods.harvestfestival.Shops.addPurchasable("harvestfestival:poultry", <inventorypets:cow_pet>, 10000);
mods.harvestfestival.Shops.addPurchasable("harvestfestival:poultry", <inventorypets:sheep_pet>, 10000);
mods.harvestfestival.Shops.addPurchasable("harvestfestival:poultry", <inventorypets:pig_pet>, 10000);
mods.harvestfestival.Shops.addPurchasable("harvestfestival:poultry", <inventorypets:squid_pet>, 10000);
mods.harvestfestival.Shops.addPurchasable("harvestfestival:poultry", <inventorypets:ocelot_pet>, 10000);
mods.harvestfestival.Shops.addPurchasable("harvestfestival:poultry", <inventorypets:mooshroom_pet>, 10000);
mods.harvestfestival.Shops.addPurchasable("harvestfestival:poultry", <inventorypets:ghast_pet>, 10000);
mods.harvestfestival.Shops.addPurchasable("harvestfestival:poultry", <inventorypets:spider_pet>, 10000);
mods.harvestfestival.Shops.addPurchasable("harvestfestival:poultry", <inventorypets:iron_golem_pet>, 10000);
mods.harvestfestival.Shops.addPurchasable("harvestfestival:poultry", <inventorypets:snow_golem_pet>, 10000);
mods.harvestfestival.Shops.addPurchasable("harvestfestival:poultry", <inventorypets:enderman_pet>, 10000);
mods.harvestfestival.Shops.addPurchasable("harvestfestival:poultry", <inventorypets:creeper_pet>, 10000);
mods.harvestfestival.Shops.addPurchasable("harvestfestival:poultry", <inventorypets:magma_cube_pet>, 10000);
mods.harvestfestival.Shops.addPurchasable("harvestfestival:poultry", <inventorypets:wither_pet>, 10000);
mods.harvestfestival.Shops.addPurchasable("harvestfestival:poultry", <inventorypets:blaze_pet>, 10000);
mods.harvestfestival.Shops.addPurchasable("harvestfestival:poultry", <inventorypets:bed_pet>, 10000);
mods.harvestfestival.Shops.addPurchasable("harvestfestival:poultry", <inventorypets:chest_pet>, 10000);
mods.harvestfestival.Shops.addPurchasable("harvestfestival:poultry", <inventorypets:double_chest_pet>, 10000);
mods.harvestfestival.Shops.addPurchasable("harvestfestival:poultry", <inventorypets:ender_chest_pet>, 10000);
mods.harvestfestival.Shops.addPurchasable("harvestfestival:poultry", <inventorypets:furnace_pet>, 10000);
mods.harvestfestival.Shops.addPurchasable("harvestfestival:poultry", <inventorypets:crafting_table_pet>, 10000);
mods.harvestfestival.Shops.addPurchasable("harvestfestival:poultry", <inventorypets:enchanting_table_pet>, 10000);
mods.harvestfestival.Shops.addPurchasable("harvestfestival:poultry", <inventorypets:jukebox_pet>, 10000);
mods.harvestfestival.Shops.addPurchasable("harvestfestival:poultry", <inventorypets:brewing_stand_pet>, 10000);
mods.harvestfestival.Shops.addPurchasable("harvestfestival:poultry", <inventorypets:nether_portal_pet>, 10000);
mods.harvestfestival.Shops.addPurchasable("harvestfestival:poultry", <inventorypets:sponge_pet>, 10000);
mods.harvestfestival.Shops.addPurchasable("harvestfestival:poultry", <inventorypets:purplicious_cow_pet>, 10000);
mods.harvestfestival.Shops.addPurchasable("harvestfestival:poultry", <inventorypets:mickerson_pet>, 10000);
mods.harvestfestival.Shops.addPurchasable("harvestfestival:poultry", <inventorypets:pingot_pet>, 10000);
mods.harvestfestival.Shops.addPurchasable("harvestfestival:poultry", <inventorypets:qcm_pet>, 10000);
mods.harvestfestival.Shops.addPurchasable("harvestfestival:poultry", <inventorypets:banana_pet>, 10000);
mods.harvestfestival.Shops.addPurchasable("harvestfestival:poultry", <inventorypets:loot_pet>, 10000);
mods.harvestfestival.Shops.addPurchasable("harvestfestival:poultry", <inventorypets:slime_pet>, 10000);
mods.harvestfestival.Shops.addPurchasable("harvestfestival:poultry", <inventorypets:cloud_pet>, 100000);
mods.harvestfestival.Shops.addPurchasable("harvestfestival:poultry", <inventorypets:pufferfish_pet>, 10000);
mods.harvestfestival.Shops.addPurchasable("harvestfestival:poultry", <inventorypets:black_hole_pet>, 10000);
mods.harvestfestival.Shops.addPurchasable("harvestfestival:poultry", <inventorypets:quiver_pet>, 10000);
mods.harvestfestival.Shops.addPurchasable("harvestfestival:poultry", <inventorypets:pacman_pet>, 100000);
mods.harvestfestival.Shops.addPurchasable("harvestfestival:poultry", <inventorypets:cheetah_pet>, 10000);
mods.harvestfestival.Shops.addPurchasable("harvestfestival:poultry", <inventorypets:house_pet>, 100000);
mods.harvestfestival.Shops.addPurchasable("harvestfestival:poultry", <inventorypets:silverfish_pet>, 10000);
mods.harvestfestival.Shops.addPurchasable("harvestfestival:poultry", <inventorypets:wolf_pet>, 10000);
mods.harvestfestival.Shops.addPurchasable("harvestfestival:poultry", <inventorypets:apple_pet>, 10000);
mods.harvestfestival.Shops.addPurchasable("harvestfestival:poultry", <inventorypets:shield_pet>, 10000);
mods.harvestfestival.Shops.addPurchasable("harvestfestival:poultry", <inventorypets:heart_pet>, 10000);
mods.harvestfestival.Shops.addPurchasable("harvestfestival:poultry", <inventorypets:moon_pet>, 10000);
mods.harvestfestival.Shops.addPurchasable("harvestfestival:poultry", <inventorypets:dubstep_pet>, 10000);
mods.harvestfestival.Shops.addPurchasable("harvestfestival:poultry", <inventorypets:juggernaut_pet>, 10000);
mods.harvestfestival.Shops.addPurchasable("harvestfestival:poultry", <inventorypets:illuminati_pet>.withTag({slowDelay: 6000}), 1000000);
mods.harvestfestival.Shops.addPurchasable("harvestfestival:poultry", <inventorypets:grave_pet>, 10000);
mods.harvestfestival.Shops.addPurchasable("harvestfestival:poultry", <inventorypets:easter_egg>, 25000);
mods.harvestfestival.Shops.addPurchasable("harvestfestival:poultry", <inventorypets:feed_bag>, 2500);

<inventorypets:cow_pet>.addTooltip(format.green("这个物品可以在养鸡场的Ashlee处购买"));
<inventorypets:sheep_pet>.addTooltip(format.green("这个物品可以在养鸡场的Ashlee处购买"));
<inventorypets:pig_pet>.addTooltip(format.green("这个物品可以在养鸡场的Ashlee处购买"));
<inventorypets:squid_pet>.addTooltip(format.green("这个物品可以在养鸡场的Ashlee处购买"));
<inventorypets:ocelot_pet>.addTooltip(format.green("这个物品可以在养鸡场的Ashlee处购买"));
<inventorypets:mooshroom_pet>.addTooltip(format.green("这个物品可以在养鸡场的Ashlee处购买"));
<inventorypets:ghast_pet>.addTooltip(format.green("这个物品可以在养鸡场的Ashlee处购买"));
<inventorypets:spider_pet>.addTooltip(format.green("这个物品可以在养鸡场的Ashlee处购买"));
<inventorypets:iron_golem_pet>.addTooltip(format.green("这个物品可以在养鸡场的Ashlee处购买"));
<inventorypets:snow_golem_pet>.addTooltip(format.green("这个物品可以在养鸡场的Ashlee处购买"));
<inventorypets:enderman_pet>.addTooltip(format.green("这个物品可以在养鸡场的Ashlee处购买"));
<inventorypets:creeper_pet>.addTooltip(format.green("这个物品可以在养鸡场的Ashlee处购买"));
<inventorypets:magma_cube_pet>.addTooltip(format.green("这个物品可以在养鸡场的Ashlee处购买"));
<inventorypets:wither_pet>.addTooltip(format.green("这个物品可以在养鸡场的Ashlee处购买"));
<inventorypets:blaze_pet>.addTooltip(format.green("这个物品可以在养鸡场的Ashlee处购买"));
<inventorypets:bed_pet>.addTooltip(format.green("这个物品可以在养鸡场的Ashlee处购买"));
<inventorypets:chest_pet>.addTooltip(format.green("这个物品可以在养鸡场的Ashlee处购买"));
<inventorypets:double_chest_pet>.addTooltip(format.green("这个物品可以在养鸡场的Ashlee处购买"));
<inventorypets:ender_chest_pet>.addTooltip(format.green("这个物品可以在养鸡场的Ashlee处购买"));
<inventorypets:furnace_pet>.addTooltip(format.green("这个物品可以在养鸡场的Ashlee处购买"));
<inventorypets:crafting_table_pet>.addTooltip(format.green("这个物品可以在养鸡场的Ashlee处购买"));
<inventorypets:enchanting_table_pet>.addTooltip(format.green("这个物品可以在养鸡场的Ashlee处购买"));
<inventorypets:jukebox_pet>.addTooltip(format.green("这个物品可以在养鸡场的Ashlee处购买"));
<inventorypets:brewing_stand_pet>.addTooltip(format.green("这个物品可以在养鸡场的Ashlee处购买"));
<inventorypets:nether_portal_pet>.addTooltip(format.green("这个物品可以在养鸡场的Ashlee处购买"));
<inventorypets:sponge_pet>.addTooltip(format.green("这个物品可以在养鸡场的Ashlee处购买"));
<inventorypets:purplicious_cow_pet>.addTooltip(format.green("这个物品可以在养鸡场的Ashlee处购买"));
<inventorypets:mickerson_pet>.addTooltip(format.green("这个物品可以在养鸡场的Ashlee处购买"));
<inventorypets:pingot_pet>.addTooltip(format.green("这个物品可以在养鸡场的Ashlee处购买"));
<inventorypets:qcm_pet>.addTooltip(format.green("这个物品可以在养鸡场的Ashlee处购买"));
<inventorypets:banana_pet>.addTooltip(format.green("这个物品可以在养鸡场的Ashlee处购买"));
<inventorypets:loot_pet>.addTooltip(format.green("这个物品可以在养鸡场的Ashlee处购买"));
<inventorypets:slime_pet>.addTooltip(format.green("这个物品可以在养鸡场的Ashlee处购买"));
<inventorypets:cloud_pet>.addTooltip(format.green("这个物品可以在养鸡场的Ashlee处购买"));
<inventorypets:pufferfish_pet>.addTooltip(format.green("这个物品可以在养鸡场的Ashlee处购买"));
<inventorypets:black_hole_pet>.addTooltip(format.green("这个物品可以在养鸡场的Ashlee处购买"));
<inventorypets:quiver_pet>.addTooltip(format.green("这个物品可以在养鸡场的Ashlee处购买"));
<inventorypets:pacman_pet>.addTooltip(format.green("这个物品可以在养鸡场的Ashlee处购买"));
<inventorypets:cheetah_pet>.addTooltip(format.green("这个物品可以在养鸡场的Ashlee处购买"));
<inventorypets:house_pet>.addTooltip(format.green("这个物品可以在养鸡场的Ashlee处购买"));
<inventorypets:silverfish_pet>.addTooltip(format.green("这个物品可以在养鸡场的Ashlee处购买"));
<inventorypets:wolf_pet>.addTooltip(format.green("这个物品可以在养鸡场的Ashlee处购买"));
<inventorypets:apple_pet>.addTooltip(format.green("这个物品可以在养鸡场的Ashlee处购买"));
<inventorypets:shield_pet>.addTooltip(format.green("这个物品可以在养鸡场的Ashlee处购买"));
<inventorypets:heart_pet>.addTooltip(format.green("这个物品可以在养鸡场的Ashlee处购买"));
<inventorypets:moon_pet>.addTooltip(format.green("这个物品可以在养鸡场的Ashlee处购买"));
<inventorypets:dubstep_pet>.addTooltip(format.green("这个物品可以在养鸡场的Ashlee处购买"));
<inventorypets:juggernaut_pet>.addTooltip(format.green("这个物品可以在养鸡场的Ashlee处购买"));
<inventorypets:illuminati_pet>.withTag({slowDelay: 6000}).addTooltip(format.green("这个物品可以在养鸡场的Ashlee处购买"));
<inventorypets:grave_pet>.addTooltip(format.green("这个物品可以在养鸡场的Ashlee处购买"));
<inventorypets:easter_egg>.addTooltip(format.green("这个物品可以在养鸡场的Ashlee处购买"));
<inventorypets:feed_bag>.addTooltip(format.green("这个物品可以在养鸡场的Ashlee处购买"));

// ChanceCubeFenn

mods.harvestfestival.Shops.addShopToNPC("fenn", "Toys", "我真的很喜欢玩具，你想买一些吗？！", "monday,8000,18000;tuesday,8000,18000;wednesday,8000,18000;thursday,8000,18000;friday,8000,18000", "我会在周一至周五的8点到18点卖玩具");
recipes.remove(<chancecubes:chance_Cube>);
recipes.remove(<chancecubes:chance_Pendant_Tier1>);
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:toys", <chancecubes:chance_Cube>, 1000);
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:toys", <chancecubes:compact_Giant_Chance_Cube>, 5000);
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:toys", <chancecubes:chance_Pendant_Tier1>, 50000);
<chancecubes:compact_Giant_Chance_Cube>.addTooltip(format.green("这个物品可以在Tiberius的儿子Fenn处购买"));
<chancecubes:chance_Cube>.addTooltip(format.green("这个物品可以在Tiberius的儿子Fenn处购买"));
<chancecubes:chance_Pendant_Tier1>.addTooltip(format.green("这个物品可以在Tiberius的儿子Fenn处购买"));

// --- SoggyMustaches Transportation ---

recipes.remove(<soggytransportation:Car>);
recipes.remove(<soggytransportation:WhiteBike>);
recipes.remove(<soggytransportation:UFO>);
recipes.remove(<soggytransportation:Glider>);
recipes.remove(<soggytransportation:HotAirBalloon>);
recipes.remove(<soggytransportation:Helicopter>);
recipes.remove(<soggytransportation:RainbowCar>);
recipes.remove(<soggytransportation:PoliceCar>);
recipes.remove(<soggytransportation:Truck>);
recipes.remove(<soggytransportation:Rocket>);
recipes.remove(<soggytransportation:Flintmobile>);
recipes.remove(<soggytransportation:DirtBike>);
recipes.remove(<soggytransportation:Taxi>);
recipes.remove(<soggytransportation:CoolCar>);
recipes.remove(<soggytransportation:BumperCar>);
recipes.remove(<soggytransportation:SoggyMobile>);
recipes.remove(<soggytransportation:Moon>);
recipes.remove(<soggytransportation:Snowmobile>);
recipes.remove(<soggytransportation:Ambulance>);
recipes.remove(<soggytransportation:HorseCarriage>);
recipes.remove(<soggytransportation:Jeep>);
recipes.remove(<soggytransportation:HorseWagon>);
recipes.remove(<soggytransportation:GolfCart>);
recipes.remove(<soggytransportation:DuneBuggy>);
recipes.remove(<soggytransportation:Forklift>);
recipes.remove(<soggytransportation:Earth>);
recipes.remove(<soggytransportation:BasketBike>);
recipes.remove(<soggytransportation:ElectricScooter>);
recipes.remove(<soggytransportation:GiantHamsterBall>);
recipes.remove(<soggytransportation:FancyCar>);
recipes.remove(<soggytransportation:Wagon>);
recipes.remove(<soggytransportation:Unicycle>);
recipes.remove(<soggytransportation:Motorcycle>);
recipes.remove(<soggytransportation:Hovercraft>);
recipes.remove(<soggytransportation:PatJen>);
recipes.remove(<soggytransportation:WheelBarrel>);
recipes.remove(<soggytransportation:GlassBall>);
recipes.remove(<soggytransportation:BlueBike>);
recipes.remove(<soggytransportation:Bike>);
recipes.remove(<soggytransportation:Biplane>);

mods.harvestfestival.Shops.addShopToNPC("girafi", "mechanic", "我曾经是个冒险家，但我现在决定当一个机械师。", "thursday,1000,14000;friday,1000,14000;saturday,1000,14000;sunday,1000,14000", "我的店只在周四至周日的1点到14点开门。");
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:mechanic", <soggytransportation:Car>, 100000);
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:mechanic", <soggytransportation:WhiteBike>, 1000);
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:mechanic", <soggytransportation:UFO>, 1000000);
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:mechanic", <soggytransportation:Glider>, 100000);
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:mechanic", <soggytransportation:HotAirBalloon>, 100000);
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:mechanic", <soggytransportation:Helicopter>, 100000);
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:mechanic", <soggytransportation:RainbowCar>, 100000);
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:mechanic", <soggytransportation:PoliceCar>, 100000);
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:mechanic", <soggytransportation:Truck>, 100000);
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:mechanic", <soggytransportation:Rocket>, 1000000);
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:mechanic", <soggytransportation:Flintmobile>, 100000);
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:mechanic", <soggytransportation:DirtBike>, 100000);
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:mechanic", <soggytransportation:Taxi>, 100000);
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:mechanic", <soggytransportation:CoolCar>, 100000);
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:mechanic", <soggytransportation:BumperCar>, 100000);
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:mechanic", <soggytransportation:SoggyMobile>, 100000);
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:church", <soggytransportation:Moon>, 1000000);
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:mechanic", <soggytransportation:Snowmobile>, 100000);
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:mechanic", <soggytransportation:Ambulance>, 100000);
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:mechanic", <soggytransportation:HorseCarriage>, 10000);
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:mechanic", <soggytransportation:Jeep>, 100000);
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:mechanic", <soggytransportation:HorseWagon>, 10000);
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:mechanic", <soggytransportation:GolfCart>, 100000);
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:mechanic", <soggytransportation:DuneBuggy>, 100000);
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:mechanic", <soggytransportation:Forklift>, 100000);
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:church", <soggytransportation:Earth>, 1000000);
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:mechanic", <soggytransportation:BasketBike>, 1000);
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:mechanic", <soggytransportation:ElectricScooter>, 100000);
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:mechanic", <soggytransportation:GiantHamsterBall>, 100000);
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:mechanic", <soggytransportation:FancyCar>, 100000);
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:mechanic", <soggytransportation:Wagon>, 10000);
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:mechanic", <soggytransportation:Unicycle>, 1000);
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:mechanic", <soggytransportation:Motorcycle>, 100000);
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:mechanic", <soggytransportation:Hovercraft>, 1000000);
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:mechanic", <soggytransportation:WheelBarrel>, 100000);
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:mechanic", <soggytransportation:GlassBall>, 100000);
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:mechanic", <soggytransportation:BlueBike>, 1000);
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:mechanic", <soggytransportation:Bike>, 1000);
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:mechanic", <soggytransportation:Biplane>, 100000);
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:mechanic", <soggytransportation:PatJen>, 1000000);

<soggytransportation:Car>.addTooltip(format.green("这个物品可以在杂货铺的Johan处购买"));
<soggytransportation:WhiteBike>.addTooltip(format.green("这个物品可以在杂货铺的Johan处购买"));
<soggytransportation:UFO>.addTooltip(format.green("这个物品可以在杂货铺的Johan处购买"));
<soggytransportation:Glider>.addTooltip(format.green("这个物品可以在杂货铺的Johan处购买"));
<soggytransportation:HotAirBalloon>.addTooltip(format.green("这个物品可以在杂货铺的Johan处购买"));
<soggytransportation:Helicopter>.addTooltip(format.green("这个物品可以在杂货铺的Johan处购买"));
<soggytransportation:RainbowCar>.addTooltip(format.green("这个物品可以在杂货铺的Johan处购买"));
<soggytransportation:PoliceCar>.addTooltip(format.green("这个物品可以在杂货铺的Johan处购买"));
<soggytransportation:Truck>.addTooltip(format.green("这个物品可以在杂货铺的Johan处购买"));
<soggytransportation:Rocket>.addTooltip(format.green("这个物品可以在杂货铺的Johan处购买"));
<soggytransportation:Flintmobile>.addTooltip(format.green("这个物品可以在杂货铺的Johan处购买"));
<soggytransportation:DirtBike>.addTooltip(format.green("这个物品可以在杂货铺的Johan处购买"));
<soggytransportation:Taxi>.addTooltip(format.green("这个物品可以在杂货铺的Johan处购买"));
<soggytransportation:CoolCar>.addTooltip(format.green("这个物品可以在杂货铺的Johan处购买"));
<soggytransportation:BumperCar>.addTooltip(format.green("这个物品可以在杂货铺的Johan处购买"));
<soggytransportation:SoggyMobile>.addTooltip(format.green("这个物品可以在杂货铺的Johan处购买"));
<soggytransportation:Moon>.addTooltip(format.green("这个物品可以在教堂的Tomas处购买"));
<soggytransportation:Snowmobile>.addTooltip(format.green("这个物品可以在杂货铺的Johan处购买"));
<soggytransportation:Ambulance>.addTooltip(format.green("这个物品可以在杂货铺的Johan处购买"));
<soggytransportation:HorseCarriage>.addTooltip(format.green("这个物品可以在杂货铺的Johan处购买"));
<soggytransportation:Jeep>.addTooltip(format.green("这个物品可以在杂货铺的Johan处购买"));
<soggytransportation:HorseWagon>.addTooltip(format.green("这个物品可以在杂货铺的Johan处购买"));
<soggytransportation:GolfCart>.addTooltip(format.green("这个物品可以在杂货铺的Johan处购买"));
<soggytransportation:DuneBuggy>.addTooltip(format.green("这个物品可以在杂货铺的Johan处购买"));
<soggytransportation:Forklift>.addTooltip(format.green("这个物品可以在杂货铺的Johan处购买"));
<soggytransportation:Earth>.addTooltip(format.green("这个物品可以在教堂的Tomas处购买"));
<soggytransportation:BasketBike>.addTooltip(format.green("这个物品可以在杂货铺的Johan处购买"));
<soggytransportation:ElectricScooter>.addTooltip(format.green("这个物品可以在杂货铺的Johan处购买"));
<soggytransportation:GiantHamsterBall>.addTooltip(format.green("这个物品可以在杂货铺的Johan处购买"));
<soggytransportation:FancyCar>.addTooltip(format.green("这个物品可以在杂货铺的Johan处购买"));
<soggytransportation:Wagon>.addTooltip(format.green("这个物品可以在杂货铺的Johan处购买"));
<soggytransportation:Unicycle>.addTooltip(format.green("这个物品可以在杂货铺的Johan处购买"));
<soggytransportation:Motorcycle>.addTooltip(format.green("这个物品可以在杂货铺的Johan处购买"));
<soggytransportation:Hovercraft>.addTooltip(format.green("这个物品可以在杂货铺的Johan处购买"));
<soggytransportation:WheelBarrel>.addTooltip(format.green("这个物品可以在杂货铺的Johan处购买"));
<soggytransportation:GlassBall>.addTooltip(format.green("这个物品可以在杂货铺的Johan处购买"));
<soggytransportation:BlueBike>.addTooltip(format.green("这个物品可以在杂货铺的Johan处购买"));
<soggytransportation:Bike>.addTooltip(format.green("这个物品可以在杂货铺的Johan处购买"));
<soggytransportation:Biplane>.addTooltip(format.green("这个物品可以在杂货铺的Johan处购买"));
<soggytransportation:PatJen>.addTooltip(format.green("这个物品可以在杂货铺的Johan处购买"));

// SoulShard
recipes.remove(<soulshardstow:BlockCage>);
<soulshardstow:BlockCage>.addTooltip(format.green("这个物品可以在教堂的Tomas处购买"));
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:church", <soulshardstow:BlockCage>, 1000000);

// --- mysticalagriculture

// Furnaces

recipes.remove(<mysticalagriculture:inferium_furnace>);
recipes.remove(<mysticalagriculture:prudentium_furnace>);
recipes.remove(<mysticalagriculture:intermedium_furnace>);
recipes.remove(<mysticalagriculture:superium_furnace>);
recipes.remove(<mysticalagriculture:supremium_furnace>);
recipes.remove(<mysticalagriculture:ultimate_furnace>);

mods.harvestfestival.Shops.addPurchasable("harvestfestival:cafe", <mysticalagriculture:inferium_furnace>, 10000);
mods.harvestfestival.Shops.addPurchasable("harvestfestival:cafe", <mysticalagriculture:prudentium_furnace>, 20000);
mods.harvestfestival.Shops.addPurchasable("harvestfestival:cafe", <mysticalagriculture:intermedium_furnace>, 40000);
mods.harvestfestival.Shops.addPurchasable("harvestfestival:cafe", <mysticalagriculture:superium_furnace>, 80000);
mods.harvestfestival.Shops.addPurchasable("harvestfestival:cafe", <mysticalagriculture:supremium_furnace>, 120000);
mods.harvestfestival.Shops.addPurchasable("harvestfestival:cafe", <mysticalagriculture:ultimate_furnace>, 1000000);
<mysticalagriculture:inferium_furnace>.addTooltip(format.green("这个物品可以在咖啡屋的Liara处购买"));
<mysticalagriculture:prudentium_furnace>.addTooltip(format.green("这个物品可以在咖啡屋的Liara处购买"));
<mysticalagriculture:intermedium_furnace>.addTooltip(format.green("这个物品可以在咖啡屋的Liara处购买"));
<mysticalagriculture:superium_furnace>.addTooltip(format.green("这个物品可以在咖啡屋的Liara处购买"));
<mysticalagriculture:supremium_furnace>.addTooltip(format.green("这个物品可以在咖啡屋的Liara处购买"));
<mysticalagriculture:ultimate_furnace>.addTooltip(format.green("这个物品可以在咖啡屋的Liara处购买"));

// Armor
recipes.remove(<mysticalagriculture:supremium_helmet>);
recipes.remove(<mysticalagriculture:supremium_chestplate>);
recipes.remove(<mysticalagriculture:supremium_leggings>);
recipes.remove(<mysticalagriculture:supremium_boots>);

mods.harvestfestival.Shops.addPurchasable("MineTweaker3:church", <mysticalagriculture:supremium_helmet>, 1000000);
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:church", <mysticalagriculture:supremium_chestplate>, 1000000);
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:church", <mysticalagriculture:supremium_leggings>, 1000000);
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:church", <mysticalagriculture:supremium_boots>, 1000000);

<mysticalagriculture:supremium_helmet>.addTooltip(format.green("这个物品可以在教堂的Tomas处购买"));
<mysticalagriculture:supremium_chestplate>.addTooltip(format.green("这个物品可以在教堂的Tomas处购买"));
<mysticalagriculture:supremium_leggings>.addTooltip(format.green("这个物品可以在教堂的Tomas处购买"));
<mysticalagriculture:supremium_boots>.addTooltip(format.green("这个物品可以在教堂的Tomas处购买"));

// Tools and Weapons
recipes.remove(<mysticalagriculture:supremium_sword>);
recipes.remove(<mysticalagriculture:supremium_pickaxe>);
recipes.remove(<mysticalagriculture:supremium_shovel>);
recipes.remove(<mysticalagriculture:supremium_axe>);
recipes.remove(<mysticalagriculture:supremium_hoe>);
recipes.remove(<mysticalagriculture:supremium_shears>);
recipes.remove(<mysticalagriculture:supremium_bow>);
recipes.remove(<mysticalagriculture:supremium_sickle>);
recipes.remove(<mysticalagriculture:supremium_scythe>);
recipes.remove(<mysticalagriculture:watering_can:4>);

mods.harvestfestival.Shops.addPurchasable("MineTweaker3:church", <mysticalagriculture:supremium_sword>, 500000);
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:church", <mysticalagriculture:supremium_pickaxe>, 500000);
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:church", <mysticalagriculture:supremium_shovel>, 500000);
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:church", <mysticalagriculture:supremium_axe>, 500000);
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:church", <mysticalagriculture:supremium_hoe>, 500000);
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:church", <mysticalagriculture:supremium_shears>, 500000);
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:church", <mysticalagriculture:supremium_bow>, 500000);
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:church", <mysticalagriculture:supremium_sickle>, 500000);
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:church", <mysticalagriculture:supremium_scythe>, 500000);
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:church", <mysticalagriculture:watering_can:4>, 500000);

<mysticalagriculture:supremium_sword>.addTooltip(format.green("这个物品可以在教堂的Tomas处购买"));
<mysticalagriculture:supremium_pickaxe>.addTooltip(format.green("这个物品可以在教堂的Tomas处购买"));
<mysticalagriculture:supremium_shovel>.addTooltip(format.green("这个物品可以在教堂的Tomas处购买"));
<mysticalagriculture:supremium_axe>.addTooltip(format.green("这个物品可以在教堂的Tomas处购买"));
<mysticalagriculture:supremium_hoe>.addTooltip(format.green("这个物品可以在教堂的Tomas处购买"));
<mysticalagriculture:supremium_shears>.addTooltip(format.green("这个物品可以在教堂的Tomas处购买"));
<mysticalagriculture:supremium_bow>.addTooltip(format.green("这个物品可以在教堂的Tomas处购买"));
<mysticalagriculture:supremium_sickle>.addTooltip(format.green("这个物品可以在教堂的Tomas处购买"));
<mysticalagriculture:supremium_scythe>.addTooltip(format.green("这个物品可以在教堂的Tomas处购买"));
<mysticalagriculture:watering_can:4>.addTooltip(format.green("这个物品可以在教堂的Tomas处购买"));
<mysticalagriculture:watering_can:4>.addTooltip(format.green("用于Mystical Agriculture模组的作物"));

// Machines
recipes.remove(<mysticalagriculture:seed_reprocessor>);
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:gadgets", <mysticalagriculture:seed_reprocessor>, 300000);
<mysticalagriculture:seed_reprocessor>.addTooltip(format.green("这个物品能够在咖啡屋的Katlin处购买"));
<mysticalagriculture:seed_reprocessor>.addTooltip(format.green("只对Mystical Agriculture的作物有效"));

// Ore
<mysticalagriculture:prosperity_ore>.addTooltip(format.green("这些矿物不在世界中生成"));
<mysticalagriculture:nether_prosperity_ore>.addTooltip(format.green("这些矿物不在世界中生成"));
<mysticalagriculture:end_prosperity_ore>.addTooltip(format.green("这些矿物不在世界中生成"));
<mysticalagriculture:inferium_ore>.addTooltip(format.green("这些矿物不在世界中生成"));
<mysticalagriculture:nether_inferium_ore>.addTooltip(format.green("这些矿物不在世界中生成"));
<mysticalagriculture:end_inferium_ore>.addTooltip(format.green("这些矿物不在世界中生成"));

recipes.remove(<mysticalagriculture:prosperity_shard>);
<mysticalagriculture:prosperity_shard>.addTooltip(format.green("这个物品可以在铁匠铺购买"));
mods.harvestfestival.Shops.addPurchasable("harvestfestival:blacksmith", <mysticalagriculture:prosperity_shard>, 2000);

recipes.remove(<mysticalagriculture:soulium_dust>);
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:church", <mysticalagriculture:soulium_dust>, 1500);
<mysticalagriculture:soulium_dust>.addTooltip(format.green("这个物品可以在教堂的Tomas处购买"));

// Crops
recipes.remove(<mysticalagriculture:mystical_fertilizer>);
<mysticalagriculture:mystical_fertilizer>.addTooltip(format.green("只对Mystical Agriculture的作物有效"));
mods.harvestfestival.Shops.addShopToNPC("jamie", "Botanists", "我是一名市长，但我也是一名植物学家。我开了一家拥有很多绝妙作物的商店！", "monday,8000,18000;tuesday,8000,18000;wednesday,8000,18000;thursday,8000,18000;friday,8000,18000", "我的商店会在周一至周五的8点到18点开门");
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:church", <mysticalagriculture:mystical_fertilizer>, 3000);
<mysticalagriculture:mystical_fertilizer>.addTooltip(format.green("可以在教堂处购买"));

recipes.remove(<mysticalagriculture:inferium_apple>);
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:gadgets", <mysticalagriculture:inferium_apple>, 5000);
<mysticalagriculture:inferium_apple>.addTooltip(format.green("这个物品能够在咖啡屋的Katlin处购买"));

// Tier1
recipes.remove(<mysticalagriculture:stone_seeds>);
recipes.remove(<mysticalagriculture:dirt_seeds>);
recipes.remove(<mysticalagriculture:nature_seeds>);
recipes.remove(<mysticalagriculture:wood_seeds>);
recipes.remove(<mysticalagriculture:water_seeds>);
recipes.remove(<mysticalagriculture:ice_seeds>);
recipes.remove(<mysticalagriculture:zombie_seeds>);
recipes.remove(<mysticalagriculture:tier1_inferium_seeds>);

mods.harvestfestival.Shops.addPurchasable("MineTweaker3:botanists", <mysticalagriculture:stone_seeds>, 10000);
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:botanists", <mysticalagriculture:dirt_seeds>, 10000);
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:botanists", <mysticalagriculture:nature_seeds>, 10000);
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:botanists", <mysticalagriculture:wood_seeds>, 10000);
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:botanists", <mysticalagriculture:water_seeds>, 10000);
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:botanists", <mysticalagriculture:ice_seeds>, 10000);
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:botanists", <mysticalagriculture:zombie_seeds>, 10000);
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:botanists", <mysticalagriculture:tier1_inferium_seeds>, 50000);

<mysticalagriculture:stone_seeds>.addTooltip(format.green("这个物品可以在市政厅的Jeimmi处购买"));
<mysticalagriculture:tier1_inferium_seeds>.addTooltip(format.green("这个物品可以在市政厅的Jeimmi处购买"));
<mysticalagriculture:dirt_seeds>.addTooltip(format.green("这个物品可以在市政厅的Jeimmi处购买"));
<mysticalagriculture:nature_seeds>.addTooltip(format.green("这个物品可以在市政厅的Jeimmi处购买"));
<mysticalagriculture:wood_seeds>.addTooltip(format.green("这个物品可以在市政厅的Jeimmi处购买"));
<mysticalagriculture:water_seeds>.addTooltip(format.green("这个物品可以在市政厅的Jeimmi处购买"));
<mysticalagriculture:ice_seeds>.addTooltip(format.green("这个物品可以在市政厅的Jeimmi处购买"));
<mysticalagriculture:zombie_seeds>.addTooltip(format.green("这个物品可以在市政厅的Jeimmi处购买"));

<mysticalagriculture:stone_seeds>.addTooltip(format.green("此作物忽视季节！"));
<mysticalagriculture:dirt_seeds>.addTooltip(format.green("此作物忽视季节！"));
<mysticalagriculture:nature_seeds>.addTooltip(format.green("此作物忽视季节！"));
<mysticalagriculture:wood_seeds>.addTooltip(format.green("此作物忽视季节！"));
<mysticalagriculture:water_seeds>.addTooltip(format.green("此作物忽视季节！"));
<mysticalagriculture:ice_seeds>.addTooltip(format.green("此作物忽视季节！"));
<mysticalagriculture:zombie_seeds>.addTooltip(format.green("此作物忽视季节！"));
<mysticalagriculture:tier1_inferium_seeds>.addTooltip(format.green("此作物忽视季节！"));

// Tier2
recipes.remove(<mysticalagriculture:cow_seeds>);
recipes.remove(<mysticalagriculture:chicken_seeds>);
recipes.remove(<mysticalagriculture:pig_seeds>);
recipes.remove(<mysticalagriculture:coal_seeds>);
recipes.remove(<mysticalagriculture:nether_seeds>);
recipes.remove(<mysticalagriculture:dye_seeds>);
recipes.remove(<mysticalagriculture:fire_seeds>);
recipes.remove(<mysticalagriculture:sheep_seeds>);
recipes.remove(<mysticalagriculture:slime_seeds>);
recipes.remove(<mysticalagriculture:silicon_seeds>);
recipes.remove(<mysticalagriculture:sulfur_seeds>);
recipes.remove(<mysticalagriculture:aluminum_seeds>);
recipes.remove(<mysticalagriculture:copper_seeds>);
recipes.remove(<mysticalagriculture:mystical_flower_seeds>);
recipes.remove(<mysticalagriculture:marble_seeds>);
recipes.remove(<mysticalagriculture:limestone_seeds>);
recipes.remove(<mysticalagriculture:basalt_seeds>);
recipes.remove(<mysticalagriculture:apatite_seeds>);

mods.harvestfestival.Shops.addPurchasable("MineTweaker3:botanists", <mysticalagriculture:cow_seeds>, 50000);
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:botanists", <mysticalagriculture:chicken_seeds>, 50000);
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:botanists", <mysticalagriculture:pig_seeds>, 50000);
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:botanists", <mysticalagriculture:coal_seeds>, 50000);
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:botanists", <mysticalagriculture:nether_seeds>, 50000);
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:botanists", <mysticalagriculture:dye_seeds>, 50000);
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:botanists", <mysticalagriculture:fire_seeds>, 50000);
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:botanists", <mysticalagriculture:sheep_seeds>, 50000);
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:botanists", <mysticalagriculture:slime_seeds>, 50000);
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:botanists", <mysticalagriculture:silicon_seeds>, 50000);
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:botanists", <mysticalagriculture:sulfur_seeds>, 50000);
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:botanists", <mysticalagriculture:aluminum_seeds>, 50000);
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:botanists", <mysticalagriculture:copper_seeds>, 50000);
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:botanists", <mysticalagriculture:mystical_flower_seeds>, 50000);
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:botanists", <mysticalagriculture:marble_seeds>, 50000);
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:botanists", <mysticalagriculture:limestone_seeds>, 50000);
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:botanists", <mysticalagriculture:basalt_seeds>, 50000);
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:botanists", <mysticalagriculture:apatite_seeds>, 50000);

<mysticalagriculture:cow_seeds>.addTooltip(format.green("这个物品可以在市政厅的Jeimmi处购买"));
<mysticalagriculture:chicken_seeds>.addTooltip(format.green("这个物品可以在市政厅的Jeimmi处购买"));
<mysticalagriculture:pig_seeds>.addTooltip(format.green("这个物品可以在市政厅的Jeimmi处购买"));
<mysticalagriculture:coal_seeds>.addTooltip(format.green("这个物品可以在市政厅的Jeimmi处购买"));
<mysticalagriculture:nether_seeds>.addTooltip(format.green("这个物品可以在市政厅的Jeimmi处购买"));
<mysticalagriculture:dye_seeds>.addTooltip(format.green("这个物品可以在市政厅的Jeimmi处购买"));
<mysticalagriculture:fire_seeds>.addTooltip(format.green("这个物品可以在市政厅的Jeimmi处购买"));
<mysticalagriculture:sheep_seeds>.addTooltip(format.green("这个物品可以在市政厅的Jeimmi处购买"));
<mysticalagriculture:slime_seeds>.addTooltip(format.green("这个物品可以在市政厅的Jeimmi处购买"));
<mysticalagriculture:silicon_seeds>.addTooltip(format.green("这个物品可以在市政厅的Jeimmi处购买"));
<mysticalagriculture:sulfur_seeds>.addTooltip(format.green("这个物品可以在市政厅的Jeimmi处购买"));
<mysticalagriculture:aluminum_seeds>.addTooltip(format.green("这个物品可以在市政厅的Jeimmi处购买"));
<mysticalagriculture:copper_seeds>.addTooltip(format.green("这个物品可以在市政厅的Jeimmi处购买"));
<mysticalagriculture:mystical_flower_seeds>.addTooltip(format.green("这个物品可以在市政厅的Jeimmi处购买"));
<mysticalagriculture:marble_seeds>.addTooltip(format.green("这个物品可以在市政厅的Jeimmi处购买"));
<mysticalagriculture:limestone_seeds>.addTooltip(format.green("这个物品可以在市政厅的Jeimmi处购买"));
<mysticalagriculture:basalt_seeds>.addTooltip(format.green("这个物品可以在市政厅的Jeimmi处购买"));
<mysticalagriculture:apatite_seeds>.addTooltip(format.green("这个物品可以在市政厅的Jeimmi处购买"));

<mysticalagriculture:cow_seeds>.addTooltip(format.green("此作物忽视季节！"));
<mysticalagriculture:chicken_seeds>.addTooltip(format.green("此作物忽视季节！"));
<mysticalagriculture:pig_seeds>.addTooltip(format.green("此作物忽视季节！"));
<mysticalagriculture:coal_seeds>.addTooltip(format.green("此作物忽视季节！"));
<mysticalagriculture:nether_seeds>.addTooltip(format.green("此作物忽视季节！"));
<mysticalagriculture:dye_seeds>.addTooltip(format.green("此作物忽视季节！"));
<mysticalagriculture:fire_seeds>.addTooltip(format.green("此作物忽视季节！"));
<mysticalagriculture:sheep_seeds>.addTooltip(format.green("此作物忽视季节！"));
<mysticalagriculture:slime_seeds>.addTooltip(format.green("此作物忽视季节！"));
<mysticalagriculture:silicon_seeds>.addTooltip(format.green("此作物忽视季节！"));
<mysticalagriculture:sulfur_seeds>.addTooltip(format.green("此作物忽视季节！"));
<mysticalagriculture:aluminum_seeds>.addTooltip(format.green("此作物忽视季节！"));
<mysticalagriculture:copper_seeds>.addTooltip(format.green("此作物忽视季节！"));
<mysticalagriculture:mystical_flower_seeds>.addTooltip(format.green("此作物忽视季节！"));
<mysticalagriculture:marble_seeds>.addTooltip(format.green("此作物忽视季节！"));
<mysticalagriculture:limestone_seeds>.addTooltip(format.green("此作物忽视季节！"));
<mysticalagriculture:basalt_seeds>.addTooltip(format.green("此作物忽视季节！"));
<mysticalagriculture:apatite_seeds>.addTooltip(format.green("此作物忽视季节！"));

//Tier3
recipes.remove(<mysticalagriculture:iron_seeds>);
recipes.remove(<mysticalagriculture:nether_quartz_seeds>);
recipes.remove(<mysticalagriculture:glowstone_seeds>);
recipes.remove(<mysticalagriculture:redstone_seeds>);
recipes.remove(<mysticalagriculture:saltpeter_seeds>);
recipes.remove(<mysticalagriculture:guardian_seeds>);
recipes.remove(<mysticalagriculture:rabbit_seeds>);
recipes.remove(<mysticalagriculture:spider_seeds>);
recipes.remove(<mysticalagriculture:creeper_seeds>);
recipes.remove(<mysticalagriculture:skeleton_seeds>);
recipes.remove(<mysticalagriculture:obsidian_seeds>);
recipes.remove(<mysticalagriculture:tin_seeds>);
recipes.remove(<mysticalagriculture:bronze_seeds>);
recipes.remove(<mysticalagriculture:silver_seeds>);
recipes.remove(<mysticalagriculture:lead_seeds>);
recipes.remove(<mysticalagriculture:manasteel_seeds>);
recipes.remove(<mysticalagriculture:ender_biotite_seeds>);
recipes.remove(<mysticalagriculture:quartz_enriched_iron_seeds>);

mods.harvestfestival.Shops.addPurchasable("MineTweaker3:botanists", <mysticalagriculture:iron_seeds>, 250000);
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:botanists", <mysticalagriculture:nether_quartz_seeds>, 250000);
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:botanists", <mysticalagriculture:glowstone_seeds>, 250000);
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:botanists", <mysticalagriculture:redstone_seeds>, 250000);
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:botanists", <mysticalagriculture:saltpeter_seeds>, 250000);
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:botanists", <mysticalagriculture:guardian_seeds>, 250000);
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:botanists", <mysticalagriculture:rabbit_seeds>, 250000);
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:botanists", <mysticalagriculture:spider_seeds>, 250000);
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:botanists", <mysticalagriculture:creeper_seeds>, 250000);
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:botanists", <mysticalagriculture:skeleton_seeds>, 250000);
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:botanists", <mysticalagriculture:obsidian_seeds>, 250000);
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:botanists", <mysticalagriculture:tin_seeds>, 250000);
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:botanists", <mysticalagriculture:bronze_seeds>, 250000);
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:botanists", <mysticalagriculture:silver_seeds>, 250000);
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:botanists", <mysticalagriculture:lead_seeds>, 250000);
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:botanists", <mysticalagriculture:manasteel_seeds>, 250000);
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:botanists", <mysticalagriculture:ender_biotite_seeds>, 250000);
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:botanists", <mysticalagriculture:quartz_enriched_iron_seeds>, 250000);

<mysticalagriculture:iron_seeds>.addTooltip(format.green("这个物品可以在市政厅的Jeimmi处购买"));
<mysticalagriculture:nether_quartz_seeds>.addTooltip(format.green("这个物品可以在市政厅的Jeimmi处购买"));
<mysticalagriculture:glowstone_seeds>.addTooltip(format.green("这个物品可以在市政厅的Jeimmi处购买"));
<mysticalagriculture:redstone_seeds>.addTooltip(format.green("这个物品可以在市政厅的Jeimmi处购买"));
<mysticalagriculture:saltpeter_seeds>.addTooltip(format.green("这个物品可以在市政厅的Jeimmi处购买"));
<mysticalagriculture:guardian_seeds>.addTooltip(format.green("这个物品可以在市政厅的Jeimmi处购买"));
<mysticalagriculture:rabbit_seeds>.addTooltip(format.green("这个物品可以在市政厅的Jeimmi处购买"));
<mysticalagriculture:spider_seeds>.addTooltip(format.green("这个物品可以在市政厅的Jeimmi处购买"));
<mysticalagriculture:creeper_seeds>.addTooltip(format.green("这个物品可以在市政厅的Jeimmi处购买"));
<mysticalagriculture:skeleton_seeds>.addTooltip(format.green("这个物品可以在市政厅的Jeimmi处购买"));
<mysticalagriculture:obsidian_seeds>.addTooltip(format.green("这个物品可以在市政厅的Jeimmi处购买"));
<mysticalagriculture:tin_seeds>.addTooltip(format.green("这个物品可以在市政厅的Jeimmi处购买"));
<mysticalagriculture:bronze_seeds>.addTooltip(format.green("这个物品可以在市政厅的Jeimmi处购买"));
<mysticalagriculture:silver_seeds>.addTooltip(format.green("这个物品可以在市政厅的Jeimmi处购买"));
<mysticalagriculture:lead_seeds>.addTooltip(format.green("这个物品可以在市政厅的Jeimmi处购买"));
<mysticalagriculture:manasteel_seeds>.addTooltip(format.green("这个物品可以在市政厅的Jeimmi处购买"));
<mysticalagriculture:ender_biotite_seeds>.addTooltip(format.green("这个物品可以在市政厅的Jeimmi处购买"));
<mysticalagriculture:quartz_enriched_iron_seeds>.addTooltip(format.green("这个物品可以在市政厅的Jeimmi处购买"));

<mysticalagriculture:iron_seeds>.addTooltip(format.green("此作物忽视季节！"));
<mysticalagriculture:nether_quartz_seeds>.addTooltip(format.green("此作物忽视季节！"));
<mysticalagriculture:glowstone_seeds>.addTooltip(format.green("此作物忽视季节！"));
<mysticalagriculture:redstone_seeds>.addTooltip(format.green("此作物忽视季节！"));
<mysticalagriculture:saltpeter_seeds>.addTooltip(format.green("此作物忽视季节！"));
<mysticalagriculture:guardian_seeds>.addTooltip(format.green("此作物忽视季节！"));
<mysticalagriculture:rabbit_seeds>.addTooltip(format.green("此作物忽视季节！"));
<mysticalagriculture:spider_seeds>.addTooltip(format.green("此作物忽视季节！"));
<mysticalagriculture:creeper_seeds>.addTooltip(format.green("此作物忽视季节！"));
<mysticalagriculture:skeleton_seeds>.addTooltip(format.green("此作物忽视季节！"));
<mysticalagriculture:obsidian_seeds>.addTooltip(format.green("此作物忽视季节！"));
<mysticalagriculture:tin_seeds>.addTooltip(format.green("此作物忽视季节！"));
<mysticalagriculture:bronze_seeds>.addTooltip(format.green("此作物忽视季节！"));
<mysticalagriculture:silver_seeds>.addTooltip(format.green("此作物忽视季节！"));
<mysticalagriculture:lead_seeds>.addTooltip(format.green("此作物忽视季节！"));
<mysticalagriculture:manasteel_seeds>.addTooltip(format.green("此作物忽视季节！"));
<mysticalagriculture:ender_biotite_seeds>.addTooltip(format.green("此作物忽视季节！"));
<mysticalagriculture:quartz_enriched_iron_seeds>.addTooltip(format.green("此作物忽视季节！"));

//Tier4
recipes.remove(<mysticalagriculture:gold_seeds>);
recipes.remove(<mysticalagriculture:steel_seeds>);
recipes.remove(<mysticalagriculture:enderman_seeds>);
recipes.remove(<mysticalagriculture:ghast_seeds>);
recipes.remove(<mysticalagriculture:blaze_seeds>);
recipes.remove(<mysticalagriculture:experience_seeds>);
recipes.remove(<mysticalagriculture:lapis_lazuli_seeds>);
recipes.remove(<mysticalagriculture:end_seeds>);
recipes.remove(<mysticalagriculture:nickel_seeds>);
recipes.remove(<mysticalagriculture:constantan_seeds>);
recipes.remove(<mysticalagriculture:electrum_seeds>);
recipes.remove(<mysticalagriculture:ruby_seeds>);
recipes.remove(<mysticalagriculture:sapphire_seeds>);
recipes.remove(<mysticalagriculture:peridot_seeds>);
recipes.remove(<mysticalagriculture:amber_seeds>);
recipes.remove(<mysticalagriculture:tanzanite_seeds>);
recipes.remove(<mysticalagriculture:malachite_seeds>);
recipes.remove(<mysticalagriculture:topaz_seeds>);

mods.harvestfestival.Shops.addPurchasable("MineTweaker3:botanists", <mysticalagriculture:gold_seeds>, 500000);
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:botanists", <mysticalagriculture:steel_seeds>, 500000);
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:botanists", <mysticalagriculture:enderman_seeds>, 500000);
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:botanists", <mysticalagriculture:ghast_seeds>, 500000);
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:botanists", <mysticalagriculture:blaze_seeds>, 500000);
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:botanists", <mysticalagriculture:experience_seeds>, 500000);
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:botanists", <mysticalagriculture:lapis_lazuli_seeds>, 500000);
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:botanists", <mysticalagriculture:end_seeds>, 500000);
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:botanists", <mysticalagriculture:nickel_seeds>, 500000);
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:botanists", <mysticalagriculture:constantan_seeds>, 500000);
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:botanists", <mysticalagriculture:electrum_seeds>, 500000);
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:botanists", <mysticalagriculture:ruby_seeds>, 500000);
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:botanists", <mysticalagriculture:sapphire_seeds>, 500000);
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:botanists", <mysticalagriculture:peridot_seeds>, 500000);
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:botanists", <mysticalagriculture:amber_seeds>, 500000);
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:botanists", <mysticalagriculture:tanzanite_seeds>, 500000);
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:botanists", <mysticalagriculture:malachite_seeds>, 500000);
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:botanists", <mysticalagriculture:topaz_seeds>, 500000);

<mysticalagriculture:gold_seeds>.addTooltip(format.green("这个物品可以在市政厅的Jeimmi处购买"));
<mysticalagriculture:steel_seeds>.addTooltip(format.green("这个物品可以在市政厅的Jeimmi处购买"));
<mysticalagriculture:enderman_seeds>.addTooltip(format.green("这个物品可以在市政厅的Jeimmi处购买"));
<mysticalagriculture:ghast_seeds>.addTooltip(format.green("这个物品可以在市政厅的Jeimmi处购买"));
<mysticalagriculture:blaze_seeds>.addTooltip(format.green("这个物品可以在市政厅的Jeimmi处购买"));
<mysticalagriculture:experience_seeds>.addTooltip(format.green("这个物品可以在市政厅的Jeimmi处购买"));
<mysticalagriculture:lapis_lazuli_seeds>.addTooltip(format.green("这个物品可以在市政厅的Jeimmi处购买"));
<mysticalagriculture:end_seeds>.addTooltip(format.green("这个物品可以在市政厅的Jeimmi处购买"));
<mysticalagriculture:nickel_seeds>.addTooltip(format.green("这个物品可以在市政厅的Jeimmi处购买"));
<mysticalagriculture:constantan_seeds>.addTooltip(format.green("这个物品可以在市政厅的Jeimmi处购买"));
<mysticalagriculture:electrum_seeds>.addTooltip(format.green("这个物品可以在市政厅的Jeimmi处购买"));
<mysticalagriculture:ruby_seeds>.addTooltip(format.green("这个物品可以在市政厅的Jeimmi处购买"));
<mysticalagriculture:sapphire_seeds>.addTooltip(format.green("这个物品可以在市政厅的Jeimmi处购买"));
<mysticalagriculture:peridot_seeds>.addTooltip(format.green("这个物品可以在市政厅的Jeimmi处购买"));
<mysticalagriculture:amber_seeds>.addTooltip(format.green("这个物品可以在市政厅的Jeimmi处购买"));
<mysticalagriculture:tanzanite_seeds>.addTooltip(format.green("这个物品可以在市政厅的Jeimmi处购买"));
<mysticalagriculture:malachite_seeds>.addTooltip(format.green("这个物品可以在市政厅的Jeimmi处购买"));
<mysticalagriculture:topaz_seeds>.addTooltip(format.green("这个物品可以在市政厅的Jeimmi处购买"));

<mysticalagriculture:gold_seeds>.addTooltip(format.green("此作物忽视季节！"));
<mysticalagriculture:steel_seeds>.addTooltip(format.green("此作物忽视季节！"));
<mysticalagriculture:enderman_seeds>.addTooltip(format.green("此作物忽视季节！"));
<mysticalagriculture:ghast_seeds>.addTooltip(format.green("此作物忽视季节！"));
<mysticalagriculture:blaze_seeds>.addTooltip(format.green("此作物忽视季节！"));
<mysticalagriculture:experience_seeds>.addTooltip(format.green("此作物忽视季节！"));
<mysticalagriculture:lapis_lazuli_seeds>.addTooltip(format.green("此作物忽视季节！"));
<mysticalagriculture:end_seeds>.addTooltip(format.green("此作物忽视季节！"));
<mysticalagriculture:nickel_seeds>.addTooltip(format.green("此作物忽视季节！"));
<mysticalagriculture:constantan_seeds>.addTooltip(format.green("此作物忽视季节！"));
<mysticalagriculture:electrum_seeds>.addTooltip(format.green("此作物忽视季节！"));
<mysticalagriculture:ruby_seeds>.addTooltip(format.green("此作物忽视季节！"));
<mysticalagriculture:sapphire_seeds>.addTooltip(format.green("此作物忽视季节！"));
<mysticalagriculture:peridot_seeds>.addTooltip(format.green("此作物忽视季节！"));
<mysticalagriculture:amber_seeds>.addTooltip(format.green("此作物忽视季节！"));
<mysticalagriculture:tanzanite_seeds>.addTooltip(format.green("此作物忽视季节！"));
<mysticalagriculture:malachite_seeds>.addTooltip(format.green("此作物忽视季节！"));
<mysticalagriculture:topaz_seeds>.addTooltip(format.green("此作物忽视季节！"));

// Tier5
recipes.remove(<mysticalagriculture:diamond_seeds>);
recipes.remove(<mysticalagriculture:emerald_seeds>);
recipes.remove(<mysticalagriculture:wither_skeleton_seeds>);
recipes.remove(<mysticalagriculture:uranium_seeds>);
recipes.remove(<mysticalagriculture:terrasteel_seeds>);
recipes.remove(<mysticalagriculture:ender_amethyst_seeds>);

mods.harvestfestival.Shops.addPurchasable("MineTweaker3:botanists", <mysticalagriculture:diamond_seeds>, 1000000);
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:botanists", <mysticalagriculture:emerald_seeds>, 1000000);
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:botanists", <mysticalagriculture:wither_skeleton_seeds>, 1000000);
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:botanists", <mysticalagriculture:uranium_seeds>, 1000000);
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:botanists", <mysticalagriculture:terrasteel_seeds>, 1000000);
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:botanists", <mysticalagriculture:ender_amethyst_seeds>, 1000000);

<mysticalagriculture:diamond_seeds>.addTooltip(format.green("这个物品可以在市政厅的Jeimmi处购买"));
<mysticalagriculture:emerald_seeds>.addTooltip(format.green("这个物品可以在市政厅的Jeimmi处购买"));
<mysticalagriculture:wither_skeleton_seeds>.addTooltip(format.green("这个物品可以在市政厅的Jeimmi处购买"));
<mysticalagriculture:uranium_seeds>.addTooltip(format.green("这个物品可以在市政厅的Jeimmi处购买"));
<mysticalagriculture:terrasteel_seeds>.addTooltip(format.green("这个物品可以在市政厅的Jeimmi处购买"));
<mysticalagriculture:ender_amethyst_seeds>.addTooltip(format.green("这个物品可以在市政厅的Jeimmi处购买"));

<mysticalagriculture:diamond_seeds>.addTooltip(format.green("此作物忽视季节！"));
<mysticalagriculture:emerald_seeds>.addTooltip(format.green("此作物忽视季节！"));
<mysticalagriculture:wither_skeleton_seeds>.addTooltip(format.green("此作物忽视季节！"));
<mysticalagriculture:uranium_seeds>.addTooltip(format.green("此作物忽视季节！"));
<mysticalagriculture:terrasteel_seeds>.addTooltip(format.green("此作物忽视季节！"));
<mysticalagriculture:ender_amethyst_seeds>.addTooltip(format.green("此作物忽视季节！"));

// CloeShop

mods.harvestfestival.Shops.addShopToNPC("cloe", "Librarian", "我喜欢书信。所以我有一间邮局！", "monday,8000,18000;tuesday,8000,18000;wednesday,8000,18000;thursday,8000,18000;friday,8000,18000", "我的邮局会在周一至周五的8点到18点营业");

recipes.remove(<forestry:mailbox>);
recipes.remove(<forestry:stamps>);
recipes.remove(<forestry:stamps:1>);
recipes.remove(<railcraft:logbook>);

mods.harvestfestival.Shops.addPurchasable("MineTweaker3:librarian", <forestry:mailbox>, 5000);
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:librarian", <forestry:stamps>, 200);
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:librarian", <forestry:stamps:1>, 350);
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:librarian", <railcraft:logbook>, 2500);
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:librarian", <checklist:task_book>, 500);
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:librarian", <enchiridion:book>.withTag({identifier: "Guide_On_How_To_Summon_Harvest_Goddess"}), 500);
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:librarian", <checklist:task_table>, 1000);

<checklist:task_table>.addTooltip(format.green("这个物品可以在市政厅的Cloe处购买"));
<forestry:mailbox>.addTooltip(format.green("这个物品可以在市政厅的Cloe处购买"));
<forestry:stamps>.addTooltip(format.green("这个物品可以在市政厅的Cloe处购买"));
<forestry:stamps:1>.addTooltip(format.green("这个物品可以在市政厅的Cloe处购买"));
<railcraft:logbook>.addTooltip(format.green("这个物品可以在市政厅的Cloe处购买"));

// --- EnchantingPlus ---
recipes.remove(<eplus:advanced_table>);
recipes.remove(<eplus:table_upgrade>);

mods.harvestfestival.Shops.addPurchasable("MineTweaker3:librarian", <eplus:advanced_table>, 601000);
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:librarian", <eplus:table_upgrade>, 600000);

<eplus:advanced_table>.addTooltip(format.green("这个物品可以在市政厅的Cloe处购买。不需要卷轴。"));
<eplus:table_upgrade>.addTooltip(format.green("这个物品可以在市政厅的Cloe处购买。不需要卷轴。"));

// --- Tiberus

recipes.remove(<natura:bloodwood_sword>);
recipes.remove(<natura:nether_sapling2>);

mods.harvestfestival.Shops.addShopToNPC("tiberius", "Secret Shop", "我有一家秘密商店。哦！现在好像不是秘密了！", "monday,10000,18000;tuesday,10000,18000;wednesday,10000,18000;thursday,10000,18000;friday,10000,18000", "我的邮局会在周一至周五的10点到18点营业");
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:secret shop", <cyclicmagic:heart_food>, 10000);
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:secret shop", <natura:bloodwood_sword>, 500);
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:secret shop", <natura:nether_sapling2>, 500);
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:secret shop", <botania:brewVial>.withTag({brewKey: "bloodthirst"}), 2000);

<cyclicmagic:heart_food>.addTooltip(format.green("这个物品可以在钟表小屋处购买"));
<cyclicmagic:heart_food>.addTooltip(format.green("每颗心可以增加一颗心的生命上限。最大为40颗。"));
<natura:bloodwood_sword>.addTooltip(format.green("这个物品可以在钟表小屋处购买"));
<natura:nether_sapling2>.addTooltip(format.green("这个物品可以在钟表小屋处购买"));
<botania:brewVial>.withTag({brewKey: "bloodthirst"}).addTooltip(format.green("这个物品可以制作或在钟表小屋处购买。"));

//recipes.remove(<railcraft:worldspike:1>);
//recipes.remove(<railcraft:worldspike:2>);
//recipes.remove(<railcraft:worldspike:3>);

// --- MusicDiscs
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:church", <minecraft:record_13>, 2500);
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:church", <minecraft:record_blocks>, 2500);
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:church", <minecraft:record_cat>, 2500);
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:church", <minecraft:record_chirp>, 2500);
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:church", <minecraft:record_far>, 2500);
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:church", <minecraft:record_mellohi>, 2500);
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:church", <minecraft:record_stal>, 2500);
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:church", <minecraft:record_11>, 2500);
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:church", <minecraft:record_mall>, 2500);
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:church", <minecraft:record_strad>, 2500);
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:church", <minecraft:record_wait>, 2500);
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:church", <minecraft:record_ward>, 2500);

<minecraft:record_13>.addTooltip(format.green("这个物品可以在教堂的Tomas处购买"));
<minecraft:record_blocks>.addTooltip(format.green("这个物品可以在教堂的Tomas处购买"));
<minecraft:record_cat>.addTooltip(format.green("这个物品可以在教堂的Tomas处购买"));
<minecraft:record_chirp>.addTooltip(format.green("这个物品可以在教堂的Tomas处购买"));
<minecraft:record_far>.addTooltip(format.green("这个物品可以在教堂的Tomas处购买"));
<minecraft:record_mellohi>.addTooltip(format.green("这个物品可以在教堂的Tomas处购买"));
<minecraft:record_stal>.addTooltip(format.green("这个物品可以在教堂的Tomas处购买"));
<minecraft:record_11>.addTooltip(format.green("这个物品可以在教堂的Tomas处购买"));
<minecraft:record_mall>.addTooltip(format.green("这个物品可以在教堂的Tomas处购买"));
<minecraft:record_strad>.addTooltip(format.green("这个物品可以在教堂的Tomas处购买"));
<minecraft:record_wait>.addTooltip(format.green("这个物品可以在教堂的Tomas处购买"));
<minecraft:record_ward>.addTooltip(format.green("这个物品可以在教堂的Tomas处购买"));


<minecraft:record_13>.addTooltip(format.green("Wild Horseradish Jam - Stardew Valley music"));
<minecraft:record_blocks>.addTooltip(format.green("It's A Big World Outside - Stardew Valley music"));
<minecraft:record_cat>.addTooltip(format.green("Pelican Town - Stardew Valley music"));
<minecraft:record_chirp>.addTooltip(format.green("Ancient - Stardew Valley music"));
<minecraft:record_far>.addTooltip(format.green("Calico Desert - Stardew Valley music"));
<minecraft:record_mellohi>.addTooltip(format.green("Nocturne Of Ice - Stardew Valley music"));
<minecraft:record_stal>.addTooltip(format.green("This disc plays Stardew Valley music"));
<minecraft:record_11>.addTooltip(format.green("Mines Crystal Bells - Stardew Valley music"));
<minecraft:record_mall>.addTooltip(format.green("Setting In - Stardew Valley music"));
<minecraft:record_strad>.addTooltip(format.green("The Wind Can be Still - Stardew Valley music"));
<minecraft:record_wait>.addTooltip(format.green("Cloud Country - Stardew Valley music"));
<minecraft:record_ward>.addTooltip(format.green("Song Of Feathers Emily's Theme - Stardew Valley music"));

// --- DoggyTalents

<doggytalents:doggy_charm>.addTooltip(format.green("右键来生成你的小狗。然后用木棍右键来打开交互GUI，你可以在里面重命名或升级它。"));
<doggytalents:spotted_collar>.addTooltip(format.green("这个物品可以在畜牧场的Candice那儿购买"));
<doggytalents:dog_bath>.addTooltip(format.green("这个物品可以在畜牧场的Candice那儿购买"));
<doggytalents:food_bowl>.addTooltip(format.green("这个物品可以在畜牧场的Candice那儿购买"));
<doggytalents:throw_bone>.addTooltip(format.green("这个物品可以在畜牧场的Candice那儿购买"));
<doggytalents:training_treat>.addTooltip(format.green("这个物品可以在畜牧场的Candice那儿购买"));
<doggytalents:super_treat>.addTooltip(format.green("这个物品可以在畜牧场的Candice那儿购买"));
<doggytalents:master_treat>.addTooltip(format.green("这个物品可以在畜牧场的Candice那儿购买"));
<doggytalents:breeding_bone>.addTooltip(format.green("这个物品可以在畜牧场的Candice那儿购买"));
<doggytalents:dire_treat>.addTooltip(format.green("这个物品可以在畜牧场的Candice那儿购买"));
<doggytalents:collar_shears>.addTooltip(format.green("这个物品可以在畜牧场的Candice那儿购买"));
<doggytalents:whistle>.addTooltip(format.green("这个物品可以在畜牧场的Candice那儿购买"));
<doggytalents:doggy_charm>.addTooltip(format.green("你可以在畜牧场的Candice那儿领养小狗"));
<doggytalents:radio_collar>.addTooltip(format.green("这个物品可以在畜牧场的Candice那儿购买"));
<doggytalents:radar>.addTooltip(format.green("这个物品可以在畜牧场的Candice那儿购买"));
<doggytalents:multicoloured_collar>.addTooltip(format.green("这个物品可以在畜牧场的Candice那儿购买"));
<doggytalents:treat_bag>.addTooltip(format.green("这个物品可以在畜牧场的Candice那儿购买"));
<doggytalents:chew_stick>.addTooltip(format.green("这个物品可以在畜牧场的Candice那儿购买"));
<doggytalents:cape>.addTooltip(format.green("这个物品可以在畜牧场的Candice那儿购买"));
<doggytalents:sunglasses>.addTooltip(format.green("这个物品可以在畜牧场的Candice那儿购买"));
<doggytalents:cape_coloured>.addTooltip(format.green("这个物品可以在畜牧场的Candice那儿购买"));
<doggytalents:leather_jacket>.addTooltip(format.green("这个物品可以在畜牧场的Candice那儿购买"));
<doggytalents:tiny_bone>.addTooltip(format.green("这个物品可以在畜牧场的Candice那儿购买"));
<doggytalents:big_bone>.addTooltip(format.green("这个物品可以在畜牧场的Candice那儿购买"));
<doggytalents:dog_bed>.addTooltip(format.green("这个物品可以在畜牧场的Candice那儿购买"));
<doggytalents:wool_collar>.addTooltip(format.green("这个物品可以在畜牧场的Candice那儿购买"));
<doggytalents:throw_stick>.addTooltip(format.green("这个物品可以在畜牧场的Candice那儿购买"));

recipes.remove(<doggytalents:dog_bath>);
recipes.remove(<doggytalents:multicoloured_collar>);
recipes.remove(<doggytalents:food_bowl>);
recipes.remove(<doggytalents:throw_bone>);
recipes.remove(<doggytalents:throw_bone:2>);
recipes.remove(<doggytalents:training_treat>);
recipes.remove(<doggytalents:super_treat>);
recipes.remove(<doggytalents:master_treat>);
recipes.remove(<doggytalents:breeding_bone>);
recipes.remove(<doggytalents:dire_treat>);
recipes.remove(<doggytalents:collar_shears>);
recipes.remove(<doggytalents:whistle>);
recipes.remove(<doggytalents:doggy_charm>);
recipes.remove(<doggytalents:radio_collar>);
recipes.remove(<doggytalents:radar>);
recipes.remove(<doggytalents:spotted_collar>);
recipes.remove(<doggytalents:treat_bag>);
recipes.remove(<doggytalents:chew_stick>);
recipes.remove(<doggytalents:cape>);
recipes.remove(<doggytalents:sunglasses>);
recipes.remove(<doggytalents:cape_coloured>);
recipes.remove(<doggytalents:leather_jacket>);
recipes.remove(<doggytalents:tiny_bone>);
recipes.remove(<doggytalents:big_bone>);
recipes.remove(<doggytalents:dog_bed>);
recipes.remove(<doggytalents:wool_collar>);
recipes.remove(<doggytalents:throw_stick>);

mods.harvestfestival.Shops.addShopToNPC("candice", "Animal Shelter", "你好，我在经营一家动物收留所，这儿有些小狗狗需要一个新家。你想领养一只吗？", "monday,10000,13000;tuesday,10000,13000;Wednesday,5000,13000;Thursday,10000,13000;Friday,10000,13000;Saturday,10000,13000", "如果你想领养小狗或买一些玩具给它，请在周一至周六的10点到13点来这。");
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:animal shelter",<doggytalents:multicoloured_collar>, 1000);
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:animal shelter",<doggytalents:doggy_charm>, 200);
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:animal shelter",<doggytalents:dog_bath>, 500);
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:animal shelter",<doggytalents:food_bowl>, 500);
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:animal shelter",<doggytalents:dog_bed>, 500);
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:animal shelter",<doggytalents:wool_collar>, 500);
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:animal shelter",<doggytalents:spotted_collar>, 750);
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:animal shelter",<doggytalents:whistle>, 500);
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:animal shelter",<doggytalents:throw_bone>, 200);
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:animal shelter",<doggytalents:throw_bone:2>, 400);
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:animal shelter",<doggytalents:training_treat>, 2500);
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:animal shelter",<doggytalents:super_treat>, 5000);
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:animal shelter",<doggytalents:master_treat>, 10000);
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:animal shelter",<doggytalents:dire_treat>, 100000);
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:animal shelter",<doggytalents:breeding_bone>, 1000);
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:animal shelter",<doggytalents:collar_shears>, 1000);
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:animal shelter",<doggytalents:radio_collar>, 25000);
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:animal shelter",<doggytalents:radar>, 25000);
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:animal shelter",<doggytalents:throw_stick>, 100);
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:animal shelter",<doggytalents:treat_bag>, 250);
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:animal shelter",<doggytalents:chew_stick>, 250);
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:animal shelter",<doggytalents:cape>, 2500);
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:animal shelter",<doggytalents:sunglasses>, 2500);
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:animal shelter",<doggytalents:cape_coloured>, 2500);
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:animal shelter",<doggytalents:leather_jacket>, 2500);
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:animal shelter",<doggytalents:tiny_bone>, 200);
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:animal shelter",<doggytalents:big_bone>, 200);
recipes.addShapeless(<doggytalents:throw_stick>,[ <doggytalents:throw_stick_wet>]);

// --- ExoticBirds
<exoticbirds:nest>.addTooltip(format.green("这个物品可以在养鸡场的Ashlee处购买"));
<exoticbirds:egg_incubator>.addTooltip(format.green("这个物品可以在养鸡场的Ashlee处购买"));
<exoticbirds:falconry_glove>.addTooltip(format.green("这个物品可以在杂货铺购买"));
<exoticbirds:bird_book>.addTooltip(format.green("这个物品可以在养鸡场的Ashlee处购买"));
<exoticbirds:egg_sorter>.addTooltip(format.green("这个物品可以在养鸡场的Ashlee处购买"));

<exoticbirds:egg_incubator>.addTooltip(format.green("这个机器只能用于Exotic Bird模组。"));
<exoticbirds:egg_sorter>.addTooltip(format.green("这个机器只能用于Exotic Bird模组。"));
<exoticbirds:nest>.addTooltip(format.green("这个机器只能用于Exotic Bird模组。"));

recipes.remove(<exoticbirds:nest>);
recipes.remove(<exoticbirds:egg_incubator>);
recipes.remove(<exoticbirds:falconry_glove>);
recipes.remove(<exoticbirds:bird_book>);
recipes.remove(<exoticbirds:egg_sorter>);

mods.harvestfestival.Shops.addPurchasable("harvestfestival:poultry",<exoticbirds:nest>, 2500);
mods.harvestfestival.Shops.addPurchasable("harvestfestival:poultry",<exoticbirds:egg_incubator>, 50000);
mods.harvestfestival.Shops.addPurchasable("harvestfestival:general",<exoticbirds:falconry_glove>, 2500);
mods.harvestfestival.Shops.addPurchasable("harvestfestival:poultry",<exoticbirds:bird_book>, 5000);
mods.harvestfestival.Shops.addPurchasable("harvestfestival:poultry",<exoticbirds:egg_sorter>, 50000);

// --- HarvestFestival ---
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:botanists", <harvestfestival:sprinkler>, 150000);
<harvestfestival:sprinkler>.addTooltip(format.green("这个物品能在一年后，在Danieru处购买，需要10000元。"));
<harvestfestival:sprinkler>.addTooltip(format.green("如果你想更早一些买到它，你可以在市长Jeimmi处花更高的价格购买。"));
