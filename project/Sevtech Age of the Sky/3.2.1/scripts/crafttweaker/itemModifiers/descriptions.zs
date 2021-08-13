/*
	SevTech: Ages Item Descriptions Script

	This script allows for the addition of JEI Descriptions to ItemStacks.

	Note: These scripts are created and for the usage in SevTech: Ages and other
	modpacks curated by DarkPacks. You can use these scripts for reference and for
	learning but not for copying and pasting and claiming as your own.
*/
import crafttweaker.item.IItemStack;

import mods.jei.JEI;

static descriptionPairs as string[][IItemStack] = {
	<environmentaltech:solar_cont_1:0>: [
		"所需材料：",
		"4 x 无效果强化部件",
		"16 x 结构方块（1 级及以上）",
		"9 x 任意类型太阳能板"
	],
	<environmentaltech:solar_cont_2:0>: [
		"所需材料：",
		"4 x 无效果强化部件",
		"24 x 结构方块（2 级及以上）",
		"25 x 任意类型太阳能板"
	],
	<environmentaltech:solar_cont_3:0>: [
		"所需材料：",
		"8 x 无效果强化部件",
		"32 x 结构方块（3 级及以上）",
		"49 x 任意类型太阳能板"
	],
	<environmentaltech:solar_cont_4:0>: [
		"所需材料：",
		"8 x 无效果强化部件",
		"40 x 结构方块（4 级及以上）",
		"81 x 任意类型太阳能板"
	],
	<environmentaltech:solar_cont_5:0>: [
		"所需材料：",
		"12 x 无效果强化部件",
		"48 x 结构方块（5 级及以上）",
		"121 x 任意类型太阳能板"
	],
	<environmentaltech:solar_cont_6:0>: [
		"所需材料：",
		"12 x 无效果强化部件",
		"56 x 结构方块（6 级及以上）",
		"169 x 任意类型太阳能板"
	],
	<environmentaltech:void_botanic_miner_cont_1:0>: [
		"所需材料：",
		"24 x 结构方块（1 级及以上）",
		"20 x 结构镶板",
		"2 x 激光核心",
		"1 x 任意类型激光透镜"
	],
	<environmentaltech:void_botanic_miner_cont_2:0>: [
		"所需材料：",
		"4 x 无效果强化部件",
		"32 x 结构方块（2 级及以上）",
		"16 x 结构镶板",
		"3 x 激光核心",
		"1 x 任意类型激光透镜"
	],
	<environmentaltech:void_botanic_miner_cont_3:0>: [
		"所需材料：",
		"8 x 无效果强化部件",
		"56 x 结构方块（3 级及以上）",
		"52 x 结构镶板",
		"4 x 激光核心",
		"1 x 任意类型激光透镜"
	],
	<environmentaltech:void_botanic_miner_cont_4:0>: [
		"所需材料：",
		"12 x 无效果强化部件",
		"56 x 结构方块（4 级及以上）",
		"56 x 结构镶板",
		"5 x 激光核心",
		"1 x 任意类型激光透镜"
	],
	<environmentaltech:void_botanic_miner_cont_5:0>: [
		"所需材料：",
		"16 x 无效果强化部件",
		"72 x 结构方块（5 级及以上）",
		"36 x 结构镶板",
		"6 x 激光核心",
		"1 x 任意类型激光透镜"
	],
	<environmentaltech:void_botanic_miner_cont_6:0>: [
		"所需材料：",
		"20 x 无效果强化部件",
		"92 x 结构方块（6 级及以上）",
		"56 x 结构镶板",
		"6 x 激光核心",
		"1 x 任意类型激光透镜"
	],
	<environmentaltech:void_ore_miner_cont_1:0>: [
		"所需材料：",
		"24 x 结构方块（1 级及以上）",
		"20 x 结构镶板",
		"2 x 激光核心",
		"1 x 任意类型激光透镜"
	],
	<environmentaltech:void_ore_miner_cont_2:0>: [
		"所需材料：",
		"4 x 无效果强化部件",
		"32 x 结构方块（2 级及以上）",
		"16 x 结构镶板",
		"3 x 激光核心",
		"1 x 任意类型激光透镜"
	],
	<environmentaltech:void_ore_miner_cont_3:0>: [
		"所需材料：",
		"8 x 无效果强化部件",
		"56 x 结构方块（3 级及以上）",
		"52 x 结构镶板",
		"4 x 激光核心",
		"1 x 任意类型激光透镜"
	],
	<environmentaltech:void_ore_miner_cont_4:0>: [
		"所需材料：",
		"12 x 无效果强化部件",
		"56 x 结构方块（4 级及以上）",
		"56 x 结构镶板",
		"5 x 激光核心",
		"1 x 任意类型激光透镜"
	],
	<environmentaltech:void_ore_miner_cont_5:0>: [
		"所需材料：",
		"16 x 无效果强化部件",
		"72 x 结构方块（5 级及以上）",
		"36 x 结构镶板",
		"6 x 激光核心",
		"1 x 任意类型激光透镜"
	],
	<environmentaltech:void_ore_miner_cont_6:0>: [
		"所需材料：",
		"20 x 无效果强化部件",
		"92 x 结构方块（6 级及以上）",
		"56 x 结构镶板",
		"6 x 激光核心",
		"1 x 任意类型激光透镜"
	],
	<environmentaltech:void_res_miner_cont_1:0>: [
		"所需材料：",
		"24 x 结构方块（1 级及以上）",
		"20 x 结构镶板",
		"2 x 激光核心",
		"1 x 任意类型激光透镜"
	],
	<environmentaltech:void_res_miner_cont_2:0>: [
		"所需材料：",
		"4 x 无效果强化部件",
		"32 x 结构方块（2 级及以上）",
		"16 x 结构镶板",
		"3 x 激光核心",
		"1 x 任意类型激光透镜"
	],
	<environmentaltech:void_res_miner_cont_3:0>: [
		"所需材料：",
		"8 x 无效果强化部件",
		"56 x 结构方块（3 级及以上）",
		"52 x 结构镶板",
		"4 x 激光核心",
		"1 x 任意类型激光透镜"
	],
	<environmentaltech:void_res_miner_cont_4:0>: [
		"所需材料：",
		"12 x 无效果强化部件",
		"56 x 结构方块（4 级及以上）",
		"56 x 结构镶板",
		"5 x 激光核心",
		"1 x 任意类型激光透镜"
	],
	<environmentaltech:void_res_miner_cont_5:0>: [
		"所需材料：",
		"16 x 无效果强化部件",
		"72 x 结构方块（5 级及以上）",
		"36 x 结构镶板",
		"6 x 激光核心",
		"1 x 任意类型激光透镜"
	],
	<environmentaltech:void_res_miner_cont_6:0>: [
		"所需材料：",
		"20 x 无效果强化部件",
		"92 x 结构方块（6 级及以上）",
		"56 x 结构镶板",
		"6 x 激光核心",
		"1 x 任意类型激光透镜"
	],

	<environmentaltech:lightning_cont_1:0>: [
		"所需材料：",
		"4 x 结构方块（1 级及以上）",
		"3 x 避雷针",
		"3 x 绝缘避雷针"
	],
	<environmentaltech:lightning_cont_2:0>: [
		"所需材料：",
		"4 x 结构方块（2 级及以上）",
		"4 x 避雷针",
		"4 x 绝缘避雷针"
	],
	<environmentaltech:lightning_cont_3:0>: [
		"所需材料：",
		"4 x 结构方块（3 级及以上）",
		"5 x 避雷针",
		"5 x 绝缘避雷针"
	],
	<environmentaltech:lightning_cont_4:0>: [
		"所需材料：",
		"13 x 结构方块（4 级及以上）",
		"4 x 避雷针",
		"16 x 绝缘避雷针"
	],
	<environmentaltech:lightning_cont_5:0>: [
		"所需材料：",
		"13 x 结构方块（5 级及以上）",
		"6 x 避雷针",
		"22 x 绝缘避雷针"
	],
	<environmentaltech:lightning_cont_6:0>: [
		"所需材料：",
		"13 x 结构方块（5 级及以上）",
		"8 x 避雷针",
		"28 x 绝缘避雷针"
	],

	<environmentaltech:nano_cont_personal_1:0>: [
		"所需材料：",
		"4 x 无效果强化部件",
		"20 x 结构方块（1 级及以上）",
		"12 x 结构镶板"
	],
	<environmentaltech:nano_cont_personal_2:0>: [
		"所需材料：",
		"8 x 无效果强化部件",
		"36 x 结构方块（2 级及以上）",
		"24 x 结构镶板"
	],
	<environmentaltech:nano_cont_personal_3:0>: [
		"所需材料：",
		"12 x 无效果强化部件",
		"56 x 结构方块（3 级及以上）",
		"40 x 结构镶板"
	],
	<environmentaltech:nano_cont_personal_4:0>: [
		"所需材料：",
		"16 x 无效果强化部件",
		"80 x 结构方块（4 级及以上）",
		"60 x 结构镶板"
	],
	<environmentaltech:nano_cont_personal_5:0>: [
		"所需材料：",
		"20 x 无效果强化部件",
		"108 x 结构方块（5 级及以上）",
		"84 x 结构镶板"
	],
	<environmentaltech:nano_cont_personal_6:0>: [
		"所需材料：",
		"24 x 无效果强化部件",
		"140 x 结构方块（5 级及以上）",
		"112 x 结构镶板"
	],
	<twilightforest:raven_feather>: [
		"使用Abyssalcraft的",
		"仪式召唤一只乌鸦。详细",
		"内容请查看死灵之书"
	],

	/*
		Location Descriptions for Ore and Samples
	*/
	// Malachite
	<geolosys:ore:2>: [
		"生成于",
		"森林（Forest）生态岛"
	],
	<geolosys:ore_sample:2>: [
		"生成于",
		"森林（Forest）生态岛"
	],
	// Azurite
	<geolosys:ore:3> : [
		"生成于",
		"黑暗之地（Darkland）生态岛"
	],
	<geolosys:ore_sample:3> : [
		"生成于",
		"黑暗之地（Darkland）生态岛"
	],
	// Cassiterite
	<geolosys:ore:4>: [
		"生成于",
		"白桦林（Birch Forest）和平原（Plains）生态岛"
	],
	<geolosys:ore_sample:4>: [
		"生成于",
		"白桦林（Birch Forest）和平原（Plains）生态岛"
	],
	// Teallite
	<geolosys:ore:5>: [
		"生成于",
		"黑森林（Roofed Forest）和热带草原（Savannah）生态岛"
	],
	<geolosys:ore_sample:5>: [
		"生成于",
		"黑森林（Roofed Forest）和热带草原（Savannah）生态岛"
	],
	// Coal
	<geolosys:ore_vanilla:0>: [
		"生成于",
		"黑暗之地（Darklands），森林（Forest）和黑森林（Roofed Forest）生态岛"
	],
	<geolosys:ore_sample_vanilla:0>: [
		"生成于",
		"黑暗之地（Darklands），森林（Forest）和黑森林（Roofed Forest）生态岛"
	],
	// Hematite
	<geolosys:ore:0>: [
		"生成于",
		"草甸（Meadow），平原（Plains），热带草原（Savannah）和沼泽（Swampland）生态岛"
	],
	<geolosys:ore_sample:0>: [
		"生成于",
		"草甸（Meadow），平原（Plains），热带草原（Savannah）和沼泽（Swampland）生态岛"
	],
	// Rock Crystal
	<astralsorcery:blockcustomore>: [
		"生成于",
		"冷针叶林（Cold Taiga）和积雪的针叶林（Snowy Coniferous Forest）生态岛"
	],
	<astralsorcery:blockgeolosyssamplecluster>: [
		"生成于",
		"冷针叶林（Cold Taiga）和积雪的针叶林（Snowy Coniferous Forest）生态岛"
	],
	// Lapis
	<geolosys:ore_vanilla:3>: [
		"生成于",
		"绿色沼泽（Green Swamp），沼泽（Swampland），温带雨林（Temperate Rainforest）和蘑菇岛（Mushroom）生态岛"
	],
	<geolosys:ore_sample_vanilla:3>: [
		"生成于",
		"绿色沼泽（Green Swamp），沼泽（Swampland），温带雨林（Temperate Rainforest）和蘑菇岛（Mushroom）生态岛"
	],
	// Gold
	<geolosys:ore_vanilla:2>: [
		"生成于",
		"恶地（Badlands）和平顶山（Mesa）生态岛"
	],
	<geolosys:ore_sample_vanilla:2>: [
		"生成于",
		"恶地（Badlands）和平顶山（Mesa）生态岛"
	],
	// Platinum
	<geolosys:ore:8>: [
		"生成于",
		"岩石高原（Rocky Plateau）生态岛"
	],
	<geolosys:ore_sample:8>: [
		"生成于",
		"岩石高原（Rocky Plateau）生态岛"
	],
	// Limonite
	<geolosys:ore:1>  : [
		"生成于",
		"秋树林（Autumnal Woods）和丛林（Jungle）生态岛"
	],
	<geolosys:ore_sample:1>: [
		"生成于",
		"秋树林（Autumnal Woods）和丛林（Jungle）生态岛"
	],
	// Galena
	<geolosys:ore:6>: [
		"生成于",
		"黑暗森林（Darklands Forest）和冰川（Glacier）生态岛"
	],
	<geolosys:ore_sample:6>: [
		"生成于",
		"黑暗森林（Darklands Forest）和冰川（Glacier）生态岛"
	],
	// Redstone / Cinnabar
	<geolosys:ore_vanilla:1>: [
		"生成于",
		"沙漠（Desert）和红木针叶山林（Redwood Taiga Hills）生态岛"
	],
	<mundaneredstone:redstone_ore>: [
		"生成于",
		"针叶林（Taiga）生态岛"
	],
	<geolosys:ore_sample_vanilla:1>: [
		"生成于",
		"沙漠（Desert），红木针叶山林（Redwood Taiga Hills）",
		"和针叶林（Taiga）生态岛"
	],
	// Bauxite
	<geolosys:ore:7>: [
		"生成于",
		"小型雨林（Mini Jungle），变异白桦林（Mutated Birch Forest）和林地（Woodlansd）生态岛"
	],
	<geolosys:ore_sample:7>: [
		"生成于",
		"小型雨林（Mini Jungle），变异白桦林（Mutated Birch Forest）和林地（Woodlansd）生态岛"
	],
	// Quartz
	<geolosys:ore_vanilla:4>: [
		"生成于",
		"门勒格林（meneglin）和茂盛山丘（Lush Hills）生态岛"
	],
	<geolosys:ore_sample_vanilla:4>: [
		"生成于",
		"门勒格林（meneglin）和茂盛山丘（Lush Hills）生态岛"
	],
	// Silicon
	<galacticraftcore:basic_block_core:8>: [
		"生成于",
		"雨林（Jungle）和变异平原（Mutated Plains）生态岛"
	],
	<contenttweaker:sub_block_holder_0:5>: [
		"生成于",
		"雨林（Jungle）和变异平原（Mutated Plains）生态岛"
	],
	// Diamond
	<geolosys:ore_vanilla:5>: [
		"生成于",
		"冰刺地（Glacier Spikes）生态岛"
	],
	<geolosys:ore_sample_vanilla:5>: [
		"生成于",
		"冰刺地（Glacier Spikes）生态岛"
	],
	// Osmium
	<contenttweaker:sub_block_holder_0:4>: [
		"生成于",
		"变异森林（Mutated Forest）和冰原（Ice Flats）生态岛"
	],
	<contenttweaker:sub_block_holder_0:6>: [
		"生成于",
		"变异森林（Mutated Forest）和冰原（Ice Flats）生态岛"
	],
	// Emerald
	<geolosys:ore_vanilla:6>: [
		"生成于",
		"峭壁（Extreme Hills）生态岛"
	],
	<geolosys:ore_sample_vanilla:6>: [
		"生成于",
		"峭壁（Extreme Hills）生态岛"
	],
	// Uranium
	<geolosys:ore:9>: [
		"生成于",
		"珊瑚侵染沼泽（Coralium Infested Swamp）生态岛"
	],
	<geolosys:ore_sample:9>: [
		"生成于",
		"珊瑚侵染沼泽（Coralium Infested Swamp）生态岛"
	],

	<twilightforest:liveroot>: [
		"生成于暮色森林战利箱",
		"或通过Bonsai Trees模组获得"
	]
};

function init() {
	for item, descriptionArray in descriptionPairs {
		JEI.addDescription(item, descriptionArray);
	}
}
