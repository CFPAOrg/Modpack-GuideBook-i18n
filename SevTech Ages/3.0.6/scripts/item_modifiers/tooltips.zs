/*
	Apply tooltips to items

	http://crafttweaker.readthedocs.io/en/latest/#Vanilla/Items/Tooltips/
*/
//==================================
//Prospecting Rods
var prospectingRodRange as int = 48;
<prospectors:prospector_lowest:*>.addTooltip(format.yellow("这个工具在第一纪元"));
<prospectors:prospector_lowest:*>.addTooltip(format.yellow("及其以下阶段可用"));
<prospectors:prospector_lowest:*>.addTooltip(format.red("能够检测未解锁矿物"));
<prospectors:prospector_lowest:*>.addTooltip(format.red("检测范围：" ~ prospectingRodRange ~ " 格方块直线距离"));

<prospectors:prospector_low:*>.addTooltip(format.yellow("这个工具在第二纪元"));
<prospectors:prospector_low:*>.addTooltip(format.yellow("及其以下阶段可用"));
<prospectors:prospector_low:*>.addTooltip(format.red("能够检测未解锁矿物"));
<prospectors:prospector_low:*>.addTooltip(format.red("检测范围：" ~ prospectingRodRange ~ " 格方块直线距离"));

<prospectors:prospector_med:*>.addTooltip(format.yellow("这个工具在第三纪元"));
<prospectors:prospector_med:*>.addTooltip(format.yellow("及其以下阶段可用"));
<prospectors:prospector_med:*>.addTooltip(format.red("能够检测未解锁矿物"));
<prospectors:prospector_med:*>.addTooltip(format.red("检测范围：" ~ prospectingRodRange ~ " 格方块直线距离"));

<prospectors:prospector_high:*>.addTooltip(format.yellow("这个工具在第四纪元"));
<prospectors:prospector_high:*>.addTooltip(format.yellow("及其以下阶段可用"));
<prospectors:prospector_high:*>.addTooltip(format.red("能够检测未解锁矿物"));
<prospectors:prospector_high:*>.addTooltip(format.red("检测范围：" ~ prospectingRodRange ~ " 格方块直线距离"));

<prospectors:prospector_best:*>.addTooltip(format.yellow("这个工具在第五纪元"));
<prospectors:prospector_best:*>.addTooltip(format.yellow("及其以下阶段可用"));
<prospectors:prospector_best:*>.addTooltip(format.red("能够检测未解锁矿物"));
<prospectors:prospector_best:*>.addTooltip(format.red("检测范围：" ~ prospectingRodRange ~ " 格方块直线距离"));

//==================================
//Geolosys Ore Names for User Friendliness AKA I'm tired of using my brain to remember things
<geolosys:ore>.addTooltip(format.red("铁矿"));
<geolosys:ore:1>.addTooltip(format.red("铁矿和镍矿"));
<geolosys:ore:2>.addTooltip(format.red("铜矿"));
<geolosys:ore:3>.addTooltip(format.red("铜矿"));
<geolosys:ore:4>.addTooltip(format.red("锡矿"));
<geolosys:ore:5>.addTooltip(format.red("锡矿"));
<geolosys:ore:6>.addTooltip(format.red("银矿和铅矿"));
<geolosys:ore:7>.addTooltip(format.red("铝矿"));
<geolosys:ore:8>.addTooltip(format.red("铂矿"));
<geolosys:ore:9>.addTooltip(format.red("铀矿"));
<geolosys:ore:10>.addTooltip(format.red("锌矿"));
<geolosys:ore_vanilla:1>.addTooltip(format.red("红石矿"));
<geolosys:ore_vanilla:5>.addTooltip(format.red("钻石矿"));
<geolosys:ore_vanilla:6>.addTooltip(format.red("绿宝石矿"));

//==================================
//Someone had to do it! xD
<chisel:antiblock:15>.addTooltip(format.gold("可合成的"));
<chisel:brownstone>.addTooltip(format.gold("可合成的"));
<chisel:factory>.addTooltip(format.gold("可合成的"));
<chisel:futura>.addTooltip(format.gold("可合成的"));
<chisel:laboratory>.addTooltip(format.gold("可合成的"));
<chisel:lavastone>.addTooltip(format.gold("可合成的"));
<chisel:temple>.addTooltip(format.gold("可合成的"));
<chisel:tyrian>.addTooltip(format.gold("可合成的"));
<chisel:voidstone>.addTooltip(format.gold("可合成的"));
<chisel:waterstone>.addTooltip(format.gold("可合成的"));

//==================================
//Environmental Tech Structures
<environmentaltech:solar_cont_1>.addTooltip(format.aqua("结构大小：5x2x5"));
<environmentaltech:solar_cont_2>.addTooltip(format.aqua("结构大小：7x2x7"));
<environmentaltech:solar_cont_3>.addTooltip(format.aqua("结构大小：9x2x9"));
<environmentaltech:solar_cont_4>.addTooltip(format.aqua("结构大小：11x2x11"));
<environmentaltech:solar_cont_5>.addTooltip(format.aqua("结构大小：13x2x13"));
<environmentaltech:solar_cont_6>.addTooltip(format.aqua("结构大小：15x2x15"));
<environmentaltech:void_botanic_miner_cont_1>.addTooltip(format.aqua("结构大小：7x4x7"));
<environmentaltech:void_botanic_miner_cont_2>.addTooltip(format.aqua("结构大小：7x5x7"));
<environmentaltech:void_botanic_miner_cont_3>.addTooltip(format.aqua("结构大小：11x6x11"));
<environmentaltech:void_botanic_miner_cont_4>.addTooltip(format.aqua("结构大小：11x7x11"));
<environmentaltech:void_botanic_miner_cont_5>.addTooltip(format.aqua("结构大小：11x8x11"));
<environmentaltech:void_botanic_miner_cont_6>.addTooltip(format.aqua("结构大小：13x8x13"));
<environmentaltech:void_ore_miner_cont_1>.addTooltip(format.aqua("结构大小：7x4x7"));
<environmentaltech:void_ore_miner_cont_2>.addTooltip(format.aqua("结构大小：7x5x7"));
<environmentaltech:void_ore_miner_cont_3>.addTooltip(format.aqua("结构大小：11x6x11"));
<environmentaltech:void_ore_miner_cont_4>.addTooltip(format.aqua("结构大小：11x7x11"));
<environmentaltech:void_ore_miner_cont_5>.addTooltip(format.aqua("结构大小：11x8x11"));
<environmentaltech:void_ore_miner_cont_6>.addTooltip(format.aqua("结构大小：13x8x13"));
<environmentaltech:void_res_miner_cont_1>.addTooltip(format.aqua("结构大小：7x4x7"));
<environmentaltech:void_res_miner_cont_2>.addTooltip(format.aqua("结构大小：7x5x7"));
<environmentaltech:void_res_miner_cont_3>.addTooltip(format.aqua("结构大小：11x6x11"));
<environmentaltech:void_res_miner_cont_4>.addTooltip(format.aqua("结构大小：11x7x11"));
<environmentaltech:void_res_miner_cont_5>.addTooltip(format.aqua("结构大小：11x8x11"));
<environmentaltech:void_res_miner_cont_6>.addTooltip(format.aqua("结构大小：13x8x13"));

//==================================
//Misc
<animalium:rat_meat>.addTooltip(format.red("野熊的最爱！"));

<primal_tech:wooden_hopper>.addTooltip(format.red("一个高级木质漏斗"));
<primal_tech:charcoal_hopper>.addTooltip(format.red("一个高级木质漏斗"));

<jarm:oak_raft>.addTooltip(format.red("一个汤姆汉克斯风格的船"));
<jarm:spruce_raft>.addTooltip(format.red("一个汤姆汉克斯风格的船"));
<jarm:birch_raft>.addTooltip(format.red("一个汤姆汉克斯风格的船"));
<jarm:jungle_raft>.addTooltip(format.red("一个汤姆汉克斯风格的船"));
<jarm:acacia_raft>.addTooltip(format.red("一个汤姆汉克斯风格的船"));
<jarm:dark_oak_raft>.addTooltip(format.red("一个汤姆汉克斯风格的船"));

<minecraft:mob_spawner>.addTooltip(format.red("只能生成 400 次"));

<totemic:tipi>.addTooltip(format.red("这是一个豪华的床！"));

<primal_tech:clay_kiln>.addTooltip(format.red("下方需要热源"));

<dungpipe:sewer_pipe>.addTooltip(format.red("将物品管道传输过一个方块"));

<ceramics:clay_bucket>.addTooltip(format.red("传输过热流体后，可能会缓慢熔化"));

<progressiontweaks:spear>.addTooltip(format.red("按下鼠标按钮来充能"));
<progressiontweaks:spear>.addTooltip(format.red("松开来丢出"));

<primal_tech:fibre_torch>.addTooltip(format.red("右击火源"));
<primal_tech:fibre_torch>.addTooltip(format.red("或者点燃火把来照明"));

<primal_tech:rock>.addTooltip(format.red("与工作桩一起使用"));
<primal_tech:rock>.addTooltip(format.red("多次右击即可合成"));

<tconstruct:sharpening_kit>.addTooltip(format.red("只能够用于修复工具"));

<betterwithaddons:japanmat:36>.addTooltip(format.red("在大多数生物群系，桑树很少生成"));

<primal_tech:work_stump>.addTooltip(format.red("需要石板多次右击"));
<primal_tech:work_stump>.addTooltip(format.red("来进行合成"));
<primal_tech:work_stump_upgraded>.addTooltip(format.red("需要石板多次右击"));
<primal_tech:work_stump_upgraded>.addTooltip(format.red("来进行合成"));

<primal:flint_hatchet:*>.addTooltip(format.yellow("无法被修复"));

<teslacorelib:energy_tier1>.addTooltip(format.yellow("升级为 Industrial Foregoing 的机器"));
<teslacorelib:energy_tier2>.addTooltip(format.yellow("升级为 Industrial Foregoing 的机器"));
<teslacorelib:speed_tier1>.addTooltip(format.yellow("升级为 Industrial Foregoing 的机器"));
<teslacorelib:speed_tier2>.addTooltip(format.yellow("升级为 Industrial Foregoing 的机器"));

<astikoor:plowcart>.addTooltip(format.yellow("使用“马拉车具”模"));
<astikoor:plowcart>.addTooltip(format.yellow("组的按键来拴上马"));
<astikoor:cargocart>.addTooltip(format.yellow("使用“马拉车具”模"));
<astikoor:cargocart>.addTooltip(format.yellow("组的按键来拴上马"));

<primal:flint_workblade:*>.addTooltip(format.red("无法被修复"));
<primal:quartz_workblade:*>.addTooltip(format.red("无法被修复"));
<primal:iron_workblade:*>.addTooltip(format.red("无法被修复"));
<primal:emerald_workblade:*>.addTooltip(format.red("无法被修复"));
<primal:diamond_workblade:*>.addTooltip(format.red("无法被修复"));
<primal:flint_axe:*>.addTooltip(format.red("无法被修复"));

<waterstrainer:garden_trowel>.addTooltip(format.red("与燧石一起修复"));

<betterwithmods:wooden_broken_gearbox>.addTooltip(format.red("手持两个木齿轮"));
<betterwithmods:wooden_broken_gearbox>.addTooltip(format.red("右击来修复"));
<betterwithmods:wooden_broken_gearbox>.addTooltip(format.red("或者直接合成来修复"));

<extraplanets:apple_iron>.addTooltip(format.red("合成这个物品能够"));
<extraplanets:apple_iron>.addTooltip(format.red("解锁高级地图"));

<thebetweenlands:ring_of_flight>.addTooltip(format.red("可以作为战利品在"));
<thebetweenlands:ring_of_flight>.addTooltip(format.red("神庙，碎岩塔，"));
<thebetweenlands:ring_of_flight>.addTooltip(format.red("鬼魂城堡发现"));

<indlog:auto_craft>.addTooltip(format.red("能够合成第三纪元及其以下阶段物品"));
<indlog:portable_craft>.addTooltip(format.red("能够合成第三纪元及其以下阶段物品"));

<buildcraftfactory:autoworkbench_item>.addTooltip(format.red("能够合成第四纪元及其以下阶段物品"));

<rftools:crafter1>.addTooltip(format.red("能够合成第五纪元及其以下阶段物品"));
<rftools:crafter2>.addTooltip(format.red("能够合成第五纪元及其以下阶段物品"));
<rftools:crafter3>.addTooltip(format.red("能够合成第五纪元及其以下阶段物品"));

<cyclicmagic:auto_crafter>.addTooltip(format.red("能够合成第五纪元及其以下阶段物品"));

<betterwithmods:hand_crank>.addTooltip(format.red("用以给早期机器供能"));
<betterwithmods:hand_crank>.addTooltip(format.red("比如说磨石"));

<abyssalcraft:statue>.addTooltip(format.red("需要开阔露天才能起作用"));
<abyssalcraft:statue:1>.addTooltip(format.red("需要开阔露天才能起作用"));
<abyssalcraft:statue:2>.addTooltip(format.red("需要开阔露天才能起作用"));
<abyssalcraft:statue:3>.addTooltip(format.red("需要开阔露天才能起作用"));
<abyssalcraft:statue:4>.addTooltip(format.red("需要开阔露天才能起作用"));
<abyssalcraft:statue:5>.addTooltip(format.red("需要开阔露天才能起作用"));
<abyssalcraft:statue:6>.addTooltip(format.red("需要开阔露天才能起作用"));
<tombmanygraves:grave_block>.addTooltip(format.red("请依据死亡指南针的指向，来找到你的坟墓"));

<totemic:cedar_log>.addTooltip(format.red("无法在自然生成中找到"));
<totemic:cedar_log>.addTooltip(format.red("红柏树只能通过图腾模组的沙法尔圆舞仪式获得"));
<totemic:stripped_cedar_log>.addTooltip(format.red("无法在自然生成中找到"));
<totemic:stripped_cedar_log>.addTooltip(format.red("红柏树只能通过图腾模组的沙法尔圆舞仪式获得"));
<totemic:cedar_plank>.addTooltip(format.red("无法在自然生成中找到"));
<totemic:cedar_plank>.addTooltip(format.red("红柏树只能通过图腾模组的沙法尔圆舞仪式获得"));
<totemic:cedar_sapling>.addTooltip(format.red("无法在自然生成中找到"));
<totemic:cedar_sapling>.addTooltip(format.red("红柏树只能通过图腾模组的沙法尔圆舞仪式获得"));
<totemic:cedar_leaves>.addTooltip(format.red("无法在自然生成中找到"));
<totemic:cedar_leaves>.addTooltip(format.red("红柏树只能通过图腾模组的沙法尔圆舞仪式获得"));

// Death Releated
<death_compass:death_compass>.addTooltip(format.red("站在你的坟墓上 Shift 即可返还物品"));
