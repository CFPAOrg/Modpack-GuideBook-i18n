#loader contenttweaker
#modloaded chickens
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Part;
import mods.contenttweaker.MaterialPart;
import mods.contenttweaker.MaterialSystem;
import mods.contenttweaker.Material;
import mods.contenttweaker.Item;
import mods.contenttweaker.Block;
import mods.contenttweaker.PartBuilder;
import mods.contenttweaker.Color;
import mods.contenttweaker.Fluid;
import mods.contenttweaker.ActionResult;
import mods.contenttweaker.Chicken;
import mods.contenttweaker.ChickenFactory;
import mods.contenttweaker.ResourceLocation as resLoc;

print("---------------FTB Custom Start------------------");

	#8Bit Soundtrack
VanillaFactory.createRecord("tekmenu", Color.fromHex("2065A9"));

var skystoneLense = VanillaFactory.createItem("skystoneLense");
skystoneLense.register();

var infinityegg = VanillaFactory.createItem("infinityegg");
infinityegg.register();

print("---------------------Initializing metallurgy generation------------------------");


  #Enriched Egg
mods.contenttweaker.MaterialSystem.getPartBuilder()
  .setName("enriched_egg")
  .setPartType(MaterialSystem.getPartType("item"))
  .setOreDictName("enrichedEgg")
  .build();


	var smallgearextrudershape = VanillaFactory.createItem("smallgearextrudershape");
	smallgearextrudershape.maxStackSize = 64;
	smallgearextrudershape.register();

var materialMap as int[string] = {
	//Metals
	"Aluminium" : <material:aluminium>.color,
	"Ardite" : 13713936,
	"Banded Iron" : <material:banded_iron>.color,
	"Beryllium" : <material:beryllium>.color,
	"Brown Limonite" : <material:brown_limonite>.color,
	"Cassiterite" : <material:cassiterite>.color,
	"Chalcopyrite" : <material:chalcopyrite>.color,
	"Cobalt" : <material:cobalt>.color,
	"Cooperite" : <material:cooperite>.color,
	"Copper" : <material:copper>.color,
	"Garnierite" : <material:garnierite>.color,
	"Gold" : <material:gold>.color,
	"Ilmenite" : <material:ilmenite>.color,
	"Iridium" : <material:iridium>.color,
	"Iron" : <material:iron>.color,
	"Lead" : <material:lead>.color,
	"Lithium" : <material:lithium>.color,
	"Malachite" : <material:malachite>.color,
	"Magnesium" : <material:magnesium>.color,
	"Manganese" : <material:manganese>.color,
	"Molybdenum" : <material:molybdenum>.color,
	"Naquadah" : <material:naquadah>.color,
	"Nickel" : <material:nickel>.color,
	"Niobium" : <material:niobium>.color,
	"Osmium" : <material:osmium>.color,
	"Palladium" : <material:palladium>.color,
	"Pentlandite" : <material:pentlandite>.color,
	"Platinum" : <material:platinum>.color,
	"Pyrolusite" : <material:pyrolusite>.color,
	"Rutile" : <material:rutile>.color,
	"Silver" : <material:silver>.color,
	"Stibnite" : <material:stibnite>.color,
	"Tantalum" : <material:tantalum>.color,
	"Tetrahedrite" : <material:tetrahedrite>.color,
	"Tin" : <material:tin>.color,
	"Titanium" : <material:titanium>.color,
	"Tungstate" : <material:tungstate>.color,
	"Tungsten" : <material:tungsten>.color,
	"Uraninite" : <material:uraninite>.color,
	"Uranium" : <material:uranium>.color,
	"Uranium 235" : <material:uranium235>.color,
	"Yellow Limonite" : <material:yellow_limonite>.color,
	"Zinc" : <material:zinc>.color,

	//Dusts
	"Bastnasite" : <material:bastnasite>.color,
	"Bauxite" : <material:bauxite>.color,
	"Bentonite" : <material:bentonite>.color,
	"Calcium" : <material:calcium>.color,
	"Calcite" : <material:calcite>.color,
	"Chromite" : <material:chromite>.color,
	"Cinnabar" : <material:cinnabar>.color,
	"Cobaltite" : <material:cobaltite>.color,
	"Fullers Earth" : <material:fullers_earth>.color,
	"Galena" : <material:galena>.color,
	"Glauconite" : <material:glauconite>.color,
	//"Glauconite Sand" : <material:glauconite_sand>.color,	// not needed
	"Graphite" : <material:graphite>.color,
	"Grossular" : <material:grossular>.color,
	"Lepidolite" : <material:lepidolite>.color,
	"Magnesite" : <material:magnesite>.color,
	"Magnetite" : <material:magnetite>.color,
	"Monazite" : <material:monazite>.color,
	"Naquadah Enriched" : <material:naquadah_enriched>.color,
	"Pitchblende" : <material:pitchblende>.color,
	"Powellite" : <material:powellite>.color,
	"Phosphor" : <material:phosphor>.color,
	"Pyrite" : <material:pyrite>.color,
	"Redstone" : <material:redstone>.color,
	"Rock Salt" : <material:rock_salt>.color,
	"Salt" : <material:salt>.color,
	"Saltpeter" : <material:saltpeter>.color,
	"Scheelite" : <material:scheelite>.color,
	"Soapstone" : <material:soapstone>.color,
	"Sodalite" : <material:sodalite>.color,
	"Spessartine" : <material:spessartine>.color,
	"Sphalerite" : <material:sphalerite>.color,
	//"Silicon" : <material:silicon>.color,
	"Spodumene" : <material:spodumene>.color,
	"Sulfur" : <material:sulfur>.color,
	"Talc" : <material:talc>.color,
	"Tantalite" : <material:tantalite>.color,
	"Thorium" : <material:thorium>.color,
	"Vanadium Magnetite" : <material:vanadium_magnetite>.color,
	"Wulfenite" : <material:wulfenite>.color,

	//Gems
	"Amethyst" : <material:amethyst>.color,
	"Apatite" : <material:apatite>.color,
	"Barite" : <material:barite>.color,
	"Blue Topaz" : <material:blue_topaz>.color,
	"Certus Quartz" : <material:certus_quartz>.color,
	"Coal" : <material:coal>.color,
	"Diamond" : <material:diamond>.color,
	"Emerald" : <material:emerald>.color,
	"Garnet Red" : <material:garnet_red>.color,
	"Garnet Sand" : <material:garnet_sand>.color,
	"Garnet Yellow" : <material:garnet_yellow>.color,
	"Green Sapphire" : <material:green_sapphire>.color,
	"Jasper" : <material:jasper>.color,
	"Lapis" : <material:lapis>.color,
	"Lazurite" : <material:lazurite>.color,
	"Lignite" : <material:lignite>.color,
	"Nether Quartz" : <material:nether_quartz>.color,
	"Olivine" : <material:olivine>.color,
	"Opal" : <material:opal>.color,
	"Pyrope" : <material:pyrope>.color,
	"Quartz Sand" : <material:quartz_sand>.color,
	"Quartzite" : <material:quartzite>.color,
	"Ruby" : <material:ruby>.color,
	"Sapphire" : <material:sapphire>.color,
	"Tanzanite" : <material:tanzanite>.color,
	"Topaz" : <material:topaz>.color,
	"Menril" : <material:vinteum>.color,
	"Vinteum" : <material:vinteum>.color
};

for material, color in materialMap {
	var part = MaterialSystem.getMaterialBuilder()
		.setName(material)
		.setColor(color)
		.build();
	part.registerPart("dense_ore");
	print(material + " Dense Ore registered");
	part.registerPart("clump");
	print(material + " Clump registered");
	part.registerPart("crystal");
	print(material + "Crystal registered");
	part.registerPart("enriched_egg");
	print(material + " Enriched egg registered");
	part.registerPart("shard");
}

	#Exceptions - Infinity Enriched Egg

print("---------------------Initializing Custom Chickens------------------------");

var apatiteChicken = ChickenFactory.createChicken("apatitechicken", Color.fromInt(<material:apatite>.color), <item:contenttweaker:apatite_enriched_egg>);
apatiteChicken.setSpawnType("NONE");
apatiteChicken.register();

var bentonitechicken = ChickenFactory.createChicken("bentonitechicken", Color.fromInt(<material:bentonite>.color), <item:contenttweaker:bentonite_enriched_egg>);
bentonitechicken.setSpawnType("NONE");
bentonitechicken.register();

var glauconitechicken = ChickenFactory.createChicken("glauconitechicken", Color.fromInt(<material:glauconite>.color), <item:contenttweaker:glauconite_enriched_egg>);
glauconitechicken.setSpawnType("NONE");
glauconitechicken.register();

var graphitechicken = ChickenFactory.createChicken("graphitechicken", Color.fromInt(<material:graphite>.color), <item:contenttweaker:graphite_enriched_egg>);
graphitechicken.setSpawnType("NONE");
graphitechicken.register();

var grossularchicken = ChickenFactory.createChicken("grossularchicken", Color.fromInt(<material:grossular>.color), <item:contenttweaker:grossular_enriched_egg>);
grossularchicken.setSpawnType("NONE");
grossularchicken.register();

var magnesiumchicken = ChickenFactory.createChicken("magnesiumchicken", Color.fromInt(<material:magnesium>.color), <item:contenttweaker:magnesium_enriched_egg>);
magnesiumchicken.setSpawnType("NONE");
magnesiumchicken.register();

var manganesechicken = ChickenFactory.createChicken("manganesechicken", Color.fromInt(<material:manganese>.color), <item:contenttweaker:manganese_enriched_egg>);
manganesechicken.setSpawnType("NONE");
manganesechicken.register();

var monazitechicken = ChickenFactory.createChicken("monazitechicken", Color.fromInt(<material:monazite>.color), <item:contenttweaker:monazite_enriched_egg>);
monazitechicken.setSpawnType("NONE");
monazitechicken.register();

var niobiumchicken = ChickenFactory.createChicken("niobiumchicken", Color.fromInt(<material:niobium>.color), <item:contenttweaker:niobium_enriched_egg>);
niobiumchicken.setSpawnType("NONE");
niobiumchicken.register();

var phosphorchicken = ChickenFactory.createChicken("phosphorchicken", Color.fromInt(<material:phosphor>.color), <item:contenttweaker:phosphor_enriched_egg>);
phosphorchicken.setSpawnType("NONE");
phosphorchicken.register();

var soapstonechicken = ChickenFactory.createChicken("soapstonechicken", Color.fromInt(<material:soapstone>.color), <item:contenttweaker:soapstone_enriched_egg>);
soapstonechicken.setSpawnType("NONE");
soapstonechicken.register();

var spessartineChicken = ChickenFactory.createChicken("spessartinechicken", Color.fromInt(<material:spessartine>.color), <item:contenttweaker:spessartine_enriched_egg>);
spessartineChicken.setSpawnType("NONE");
spessartineChicken.register();

var stibnitechicken = ChickenFactory.createChicken("stibnitechicken", Color.fromInt(<material:stibnite>.color), <item:contenttweaker:stibnite_enriched_egg>);
stibnitechicken.setSpawnType("NONE");
stibnitechicken.register();

var tantalumchicken = ChickenFactory.createChicken("tantalumchicken", Color.fromInt(<material:tantalum>.color), <item:contenttweaker:tantalum_enriched_egg>);
tantalumchicken.setSpawnType("NONE");
tantalumchicken.register();

var vanadiumchicken = ChickenFactory.createChicken("vanadiumchicken", Color.fromInt(<material:vanadium>.color), <item:contenttweaker:vanadium_magnetite_enriched_egg>);
vanadiumchicken.setSpawnType("NONE");
vanadiumchicken.register();

var infinitychicken = ChickenFactory.createChicken("infinitychicken", Color.fromHex("000000"), <item:contenttweaker:infinityegg>);
infinitychicken.setForegroundColor(Color.fromHex("007F7F"));
infinitychicken.setSpawnType("NONE");
infinitychicken.register();

var ftbchicken = ChickenFactory.createChicken("ftbchicken", Color.fromInt(0xffffff), <item:minecraft:clay>);
ftbchicken.setForegroundColor(Color.fromInt(0x054549));
ftbchicken.setSpawnType("NONE");
ftbchicken.register();

	#Add in TC Clusters for GT ores
#var cluster_metals = ["cobalt", "platinum", "aluminium", "antimony", "beryllium", "cassiterite", "iridium", "lithium", "manganese", "molybdenum", "naquadah", "neodymium", "nickel", "palladium", "thorium", "tungsten", #"uranium238"] as string[];
#for i, metal in cluster_metals {
#  var clusterName =  "cluster_" ~ metal;
#  var cluster = VanillaFactory.createItem(clusterName);
#  cluster.maxStackSize = 64;
#  cluster.register();
#}



print("----------------FTB Custom End-------------------");
