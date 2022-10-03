#loader contenttweaker
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Fluid;
import mods.contenttweaker.Color;


VanillaFactory.createFluid("blue_essence.0", Color.fromHex("6496CD")).register();
VanillaFactory.createFluid("blue_essence.1", Color.fromHex("5078D7")).register();
VanillaFactory.createFluid("blue_essence.2", Color.fromHex("3C5AE1")).register();
VanillaFactory.createFluid("blue_essence.3", Color.fromHex("283CEB")).register();
VanillaFactory.createFluid("blue_essence.4", Color.fromHex("141EF5")).register();
VanillaFactory.createFluid("blue_essence.5", Color.fromHex("0000FF")).register();


var dragon_breath = VanillaFactory.createFluid("dragon_breath", Color.fromHex("E297B7"));
dragon_breath.gaseous = true;
dragon_breath.register();

print("Register Low-Energy Redstone Fluid");
var rs_fluid = VanillaFactory.createFluid("low_energy_redstone", Color.fromHex("720000"));
rs_fluid.temperature = 500;
rs_fluid.register();

print("Register Low-Energy Glowstone Fluid");
var glowstone_fluid = VanillaFactory.createFluid("low_energy_glowstone", Color.fromHex("D2D200"));
glowstone_fluid.temperature = 500;
glowstone_fluid.luminosity = 15;
glowstone_fluid.register();

print("Register Hard Glass");
var hard_glass = VanillaFactory.createFluid("hard_glass", Color.fromHex("a0a0a0"));
hard_glass.temperature = 500;
hard_glass.register();


print("Register Water of Life");
var water_of_life = VanillaFactory.createFluid("water_of_life", Color.fromHex("FFB671"));
water_of_life.register();

print("Register Salis Mundus");
var salis_mundus = VanillaFactory.createFluid("salis_mundus", Color.fromHex("FFFFFF"));
salis_mundus.stillLocation = "contenttweaker:fluids/salis_mundus";
salis_mundus.flowingLocation = "contenttweaker:fluids/salis_mundus_flow";
salis_mundus.register();

var infernal_lava = VanillaFactory.createFluid("infernal_lava", Color.fromHex("FFFFFF"));
infernal_lava.temperature = 10000;
infernal_lava.luminosity = 15;
infernal_lava.stillLocation = "contenttweaker:fluids/infernal_lava_still";
infernal_lava.flowingLocation = "contenttweaker:fluids/infernal_lava_flowing";
infernal_lava.material = <blockmaterial:lava>;
infernal_lava.register();


var protein = VanillaFactory.createFluid("protein", Color.fromHex("F0D29D"));
protein.stillLocation = "contenttweaker:fluids/blank_still";
protein.flowingLocation = "contenttweaker:fluids/blank_flow";
protein.register();

var yolk = VanillaFactory.createFluid("yolk", Color.fromHex("FCB906"));
yolk.stillLocation = "contenttweaker:fluids/blank_still";
yolk.flowingLocation = "contenttweaker:fluids/blank_flow";
yolk.register();

var netherwart = VanillaFactory.createFluid("netherwart", Color.fromHex("BB3033"));
netherwart.stillLocation = "extrautils2:blank_lava_still";
netherwart.flowingLocation = "extrautils2:blank_lava_flow";
netherwart.register();


var evil = VanillaFactory.createFluid("evil", Color.fromHex("FFFFFF"));
evil.stillLocation = "contenttweaker:fluids/evil_still";
evil.flowingLocation = "contenttweaker:fluids/evil_flow";
evil.register();

var mercury = VanillaFactory.createFluid("mercury", Color.fromHex("FFFFFF"));
mercury.stillLocation = "contenttweaker:fluids/mercury_still";
mercury.flowingLocation = "contenttweaker:fluids/mercury_flow";
mercury.register();

var void_fluid = VanillaFactory.createFluid("void", Color.fromHex("000000"));
void_fluid.stillLocation = "contenttweaker:fluids/mercury_still";
void_fluid.flowingLocation = "contenttweaker:fluids/mercury_still";
void_fluid.register();

