/*
	SkyFactory 4 Item Renaming Script

	This script allows for the renaming of an item.
*/
import crafttweaker.item.IItemStack;

static renameMap as string[IItemStack] = {
	<tp:birthday_pickaxe>: "聚会用镐",
	<telepastries:twilight_cake>: "暮色蛋糕",
	<telepastries:lost_city_cake>: "失落的城市蛋糕",
	<thermalfoundation:wrench>: "新月锤（扳手）"
};

function init() {
	for item, displayName in renameMap {
		item.displayName = displayName;
	}
}
