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
	]
};

function init() {
	for item, descriptionArray in descriptionPairs {
		JEI.addDescription(item, descriptionArray);
	}
}
