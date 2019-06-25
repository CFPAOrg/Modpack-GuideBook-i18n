/*
	SkyFactory 4 Tooltips Modification Script

	This script allows modification of tooltips.
*/
import crafttweaker.formatting.IFormattedText;
import crafttweaker.item.IItemStack;

static itemTooltipMap as IFormattedText[][IItemStack] = {
	<rustic:apple_seeds>: [
		format.red("种植后会变成苹果树苗")
	],
	<rustic:sapling_apple>: [
		format.red("种植苹果籽后长出来的")
	],
	<resourcehogs:mud_bucket:*>: [
		format.yellow("对着猪使用转换为 Resource Hog")
	],
	<animalcrops:seeds>: [
		format.yellow("长于草方块上")
	],
	<xlfoodmod:grass>: [
		format.yellow("破坏来获取 XL Food Mod 的种子")
	],
	<xlfoodmod:rice_seeds>: [
		format.yellow("通过破坏 XL Food Mod 的草来获取")
	],
	<xlfoodmod:pepper_seeds>: [
		format.yellow("通过破坏 XL Food Mod 的草来获取")
	],
	<xlfoodmod:corn_seeds>: [
		format.yellow("通过破坏 XL Food Mod 的草来获取")
	],
	<xlfoodmod:cucumber_seeds>: [
		format.yellow("通过破坏 XL Food Mod 的草来获取")
	],
	<xlfoodmod:lettuce_seeds>: [
		format.yellow("通过破坏 XL Food Mod 的草来获取")
	],
	<xlfoodmod:tomato_seeds>: [
		format.yellow("通过破坏 XL Food Mod 的草来获取")
	],
	<xlfoodmod:strawberry_seeds>: [
		format.yellow("通过破坏 XL Food Mod 的草来获取")
	],
	<xlfoodmod:onion>: [
		format.yellow("通过破坏 XL Food Mod 的草来获取")
	],

	// ==================================
	// Add modifier tooltips
	<rustic:fertile_soil>: [
		format.yellow("能够提升盆栽的生长速率和掉落几率"),
		format.yellow("生长速率：117% 掉落几率：125%")
	],
	<inspirations:mulch:1>: [
		format.yellow("能够提升盆栽的生长速率和掉落几率"),
		format.yellow("生长速率：142% 掉落几率：140%")
	],
	<inspirations:mulch:2>: [
		format.yellow("能够提升盆栽的生长速率和掉落几率"),
		format.yellow("生长速率：166% 掉落几率：150%")
	],
	<inspirations:mulch:3>: [
		format.yellow("能够提升盆栽的生长速率和掉落几率"),
		format.yellow("生长速率：200% 掉落几率：170%")
	],
	<inspirations:mulch:4>: [
		format.yellow("能够提升盆栽的生长速率和掉落几率"),
		format.yellow("生长速率：250% 掉落几率：200%")
	],
	<inspirations:mulch:5>: [
		format.yellow("能够提升盆栽的生长速率和掉落几率"),
		format.yellow("生长速率：333% 掉落几率：240%")
	],
	<inspirations:mulch:6>: [
		format.yellow("能够提升盆栽的生长速率和掉落几率"),
		format.yellow("生长速率：500% 掉落几率：290%")
	],
	<inspirations:mulch:7>: [
		format.yellow("能够提升盆栽的生长速率和掉落几率"),
		format.yellow("生长速率：1000% 掉落几率：350%")
	],
	<tconstruct:slime_dirt>: [
		format.yellow("能够提升盆栽的生长速率和掉落几率"),
		format.yellow("生长速率：100% 掉落几率：100%")
	],
	<tconstruct:slime_dirt:1>: [
		format.yellow("能够提升盆栽的生长速率和掉落几率"),
		format.yellow("生长速率：200% 掉落几率：150%")
	],
	<tconstruct:slime_dirt:2>: [
		format.yellow("能够提升盆栽的生长速率和掉落几率"),
		format.yellow("生长速率：400% 掉落几率：200%")
	],
	<tconstruct:slime_dirt:3>: [
		format.yellow("能够提升盆栽的生长速率和掉落几率"),
		format.yellow("生长速率：800% 掉落几率：300%")
	],
	<tconstruct:slime_grass>: [
		format.yellow("能够提升盆栽的生长速率和掉落几率"),
		format.yellow("生长速率：90% 掉落几率：90%")
	],
	<tconstruct:slime_grass:5>: [
		format.yellow("能够提升盆栽的生长速率和掉落几率"),
		format.yellow("生长速率：90% 掉落几率：90%")
	],
	<tconstruct:slime_grass:10>: [
		format.yellow("能够提升盆栽的生长速率和掉落几率"),
		format.yellow("生长速率：90% 掉落几率：90%")
	],

	// ==================================
	// IF Upgrades
	<teslacorelib:base_addon>: [
		format.yellow("用于 Industrial Foregoing 升级合成")
	],
	<teslacorelib:energy_tier1>: [
		format.yellow("用作升级 Industrial Foregoing 的机器")
	],
	<teslacorelib:energy_tier2>: [
		format.yellow("用作升级 Industrial Foregoing 的机器")
	],
	<teslacorelib:speed_tier1>: [
		format.yellow("用作升级 Industrial Foregoing 的机器")
	],
	<teslacorelib:speed_tier2>: [
		format.yellow("用作升级 Industrial Foregoing 的机器")
	],
	<teslacorelib:wrench>: [
		format.yellow("用来操纵 Industrial Foregoing 的机器")
	],

	// ==================================
	// Oregen tooltips
	<nuclearcraft:ore:3>: [
		format.yellow("在暮色森林维度能够发现，"),
		format.yellow("还有失落的城市维度")
	],
	<nuclearcraft:ore:4>: [
		format.yellow("在暮色森林维度能够发现，"),
		format.yellow("还有失落的城市维度")
	],
	<nuclearcraft:ore:5>: [
		format.yellow("在暮色森林维度能够发现，"),
		format.yellow("还有失落的城市维度")
	],
	<nuclearcraft:ore:6>: [
		format.yellow("在暮色森林维度能够发现，"),
		format.yellow("还有失落的城市维度")
	],
	<nuclearcraft:ore:7>: [
		format.yellow("在暮色森林维度能够发现，"),
		format.yellow("还有失落的城市维度")
	],
	<matteroverdrive:dilithium_ore>: [
		format.yellow("在暮色森林维度能够发现，"),
		format.yellow("还有失落的城市维度")
	],
	<matteroverdrive:tritanium_ore>: [
		format.yellow("在暮色森林维度能够发现，"),
		format.yellow("还有失落的城市维度")
	],

	<bibliocraft:lanterngold:*>: [
		format.yellow("与染料合成来改变颜色")
	],
	<bibliocraft:lanterniron:*>: [
		format.yellow("与染料合成来改变颜色")
	],
	<bibliocraft:lampgold:*>: [
		format.yellow("与染料合成来改变颜色")
	],
	<bibliocraft:lampiron:*>: [
		format.yellow("与染料合成来改变颜色")
	],

		/*
			QoL pipe tooltips
		*/
		// Item Pipes
	<thermaldynamics:duct_32:3>: [
		format.red("用作：物品传输管道")
	],
	<thermaldynamics:duct_32:2>: [
		format.red("用作：物品传输管道")
	],
	<translocators:translocator_part:1>: [
		format.red("用作：流体传输管道")
	],
	<cyclicmagic:cable_wireless>: [
		format.red("用作：物品和流体传输"),
		format.red("需要 GPS 标记器进行配置")
	],
	<thermaldynamics:duct_32:1>: [
		format.red("用作：物品传输管道")
	],
	<thermaldynamics:duct_32>: [
		format.red("用作：物品传输管道")
	],
	<cyclicmagic:item_pump>: [
		format.red("用作：物品传输管道")
	],
	<cyclicmagic:item_pipe>: [
		format.red("用作：物品传输管道")
	],
	<inspirations:pipe>: [
		format.red("用作：物品传输管道")
	],
	<thermaldynamics:duct_32:5>: [
		format.red("用作：物品传输管道"),
		format.red("用作: 电力/能量传输管道")
	],
	<thermaldynamics:duct_32:6>: [
		format.red("用作：物品传输管道"),
		format.red("用作: 电力/能量传输管道")
	],
	<thermaldynamics:duct_32:7>: [
		format.red("用作：物品传输管道"),
		format.red("用作: 电力/能量传输管道")
	],
	<thermaldynamics:duct_32:4>: [
		format.red("用作：物品传输管道"),
		format.red("用作: 电力/能量传输管道")
	],

	// Fluid pipes
	<thermaldynamics:duct_16:1>: [
		format.red("用作：流体传输管道")
	],
	<thermaldynamics:duct_16>: [
		format.red("用作：流体传输管道")
	],
	<cyclicmagic:fluid_pump>: [
		format.red("用作：流体传输管道")
	],
	<cyclicmagic:fluid_pipe>: [
		format.red("用作：流体传输管道")
	],
	<thermaldynamics:duct_16:7>: [
		format.red("用作：流体传输管道")
	],
	<translocators:translocator_part>: [
		format.red("用作：物品传输管道")
	],
	<tconstruct:channel>: [
		format.red("用作：流体传输管道")
	],
	<ceramics:channel>: [
		format.red("用作：流体传输管道")
	],
	<thermaldynamics:duct_16:6>: [
		format.red("用作：流体传输管道")
	],
	<thermaldynamics:duct_16:5>: [
		format.red("用作：流体传输管道"),
		format.red("用作: 电力/能量传输管道")
	],
	<thermaldynamics:duct_16:4>: [
		format.red("用作：流体传输管道"),
		format.red("用作: 电力/能量传输管道")
	],
	<thermaldynamics:duct_16:3>: [
		format.red("用作：流体传输管道")
	],
	<thermaldynamics:duct_16:2>: [
		format.red("用作：流体传输管道")
	],

	// Power pipes
	<thermaldynamics:duct_0:4>: [
		format.red("用作：能量传输管道")
	],
	<thermaldynamics:duct_0:3>: [
		format.red("用作：能量传输管道")
	],
	<thermaldynamics:duct_0:2>: [
		format.red("用作：能量传输管道")
	],
	<thermaldynamics:duct_0:1>: [
		format.red("用作：能量传输管道")
	],
	<thermaldynamics:duct_0>: [
		format.red("用作：能量传输管道")
	],
	<cyclicmagic:energy_pipe>: [
		format.red("用作：能量传输管道")
	],
	<cyclicmagic:energy_pump>: [
		format.red("用作：能量传输管道")
	],
	<fluxnetworks:fluxpoint>: [
		format.red("用作：能量传输管道")
	],
	<cyclicmagic:cable_wireless_energy>: [
		format.red("用作：能量传输管道"),
		format.red("需要 GPS 标记器进行配置")
	],
	<fluxnetworks:fluxplug>: [
		format.red("用作：能量传输管道")
	],
	<thermaldynamics:duct_0:5>: [
		format.red("用作：能量传输管道")
	],

	<thermaldynamics:duct_0:5>: [
		format.red("用作：能量传输管道")
	],
	<mekanism:transmitter:2>: [
		format.red("用作：气体/传输管道")
	],
	<mekanism:transmitter:6>: [
		format.red("用作：热量/传输管道")
	],

	<mekanism:configurator>: [
		format.red("扳手")
	],
	<mekanism:machineblock3:5>: [
		format.yellow("自动合成器"),
		format.yellow("通过一个叫做“合成配方”的物品来设置合成")
	],

	//Since no one knows what this machine is or how to find it
	<mekanism:machineblock:10>: [
		format.yellow("用电的熔炉")
	],

	// Adding mod tooltip for easier location
	<valkyrielib:guide>: [
		format.blue("简易发电机")
	],
	<valkyrielib:modifier_component>: [
		format.blue("简易发电机")
	],
	<valkyrielib:modifier_speed>: [
		format.blue("简易发电机")
	],

	//Adding mod tooltip for easier location
	<ae2stuff:encoder>: [
		format.blue("应用能源")
	],
	<ae2stuff:grower>: [
		format.blue("应用能源")
	],
	<ae2stuff:inscriber>: [
		format.blue("应用能源")
	],
	<ae2stuff:wireless>: [
		format.blue("应用能源")
	],
	<ae2stuff:wireless_kit>: [
		format.blue("应用能源")
	],
	<ae2stuff:visualiser>: [
		format.blue("应用能源")
	],

	<extracells:part.base:7>: [
		format.blue("应用能源")
	],
	<extracells:part.base:8>: [
		format.blue("应用能源")
	],
	<extracells:part.base:10>: [
		format.blue("应用能源")
	],
	<extracells:part.base:11>: [
		format.blue("应用能源")
	],
	<extracells:part.base:12>: [
		format.blue("应用能源")
	],
	<extracells:part.base:13>: [
		format.blue("应用能源")
	],
	<extracells:part.base:14>: [
		format.blue("应用能源")
	],
	<extracells:part.base:15>: [
		format.blue("应用能源")
	],
	<extracells:part.base:16>: [
		format.blue("应用能源")
	],
	<extracells:part.base:17>: [
		format.blue("应用能源")
	],
	<extracells:part.base:18>: [
		format.blue("应用能源")
	],
	<extracells:part.base:19>: [
		format.blue("应用能源")
	],
	<extracells:storage.fluid:4>: [
		format.blue("应用能源")
	],
	<extracells:storage.fluid:5>: [
		format.blue("应用能源")
	],
	<extracells:storage.fluid:6>: [
		format.blue("应用能源")
	],
	<extracells:storage.physical>: [
		format.blue("应用能源")
	],
	<extracells:storage.physical:1>: [
		format.blue("应用能源")
	],
	<extracells:storage.physical:2>: [
		format.blue("应用能源")
	],
	<extracells:storage.physical:3>: [
		format.blue("应用能源")
	],
	<extracells:storage.physical:4>: [
		format.blue("应用能源")
	],
	<extracells:storage.gas>: [
		format.blue("应用能源")
	],
	<extracells:storage.gas:1>: [
		format.blue("应用能源")
	],
	<extracells:storage.gas:2>: [
		format.blue("应用能源")
	],
	<extracells:storage.gas:3>: [
		format.blue("应用能源")
	],
	<extracells:storage.gas:4>: [
		format.blue("应用能源")
	],
	<extracells:storage.gas:5>: [
		format.blue("应用能源")
	],
	<extracells:storage.gas:6>: [
		format.blue("应用能源")
	],
	<extracells:pattern.fluid>: [
		format.blue("应用能源")
	],
	<extracells:terminal.fluid.wireless>: [
		format.blue("应用能源")
	],
	<extracells:storage.component>: [
		format.blue("应用能源")
	],
	<extracells:storage.component:1>: [
		format.blue("应用能源")
	],
	<extracells:storage.component:2>: [
		format.blue("应用能源")
	],
	<extracells:storage.component:3>: [
		format.blue("应用能源")
	],
	<extracells:storage.component:8>: [
		format.blue("应用能源")
	],
	<extracells:storage.component:9>: [
		format.blue("应用能源")
	],
	<extracells:storage.component:10>: [
		format.blue("应用能源")
	],
	<extracells:storage.component:11>: [
		format.blue("应用能源")
	],
	<extracells:storage.component:12>: [
		format.blue("应用能源")
	],
	<extracells:storage.component:13>: [
		format.blue("应用能源")
	],
	<extracells:storage.component:14>: [
		format.blue("应用能源")
	],
	<extracells:storage.component:15>: [
		format.blue("应用能源")
	],
	<extracells:storage.component:16>: [
		format.blue("应用能源")
	],
	<extracells:storage.component:17>: [
		format.blue("应用能源")
	],
	<extracells:storage.casing>: [
		format.blue("应用能源")
	],
	<extracells:storage.casing:1>: [
		format.blue("应用能源")
	],
	<extracells:storage.casing:2>: [
		format.blue("应用能源")
	],
	<extracells:storage.fluid.portable>: [
		format.blue("应用能源")
	],
	<extracells:storage.gas.portable>: [
		format.blue("应用能源")
	],
	<extracells:terminal.universal.wireless>: [
		format.blue("应用能源")
	],
	<extracells:terminal.gas.wireless>: [
		format.blue("应用能源")
	],
	<extracells:oc.upgrade:2>: [
		format.blue("应用能源")
	],
	<extracells:oc.upgrade:1>: [
		format.blue("应用能源")
	],
	<extracells:oc.upgrade>: [
		format.blue("应用能源")
	],
	<extracells:certustank>: [
		format.blue("应用能源")
	],
	<extracells:walrus>: [
		format.blue("应用能源")
	],
	<extracells:fluidcrafter>: [
		format.blue("应用能源")
	],
	<extracells:fluidfiller>: [
		format.blue("应用能源")
	],
	<extracells:hardmedrive>: [
		format.blue("应用能源")
	],
	<extracells:vibrantchamberfluid>: [
		format.blue("应用能源")
	],

	// Being helpful
	<conarm:armorforge>: [
		format.yellow("可用 4 种任意金"),
		format.yellow("属方块进行合成")
	],
	<tconstruct:toolforge>: [
		format.yellow("可用 4 种任意金"),
		format.yellow("属方块进行合成")
	],
	<tconstruct:moms_spaghetti>: [
		format.yellow("膝盖虚弱无力"),
		format.yellow("手心都出汗了")
	],

	// Animal Crops Lilies
	<animalcrops:lily>.withTag({entity: "minecraft:squid"}): [
		format.yellow("种在水里")
	],
	<animalcrops:lily>.withTag({entity: "minecraft:guardian"}): [
		format.yellow("种在水里")
	],



	// Stupid stuffs
	<xnet:xnet_manual>: [
		format.yellow("Bentley 最喜欢的模组！")
	],
	<xnet:connector_upgrade>: [
		format.yellow("Bentley 最喜欢的模组！")
	],
	<xnet:facade>: [
		format.yellow("Bentley 最喜欢的模组！")
	],
	<xnet:redstone_proxy>: [
		format.yellow("Bentley 最喜欢的模组！")
	],
	<xnet:redstone_proxy_upd>: [
		format.yellow("Bentley 最喜欢的模组！")
	],
	<xnet:netcable>: [
		format.yellow("Bentley 最喜欢的模组！")
	],
	<xnet:netcable:1>: [
		format.yellow("Bentley 最喜欢的模组！")
	],
	<xnet:netcable:2>: [
		format.yellow("Bentley 最喜欢的模组！")
	],
	<xnet:netcable:3>: [
		format.yellow("Bentley 最喜欢的模组！")
	],
	<xnet:netcable:4>: [
		format.yellow("Bentley 最喜欢的模组！")
	],
	<xnet:connector>: [
		format.yellow("Bentley 最喜欢的模组！")
	],
	<xnet:connector:1>: [
		format.yellow("Bentley 最喜欢的模组！")
	],
	<xnet:connector:2>: [
		format.yellow("Bentley 最喜欢的模组！")
	],
	<xnet:connector:3>: [
		format.yellow("Bentley 最喜欢的模组！")
	],
	<xnet:connector:4>: [
		format.yellow("Bentley 最喜欢的模组！")
	],
	<xnet:advanced_connector>: [
		format.yellow("Bentley 最喜欢的模组！")
	],
	<xnet:advanced_connector:1>: [
		format.yellow("Bentley 最喜欢的模组！")
	],
	<xnet:advanced_connector:2>: [
		format.yellow("Bentley 最喜欢的模组！")
	],
	<xnet:advanced_connector:3>: [
		format.yellow("Bentley 最喜欢的模组！")
	],
	<xnet:controller>: [
		format.yellow("Bentley 最喜欢的模组！")
	],
	<xnet:router>: [
		format.yellow("Bentley 最喜欢的模组！")
	],
	<xnet:wireless_router>: [
		format.yellow("Bentley 最喜欢的模组！")
	],
	<xnet:antenna>: [
		format.yellow("Bentley 最喜欢的模组！")
	],
	<xnet:antenna_base>: [
		format.yellow("Bentley 最喜欢的模组！")
	],
	<xnet:antenna_dish>: [
		format.yellow("Bentley 最喜欢的模组！")
	],
	<extracells:terminal.fluid.wireless>: [
		format.red("在通用机械的能量立方中充能")
	],
	<extracells:terminal.universal.wireless>: [
	  format.red("在通用机械的能量立方中充能")
	],
	<extracells:terminal.gas.wireless>: [
		format.red("在通用机械的能量立方中充能")
	],

	<appliedenergistics2:wireless_terminal>: [
		format.red("在通用机械的能量立方中充能")
	],

	//Amber labeled decorative so players don't think it's like useful or something.
	<sky_orchards:amber_gravel>: [
		format.yellow("装饰向")
	],
	<contenttweaker:cobblestone_circuit_mold>: [
		format.yellow("合成模板时不会消耗掉")
	],
	<resourcehogs:bacon>.withTag({ResourceType: "missing"}): [
		format.yellow("嘿，别作弊哦！ >.<")
    ],
	<cyclicmagic:glowing_chorus>: [
		format.yellow("喝下牛奶移除飞行效果")
	],
	<xlfoodmod:nether_cake>: [
		format.yellow("这并非是通往另一个维度的传送门"),
		format.yellow("你的蛋糕在另一个城堡中"),
		format.red("这东西就是食物！"),
		format.yellow("它不是谎言！")
	],

	<minecraft:mob_spawner>: [
		format.aqua("可以使用精准采集收获")
	],

	<weirdinggadget:weirding_gadget>: [
		format.aqua("以装置为中心"),
		format.aqua("的5x5区块保持加载")
	]
};

function init() {
	for item, tooltips in itemTooltipMap {
		for tooltip in tooltips {
			item.addTooltip(tooltip);
		}
	}
}
