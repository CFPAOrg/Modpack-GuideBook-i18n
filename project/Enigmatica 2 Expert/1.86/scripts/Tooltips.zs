import crafttweaker.item.IItemStack as IItemStack;
import mods.jei.JEI.addDescription;

var vanillaToolTooltip = "原版的工具不能正常使用,请使用匠魂工具";
var rf100000 = "需要消耗10WRF能量来制作";
var rf200000 = "需要消耗20WRF能量来制作";
var rf300000 = "需要消耗30WRF能量来制作";
var mil1 = "需要消耗100WRF能量来制作";
var mil2 = "需要消耗200WRF能量来制作"; 
var mil10 = "需要消耗1000WRF能量来制作";
var mil12 = "需要消耗1200WRF能量来制作";
var mil100 = "需要消耗100MRF能量来制作";
var bil1 = "需要消耗1000MRF能量来制作";
var atomicReconstructor = "只能通过原子再构机转换获得";
var metallurgic = "只能通过冶金灌注机获得,需要20单位的钻石";
var craftable = "是可合成的";
var spaceGen = "只会生成在其他星球";
var spaceGenHigh = "在其它星球上大量产生";
var mekanismFactories = "工厂升级是从基础/高级/精英依次升级安装的";
var ic2wrench = "你可以放心的用镐破坏IC机器";
var tempRecipe = "这个物品有一个临时的合成配方";

var ultimateTierInstaller = "Only works on Bins, Energy Cubes, Tanks and Gas Tanks";
<mekanism:tierinstaller:3>.addTooltip(ultimateTierInstaller);
addDescription(<mekanism:tierinstaller:3>, ultimateTierInstaller);

var biomesOPlentyOres as IItemStack[] = [
	<biomesoplenty:gem_ore:1>,
	<biomesoplenty:gem_ore:2>,
	<biomesoplenty:gem_ore:3>,
	<biomesoplenty:gem_ore:4>,
	<biomesoplenty:gem_ore:5>,
	<biomesoplenty:gem_ore:6>,
	<biomesoplenty:gem_ore:7>
];

for ore in biomesOPlentyOres {
	var tooltip = "不会自然产生，请通过筛子获取Biomes O' Plenty的宝石";
	ore.addTooltip(tooltip);
	addDescription(ore, tooltip);
}

var metalRods as IItemStack[] = [
	<immersiveengineering:material:1>,
	<immersiveengineering:material:3>,
	<immersiveengineering:material:2>
];
	
for rod in metalRods {
	addDescription(rod, "制造金属棒的最早（也是最便宜的）方法是用高级火箭技术的小型压板器.");
}

addDescription(<mekanism:machineblock:2>, "删除, 因为它可以用来融合多个矿石.");

addDescription(<thermalexpansion:cache>, "用新月锤潜行右键快速拆下", "储物箱拆下后保留升级和内容物", "不要用稿子拆！");

addDescription(<mekanism:gaugedropper>, "可以用来清除mek机器中的流体、气体。只需shift左击对应位置即可");

addDescription(<environmentaltech:void_ore_miner_cont_6>, "六级虚空矿物采掘机只能产出稀有矿物", "不产出普通矿物");

var thaumcraftHintItems as IItemStack[] = [
	<thaumcraft:mechanism_complex>,
	<thaumcraft:mechanism_simple>,
	<thaumcraft:mirrored_glass>,
	<thaumcraft:vis_resonator>,
	<thaumcraft:fabric>,
	<thaumcraft:seal>,
	<thaumcraft:jar_normal>,
	<thaumcraft:lamp_arcane>,
	<thaumcraft:pedestal_arcane>,
	<thaumcraft:alembic>,
	<thaumcraft:metal_alchemical>,
	<thaumcraft:mind>,
	<thaumcraft:vis_battery>,
	<thaumcraft:stabilizer>,
	<thaumcraft:inlay>,
	<thaumcraft:research_table>,
	<thaumcraft:arcane_workbench>,
	<thaumcraft:smelter_basic>,
	<thaumcraft:alumentum>,
	<thaumcraft:nitor_yellow>
];

for item in thaumcraftHintItems {
	addDescription(item, "大部分神秘的物品需要研究来解锁");
}

# Liquid Nitrogen
	addDescription(<liquid:nitrogen>, "通过氮收集器获得");
	
# Oil Generator
	addDescription(<actuallyadditions:block_oil_generator>, 
	"此物品已禁用", 
	"请使用TE的压缩能源炉",
	"你可以把它转化成压缩能源炉");
	
# Wireless Heating Coil
	addDescription(<extrautils2:ingredients:13>, "合成物品时不消耗");
	<extrautils2:ingredients:13>.addTooltip(format.aqua("合成物品时不消耗"));

# Creative Wireless Crafting Terminal
	addDescription(<wct:wct_creative>,
	"需要创造模式能量单元来合成");

# Luminous Crafting Table
	addDescription(<astralsorcery:blockaltar>,
	"星辉合成台需要在Astral Sorcery遗迹中的浮动水晶旁才能合成", 
	"合成表在星芒宝典中");

#CheeseArray (yes, hashtag)
	var cheeses as IItemStack[] = [
	<animania:friesian_cheese_wheel>,
	<animania:holstein_cheese_wheel>,
	<animania:jersey_cheese_wheel>,
	<animania:goat_cheese_wheel>,
	<animania:sheep_cheese_wheel>
	];
	
# Animania Cheese
	var cheeseMold = "把Animania牛奶放入奶酪模具中一段时间后就能获得";
	for cheese in cheeses {
		addDescription(cheese, cheeseMold);
	}
	
	
# Bag of Holding
	addDescription(<extrautils2:bagofholding>, "由于不稳定而移除");

# Enticing Crystal
	addDescription(<enderio:item_material:17>, 
	"村民可以通过以下方式复制",
	"末影接口的电动刷怪笼",
	"原版特性",
	"重构刷怪笼",
	"RF工具的刷怪笼",
	"工业先锋的刷怪笼");
	
# Crafting Core
	addDescription(<extendedcrafting:crafting_core>, "在合成核心配方中指定的FE/t是允许的最大输入,输入任意FE/t都会开始制作");
	
# Infused Wood
	addDescription(<astralsorcery:blockinfusedwood>, "向星能液投入原木获得");
	
# Void Seed + Void Metal Temp
	<thaumcraft:void_seed>.addTooltip(tempRecipe);

# IC2 Scanner & Replicator possibilities
	addDescription(<ic2:te:63>, ["以下物品可以复制", "铱矿", "铱碎片", "IC电路板", "IC高级合金", "IC高级机械外壳", "TE机械框架", "AA高级线圈", "RFTools的机器框架", "EXU的机器方块", "AA铁制外壳", "CC高级电脑", "莱泽尔水晶", "IF的机械外壳", "MEK终极控制电路", "FR强化部件", "DE聚合核心", "所有混沌碎片", "龙之心等等(翻配置文件看到的,任务线也没用提,剧透一下也可以吧!龙之心复制很关键！)"]);
	addDescription(<ic2:te:64>, ["以下物品可以复制", "铱矿", "铱碎片", "IC电路板", "IC高级合金", "IC高级机械外壳", "TE机械框架", "AA高级线圈", "RFTools的机器框架", "EXU的机器方块", "AA铁制外壳", "CC高级电脑", "莱泽尔水晶", "IF的机械外壳", "MEK终极控制电路", "FR强化部件", "DE聚合核心", "所有混沌碎片", "龙之心等等(翻配置文件看到的,任务线也没用提,剧透一下也可以吧!龙之心复制很关键！)"]);

# Small Plate Press
	addDescription(<advancedrocketry:platepress>, "小型压板器可以将金属块转换成板和棒。这是一个多方块结构。顶部是小板压板机,底部是黑曜石。将想要压缩的方块放在两者之间,并用红石信号来激活它即可");

# Tool Forge
	addDescription(<tconstruct:toolforge>.withTag({textureBlock: {id: "enderio:block_alloy", Count: 1 as byte, Damage: 0 as short}}), "工具装配台可以用任意4个同种金属块来合成");
	<tconstruct:toolforge>.anyDamage().addTooltip(format.red("(工具装配台可以用任意4个同种金属块来合成)"));

# Blood Magic Guide
	addDescription(<guideapi:bloodmagic-guide>, "拿着指示之书潜行右键血之祭坛它会告诉你不同等级的血祭坛在哪里放置什么,右击空气可更改层数");

# Thaumonomicon
	addDescription(<thaumcraft:thaumonomicon>, "通过世界盐右键书架获得");

# Arcane Workbench
	addDescription(<thaumcraft:arcane_workbench>, "通过世界盐右键原版工作台获得");

# Crucible
	addDescription(<thaumcraft:crucible>, "通过世界盐右键炼药锅获得");

# Blood Magic Wills
	addDescription(<bloodmagic:item_demon_crystal>, "通过恶魔坩埚和恶魔结晶台获得");
	addDescription(<bloodmagic:item_demon_crystal:1>, "通过多面体的共振仪式来获得的");
	addDescription(<bloodmagic:item_demon_crystal:2>, "通过多面体的共振仪式来获得的");
	addDescription(<bloodmagic:item_demon_crystal:3>, "通过多面体的共振仪式来获得的");
	addDescription(<bloodmagic:item_demon_crystal:4>, "通过多面体的共振仪式来获得的");

# Backpacks
	addDescription(<backpack:backpack:*>, ["如果要把背包背在身上,去按键设置绑定按键", "使用shift+刚才绑定的按键就能背起背包", "一旦你背起的背包只能用打开背包的快捷键打开背包了(译者注：貌似有按键冲突或bug,我是试不出来)"]);
	
# Solidified Experience
	addDescription(<actuallyadditions:item_solidified_experience>, "此物品不会掉落,只能用TE知识精华来制作(整合包低版本是有这个配方的...)");
	
# Neutronium
	addDescription(<avaritia:resource:2>,"可以通过中子态素收集器获得");
	
# XP Bucket
	addDescription(<forge:bucketfilled>.withTag({FluidName: "xpjuice", Amount: 1000}),"可以通过流体装置机获得");

# Bibliocraft Clipboard
	addDescription(<bibliocraft:biblioclipboard>,"由于不稳定而移除");
	
# Pumpjack
	addDescription(<forge:bucketfilled>.withTag({FluidName: "oil", Amount: 1000}),"采油机需要连接IE输液管到基岩才能工作");
	addDescription(<liquid:oil>, "采油机需要连接IE输液管到基岩才能工作");
	
# Energy Cell Frame
	addDescription(<thermalexpansion:frame:128>,"需要400单位的红石才能灌注得到");
	
# Thermal Expansion Coils
	addDescription(<thermalfoundation:material:513>,"需要160单位的红石才能灌注得到");
	addDescription(<thermalfoundation:material:514>,"需要160单位的红石才能灌注得到");
	addDescription(<thermalfoundation:material:515>,"需要160单位的红石才能灌注得到");

# Reinforced Cell Frame (full)
	addDescription(<thermalexpansion:frame:146>, "强化能量框架(满)只能在流体装置机中消耗25wRF来制作");

# IC2 Wrenches
	addDescription(<ic2:electric_wrench>, ic2wrench);
	addDescription(<ic2:wrench>, ic2wrench);
	
# Space Ores
	var spaceOres = [
	<thermalfoundation:ore_fluid:4>,
	<thermalfoundation:ore_fluid:3>,
	<thermalfoundation:ore_fluid:2>,
	<libvulpes:ore0>,
	<thermalfoundation:ore:7>,
	<thermalfoundation:ore:8>,
	<rftools:dimensional_shard_ore>,
	<mysticalagriculture:prosperity_ore>,
	<draconicevolution:draconium_ore>,
	<draconicevolution:draconium_ore:1>,
	<draconicevolution:draconium_ore:2>,
	<thermalfoundation:material:893>,
	<thermalfoundation:material:894>,
	<thermalfoundation:material:895>
	] as IItemStack[];
	
	for item in spaceOres {
	addDescription(item, spaceGen);
	}
	
	addDescription(<libvulpes:ore0:8>, "金红石矿只在其他星球才生成,但钛锭是可合成的(注:金红石是就是较纯的二氧化钛)");
	
# Mekanism Factories
	<mekanism:machineblock:5>.addTooltip(mekanismFactories);
	<mekanism:machineblock:6>.addTooltip(mekanismFactories);
	<mekanism:machineblock:7>.addTooltip(mekanismFactories);

	addDescription(<mekanism:machineblock:5>, mekanismFactories);
	addDescription(<mekanism:machineblock:6>, mekanismFactories);
	addDescription(<mekanism:machineblock:7>, mekanismFactories);
	
# Rock Crystals
	addDescription(<astralsorcery:blockcustomore>, spaceGenHigh);
	
# Titanium Ingot
	addDescription(<libvulpes:productingot:7>, "是在高级冶炼工厂里制作的");
	<libvulpes:productingot:7>.addTooltip(format.red("(是在高级冶炼工厂里制作的)"));

# Mystical Agriculture Seeds Tier 5 -> 6
	<mysticalagriculture:ender_amethyst_seeds>.addTooltip("层级: " + format.darkPurple("6"));
	<mysticalagriculture:enderium_seeds>.addTooltip("层级: " + format.darkPurple("6"));
	<mysticalagriculture:iridium_seeds>.addTooltip("层级: " + format.darkPurple("6"));
	<mysticalagriculture:terrasteel_seeds>.addTooltip("层级: " + format.darkPurple("6"));
	
# Thermal Expansion Resonant Machine Frame (Full)
	addDescription(<thermalexpansion:frame:148>, mil100);
	
# Extreme Reactors Crystals
	<bigreactors:minerals>.displayName = "硫酸铅";
	<bigreactors:minerals:1>.displayName = "蓝锥";
	
	addDescription(<bigreactors:minerals>, craftable);
	addDescription(<bigreactors:minerals:1>, craftable);

# Uncraftable ingots
	addDescription(<bigreactors:ingotmetals:3>,"蓝钚块是可合成的");
	addDescription(<bigreactors:ingotmetals:4>,"纯镥块是可合成的");

# Mana Infused Ingot
	addDescription(<thermalfoundation:material:136>,"能通过冶金灌注器、高级冶炼工厂或在其他星球获得矿物");

# Thermal Expansion Casings
	addDescription(<thermalexpansion:frame:129>, mil10);
	
# Actually Additions Crystals
	# Restonia
	addDescription(<actuallyadditions:item_crystal_empowered>,rf100000);
	# Palis
	addDescription(<actuallyadditions:item_crystal_empowered:1>,rf100000);
	# Diamantine
	addDescription(<actuallyadditions:item_crystal_empowered:2>,rf200000);
	# Void
	addDescription(<actuallyadditions:item_crystal_empowered:3>,mil1);
	# Emeradic
	addDescription(<actuallyadditions:item_crystal_empowered:4>,rf200000);
	# Enori
	addDescription(<actuallyadditions:item_crystal_empowered:5>,rf100000);
	
	# Restonia
	addDescription(<actuallyadditions:block_crystal_empowered>,mil1);
	# Palis
	addDescription(<actuallyadditions:block_crystal_empowered:1>,mil1);
	# Diamantine
	addDescription(<actuallyadditions:block_crystal_empowered:2>,mil2);
	# Void
	addDescription(<actuallyadditions:block_crystal_empowered:3>,mil10);
	# Emeradic
	addDescription(<actuallyadditions:block_crystal_empowered:4>,mil2);
	# Enori
	addDescription(<actuallyadditions:block_crystal_empowered:5>,mil1);

# Pam's Harvestcraft Market
	addDescription(<harvestcraft:market>,"不可使用。\n\n请用Farming For Blockheads的市场");

# Mekanism Ultimate Circuit
	addDescription(<mekanism:controlcircuit:3>, mil2);
	
# Mystical Agriculture Block of Prosperity
	addDescription(<mysticalagriculture:crafting:5>, "活化水晶块是可合成的");
	
# Vanilla tools
	
	val toolsToTooltip = [
	
	<minecraft:golden_axe>,
	<minecraft:golden_shovel>,
	<minecraft:golden_hoe>,
	<minecraft:golden_pickaxe>,
	<minecraft:golden_sword>,

	<minecraft:diamond_sword>,
	<minecraft:diamond_shovel>,
	<minecraft:diamond_axe>,
	<minecraft:diamond_pickaxe>,
	
	<minecraft:iron_shovel>,
	<minecraft:iron_axe>,
	<minecraft:iron_sword>,
	<minecraft:iron_pickaxe>,
	<minecraft:iron_hoe>,
		
	<minecraft:wooden_pickaxe>,
	<minecraft:wooden_sword>,
	<minecraft:wooden_hoe>,
	<minecraft:wooden_shovel>,
	<minecraft:wooden_axe>,
	
	<minecraft:stone_pickaxe>,
	<minecraft:stone_hoe>,
	<minecraft:stone_axe>,
	<minecraft:stone_shovel>,
	<minecraft:stone_sword>
	
	] as IItemStack[];
		
	for tool in toolsToTooltip {
		addDescription(tool, vanillaToolTooltip);
		tool.addTooltip(format.red("原版的工具不能正常使用,请使用匠魂工具"));
	}
	
# Environmental Tech

# Solar Panels
	addDescription(<environmentaltech:solar_cont_1>,
		["需要:",
		"4x无效果或压电强化部件",
		"16x一级或更高等级的结构方块",
		"9x任意太阳能板"]);
	addDescription(<environmentaltech:solar_cont_2>,
		["需要:",
		"4x无效果或压电强化部件",
		"24x二级或更高等级的结构方块",
		"25x任意太阳能板"]);
	addDescription(<environmentaltech:solar_cont_3>,
		["需要:",
		"8x无效果或压电强化部件",
		"32x三级或更高等级的结构方块",
		"49x任意太阳能板"]);
	addDescription(<environmentaltech:solar_cont_4>,
		["需要:",
		"8x无效果或压电强化部件",
		"40x四级或更高等级的结构方块",
		"81x任意太阳能板"]);
	addDescription(<environmentaltech:solar_cont_5>,
		["需要:",
		"12x无效果或压电强化部件",
		"48x五级或更高等级的结构方块",
		"121x任意太阳能板"]);
	addDescription(<environmentaltech:solar_cont_6>,
		["需要:",
		"12x无效果或压电强化部件",
		"56x六级结构方块",
		"169x任意太阳能板"]);
	
# Void Ore Miner
	addDescription(<environmentaltech:void_ore_miner_cont_1>,
		["需要:",
		"24x一级或更高等级的结构方块",
		"20x结构镶板",
		"2x激光核心",
		"1x任意透镜"]);
	addDescription(<environmentaltech:void_ore_miner_cont_2>,
		["需要:",
		"4x无效果、速度或精度强化部件",
		"32x二级或更高等级的结构方块",
		"16x结构镶板",
		"3x激光核心",
		"1x任意透镜"]);
	addDescription(<environmentaltech:void_ore_miner_cont_3>,
		["需要:",
		"8x无效果、速度或精度强化部件",
		"56x三级或更高等级的结构方块",
		"52x结构镶板",
		"4x激光核心",
		"1x任意透镜"]);
	addDescription(<environmentaltech:void_ore_miner_cont_4>,
		["需要:",
		"12x无效果、速度或精度强化部件",
		"56x四级或更高等级的结构方块",
		"56x结构镶板",
		"5x激光核心",
		"1x任意透镜"]);
	addDescription(<environmentaltech:void_ore_miner_cont_5>,
		["需要:",
		"16x无效果、速度或精度强化部件",
		"72x五级或更高等级的结构方块",
		"36x结构镶板",
		"6x激光核心",
		"1x任意透镜"]);
	addDescription(<environmentaltech:void_ore_miner_cont_6>,
		["需要:",
		"20x无效果、速度或精度强化部件",
		"92×六级结构方块",
		"56x结构镶板",
		"6x激光核心",
		"1x任意透镜"]);
		
# Void Resource Miner
	addDescription(<environmentaltech:void_res_miner_cont_1>,
		["需要:",
		"24x一级或更高等级的结构方块",
		"20x结构镶板",
		"2x激光核心",
		"1x任意透镜"]);
	addDescription(<environmentaltech:void_res_miner_cont_2>,
		["需要:",
		"4x无效果、速度或精度强化部件",
		"32x二级或更高等级的结构方块",
		"16x结构镶板",
		"3x激光核心",
		"1x任意透镜"]);
	addDescription(<environmentaltech:void_res_miner_cont_3>,
		["需要:",
		"8x无效果、速度或精度强化部件",
		"56x三级或更高等级的结构方块",
		"52x结构镶板",
		"4x激光核心",
		"1x任意透镜"]);
	addDescription(<environmentaltech:void_res_miner_cont_4>,
		["需要:",
		"12x无效果、速度或精度强化部件",
		"56x四级或更高等级的结构方块",
		"56x结构镶板",
		"5x激光核心",
		"1x任意透镜"]);
	addDescription(<environmentaltech:void_res_miner_cont_5>,
		["需要:",
		"16x无效果、速度或精度强化部件",
		"72x五级或更高等级的结构方块",
		"36x结构镶板",
		"6x激光核心",
		"1x任意透镜"]);
	addDescription(<environmentaltech:void_res_miner_cont_6>,
		["需要:",
		"20x无效果、速度或精度强化部件",
		"92x六级结构方块",
		"56x结构镶板",
		"6x激光核心",
		"1x任意透镜"]);
		
# Nanobot Beacon
	addDescription(<environmentaltech:nano_cont_personal_1>,
		["需要:",
		"4x无效果或药水效果的强化部件",
		"20x一级或更高等级的结构方块",
		"12x结构镶板"]);
	addDescription(<environmentaltech:nano_cont_personal_2>,
		["需要:",
		"8x无效果或药水效果的强化部件",
		"36x二级或更高等级的结构方块",
		"24x结构镶板"]);
	addDescription(<environmentaltech:nano_cont_personal_3>,
		["需要:",
		"12x无效果或药水效果的强化部件",
		"56x三级或更高等级的结构方块",
		"40x结构镶板"]);
	addDescription(<environmentaltech:nano_cont_personal_4>,
		["需要:",
		"16x无效果或药水效果的强化部件",
		"80x四级或更高等级的结构方块",
		"60x结构镶板"]);
	addDescription(<environmentaltech:nano_cont_personal_5>,
		["需要:",
		"20x无效果或药水效果的强化部件",
		"108x五级或更高等级的结构方块",
		"84x结构镶板"]);
	addDescription(<environmentaltech:nano_cont_personal_6>,
		["需要:",
		"24x无效果或药水效果的强化部件",
		"140x六级结构方块",
		"112x结构镶板"]);
		
# Lightning Rod
	addDescription(<environmentaltech:lightning_cont_1>,
		["需要:",
		"4x一级或更高等级的结构方块",
		"3x避雷针",
		"3x绝缘避雷针"]);
	addDescription(<environmentaltech:lightning_cont_2>,
		["需要:",
		"4x二级或更高等级的结构方块",
		"4x避雷针",
		"4x绝缘避雷针"]);
	addDescription(<environmentaltech:lightning_cont_3>,
		["需要:",
		"4x三级或更高等级的结构方块",
		"5x避雷针",
		"5x绝缘避雷针"]);
	addDescription(<environmentaltech:lightning_cont_4>,
		["需要:",
		"13x四级或更高等级的结构方块",
		"4x避雷针",
		"16x绝缘避雷针"]);
	addDescription(<environmentaltech:lightning_cont_5>,
		["需要:",
		"13x五级或更高等级的结构方块",
		"6x避雷针",
		"22x绝缘避雷针"]);
	addDescription(<environmentaltech:lightning_cont_6>,
		["需要:",
		"13x六级结构方块",
		"8x避雷针",
		"28x绝缘避雷针"]);
			
# Tooltips for IC2 matter fabricator
	var uumatterTooltips = [
		"actuallyadditions:block_misc",           "9",     "1600",
		"actuallyadditions:item_misc",            "8",     "600",
		"computercraft:computer",                 "16384", "600",
		"draconicevolution:chaos_shard",          "0",     "600000",
		"draconicevolution:chaos_shard",          "1",     "66667",
		"draconicevolution:chaos_shard",          "2",     "7407",
		"draconicevolution:chaos_shard",          "3",     "823",
		"draconicevolution:dragon_heart",         "0",     "200000",
		"draconicevolution:fusion_crafting_core", "0",     "100000",
		"environmentaltech:litherite_crystal",    "0",     "6000",
		"forestry:hardened_machine",              "0",     "1800",
		"ic2:crafting",                           "1",     "80",
		"ic2:crafting",                           "3",     "180",
		"ic2:nuclear",                            "3",     "21324",
		"ic2:nuclear",                            "7",     "2369",
		"ic2:resource",                           "12",    "800",
		"ic2:resource",                           "13",    "1600",
		"immersiveengineering:metal_decoration0", "3",     "950",
		"immersiveengineering:metal_decoration0", "4",     "1600",
		"immersiveengineering:metal_decoration0", "5",     "2500",
		"mekanism:basicblock",                    "8",     "1750",
		"mekanism:controlcircuit",                "3",     "1500",
		"minecraft:cookie",                       "0",     "10",
		"minecraft:skull",                        "1",     "5000",
		"quark:crystal",                          "0",     "25",
		"quark:crystal",                          "1",     "25",
		"quark:crystal",                          "2",     "25",
		"quark:crystal",                          "3",     "25",
		"quark:crystal",                          "4",     "25",
		"quark:crystal",                          "5",     "25",
		"quark:crystal",                          "6",     "25",
		"quark:crystal",                          "7",     "25",
		"rftools:machine_frame",                  "0",     "2600",
		"teslacorelib:machine_case",              "0",     "1900",
		"thermalexpansion:frame",                 "0",     "4000"
	] as string[];

	for i in 0 to uumatterTooltips.length {
		if (i%3==0) {
			var item = itemUtils.getItem(uumatterTooltips[i], uumatterTooltips[i+1]);
			if (!isNull(item)) {
				item.addTooltip(format.darkPurple("可以复制") ~ 
					format.lightPurple(((uumatterTooltips[i+2] as float) / 100) as string) ~ format.darkPurple(" mB UU"));
			}
		}
	}
	
	<extrautils2:machine>.only(function(item){return !item.hasTag;})
	.addTooltip(format.darkPurple("可以复制") ~ 
					format.lightPurple(((450 as float) / 100) as string) ~ format.darkPurple(" mB UU"));

	<modularmachinery:itemmodularium>.displayName = "模块化合金锭";
	

# Turbine Fuel description
<advgenerators:turbine_controller>.addShiftTooltip(
	format.darkAqua("Canola Oil")         ~  format.gray(" 10 MJ/mB\n") ~
	format.darkAqua("Crude Oil")          ~  format.gray(" 25 MJ/mB\n") ~
	format.darkAqua("Biomass")            ~  format.gray(" 30 MJ/mB\n") ~
	format.darkAqua("Biodiesel")          ~  format.gray(" 40 MJ/mB\n") ~
	format.darkAqua("Crystallized Oil")   ~  format.gray(" 40 MJ/mB\n") ~
	format.darkAqua("Biogas")             ~  format.gray(" 50 MJ/mB\n") ~
	format.darkAqua("Ethylene")           ~  format.gray(" 80 MJ/mB\n") ~
	format.darkAqua("Biofuel")            ~  format.gray(" 90 MJ/mB\n") ~
	format.darkAqua("Rocket Fuel (EiO)")  ~  format.gray(" 95 MJ/mB\n") ~
	format.darkAqua("Refined Fuel")       ~ format.gray(" 105 MJ/mB\n") ~
	format.darkAqua("Rocket Fuel (AR)")   ~ format.gray(" 110 MJ/mB\n") ~
	format.darkAqua("Empowered Oil")      ~ format.gray(" 120 MJ/mB")
,format.darkAqua("<<Hold shift to see fuel list>>"));

# Antimatter
<forge:bucketfilled>.withTag({FluidName: "blockfluidantimatter", Amount: 1000}).addTooltip(format.aqua("通过雷击获得生命精华。"));

# Corium Bucket
<forge:bucketfilled>.withTag({FluidName: "corium", Amount: 1000}).addTooltip(format.green("可以通过熔化裂变反应堆来获得"));