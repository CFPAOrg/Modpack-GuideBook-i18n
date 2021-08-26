#loader contenttweaker
#priority 96
import mods.contenttweaker.Color;
import mods.contenttweaker.MaterialSystem;
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Item;
import mods.contenttweaker.IItemRightClick;
import mods.contenttweaker.Commands;
import mods.contenttweaker.IItemColorSupplier;

//Inert Metal
var inertcolor = Color.fromHex("B1A3C4") as Color;
var inertMetal = MaterialSystem.getMaterialBuilder().setName("惰性金属").setColor(inertcolor).build();

//inertMetal.registerParts(["gear", "plate", "nugget", "ingot", "rod", "dust"] as string[]);

var inertmolten = inertMetal.registerPart("molten").getData();
inertmolten.addDataValue("temperature", "1000");
inertmolten.addDataValue("luminosity", "10");

var inertblock = inertMetal.registerPart("block").getData();
inertblock.addDataValue("hardness", "5");
inertblock.addDataValue("resistance", "30");
inertblock.addDataValue("harvestTool", "pickaxe");


//Kanthal
var kanthalcolor = Color.fromHex("BAAF95") as Color;
var kanthalMetal = MaterialSystem.getMaterialBuilder().setName("坎塔尔合金").setColor(kanthalcolor).build();

kanthalMetal.registerParts(["gear", "plate", "nugget", "ingot", "rod", "dust"] as string[]);

var kanthalmolten = kanthalMetal.registerPart("molten").getData();
kanthalmolten.addDataValue("temperature", "1000");
kanthalmolten.addDataValue("luminosity", "10");

var kanthalblock = kanthalMetal.registerPart("block").getData();
kanthalblock.addDataValue("hardness", "5");
kanthalblock.addDataValue("resistance", "30");
kanthalblock.addDataValue("harvestTool", "pickaxe");


//Tough Alloy Block
var ToughAlloycolor = Color.fromHex("26033d") as Color;
var ToughAlloy = MaterialSystem.getMaterialBuilder().setName("高强合金").setColor(ToughAlloycolor).build();
var ToughAlloyblock = ToughAlloy.registerPart("block").getData();
ToughAlloyblock.addDataValue("hardness", "5");
ToughAlloyblock.addDataValue("resistance", "30");
ToughAlloyblock.addDataValue("harvestTool", "pickaxe");



var AdamantineColor = Color.fromHex("a11708") as Color;
var Adamantine = MaterialSystem.getMaterialBuilder().setName("精金").setColor(AdamantineColor).build();

Adamantine.registerParts(["ingot", "gear", "plate", "nugget", "rod", "dust"] as string[]);

//VanillaFactory.createItem("adamantine_ingot").register();

var AdamantineOre = Adamantine.registerPart("ore").getData();
AdamantineOre.addDataValue("variants", "minecraft:end_stone");
AdamantineOre.addDataValue("hardness", "10");
AdamantineOre.addDataValue("resistance", "50");
AdamantineOre.addDataValue("harvestLevel", "4");
AdamantineOre.addDataValue("harvestTool", "pickaxe");

var AdamantineArmor = Adamantine.registerPart("armor").getData();
AdamantineArmor.addDataValue("durability", "100");
AdamantineArmor.addDataValue("enchantability", "8");
AdamantineArmor.addDataValue("reduction", "9,12,15,7");
AdamantineArmor.addDataValue("toughness", "2");

var Adamantinemolten = Adamantine.registerPart("molten").getData();
Adamantinemolten.addDataValue("temperature", "1000");
Adamantinemolten.addDataValue("luminosity", "10");

var Adamantineblock = Adamantine.registerPart("block").getData();
Adamantineblock.addDataValue("hardness", "10");
Adamantineblock.addDataValue("resistance", "50");
Adamantineblock.addDataValue("harvestTool", "pickaxe");

var OrichalcumColor = Color.fromHex("c724ac") as Color;
var Orichalcum = MaterialSystem.getMaterialBuilder().setName("奥利哈尔钢").setColor(OrichalcumColor).build();

Orichalcum.registerParts(["ingot","gear", "plate", "nugget", "rod", "dust"] as string[]);
//VanillaFactory.createItem("orichalcum_ingot").register();

var OrichalcumOre = Orichalcum.registerPart("ore").getData();
OrichalcumOre.addDataValue("variants", "minecraft:netherrack");
OrichalcumOre.addDataValue("hardness", "10");
OrichalcumOre.addDataValue("resistance", "30");
OrichalcumOre.addDataValue("harvestLevel", "4");
OrichalcumOre.addDataValue("harvestTool", "pickaxe");

var OrichalcumArmor = Orichalcum.registerPart("armor").getData();
OrichalcumArmor.addDataValue("durability", "200");
OrichalcumArmor.addDataValue("enchantability", "10");
OrichalcumArmor.addDataValue("reduction", "5,7,10,4");
OrichalcumArmor.addDataValue("toughness", "8");

var Orichalcummolten = Orichalcum.registerPart("molten").getData();
Orichalcummolten.addDataValue("temperature", "1000");
Orichalcummolten.addDataValue("luminosity", "10");

var Orichalcumblock = Orichalcum.registerPart("block").getData();
Orichalcumblock.addDataValue("hardness", "10");
Orichalcumblock.addDataValue("resistance", "30");
Orichalcumblock.addDataValue("harvestTool", "pickaxe");

var PalladiumColor = Color.fromHex("e37a39") as Color;
var Palladium = MaterialSystem.getMaterialBuilder().setName("钯").setColor(PalladiumColor).build();

Palladium.registerParts(["ingot", "gear", "plate", "nugget", "rod", "dust"] as string[]);
//VanillaFactory.createItem("palladium_ingot").register();

var PalladiumOre = Palladium.registerPart("ore").getData();
PalladiumOre.addDataValue("variants", "minecraft:stone");
PalladiumOre.addDataValue("hardness", "10");
PalladiumOre.addDataValue("resistance", "15");
PalladiumOre.addDataValue("harvestLevel", "3");
PalladiumOre.addDataValue("harvestTool", "pickaxe");

var PalladiumArmor = Palladium.registerPart("armor").getData();
PalladiumArmor.addDataValue("durability", "50");
PalladiumArmor.addDataValue("enchantability", "6");
PalladiumArmor.addDataValue("reduction", "3,5,7,2");
PalladiumArmor.addDataValue("toughness", "1");

var Palladiummolten = Palladium.registerPart("molten").getData();
Palladiummolten.addDataValue("temperature", "1000");
Palladiummolten.addDataValue("luminosity", "10");

var Palladiumblock = Palladium.registerPart("block").getData();
Palladiumblock.addDataValue("hardness", "10");
Palladiumblock.addDataValue("resistance", "50");
Palladiumblock.addDataValue("harvestTool", "pickaxe");


//Vanasteel Rods
//var Vanasteelcolor = Color.fromHex("aba571") as Color;
//var Vanasteel = MaterialSystem.getMaterialBuilder().setName("Vanasteel").setColor(Vanasteelcolor).build();
//Vanasteel.registerParts(["rod"] as string[]);

//ScAl Rods
//var ScAlcolor = Color.fromHex("dedede") as Color;
//var ScAl = MaterialSystem.getMaterialBuilder().setName("ScAl").setColor(ScAlcolor).build();
//ScAl.registerParts(["rod"] as string[]);

//Nimonic Rods
//var Nimoniccolor = Color.fromHex("b0b0b0") as Color;
//var Nimonic = MaterialSystem.getMaterialBuilder().setName("Nimonic").setColor(Nimoniccolor).build();
//Nimonic.registerParts(["rod"] as string[]);

//BAM Rods
//var Bamcolor = Color.fromHex("8c8c8c") as Color;
//var Bam = MaterialSystem.getMaterialBuilder().setName("BAM").setColor(Bamcolor).build();
//Bam.registerParts(["rod"] as string[]);

//var ore = inertMetal.registerPart("ore").getData();
//ore.addDataValue("variants", "minecraft:stone");
//ore.addDataValue("hardness", "3");
//ore.addDataValue("resistance", "15");
//ore.addDataValue("harvestLevel", "1");
//ore.addDataValue("harvestTool", "pickaxe");
//
//var armor = inertMetal.registerPart("armor").getData();
//armor.addDataValue("durability", "522");
//armor.addDataValue("enchantability", "10");
//armor.addDataValue("reduction", "2,5,6,2");
//armor.addDataValue("toughness", "2");