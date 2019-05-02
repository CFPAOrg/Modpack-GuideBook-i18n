#loader gregtech
import mods.gregtech.material.MaterialRegistry;
import crafttweaker.enchantments.IEnchantmentDefinition;

print("-------------GT Materials Start------------");

	#Reference
/*
MaterialRegistry.createFluidMaterial(
	int metaItemSubId, String name, int color, String iconSet, @Optional MaterialStack[] materialComponents);

MaterialRegistry.createDustMaterial(
	int metaItemSubId, String name, int color, String iconSet, int harvestLevel, 
	@Optional MaterialStack[] materialComponents);

MaterialRegistry.createGemMaterial(
	int metaItemSubId, String name, int color, String iconSet, int harvestLevel, 
	@Optional MaterialStack[] materialComponents, 
	@Optional float toolSpeed, 
	@Optional int toolDurability);

MaterialRegistry.createIngotMaterial(
	int metaItemSubId, String name, int color, String iconSet, int harvestLevel, 
	@Optional MaterialStack[] materialComponents, 
	@Optional float toolSpeed, 
	@Optional int toolDurability, 
	@Optional int blastFurnaceTemperature);
*/
	#Thaumcraft Ores
var tcAer = MaterialRegistry.createGemMaterial(820, "aer_infused", 0xefef58, "RUBY", 1);
tcAer.addFlags(["GENERATE_ORE"]);
var tcAqua = MaterialRegistry.createGemMaterial(821, "aqua_infused", 0x42d7f4, "RUBY", 1);
tcAqua.addFlags(["GENERATE_ORE"]);
var tcEntropy = MaterialRegistry.createGemMaterial(822, "entropy_infused", 0x2b2b29, "RUBY", 1);
tcEntropy.addFlags(["GENERATE_ORE"]);
var tcIgnis = MaterialRegistry.createGemMaterial(823, "ignis_infused", 0xd81d0d, "RUBY", 1);
tcIgnis.addFlags(["GENERATE_ORE"]);
var tcOrdo = MaterialRegistry.createGemMaterial(824, "ordo_infused", 0xe0e0d9, "RUBY", 1);
tcOrdo.addFlags(["GENERATE_ORE"]);
var tcTerra = MaterialRegistry.createGemMaterial(825, "terra_infused", 0x1dba0e, "RUBY", 1);
tcTerra.addFlags(["GENERATE_ORE"]);



	#Enderium
val materialEnderium = MaterialRegistry.createIngotMaterial(800, "enderium", 0x1F534A, "SHINY", 3, null, 18.0f, 6, 6000, 4500);
materialEnderium.addFlags(["GENERATE_BOLT_SCREW", "GENERATE_PLATE", "GENERATE_GEAR", "GENERATE_ROTOR"]);


	#Signalum
val materialSignalum = MaterialRegistry.createIngotMaterial(801, "signalum", 0xF6872E, "shiny", 2); 
	//[<material:copper>*3, <material:silver>*1, <material:redstone>*9], 3.5, 0, 4500);
materialSignalum.addFlags(["GENERATE_BOLT_SCREW", "GENERATE_PLATE", "GENERATE_GEAR"]);

	#Thaumium
val materialThaumium = MaterialRegistry.createIngotMaterial(802, "thaumium", 0x49406C, "SHINY", 2, null, 16.0f, 6, 2560);
materialThaumium.addToolEnchantment(<enchantment:minecraft:fortune> * 2); 
materialThaumium.addFlags(["GENERATE_PLATE", "GENERATE_ROD", "GENERATE_BOLT_SCREW", "GENERATE_GEAR"]);

	#Stellar
val materialStellar = MaterialRegistry.createIngotMaterial(803, "stellar_alloy", 0xBAD4FF, "SHINY", 2);
materialStellar.addFlags(["GENERATE_PLATE", "GENERATE_ROD", "GENERATE_BOLT_SCREW", "GENERATE_GEAR"]);

	#Starmetal
val materialStarmetal = MaterialRegistry.createIngotMaterial(804, "starmetal", 0x2B5AA8, "SHINY", 2);
materialStarmetal.addFlags(["GENERATE_PLATE", "GENERATE_ROD", "GENERATE_BOLT_SCREW", "GENERATE_GEAR"]);

	#Manasteel
val materialManasteel = MaterialRegistry.createIngotMaterial(805, "manasteel", 0x3D78DB, "SHINY", 2);
materialManasteel.addFlags(["GENERATE_PLATE", "GENERATE_ROD", "GENERATE_BOLT_SCREW", "GENERATE_GEAR"]);

	#Elementium
val materialElementium = MaterialRegistry.createIngotMaterial(806, "elementium", 0xD43EE8, "SHINY", 2);
materialElementium.addFlags(["GENERATE_PLATE", "GENERATE_ROD", "GENERATE_BOLT_SCREW", "GENERATE_GEAR"]);

	#Terrasteel
val materialTerrasteel = MaterialRegistry.createIngotMaterial(807, "terrasteel", 0x31E52B, "SHINY", 6, null, 20.0f, 6, 12800);
materialTerrasteel.addToolEnchantment(<enchantment:minecraft:fortune> * 3); 

materialTerrasteel.addFlags(["GENERATE_PLATE", "GENERATE_ROD", "GENERATE_BOLT_SCREW", "GENERATE_GEAR"]);

	#Skystone
val materialSkystone = MaterialRegistry.createGemMaterial(808, "skystone", 0x1D1F21, "DIAMOND", 3);
materialSkystone.addFlags(["GENERATE_PLATE", "GENERATE_ROD"]);

	#Lumium
val materialLumium = MaterialRegistry.createIngotMaterial(811, "lumium", 0xEAD489, "SHINY", 2);
materialLumium.addFlags(["GENERATE_BOLT_SCREW", "GENERATE_PLATE", "GENERATE_GEAR"]);

	#Draconium
var draconium = MaterialRegistry.createIngotMaterial(
	815, "draconium", 0x7a32cd, "metallic", 6, 
	null, 
	24.0f,
	6,
	102400);
	//@Optional int blastFurnaceTemperature
draconium.addToolEnchantment(<enchantment:minecraft:fortune> * 3); 
draconium.addToolEnchantment(<enchantment:minecraft:mending> * 1); 
draconium.addFlags(["GENERATE_BOLT_SCREW", "GENERATE_PLATE", "GENERATE_GEAR", "GENERATE_ROTOR"]);



	#Unstable Mana
val fluidUnstableMana = MaterialRegistry.createFluidMaterial(809, "unstable_mana", 0x439ADF, "FLUID");
fluidUnstableMana.addFlags(["GENERATE_FLUID_BLOCK"]);
fluidUnstableMana.setFluidTemperature(30);


	#Infused Fuel
val infusedNitroFuel = MaterialRegistry.createFluidMaterial(810, "infused_nitrofuel", 0x09FFCD, "FLUID");
infusedNitroFuel.addFlags(["GENERATE_FLUID_BLOCK"]);
infusedNitroFuel.setFluidTemperature(300);

	#Liquid Nightmares
val liquidNightmares = MaterialRegistry.createFluidMaterial(812, "liquidnightmares", 0x270130, "FLUID");
liquidNightmares.addFlags(["GENERATE_FLUID_BLOCK"]);

	#Lithium Chloride
val lithiumChloride = MaterialRegistry.createFluidMaterial(813, "lithiumchloride", 0xC1C1A0, "FLUID");
lithiumChloride.addFlags(["GENERATE_FLUID_BLOCK"]);

	#Potassium Chloride
val potassiumChloride = MaterialRegistry.createFluidMaterial(814, "potassiumchloride", 0xA2C1BC, "FLUID");
potassiumChloride.addFlags(["GENERATE_FLUID_BLOCK"]);

	#Uranium Hexafluoride
val uraniumHexafluoride = MaterialRegistry.createFluidMaterial(817, "uraniumhexafluoride", 0x42F477, "FLUID");
uraniumHexafluoride.addFlags(["GENERATE_FLUID_BLOCK"]);
uraniumHexafluoride.setFluidTemperature(1000);

	#Cryogenic oxygen
val cryogenicoxygen = MaterialRegistry.createFluidMaterial(818, "cryogenicoxygen", 0x4286F4, "FLUID");
cryogenicoxygen.addFlags(["GENERATE_FLUID_BLOCK"]);
cryogenicoxygen.setFluidTemperature(54);

	#Cryogenic hydrogen
val cryogenichydrogen = MaterialRegistry.createFluidMaterial(819, "cryogenichydrogen", 0xEDF1F7, "FLUID");
cryogenichydrogen.addFlags(["GENERATE_FLUID_BLOCK"]);
cryogenichydrogen.setFluidTemperature(20);


	#Red Matter (Fluiid)
val redMatter = MaterialRegistry.createFluidMaterial(816, "red_matter", 0x921f0d, "FLUID");
redMatter.addFlags(["GENERATE_FLUID_BLOCK"]);
redMatter.setFluidTemperature(3000);



//////////////////////////
      #Misc Flags
/////////////////////////

<material:blue_vitriol_water_solution>.addFlags(["GENERATE_FLUID_BLOCK"]);
<material:oil>.addFlags(["GENERATE_FLUID_BLOCK"]);
<material:quartzite>.addFlags(["GENERATE_PLATE", "GENERATE_ROD",  "GENERATE_GEAR"]);
<material:red_alloy>.addFlags(["GENERATE_FOIL"]);
<material:fuel>.addFlags(["GENERATE_FLUID_BLOCK"]);
<material:ethanol>.addFlags(["GENERATE_FLUID_BLOCK"]);
<material:methane>.addFlags(["GENERATE_FLUID_BLOCK"]);
<material:light_fuel>.addFlags(["GENERATE_FLUID_BLOCK"]);
<material:creosote>.addFlags(["GENERATE_FLUID_BLOCK"]);
<material:heavy_fuel>.addFlags(["GENERATE_FLUID_BLOCK"]);
<material:nitro_fuel>.addFlags(["GENERATE_FLUID_BLOCK"]);
<material:bio_diesel>.addFlags(["GENERATE_FLUID_BLOCK"]);
<material:cupronickel>.addFlags(["GENERATE_GEAR"]);
<material:invar>.addFlags(["GENERATE_GEAR"]);
<material:rose_gold>.addFlags(["GENERATE_RING"]);


print("-------------GT Materials Initialized------------");
