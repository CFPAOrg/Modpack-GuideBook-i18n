/*
	SevTech: Ages Tooltips Modification Script

	This script allows modification of tooltips.

	Note: These scripts are created and for the usage in SevTech: Ages and other
	modpacks curated by DarkPacks. You can use these scripts for reference and for
	learning but not for copying and pasting and claiming as your own.
*/
import crafttweaker.formatting.IFormattedText;
import crafttweaker.item.IItemStack;

static itemTooltipMap as IFormattedText[][IItemStack] = {
	// ==================================
	// Prospecting Rods
	<prospectors:prospector_lowest:*>: [
	format.yellow("这个工具在第一纪元"),
	 format.yellow("及其以下阶段可用"),
	 format.red("能够检测未解锁矿物"),
	 format.red("检测范围：" ~ 48 ~ " 格方块直线距离")
	],
	<prospectors:prospector_low:*>:[
	format.yellow("这个工具在第二纪元"),
	 format.yellow("及其以下阶段可用"),
	 format.red("能够检测未解锁矿物"),
	 format.red("检测范围：" ~ 48 ~ " 格方块直线距离")
	],
	<prospectors:prospector_med:*>:[
	format.yellow("这个工具在第三纪元"),
	 format.yellow("及其以下阶段可用"),
	 format.red("能够检测未解锁矿物"),
	 format.red("检测范围：" ~ 48 ~ " 格方块直线距离")
	],
	<prospectors:prospector_high:*>:[
	format.yellow("这个工具在第四纪元"),
	 format.yellow("及其以下阶段可用"),
	 format.red("能够检测未解锁矿物"),
	 format.red("检测范围：" ~ 48 ~ " 格方块直线距离")
	],
	<prospectors:prospector_best:*>:[
	format.yellow("这个工具在第五纪元"),
	 format.yellow("及其以下阶段可用"),
	 format.red("能够检测未解锁矿物"),
	 format.red("检测范围：" ~ 48 ~ " 格方块直线距离")
	],

	// ==================================
	// Geolosys Ore Names for User Friendliness AKA I'm tired of using my brain to remember things
	<geolosys:ore:0>: [
	format.red("铁矿")
	],
	<geolosys:ore:1>:[
	format.red("铁矿和镍矿")
	],
	<geolosys:ore:2>:[
	format.red("铜矿")
	],
	<geolosys:ore:3>:[
	format.red("铜矿")
	],
	<geolosys:ore:4>:[
	format.red("锡矿")
	],
	<geolosys:ore:5>:[
	format.red("锡矿")
	],
	<geolosys:ore:6>:[
	format.red("银矿和铅矿")
	],
	<geolosys:ore:7>:[
	format.red("铝矿")
	],
	<geolosys:ore:8>:[
	format.red("铂矿")
	],
	<geolosys:ore:9>:[
	format.red("铀矿")
	],
	<geolosys:ore:10>:[
	format.red("锌矿")
	],
	<geolosys:ore_vanilla:1>:[
	format.red("红石矿")
	],
	<geolosys:ore_vanilla:5>:[
	format.red("钻石矿")
	],
	<geolosys:ore_vanilla:6>:[
	format.red("绿宝石矿")
	],

	// ==================================
	// Someone had to do it! xD
	<chisel:antiblock:15>: [
	format.gold("可合成的")
	],
	<chisel:brownstone:0>:[
	format.gold("可合成的")
	],
	<chisel:factory:0>:[
	format.gold("可合成的")
	],
	<chisel:futura:0>:[
	format.gold("可合成的")
	],
	<chisel:laboratory:0>:[
	format.gold("可合成的")
	],
	<chisel:lavastone:0>:[
	format.gold("可合成的")
	],
	<chisel:temple:0>:[
	format.gold("可合成的")
	],
	<chisel:tyrian:0>:[
	format.gold("可合成的")
	],
	<chisel:voidstone:0>:[
	format.gold("可合成的")
	],
	<chisel:waterstone:0>:[
	format.gold("可合成的")
	],

	// ==================================
	// Environmental Tech Structures
	// Lightning
	<environmentaltech:lightning_cont_1:0>: [
	format.aqua("结构大小： 3x7x3")
	],
	<environmentaltech:lightning_cont_2:0>:[
	format.aqua("结构大小： 3x9x3")
	],
	<environmentaltech:lightning_cont_3:0>:[
	format.aqua("结构大小： 3x11x3")
	],
	<environmentaltech:lightning_cont_4:0>:[
	format.aqua("结构大小： 3x13x3")
	],
	<environmentaltech:lightning_cont_5:0>:[
	format.aqua("结构大小： 3x18x3")
	],
	<environmentaltech:lightning_cont_6:0>:[
	format.aqua("结构大小： 3x23x3")
	],

	// Nano
	<environmentaltech:nano_cont_personal_1:0>: [
	format.aqua("结构大小： 5x3x5")
	],
	<environmentaltech:nano_cont_personal_2:0>:[
	format.aqua("结构大小： 7x4x7")
	],
	<environmentaltech:nano_cont_personal_3:0>:[
	format.aqua("结构大小： 9x5x9")
	],
	<environmentaltech:nano_cont_personal_4:0>:[
	format.aqua("结构大小： 11x6x11")
	],
	<environmentaltech:nano_cont_personal_5:0>:[
	format.aqua("结构大小： 13x7x13")
	],
	<environmentaltech:nano_cont_personal_6:0>:[
	format.aqua("结构大小： 15x8x15")
	],

	// Solar
	<environmentaltech:solar_cont_1:0>: [
	format.aqua("结构大小：5x2x5")
	],
	<environmentaltech:solar_cont_2:0>:[
	format.aqua("结构大小：7x2x7")
	],
	<environmentaltech:solar_cont_3:0>:[
	format.aqua("结构大小：9x2x9")
	],
	<environmentaltech:solar_cont_4:0>:[
	format.aqua("结构大小：11x2x11")
	],
	<environmentaltech:solar_cont_5:0>:[
	format.aqua("结构大小：13x2x13")
	],
	<environmentaltech:solar_cont_6:0>:[
	format.aqua("结构大小：15x2x15")
	],

	// Void Botanic Miner
	<environmentaltech:void_botanic_miner_cont_1:0>: [
	format.aqua("结构大小：7x4x7")
	],
	<environmentaltech:void_botanic_miner_cont_2:0>:[
	format.aqua("结构大小：7x5x7")
	],
	<environmentaltech:void_botanic_miner_cont_3:0>:[
	format.aqua("结构大小：11x6x11")
	],
	<environmentaltech:void_botanic_miner_cont_4:0>:[
	format.aqua("结构大小：11x7x11")
	],
	<environmentaltech:void_botanic_miner_cont_5:0>:[
	format.aqua("结构大小：11x8x11")
	],
	<environmentaltech:void_botanic_miner_cont_6:0>:[
	format.aqua("结构大小：13x8x13")
	],

	// Void Ore Miner
	<environmentaltech:void_ore_miner_cont_1:0>: [
	format.aqua("结构大小：7x4x7")
	],
	<environmentaltech:void_ore_miner_cont_2:0>:[
	format.aqua("结构大小：7x5x7")
	],
	<environmentaltech:void_ore_miner_cont_3:0>:[
	format.aqua("结构大小：11x6x11")
	],
	<environmentaltech:void_ore_miner_cont_4:0>:[
	format.aqua("结构大小：11x7x11")
	],
	<environmentaltech:void_ore_miner_cont_5:0>:[
	format.aqua("结构大小：11x8x11")
	],
	<environmentaltech:void_ore_miner_cont_6:0>:[
	format.aqua("结构大小：13x8x13")
	],

	// Void Res Miner
	<environmentaltech:void_res_miner_cont_1:0>: [
	format.aqua("结构大小：7x4x7")
	],
	<environmentaltech:void_res_miner_cont_2:0>:[
	format.aqua("结构大小：7x5x7")
	],
	<environmentaltech:void_res_miner_cont_3:0>:[
	format.aqua("结构大小：11x6x11")
	],
	<environmentaltech:void_res_miner_cont_4:0>:[
	format.aqua("结构大小：11x7x11")
	],
	<environmentaltech:void_res_miner_cont_5:0>:[
	format.aqua("结构大小：11x8x11")
	],
	<environmentaltech:void_res_miner_cont_6:0>:[
	format.aqua("结构大小：13x8x13")
	],

	// ==================================
	// Galacticraft Schematic Helpful Hints
	<galacticraftcore:schematic:0>: [
	format.gray("一阶珍宝箱, 在攻略完月球一阶地牢后发现。"),
	],
	<galacticraftcore:schematic:1>:[
	format.gray("二阶火箭的工程图可以在一阶珍宝箱中找到，在攻略完月球地牢后找到。"),
	],
	<galacticraftplanets:schematic:0>:[
	format.gray("三阶火箭的工程图可以在二阶珍宝箱中找到，有时可以在完成火星地牢后找到。"),
	],
	<galacticraftplanets:schematic:1>:[
	format.gray("运货火箭工程图可以在二阶珍宝箱中找到，在攻略完二阶地牢后发现。"),
	],
	<galacticraftplanets:schematic:2>:[
	format.gray("在击败BOSS爬行者之后，在二阶珍宝箱中找到。"),
	],
	<extraplanets:schematic_tier4:0>:[
	format.gray("这份工程图可以在水星上的4阶珍宝箱中发现。"),
	],
	<extraplanets:schematic_tier5:0>:[
	format.gray("这份工程图可以在木星上的5阶珍宝箱中发现。"),
	],
	<extraplanets:schematic_tier6:0>:[
	format.gray("这份工程图可以在土星上的6阶珍宝箱中发现。"),
	],
	<extraplanets:schematic_tier7:0>:[
	format.gray("这份工程图可以在天王星上的7阶珍宝箱中发现。"),
	],
	<extraplanets:schematic_tier8:0>:[
	format.gray("这份工程图可以在海王星上的8阶珍宝箱中发现。"),
	],
	<extraplanets:schematic_tier9:0>:[
	format.gray("这份工程图可以在冥王星上的9阶珍宝箱中发现。"),
	],
	<extraplanets:schematic_tier10:0>:[
	format.gray("这份工程图可以在阋神星上的10阶珍宝箱中发现。"),
	],
	<extraplanets:schematic_mars_rover:0>:[
	format.gray("这份工程图可以在珍宝箱中发现。"),
	],
	<extraplanets:schematic_venus_rover:0>:[
	format.gray("这份工程图可以在金星上的4阶珍宝箱中发现。"),
	],

	// ==================================
	// Misc
	<animalium:rat_meat:0>: [
	format.red("野熊的最爱！")
	],

	<car:key:0>: [
		format.yellow("开启车的钥匙!"),
		format.yellow("可以让人坐在车里"),
		format.yellow("这是用铁制作而成的")
	],

	<primal_tech:wooden_hopper>: [
	format.red("一个高级木质漏斗")
	],
	<primal_tech:charcoal_hopper>:[
	format.red("一个高级木质漏斗")
	],
	<jarm:oak_raft:0>:[
	format.red("一个汤姆汉克斯风格的船")
	],
	<jarm:spruce_raft:0>:[
	format.red("一个汤姆汉克斯风格的船")
	],
	<jarm:birch_raft:0>:[
	format.red("一个汤姆汉克斯风格的船")
	],
	<jarm:jungle_raft:0>:[
	format.red("一个汤姆汉克斯风格的船")
	],
	<jarm:acacia_raft:0>:[
	format.red("一个汤姆汉克斯风格的船")
	],
	<jarm:dark_oak_raft:0>:[
	format.red("一个汤姆汉克斯风格的船")
	],

	<minecraft:mob_spawner:0>: [
	format.red("只能生成 400 次")
	],
	<totemic:tipi:0>:[
	format.red("这是一个豪华的床！")
	],
	<primal_tech:clay_kiln>:[
	format.red("下方需要热源")
	],
	<dungpipe:sewer_pipe:0>:[
	format.red("将物品管道传输过一个方块")
	],
	<ceramics:clay_bucket:0>:[
	format.red("传输过热流体后，可能会缓慢熔化")
	],
	<progressiontweaks:spear:0>:[
	format.red("按下鼠标按钮来充能"),
	 format.red("松开来丢出")
	],

	<primal_tech:rock>: [
	format.red("右击火源"),
	 format.red("或者点燃火把来照明")
	],
	<primal_tech:rock>:[
	format.red("与工作桩一起使用"),
	 format.red("多次右击即可合成")
	],
	<tconstruct:sharpening_kit:0>:[
	format.red("只能够用于修复工具")
	],
	<betterwithaddons:japanmat:36>:[
	format.red("在大多数生物群系，桑树很少生成")
	],

	<primal_tech:work_stump>: [
	format.red("需要石板多次右击"),
	 format.red("来进行合成")
	],
	<primal_tech:work_stump_upgraded>:[
	format.red("需要石板多次右击"),
	 format.red("来进行合成")
	],
	<primal:flint_hatchet:*>:[
	format.red("无法被修复")
	],
	<primal:sharp_bone:*>:[
	format.red("无法被修复")
	],

	<teslacorelib:energy_tier1:0>: [
	format.yellow("为 Industrial Foregoing 的机器升级")
	],
	<teslacorelib:energy_tier2:0>:[
	format.yellow("为 Industrial Foregoing 的机器升级")
	],
	<teslacorelib:speed_tier1:0>:[
	format.yellow("为 Industrial Foregoing 的机器升级")
	],
	<teslacorelib:speed_tier2:0>:[
	format.yellow("为 Industrial Foregoing 的机器升级")
	],

	<astikorcarts:plowcart:0>: [
	format.yellow("使用“马拉车具”模"),
	 format.yellow("组的按键来拴上马")
	],
	<astikorcarts:cargocart:0>:[
	 format.yellow("使用“马拉车具”模"),
	 format.yellow("组的按键来拴上马")
	],
	<astikorcarts:mobcart:0>:[
	format.yellow("使用“马拉车具”模"),
	 format.yellow("组的按键来拴上马")
	],

	<primal:flint_workblade:*>: [
	format.red("无法被修复")
	],
	<primal:quartz_workblade:*>:[
	format.red("无法被修复")
	],
	<primal:iron_workblade:*>:[
	format.red("无法被修复")
	],
	<primal:emerald_workblade:*>:[
	format.red("无法被修复")
	],
	<primal:diamond_workblade:*>:[
	format.red("无法被修复")
	],
	<primal:flint_pickaxe:*>:[
	format.red("无法被修复")
	],

	<waterstrainer:garden_trowel:0>:[
	format.red("与燧石一起修复")
	],

	<betterwithmods:wooden_broken_gearbox:0>:[
	format.red("手持两个木齿轮"),
	 format.red("右击来修复"),
	 format.red("或者直接合成来修复")
	],
	<extraplanets:apple_iron:0>:[
	format.red("吃下这个物品能够"),
	 format.red("解锁高级地图")
	],
	<thebetweenlands:ring_of_flight:0>:[
	format.red("可以作为战利品在"),
	 format.red("神庙，碎岩塔，"),
	 format.red("鬼魂城堡发现"),
	 format.red("或者在Boss的战利品"),
	 format.red("和稀有掉落几率"),
	 format.red("来自某些交错次元的敌人")
	],

	<indlog:auto_craft:0>:[
	format.red("能够合成第四纪元及其以下阶段物品")
	],
	<indlog:portable_craft:0>:[
	format.red("能够合成第四纪元及其以下阶段物品")
	],
	<buildcraftfactory:autoworkbench_item:0>:[
	format.red("能够合成第四纪元及其以下阶段物品")
	],
	<rftools:crafter1:0>:[
	format.red("能够合成第五纪元及其以下阶段物品")
	],
	<rftools:crafter2:0>:[
	format.red("能够合成第五纪元及其以下阶段物品")
	],
	<rftools:crafter3:0>:[
	format.red("能够合成第五纪元及其以下阶段物品")
	],
	<cyclicmagic:auto_crafter:0>:[
	format.red("能够合成第五纪元及其以下阶段物品")
	],

	<betterwithmods:hand_crank:0>: [
	format.red("用以给早期机器供能"),
	 format.red("比如说磨石")
	],
	<betterwithmods:single_machine:0>: [
		format.aqua("请使用手动曲柄"),
		format.aqua("直到动能成功传输到机器")
	],
	<abyssalcraft:statue:0>:[
	format.red("需要开阔露天才能起作用")
	],
	<abyssalcraft:statue:1>:[
	format.red("需要开阔露天才能起作用")
	],
	<abyssalcraft:statue:2>:[
	format.red("需要开阔露天才能起作用")
	],
	<abyssalcraft:statue:3>:[
	format.red("需要开阔露天才能起作用")
	],
	<abyssalcraft:statue:4>:[
	format.red("需要开阔露天才能起作用")
	],
	<abyssalcraft:statue:5>:[
	format.red("需要开阔露天才能起作用")
	],
	<abyssalcraft:statue:6>:[
	format.red("需要开阔露天才能起作用")
	],

	<totemic:cedar_log:0>: [
	format.red("无法在自然生成中找到"),
	 format.red("红柏树只能通过图腾模组的沙法尔圆舞仪式获得")
	],
	<totemic:stripped_cedar_log:0>:[
	format.red("无法在自然生成中找到"),
	 format.red("红柏树只能通过图腾模组的沙法尔圆舞仪式获得")
	],
	<totemic:cedar_plank:0>:[
	format.red("无法在自然生成中找到"),
	 format.red("红柏树只能通过图腾模组的沙法尔圆舞仪式获得")
	],
	<totemic:cedar_sapling:0>:[
	format.red("无法在自然生成中找到"),
	 format.red("红柏树只能通过图腾模组的沙法尔圆舞仪式获得")
	],
	<totemic:cedar_leaves:0>:[
	format.red("无法在自然生成中找到"),
	 format.red("红柏树只能通过图腾模组的沙法尔圆舞仪式获得")
	],

	// Add tooltips to explain how to find eagles / obtain the eagle drops
	<totemic:eagle_drops:0>: [
	format.red("没有在世界上找到"),
	 format.red("鹰是通过图腾仪式产生的")
	],
	<totemic:eagle_drops:1>:[
	format.red("没有在世界上找到"),
	 format.red("鹰是通过图腾仪式产生的")
	],

	// Death Releated
	<death_compass:death_compass>:[
	format.red("站在你的坟墓上 Shift 即可返还物品")
	],
	<extendedcrafting:singularity_custom:8>: [
		format.aqua("死亡指南针将会通过玩家死亡"),
		format.aqua("或者玩家皮肤对应生物获得")
	],

	// Space!
	<buildcraftbuilders:quarry:0>: [
	format.red("这台机器只能在太空中工作！")
	],

	// Creeping Moss
	<huntingdim:biome_changer:0>: [
	format.red("要改变生物群系，用苔藓潜行右键可以将生物群系绑定为你所在的生物群系。")
	],

	<betterwithmods:hibachi:0>: [
	format.red("需要红石信号才能点火")
	],
	// Extra Planets space suit
		<extraplanets:tier1_space_suit_helmet:*>:[
	format.red("只有当安装模块后才开始消耗能量"),
	 format.red("只能使用储能模块充能")
	],
	<extraplanets:tier1_space_suit_chest:*>:[
	format.red("只有当安装模块后才开始消耗能量"),
	 format.red("只能使用储能模块充能")
	],
	<extraplanets:tier1_space_suit_legings:*>:[
	format.red("只有当安装模块后才开始消耗能量"),
	 format.red("只能使用储能模块充能")
	],
	<extraplanets:tier1_space_suit_boots:*>:[
	format.red("只有当安装模块后才开始消耗能量"),
	 format.red("只能使用储能模块充能")
	],

	// Coralium
	<abyssalcraft:coraliumore:0>: [
		format.aqua("请教Overworld篇章在禁忌的知识中"),
		format.aqua("请在死灵之书中寻找更多的信息"),
		format.aqua("矿石可以在地下海洋找到"),
		format.aqua("和沼泽生物群系")
	],
	<abyssalcraft:cpearl:0>: [
		format.aqua("请教Overworld篇章在禁忌的知识中"),
		format.aqua("请在死灵之书中寻找更多的信息"),
		format.aqua("矿石可以在地下海洋找到"),
		format.aqua("和沼泽生物群系")
	],
	<thebetweenlands:volarkite>: [
		format.aqua("滑翔机"),
	]
};

function init() {
	for item, tooltips in itemTooltipMap {
		for tooltip in tooltips {
			item.addTooltip(tooltip);
		}
	}
}
