import crafttweaker.item.IItemStack;

//Thanks Hacatu!

val alloyComponentStrsMap as string[][IItemStack] = {
<ore:ingotCube>.firstItem:
[
"96 ppc 铜",
"3 ppc 铍",
"1 ppc 钴"
],
<ore:ingotScal>.firstItem:
[
"98 ppc 铝",
"2 ppc 钪"
],
<ore:ingotBam>.firstItem:
[
"76 ppc 铝",
"15 ppc 镁",
"3 ppc 硼",
"3 ppc 锂",
"3 ppc 硅"
],
<ore:ingotStellite>.firstItem:
[
"57 ppc 钴",
"28 ppc 铬",
"11 ppc 钨",
"2 ppc 碳",
"1 ppc 硅",
"1 ppc 钼"
],
<ore:ingotCupronickel>.firstItem:
[
"63 ppc 铜",
"30 ppc 镍",
"2 ppc 铬",
"1 ppc 硅",
"1 ppc 锰",
"1 ppc 铁",
"1 ppc 钛",
"1 ppc 锆"
],
<ore:ingotNimonic>.firstItem:
[
"50 ppc 镍",
"21 ppc 铬",
"20 ppc 钴",
"6 ppc 钼",
"2 ppc 钛",
"1 ppc 铝"
],
<ore:ingotHastelloy>.firstItem:
[
"55 ppc 镍",
"16 ppc 钼",
"15 ppc 铬",
"5 ppc 铁",
"4 ppc 钨",
"3 ppc 钴",
"1 ppc 锰",
"1 ppc 铌"
],
<ore:ingotCunife>.firstItem:
[
"86 ppc 铜",
"11 ppc 镍",
"2 ppc 铁",
"1 ppc 锰"
],
<ore:ingotHydronalium>.firstItem:
[
"77 ppc 铝",
"12 ppc 镁",
"1 ppc 锰"
],
<ore:ingotVanasteel>.firstItem:
[
"95 ppc 铁",
"2 ppc 铬",
"1 ppc 碳",
"1 ppc 钒",
"1 ppc 硅"
],
<ore:ingotWidia>.firstItem:
[
"82 ppc 碳化钨化合物",
"13 ppc 钴",
"5 ppc 碳"
],
<ore:ingotTantaloy>.firstItem:
[
"94 ppc 钽",
"5 ppc 钨",
"1 ppc 铌"
],
<ore:ingotNial>.firstItem:
[
"70 ppc 镍",
"30 ppc 铝"
],
<ore:ingotInconel>.firstItem:
[
"48 ppc 镍",
"22 ppc 铬",
"19 ppc 钴",
"4 ppc 钛",
"2 ppc 钨",
"2 ppc 铝",
"2 ppc 钽",
"1 ppc 铌"
],
<rockhounding_chemistry:alloy_items_tech_b:7>://zircaloy
[
"98 ppc 锆",
"4 ppc 锡",
"1 ppc 铌",
"1 ppc 铁",
"1 ppc 铬"
],
<ore:ingotMischmetal>.firstItem:
[
"50 ppc 铈",
"29 ppc 镧",
"15 ppc 钕",
"5 ppc 镨",
"1 ppc 铁"
],
<ore:ingotRosegold>.firstItem:
[
"75 ppc 金",
"22 ppc 铜",
"3 ppc 银"
],
<ore:ingotGreengold>.firstItem:
[
"75 ppc 金",
"18 ppc 银",
"5 ppc 铜",
"2 ppc 镉"
],
<ore:ingotWhitegold>.firstItem:
[
"75 ppc 金",
"10 ppc 铂",
"10 ppc 镍",
"5 ppc 锌"
],
<rockhounding_chemistry:alloy_items_deco:13>://shibuchi
[
"70 ppc 铜",
"20 ppc 银",
"10 ppc 金"
],
<ore:ingotTombak>.firstItem:
[
"75 ppc 铜",
"20 ppc 锌",
"5 ppc 砷"
],
<ore:ingotPewter>.firstItem:
[
"90 ppc 锡",
"6 ppc 锑",
"2 ppc 铜",
"1 ppc 铋",
"1 ppc 铅"
],
<ore:ingotCorten>.firstItem:
[
"93 ppc 铁",
"1 ppc 镍",
"1 ppc 硅",
"1 ppc 铬",
"1 ppc 磷",
"1 ppc 锰",
"1 ppc 铜",
"1 ppc 钒"
],
<ore:ingotShakudo>.firstItem:
[
"90 ppc 铜",
"10 ppc 金"
],
<ore:ingotPurplegold>.firstItem:
[
"80 ppc 金",
"20 ppc 铝"
],
<ore:ingotNib>.firstItem:
[
"65 ppc 铁",
"30 ppc 钕",
"2 ppc 硼",
"1 ppc 铌",
"1 ppc 镝",
"1 ppc 镨"
],
<ore:ingotCosm>.firstItem:
[
"50 ppc 钴",
"25 ppc 钐",
"18 ppc 铁",
"5 ppc 铜",
"2 ppc 锆"
],
<rockhounding_chemistry:misc_items:23>://didymium brick
[
"46 ppc 镧",
"34 ppc 钕",
"11 ppc 镨",
"5 ppc 钐",
"4 ppc 钆",
"60 ppc 过滤过的砂子",
"(制作8个)"
],
<ore:ingotKanthal>.firstItem:
[
"67 ppc 铁",
"23 ppc 铬",
"6 ppc 铝",
"2 ppc 硅",
"1 ppc 锰",
"1 ppc 碳"
]
} as string[][IItemStack];

for alloyItem, componentStrs in alloyComponentStrsMap {
	alloyItem.addTooltip(format.gold("按住shift查看合金成分:"));
	for str in componentStrs {
		alloyItem.addShiftTooltip(format.blue(str));
	}
}

