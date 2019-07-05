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
	<prospectors:prospector_lowest:*:0>:[
	format.yellow("这个工具在第一纪元"),
	 format.yellow("及其以下阶段可用"),
	 format.red("能够检测未解锁矿物"),
	 format.red("检测范围：" ~ 48 ~ " 格方块直线距离")
	],
	<prospectors:prospector_low:*:0>:[
	format.yellow("这个工具在第二纪元"),
	 format.yellow("及其以下阶段可用"),
	 format.red("能够检测未解锁矿物"),
	 format.red("检测范围：" ~ 48 ~ " 格方块直线距离")
	],
	<prospectors:prospector_med:*:0>:[
	format.yellow("这个工具在第三纪元"),
	 format.yellow("及其以下阶段可用"),
	 format.red("能够检测未解锁矿物"),
	 format.red("检测范围：" ~ 48 ~ " 格方块直线距离")
	],
	<prospectors:prospector_high:*:0>:[
	format.yellow("这个工具在第四纪元"),
	 format.yellow("及其以下阶段可用"),
	 format.red("能够检测未解锁矿物"),
	 format.red("检测范围：" ~ 48 ~ " 格方块直线距离")
	],
	<prospectors:prospector_best:*:0>:[
	format.yellow("这个工具在第五纪元"),
	 format.yellow("及其以下阶段可用"),
	 format.red("能够检测未解锁矿物"),
	 format.red("检测范围：" ~ 48 ~ " 格方块直线距离")
	],
	/*<prospectors:prospector_lowest:*:0>: [
		format.yellow("This tool may only be used"),
		format.yellow("for ore in Age 1 and below"),
		format.red("Will detect unlocked Ores"),
		format.red("in a " ~ 48 ~ " block straight line")
	],
	<prospectors:prospector_low:*:0>: [
		format.yellow("This tool may only be used"),
		format.yellow("for ore in Age 2 and below"),
		format.red("Will detect unlocked Ores"),
		format.red("in a " ~ 48 ~ " block straight line")
	],
	<prospectors:prospector_med:*:0>: [
		format.yellow("This tool may only be used"),
		format.yellow("for Age 3 and below ore"),
		format.red("Will detect unlocked Ores"),
		format.red("in a " ~ 48 ~ " block straight line")
	],
	<prospectors:prospector_high:*:0>: [
		format.yellow("This tool may only be used"),
		format.yellow("for ore in Age 4 and below"),
		format.red("Will detect unlocked Ores"),
		format.red("in a " ~ 48 ~ " block straight line")
	],
	<prospectors:prospector_best:*:0>: [
		format.yellow("This tool may only be used"),
		format.yellow("for ore in Age 5 and below"),
		format.red("Will detect unlocked Ores"),
		format.red("in a " ~ 48 ~ " block straight line")
	],*/
		
	// ==================================
	// Geolosys Ore Names for User Friendliness AKA I'm tired of using my brain to remember things
	<geolosys:ore:0:0>:[
	format.red("铁矿")
	],
	<geolosys:ore:1:0>:[
	format.red("铁矿和镍矿")
	],
	<geolosys:ore:2:0>:[
	format.red("铜矿")
	],
	<geolosys:ore:3:0>:[
	format.red("铜矿")
	],
	<geolosys:ore:4:0>:[
	format.red("锡矿")
	],
	<geolosys:ore:5:0>:[
	format.red("锡矿")
	],
	<geolosys:ore:6:0>:[
	format.red("银矿和铅矿")
	],
	<geolosys:ore:7:0>:[
	format.red("铝矿")
	],
	<geolosys:ore:8:0>:[
	format.red("铂矿")
	],
	<geolosys:ore:9:0>:[
	format.red("铀矿")
	],
	<geolosys:ore:10:0>:[
	format.red("锌矿")
	],
	<geolosys:ore_vanilla:1:0>:[
	format.red("红石矿")
	],
	<geolosys:ore_vanilla:5:0>:[
	format.red("钻石矿")
	],
	<geolosys:ore_vanilla:6:0>:[
	format.red("绿宝石矿")
	],
	
	/*<geolosys:ore:0:0>: [
		format.red("Iron Ore")
	],
	<geolosys:ore:1:0>: [
		format.red("Iron and Nickel Ore")
	],
	<geolosys:ore:2:0>: [
		format.red("Copper Ore")
	],
	<geolosys:ore:3:0>: [
		format.red("Copper Ore")
	],
	<geolosys:ore:4:0>: [
		format.red("Tin Ore")
	],
	<geolosys:ore:5:0>: [
		format.red("Tin Ore")
	],
	<geolosys:ore:6:0>: [
		format.red("Silver and Lead Ore")
	],
	<geolosys:ore:7:0>: [
		format.red("Aluminum Ore")
	],
	<geolosys:ore:8:0>: [
		format.red("Platinum Ore")
	],
	<geolosys:ore:9:0>: [
		format.red("Uranium Ore")
	],
	<geolosys:ore:10:0>: [
		format.red("Zinc Ore")
	],
	<geolosys:ore_vanilla:1:0>: [
		format.red("Redstone Ore")
	],
	<geolosys:ore_vanilla:5:0>: [
		format.red("Diamond Ore")
	],
	<geolosys:ore_vanilla:6:0>: [
		format.red("Emerald Ore")
	],*/

	// ==================================
	// Someone had to do it! xD
	<chisel:antiblock:15:0>:[
	format.gold("可合成的")
	],
	<chisel:brownstone:0:0>:[
	format.gold("可合成的")
	],
	<chisel:factory:0:0>:[
	format.gold("可合成的")
	],
	<chisel:futura:0:0>:[
	format.gold("可合成的")
	],
	<chisel:laboratory:0:0>:[
	format.gold("可合成的")
	],
	<chisel:lavastone:0:0>:[
	format.gold("可合成的")
	],
	<chisel:temple:0:0>:[
	format.gold("可合成的")
	],
	<chisel:tyrian:0:0>:[
	format.gold("可合成的")
	],
	<chisel:voidstone:0:0>:[
	format.gold("可合成的")
	],
	<chisel:waterstone:0:0>:[
	format.gold("可合成的")
	],
	/*<chisel:antiblock:15:0>: [
		format.gold("Craftable")
	],
	<chisel:brownstone:0:0>: [
		format.gold("Craftable")
	],
	<chisel:factory:0:0>: [
		format.gold("Craftable")
	],
	<chisel:futura:0:0>: [
		format.gold("Craftable")
	],
	<chisel:laboratory:0:0>: [
		format.gold("Craftable")
	],
	<chisel:lavastone:0:0>: [
		format.gold("Craftable")
	],
	<chisel:temple:0:0>: [
		format.gold("Craftable")
	],
	<chisel:tyrian:0:0>: [
		format.gold("Craftable")
	],
	<chisel:voidstone:0:0>: [
		format.gold("Craftable")
	],
	<chisel:waterstone:0:0>: [
		format.gold("Craftable")
	],*/

	// ==================================
	// Environmental Tech Structures
	// Lightning
	<environmentaltech:lightning_cont_1:0:0>:[
	format.aqua("结构大小： 3x7x3")
	],
	<environmentaltech:lightning_cont_2:0:0>:[
	format.aqua("结构大小： 3x9x3")
	],
	<environmentaltech:lightning_cont_3:0:0>:[
	format.aqua("结构大小： 3x11x3")
	],
	<environmentaltech:lightning_cont_4:0:0>:[
	format.aqua("结构大小： 3x13x3")
	],
	<environmentaltech:lightning_cont_5:0:0>:[
	format.aqua("结构大小： 3x18x3")
	],
	<environmentaltech:lightning_cont_6:0:0>:[
	format.aqua("结构大小： 3x23x3")
	],
	/* <environmentaltech:lightning_cont_1:0:0>: [
		format.aqua("Structure Size: 3x7x3")
	],
	<environmentaltech:lightning_cont_2:0:0>: [
		format.aqua("Structure Size: 3x9x3")
	],
	<environmentaltech:lightning_cont_3:0:0>: [
		format.aqua("Structure Size: 3x11x3")
	],
	<environmentaltech:lightning_cont_4:0:0>: [
		format.aqua("Structure Size: 3x13x3")
	],
	<environmentaltech:lightning_cont_5:0:0>: [
		format.aqua("Structure Size: 3x18x3")
	],
	<environmentaltech:lightning_cont_6:0:0>: [
		format.aqua("Structure Size: 3x23x3")
	], */

	// Nano
	<environmentaltech:nano_cont_personal_1:0:0>:[
	format.aqua("结构大小： 5x3x5")
	],
	<environmentaltech:nano_cont_personal_2:0:0>:[
	format.aqua("结构大小： 7x4x7")
	],
	<environmentaltech:nano_cont_personal_3:0:0>:[
	format.aqua("结构大小： 9x5x9")
	],
	<environmentaltech:nano_cont_personal_4:0:0>:[
	format.aqua("结构大小： 11x6x11")
	],
	<environmentaltech:nano_cont_personal_5:0:0>:[
	format.aqua("结构大小： 13x7x13")
	],
	<environmentaltech:nano_cont_personal_6:0:0>:[
	format.aqua("结构大小： 15x8x15")
	],
	/* <environmentaltech:nano_cont_personal_1:0:0>: [
		format.aqua("Structure Size: 5x3x5")
	],
	<environmentaltech:nano_cont_personal_2:0:0>: [
		format.aqua("Structure Size: 7x4x7")
	],
	<environmentaltech:nano_cont_personal_3:0:0>: [
		format.aqua("Structure Size: 9x5x9")
	],
	<environmentaltech:nano_cont_personal_4:0:0>: [
		format.aqua("Structure Size: 11x6x11")
	],
	<environmentaltech:nano_cont_personal_5:0:0>: [
		format.aqua("Structure Size: 13x7x13")
	],
	<environmentaltech:nano_cont_personal_6:0:0>: [
		format.aqua("Structure Size: 15x8x15")
	], */

	// Solar
	<environmentaltech:solar_cont_1:0:0>:[
	format.aqua("结构大小：5x2x5")
	],
	<environmentaltech:solar_cont_2:0:0>:[
	format.aqua("结构大小：7x2x7")
	],
	<environmentaltech:solar_cont_3:0:0>:[
	format.aqua("结构大小：9x2x9")
	],
	<environmentaltech:solar_cont_4:0:0>:[
	format.aqua("结构大小：11x2x11")
	],
	<environmentaltech:solar_cont_5:0:0>:[
	format.aqua("结构大小：13x2x13")
	],
	<environmentaltech:solar_cont_6:0:0>:[
	format.aqua("结构大小：15x2x15")
	],
	/* <environmentaltech:solar_cont_1:0:0>: [
		format.aqua("Structure Size: 5x2x5")
	],
	<environmentaltech:solar_cont_2:0:0>: [
		format.aqua("Structure Size: 7x2x7")
	],
	<environmentaltech:solar_cont_3:0:0>: [
		format.aqua("Structure Size: 9x2x9")
	],
	<environmentaltech:solar_cont_4:0:0>: [
		format.aqua("Structure Size: 11x2x11")
	],
	<environmentaltech:solar_cont_5:0:0>: [
		format.aqua("Structure Size: 13x2x13")
	],
	<environmentaltech:solar_cont_6:0:0>: [
		format.aqua("Structure Size: 15x2x15")
	], */

	// Void Botanic Miner
	<environmentaltech:void_botanic_miner_cont_1:0:0>:[
	format.aqua("结构大小：7x4x7")
	],
	<environmentaltech:void_botanic_miner_cont_2:0:0>:[
	format.aqua("结构大小：7x5x7")
	],
	<environmentaltech:void_botanic_miner_cont_3:0:0>:[
	format.aqua("结构大小：11x6x11")
	],
	<environmentaltech:void_botanic_miner_cont_4:0:0>:[
	format.aqua("结构大小：11x7x11")
	],
	<environmentaltech:void_botanic_miner_cont_5:0:0>:[
	format.aqua("结构大小：11x8x11")
	],
	<environmentaltech:void_botanic_miner_cont_6:0:0>:[
	format.aqua("结构大小：13x8x13")
	],
	/* <environmentaltech:void_botanic_miner_cont_1:0:0>: [
		format.aqua("Structure Size: 7x4x7")
	],
	<environmentaltech:void_botanic_miner_cont_2:0:0>: [
		format.aqua("Structure Size: 7x5x7")
	],
	<environmentaltech:void_botanic_miner_cont_3:0:0>: [
		format.aqua("Structure Size: 11x6x11")
	],
	<environmentaltech:void_botanic_miner_cont_4:0:0>: [
		format.aqua("Structure Size: 11x7x11")
	],
	<environmentaltech:void_botanic_miner_cont_5:0:0>: [
		format.aqua("Structure Size: 11x8x11")
	],
	<environmentaltech:void_botanic_miner_cont_6:0:0>: [
		format.aqua("Structure Size: 13x8x13")
	], */

	// Void Ore Miner
	<environmentaltech:void_ore_miner_cont_1:0:0>:[
	format.aqua("结构大小：7x4x7")
	],
	<environmentaltech:void_ore_miner_cont_2:0:0>:[
	format.aqua("结构大小：7x5x7")
	],
	<environmentaltech:void_ore_miner_cont_3:0:0>:[
	format.aqua("结构大小：11x6x11")
	],
	<environmentaltech:void_ore_miner_cont_4:0:0>:[
	format.aqua("结构大小：11x7x11")
	],
	<environmentaltech:void_ore_miner_cont_5:0:0>:[
	format.aqua("结构大小：11x8x11")
	],
	<environmentaltech:void_ore_miner_cont_6:0:0>:[
	format.aqua("结构大小：13x8x13")
	],
	/* <environmentaltech:void_ore_miner_cont_1:0:0>: [
		format.aqua("Structure Size: 7x4x7")
	],
	<environmentaltech:void_ore_miner_cont_2:0:0>: [
		format.aqua("Structure Size: 7x5x7")
	],
	<environmentaltech:void_ore_miner_cont_3:0:0>: [
		format.aqua("Structure Size: 11x6x11")
	],
	<environmentaltech:void_ore_miner_cont_4:0:0>: [
		format.aqua("Structure Size: 11x7x11")
	],
	<environmentaltech:void_ore_miner_cont_5:0:0>: [
		format.aqua("Structure Size: 11x8x11")
	],
	<environmentaltech:void_ore_miner_cont_6:0:0>: [
		format.aqua("Structure Size: 13x8x13")
	], */

	// Void Res Miner
	<environmentaltech:void_res_miner_cont_1:0:0>:[
	format.aqua("结构大小：7x4x7")
	],
	<environmentaltech:void_res_miner_cont_2:0:0>:[
	format.aqua("结构大小：7x5x7")
	],
	<environmentaltech:void_res_miner_cont_3:0:0>:[
	format.aqua("结构大小：11x6x11")
	],
	<environmentaltech:void_res_miner_cont_4:0:0>:[
	format.aqua("结构大小：11x7x11")
	],
	<environmentaltech:void_res_miner_cont_5:0:0>:[
	format.aqua("结构大小：11x8x11")
	],
	<environmentaltech:void_res_miner_cont_6:0:0>:[
	format.aqua("结构大小：13x8x13")
	],
	/* <environmentaltech:void_res_miner_cont_1:0:0>: [
		format.aqua("Structure Size: 7x4x7")
	],
	<environmentaltech:void_res_miner_cont_2:0:0>: [
		format.aqua("Structure Size: 7x5x7")
	],
	<environmentaltech:void_res_miner_cont_3:0:0>: [
		format.aqua("Structure Size: 11x6x11")
	],
	<environmentaltech:void_res_miner_cont_4:0:0>: [
		format.aqua("Structure Size: 11x7x11")
	],
	<environmentaltech:void_res_miner_cont_5:0:0>: [
		format.aqua("Structure Size: 11x8x11")
	],
	<environmentaltech:void_res_miner_cont_6:0:0>: [
		format.aqua("Structure Size: 13x8x13")
	], */
	// ==================================
	// Misc
	<animalium:rat_meat:0:0>:[
	format.red("野熊的最爱！")
	],
	<primal_tech:wooden_hopper:0>:[
	format.red("一个高级木质漏斗")
	],
	<primal_tech:charcoal_hopper:0>:[
	format.red("一个高级木质漏斗")
	],
	<jarm:oak_raft:0:0>:[
	format.red("一个汤姆汉克斯风格的船")
	],
	<jarm:spruce_raft:0:0>:[
	format.red("一个汤姆汉克斯风格的船")
	],
	<jarm:birch_raft:0:0>:[
	format.red("一个汤姆汉克斯风格的船")
	],
	<jarm:jungle_raft:0:0>:[
	format.red("一个汤姆汉克斯风格的船")
	],
	<jarm:acacia_raft:0:0>:[
	format.red("一个汤姆汉克斯风格的船")
	],
	<jarm:dark_oak_raft:0:0>:[
	format.red("一个汤姆汉克斯风格的船")
	],
	<minecraft:mob_spawner:0:0>:[
	format.red("只能生成 400 次")
	],
	<totemic:tipi:0:0>:[
	format.red("这是一个豪华的床！")
	],
	<primal_tech:clay_kiln:0>:[
	format.red("下方需要热源")
	],
	<dungpipe:sewer_pipe:0:0>:[
	format.red("将物品管道传输过一个方块")
	],
	<ceramics:clay_bucket:0:0>:[
	format.red("传输过热流体后，可能会缓慢熔化")
	],
	<progressiontweaks:spear:0:0>:[
	format.red("按下鼠标按钮来充能"),
	 format.red("松开来丢出")
	],
	<primal_tech:fibre_torch:0>:[
	format.red("右击火源"),
	 format.red("或者点燃火把来照明")
	],
	<primal_tech:rock:0>:[
	format.red("与工作桩一起使用"),
	 format.red("多次右击即可合成")
	],
	<tconstruct:sharpening_kit:0:0>:[
	format.red("只能够用于修复工具")
	],
	<betterwithaddons:japanmat:36:0>:[
	format.red("在大多数生物群系，桑树很少生成")
	],
	<primal_tech:work_stump:0>:[
	format.red("需要石板多次右击"),
	 format.red("来进行合成")
	],
	<primal_tech:work_stump_upgraded:0>:[
	format.red("需要石板多次右击"),
	 format.red("来进行合成")
	],
	<primal:flint_hatchet:*:0>:[
	format.red("无法被修复")
	],
	<primal:sharp_bone:*:0>:[
	format.red("无法被修复")
	],
	<teslacorelib:energy_tier1:0:0>:[
	format.yellow("为 Industrial Foregoing 的机器升级")
	],
	<teslacorelib:energy_tier2:0:0>:[
	format.yellow("为 Industrial Foregoing 的机器升级")
	],
	<teslacorelib:speed_tier1:0:0>:[
	format.yellow("为 Industrial Foregoing 的机器升级")
	],
	<teslacorelib:speed_tier2:0:0>:[
	format.yellow("为 Industrial Foregoing 的机器升级")
	],
	<astikoor:plowcart:0:0>:[
	format.yellow("使用“马拉车具”模"),
	 format.yellow("组的按键来拴上马")
	],
	<astikoor:cargocart:0:0>:[
	format.yellow("使用“马拉车具”模"),
	 format.yellow("组的按键来拴上马")
	],
	<astikorcarts:mobcart:0:0>: [
	format.yellow("使用“马拉车具”模"),
	 format.yellow("组的按键来拴上马")
	],
	<primal:flint_workblade:*:0>:[
	format.red("无法被修复")
	],
	<primal:quartz_workblade:*:0>:[
	format.red("无法被修复")
	],
	<primal:iron_workblade:*:0>:[
	format.red("无法被修复")
	],
	<primal:emerald_workblade:*:0>:[
	format.red("无法被修复")
	],
	<primal:diamond_workblade:*:0>:[
	format.red("无法被修复")
	],
	<primal:flint_axe:*:0>:[
	format.red("无法被修复")
	],
	<waterstrainer:garden_trowel:0:0>:[
	format.red("与燧石一起修复")
	],
	<betterwithmods:wooden_broken_gearbox:0:0>:[
	format.red("手持两个木齿轮"),
	 format.red("右击来修复"),
	 format.red("或者直接合成来修复")
	],
	<extraplanets:apple_iron:0:0>:[
	format.red("吃下这个物品能够"),
	 format.red("解锁高级地图")
	],
	<thebetweenlands:ring_of_flight:0:0>:[
	format.red("可以作为战利品在"),
	 format.red("神庙，碎岩塔，"),
	 format.red("鬼魂城堡发现"),
	 format.red("或者在Boss的战利品"),
	 format.red("和稀有掉落几率"),
	 format.red("来自某些交错次元的敌人")
	],
	<indlog:auto_craft:0:0>:[
	format.red("能够合成第四纪元及其以下阶段物品")
	],
	<indlog:portable_craft:0:0>:[
	format.red("能够合成第四纪元及其以下阶段物品")
	],
	<buildcraftfactory:autoworkbench_item:0:0>:[
	format.red("能够合成第四纪元及其以下阶段物品")
	],
	<rftools:crafter1:0:0>:[
	format.red("能够合成第五纪元及其以下阶段物品")
	],
	<rftools:crafter2:0:0>:[
	format.red("能够合成第五纪元及其以下阶段物品")
	],
	<rftools:crafter3:0:0>:[
	format.red("能够合成第五纪元及其以下阶段物品")
	],
	<cyclicmagic:auto_crafter:0:0>:[
	format.red("能够合成第五纪元及其以下阶段物品")
	],
	<betterwithmods:hand_crank:0:0>:[
	format.red("用以给早期机器供能"),
	 format.red("比如说磨石")
	],
	<betterwithmods:single_machine:0:0>: [
		format.aqua("Use Hand Crank until kinetic"),
		format.aqua("power is available")
	],
	<abyssalcraft:statue:0:0>:[
	format.red("需要开阔露天才能起作用")
	],
	<abyssalcraft:statue:1:0>:[
	format.red("需要开阔露天才能起作用")
	],
	<abyssalcraft:statue:2:0>:[
	format.red("需要开阔露天才能起作用")
	],
	<abyssalcraft:statue:3:0>:[
	format.red("需要开阔露天才能起作用")
	],
	<abyssalcraft:statue:4:0>:[
	format.red("需要开阔露天才能起作用")
	],
	<abyssalcraft:statue:5:0>:[
	format.red("需要开阔露天才能起作用")
	],
	<abyssalcraft:statue:6:0>:[
	format.red("需要开阔露天才能起作用")
	],
	<tombmanygraves:grave_block:0>:[
	format.red("请依据死亡指南针的指向，来找到你的坟墓")
	],
	<totemic:cedar_log:0:0>:[
	format.red("无法在自然生成中找到"),
	 format.red("红柏树只能通过图腾模组的沙法尔圆舞仪式获得")
	],
	<totemic:stripped_cedar_log:0:0>:[
	format.red("无法在自然生成中找到"),
	 format.red("红柏树只能通过图腾模组的沙法尔圆舞仪式获得")
	],
	<totemic:cedar_plank:0:0>:[
	format.red("无法在自然生成中找到"),
	 format.red("红柏树只能通过图腾模组的沙法尔圆舞仪式获得")
	],
	<totemic:cedar_sapling:0:0>:[
	format.red("无法在自然生成中找到"),
	 format.red("红柏树只能通过图腾模组的沙法尔圆舞仪式获得")
	],
	<totemic:cedar_leaves:0:0>:[
	format.red("无法在自然生成中找到"),
	 format.red("红柏树只能通过图腾模组的沙法尔圆舞仪式获得")
	],
/* 	<animalium:rat_meat:0:0>: [
		format.red("Loved by Wild Bears!")
	],

	<primal_tech:wooden_hopper:0>: [
		format.red("An advanced Wooden Hopper")
	],
	<primal_tech:charcoal_hopper:0>: [
		format.red("An advanced Wooden Hopper")
	],

	<jarm:oak_raft:0:0>: [
		format.red("A Tom Hanks Style Boat")
	],
	<jarm:spruce_raft:0:0>: [
		format.red("A Tom Hanks Style Boat")
	],
	<jarm:birch_raft:0:0>: [
		format.red("A Tom Hanks Style Boat")
	],
	<jarm:jungle_raft:0:0>: [
		format.red("A Tom Hanks Style Boat")
	],
	<jarm:acacia_raft:0:0>: [
		format.red("A Tom Hanks Style Boat")
	],
	<jarm:dark_oak_raft:0:0>: [
		format.red("A Tom Hanks Style Boat")
	],

	<minecraft:mob_spawner:0:0>: [
		format.red("Only has 400 total spawns!")
	],

	<totemic:tipi:0:0>: [
		format.red("It's like a fancy bed!")
	],

	<primal_tech:clay_kiln:0>: [
		format.red("Needs heat source below")
	],

	<dungpipe:sewer_pipe:0:0>: [
		format.red("Pipes items through a solid block")
	],

	<ceramics:clay_bucket:0:0>: [
		format.red("Will literally melt away after transporting HOT liquid")
	],

	<progressiontweaks:spear:0:0>: [
		format.red("Hold Mouse Button To Charge"),
		format.red("Release to throw")
	],

	<primal_tech:fibre_torch:0>: [
		format.red("Right Click on fire source"),
		format.red("or lit torch to light")
	],

	<primal_tech:rock:0>: [
		format.red("Used with the Work Stump"),
		format.red("Right Click on Table to craft recipe")
	],

	<tconstruct:sharpening_kit:0:0>: [
		format.red("Only used to repair tools")
	],

	<betterwithaddons:japanmat:36:0>: [
		format.red("Mulberry Trees rarely spawn in most biomes")
	],

	<primal_tech:work_stump:0>: [
		format.red("Needs a Crafting Rock"),
		format.red("to craft recipes")
	],
	<primal_tech:work_stump_upgraded:0>: [
		format.red("Needs a Crafting Rock"),
		format.red("to craft recipes")
	],

	<primal:flint_hatchet:*:0>: [
		format.red("Can not be repaired")
	],
	<primal:sharp_bone:*:0>: [
		format.red("Can not be repaired")
	],

	<teslacorelib:energy_tier1:0:0>: [
		format.yellow("Upgrade for Industrial Foregoing Machines")
	],
	<teslacorelib:energy_tier2:0:0>: [
		format.yellow("Upgrade for Industrial Foregoing Machines")
	],
	<teslacorelib:speed_tier1:0:0>: [
		format.yellow("Upgrade for Industrial Foregoing Machines")
	],
	<teslacorelib:speed_tier2:0:0>: [
		format.yellow("Upgrade for Industrial Foregoing Machines")
	],

	<astikorcarts:plowcart:0:0>: [
		format.yellow("Use the AstikorCarts Action"),
		format.yellow("Key to attach to Horses")
	],
	<astikorcarts:cargocart:0:0>: [
		format.yellow("Use the AstikorCarts Action"),
		format.yellow("Key to attach to Horses")
	],
	<astikorcarts:mobcart:0:0>: [
		format.yellow("Use the AstikorCarts Action"),
		format.yellow("Key to attach to Horses")
	],

	<primal:flint_workblade:*:0>: [
		format.red("Can not be repaired")
	],
	<primal:quartz_workblade:*:0>: [
		format.red("Can not be repaired")
	],
	<primal:iron_workblade:*:0>: [
		format.red("Can not be repaired")
	],
	<primal:emerald_workblade:*:0>: [
		format.red("Can not be repaired")
	],
	<primal:diamond_workblade:*:0>: [
		format.red("Can not be repaired")
	],
	<primal:flint_axe:*:0>: [
		format.red("Can not be repaired")
	],

	<waterstrainer:garden_trowel:0:0>: [
		format.red("Repaired with Flint")
	],

	<betterwithmods:wooden_broken_gearbox:0:0>: [
		format.red("Right click with two"),
		format.red("Wooden Gears in hand to Repair"),
		format.red("Or craft back into a repaired block")
	],

	<extraplanets:apple_iron:0:0>: [
		format.red("Eating this item will"),
		format.red("unlock Advanced Mapping")
	],

	<thebetweenlands:ring_of_flight:0:0>: [
		format.red("Can be found as Loot from chests in"),
		format.red("Shrines, Cragrock Towers"),
		format.red("and the Wight Fortress"),
		format.red("or looted from bosses"),
		format.red("and a rare drop chance"),
		format.red("from certain Betweenlands enemies")
	],

	<indlog:auto_craft:0:0>: [
		format.red("Only able to craft Age 4 items and below")
	],
	<indlog:portable_craft:0:0>: [
		format.red("Only able to craft Age 4 items and below")
	],

	<buildcraftfactory:autoworkbench_item:0:0>: [
		format.red("Only able to craft Age 4 items and below")
	],

	<rftools:crafter1:0:0>: [
		format.red("Able to craft Age 5 items and below")
	],
	<rftools:crafter2:0:0>: [
		format.red("Able to craft Age 5 items and below")
	],
	<rftools:crafter3:0:0>: [
		format.red("Able to craft Age 5 items and below")
	],

	<cyclicmagic:auto_crafter:0:0>: [
		format.red("Able to craft Age 5 items and below")
	],

	<betterwithmods:hand_crank:0:0>: [
		format.red("Needed to power early machines"),
		format.red("like the Mill Stone")
	],

	<betterwithmods:single_machine:0:0>: [
		format.aqua("Use Hand Crank until kinetic"),
		format.aqua("power is available")
	],

	<abyssalcraft:statue:0:0>: [
		format.red("Requires open sky above to function")
	],
	<abyssalcraft:statue:1:0>: [
		format.red("Requires open sky above to function")
	],
	<abyssalcraft:statue:2:0>: [
		format.red("Requires open sky above to function")
	],
	<abyssalcraft:statue:3:0>: [
		format.red("Requires open sky above to function")
	],
	<abyssalcraft:statue:4:0>: [
		format.red("Requires open sky above to function")
	],
	<abyssalcraft:statue:5:0>: [
		format.red("Requires open sky above to function")
	],
	<abyssalcraft:statue:6:0>: [
		format.red("Requires open sky above to function")
	],

	<totemic:cedar_log:0:0>: [
		format.red("Not found in the world"),
		format.red("Red Cedar is acquired via a Totemic Ceremony")
	],
	<totemic:stripped_cedar_log:0:0>: [
		format.red("Not found in the world"),
		format.red("Red Cedar is acquired via a Totemic Ceremony")
	],
	<totemic:cedar_plank:0:0>: [
		format.red("Not found in the world"),
		format.red("Red Cedar is acquired via a Totemic Ceremony")
	],
	<totemic:cedar_sapling:0:0>: [
		format.red("Not found in the world"),
		format.red("Red Cedar is acquired via a Totemic Ceremony")
	],
	<totemic:cedar_leaves:0:0>: [
		format.red("Not found in the world"),
		format.red("Red Cedar is acquired via a Totemic Ceremony")
	],
 */
	// Add tooltips to explain how to find eagles / obtain the eagle drops
	<totemic:eagle_drops:0:0>:[
	format.red("没有在世界上找到"),
	 format.red("鹰是通过图腾仪式产生的")
	],
	<totemic:eagle_drops:1:0>:[
	format.red("没有在世界上找到"),
	 format.red("鹰是通过图腾仪式产生的")
	],
/* 	<totemic:eagle_drops:0:0>: [
		format.red("Not found in the world"),
		format.red("Eagles are spawned via a Totemic Ceremony")
	],
	<totemic:eagle_drops:1:0>: [
		format.red("Not found in the world"),
		format.red("Eagles are spawned via a Totemic Ceremony")
	], */

	// Make sure people know about the recipe needs to match the one in JEI to actually work.
<ceramics:unfired_clay:4:0>:[
	format.red("对于磨石配方，你需要将物品在对于的位置上与JEI上显示的位置一致。否则它将无法正常工作。")
	],
/* 	<ceramics:unfired_clay:4:0>: [
		format.red("For the MillStone recipe to work you need to match the slots to the one shown on JEI. Otherwise it will not work correctly")
	],
 */
	// Death Releated
	<death_compass:death_compass:0>:[
	format.red("站在你的坟墓上 Shift 即可返还物品")
	],
/* 	<death_compass:death_compass:0>: [
		format.red("Sneak on your grave to retrieve your items")
	], */
	<extendedcrafting:singularity_custom:8:0>: [
		format.aqua("Compasses obtained through player death or"),
		format.aqua("from Player Skin Mobs")
	],

	// Space!
	<buildcraftbuilders:quarry:0:0>:[
	format.red("这台机器只能在太空中工作！")
	],
	/* <buildcraftbuilders:quarry:0:0>: [
		format.red("This machine will only work in space! But watch out for a flying car however")
	], */

	// Creeping Moss
	<huntingdim:biome_changer:0:0>:[
	format.red("要改变生物群系，用苔藓潜行右键可以将生物群系绑定为你所在的生物群系。")
	],
	/* <huntingdim:biome_changer:0:0>: [
		format.red("To change the Biome Type Shift-Click inside the biome you want the moss to be")
	],
 */
	<betterwithmods:hibachi:0:0>:[
	format.red("需要红石信号才能点火")
	],
	/* <betterwithmods:hibachi:0:0>: [
		format.red("Needs a Redstone signal to light")
	], */

	// Extra Planets space suit
		<extraplanets:tier1_space_suit_helmet:*:0>:[
	format.red("只有当安装模块后才开始消耗能量"),
	 format.red("只能使用储能模块充能")
	],
	<extraplanets:tier1_space_suit_chest:*:0>:[
	format.red("只有当安装模块后才开始消耗能量"),
	 format.red("只能使用储能模块充能")
	],
	<extraplanets:tier1_space_suit_legings:*:0>:[
	format.red("只有当安装模块后才开始消耗能量"),
	 format.red("只能使用储能模块充能")
	],
	<extraplanets:tier1_space_suit_boots:*:0>:[
	format.red("只有当安装模块后才开始消耗能量"),
	 format.red("只能使用储能模块充能")
	],
	/* <extraplanets:tier1_space_suit_helmet:*:0>: [
		format.red("Only requires power when modules are installed"),
		format.red("can only be charged with an Energy Storage Module")
	],
	<extraplanets:tier1_space_suit_chest:*:0>: [
		format.red("Only requires power when modules are installed"),
		format.red("can only be charged with an Energy Storage Module")
	],
	<extraplanets:tier1_space_suit_legings:*:0>: [
		format.red("Only requires power when modules are installed"),
		format.red("can only be charged with an Energy Storage Module")
	],
	<extraplanets:tier1_space_suit_boots:*:0>: [
		format.red("Only requires power when modules are installed"),
		format.red("can only be charged with an Energy Storage Module")
	], */

	// Coralium
	<abyssalcraft:coraliumore:0:0>: [
		format.aqua("Consult Overworld Chapter in Forbidden Knowledge"),
		format.aqua("in the Necromonicon for more information."),
		format.aqua("Ore can be found underground Ocean"),
		format.aqua("and Swamp Biomes")
	],
	<abyssalcraft:cpearl:0:0>: [
		format.aqua("Consult Overworld Chapter in Forbidden Knowledge"),
		format.aqua("in the Necromonicon for more information."),
		format.aqua("Ore can be found underground Ocean"),
		format.aqua("and Swamp Biomes")
	]
};

function init() {
	for item, tooltips in itemTooltipMap {
		for tooltip in tooltips {
			item.addTooltip(tooltip);
		}
	}
}
