import crafttweaker.item.IItemStack;

//<minecraft:chest>.displayName = "Storage Box";

var renameArray as string[IItemStack] = {
	<primal:hide_tanned> : "湿鞣制兽皮",

	<betterwithaddons:japanmat:4> : "米粉",

	<primal_tech:flint_edged_disc> : "燧石锯条",

	<totemic:sub_items:1> : "叮当",

	<primal:plant_fiber_pulp> : "纸浆",

	<primal:golden_stick> : "金棒",

	<betterbuilderswands:wanddiamond> : "铂手杖",

	//Space Platinum
	<extraplanets:kepler22b:14> : "太空铂块",
	<extraplanets:tier11_items:5> : "§9太空铂锭",
	<extraplanets:tier11_items:6> : "§9压缩太空铂",

	//Chisel & Bits
	<chiselsandbits:chisel_iron> : "微型凿子",

	<extraplanets:apple_iron> : "旅行地图令牌"
};

for item in renameArray {
	item.displayName = renameArray[item];
}
