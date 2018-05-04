#priority 1150
#loader contenttweaker

import mods.contenttweaker.Color;
import mods.contenttweaker.Material;
import mods.contenttweaker.MaterialPartData;
import mods.contenttweaker.MaterialSystem;

static materials as Material[string] = {
	"aquamarine": MaterialSystem.getMaterialBuilder().setName("海蓝宝石").setColor(2009855).build(),
	"bronze": MaterialSystem.getMaterialBuilder().setName("青铜").setColor(13467442).build(),
	"cobalt": MaterialSystem.getMaterialBuilder().setName("钴").setColor(18347).build(),
	"compressedIron": MaterialSystem.getMaterialBuilder().setName("压缩铁").setColor(8947848).build(),
	"copper": MaterialSystem.getMaterialBuilder().setName("铜").setColor(15766817).build(),
	"coralium": MaterialSystem.getMaterialBuilder().setName("珊瑚").setColor(Color.fromHex("358b95")).build(),
	"diamond": MaterialSystem.getMaterialBuilder().setName("钻石").setColor(9237730).build(),
	"ender": MaterialSystem.getMaterialBuilder().setName("末影珍珠").setColor(2869678).build(),
	"enhancedGalgadorian": MaterialSystem.getMaterialBuilder().setName("强化混合晶化金属").setColor(9850751).build(),
	"fiery": MaterialSystem.getMaterialBuilder().setName("炽热金属").setColor(2891807).setHasEffect(true).build(),
	"galgadorian": MaterialSystem.getMaterialBuilder().setName("混合晶化金属").setColor(11625595).build(),
	"glowstone": MaterialSystem.getMaterialBuilder().setName("荧石").setColor(16708616).build(),
	"gold": MaterialSystem.getMaterialBuilder().setName("金").setColor(16776971).build(),
	"inferium": MaterialSystem.getMaterialBuilder().setName("下级精华").setColor(Color.fromHex("718a00")).build(),
	"invar": MaterialSystem.getMaterialBuilder().setName("殷钢").setColor(9872012).build(),
	"iron": MaterialSystem.getMaterialBuilder().setName("铁").setColor(14211288).build(),
	"lead": MaterialSystem.getMaterialBuilder().setName("铅").setColor(5658219).build(),
	"modularium": MaterialSystem.getMaterialBuilder().setName("模块化合金").setColor(16730368).build(),
	"naphtha": MaterialSystem.getMaterialBuilder().setName("石脑油").setColor(10703708).build(),
	"osmium": MaterialSystem.getMaterialBuilder().setName("锇").setColor(Color.fromHex("aabbd2")).build(),
	"plastic": MaterialSystem.getMaterialBuilder().setName("塑料").setColor(16777215).build(),
	"platinum": MaterialSystem.getMaterialBuilder().setName("铂").setColor(15066338).build(),
	"propene": MaterialSystem.getMaterialBuilder().setName("丙烯").setColor(8026746).build(),
	"prosperity": MaterialSystem.getMaterialBuilder().setName("活化水晶").setColor(Color.fromHex("a5caca")).build(),
	"redstone": MaterialSystem.getMaterialBuilder().setName("红石").setColor(9895936).build(),
	"redstoneAlloy": MaterialSystem.getMaterialBuilder().setName("红石合金").setColor(15157577).build(),
	"reinforcedMetal": MaterialSystem.getMaterialBuilder().setName("强化金属").setColor(7643841).build(),
	"silicon": MaterialSystem.getMaterialBuilder().setName("硅").setColor(Color.fromHex("141414")).build(),
	"silver": MaterialSystem.getMaterialBuilder().setName("银").setColor(15592941).build(),
	"spacePlatinum": MaterialSystem.getMaterialBuilder().setName("太空铂").setColor(Color.fromHex("6e757b")).build(),
	"steel": MaterialSystem.getMaterialBuilder().setName("钢").setColor(4408907).build(),
	"steeleaf": MaterialSystem.getMaterialBuilder().setName("钢叶").setColor(4283598394).build(),
	"stone": MaterialSystem.getMaterialBuilder().setName("石头").setColor(11117475).build(),
	"tin": MaterialSystem.getMaterialBuilder().setName("锡").setColor(10275286).build()
};

/*
	Functions
*/
function addDefaultMoltenData(moltenData as MaterialPartData) {
	moltenData.addDataValue("density", "4000");
	moltenData.addDataValue("viscosity", "3000");
	moltenData.addDataValue("temperature", "550");
	moltenData.addDataValue("vaporize", "false");
}

function addDefaultOreData(oreData as MaterialPartData) {
	oreData.addDataValue("variants", "minecraft:stone");
	oreData.addDataValue("hardness", "5");
	oreData.addDataValue("resistance", "15");
	oreData.addDataValue("harvestTool", "pickaxe");
	oreData.addDataValue("harvestLevel", "2");
}
