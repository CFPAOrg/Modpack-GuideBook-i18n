import mods.modularmachinery.RecipePrimer;
import crafttweaker.item.IItemStack;
import mods.jei.JEI.addDescription;
print("==================== loading assemblerrecipes.zs ====================");
##########################################################################################




######### Thanks Hua En! #########




/*
// --==Assembling Machine Mechanics - Brief Documentation==-- //

// General Description //

There are 4 tiers of assembling machine, unlocked at different points in the modpack:
MK I: Basic Assembling Machine (Start of Chapter 5, Tech Reborn)
MK II: Advanced Assembling Machine (Middle of Chapter 6, Advanced Rocketry)
MK III: Elite Assembling Machine (Middle of Chapter 7)
MK IV: Mass Manufacturer (End of Chapter 7, can run multiple of a single recipe at once)

New tiers build upon the old tiers and also upgrade various parts of the old tiers.

Much like GT, recipes require a minimum tier of assembling machine to run. For example, advanced circuit boards are unlocked at the MK II, meaning you can't craft them in a MK I assembling machine.

Recipes which are unlocked in lower tier assembling machines are overclocked linearly in higher tier assembling machines. This means that both 速度 and 能量消耗 (RF/t) increase in tandem.

Here's the 能量消耗 and overclocking bonuses for each tier:
MK I: 500RF/t-10kRF/t
MK II: 2500RF/t-50kRF/t [Overclocking: 5x 速度, 5x 能量消耗]
MK III: 60kRF/t-480kRF/t [Overclocking: 8x 速度, 8x 能量消耗]
MK IV: 160kRF/t-3.84MRF/t [Overclocking: 8x 速度, 8x 能量消耗]

Assembling Machines have two forms of upgrades: TR Casings and the Central Core. Both modify 速度 and 能量消耗 in some way, and some even modify 流体消耗，hance. However, the maximum that an
assembling machine of a certain tier can be upgraded (discounting higher tier casings than the tier above) is only slightly more than the next tier's overclocking bonus, and will be much more power (and fluid)
inefficient.

// TR Casings //
TR Casings provide a linear increase to 速度 and 能量消耗. Each assembling machine has a mininmum tier of casing required, detailed below:

MK I: Standard Machine Casings
MK II: Reinforced Machine Casings
MK III: Advanced Machine Casings
MK IV: Fusion Coils

Each coil replaced by one of a higher tier gives a 1.07x boost to both 速度 and 能量消耗. If one of an even higher tier is used, the multiplier from the previous tier stacks (for example, replacing a
standard machine casing with a fusion coil in a MK I assembling machine leads to a 1.07^3≈1.225 boost to both 速度 and 能量消耗).

// Central Core //
Depending on the material used, the central core can modify the 速度 and 能量消耗 of the assembling machine by various amounts, and even have other effects (e.g. reduced 流体消耗， 

Each tier of assembling machine has a base material (e.g. refined iron for tier 1), as well as 4 upgrade materials that modify the 速度 and 能量消耗 by various amounts (apart from the Mass Manufacturer, 
whose core upgrades work differently from the first three tiers of assembling machine). There are also special upgrade materials from NC:O and RH:C that have special modifiers and effects, and can be used in
any assembling machine above their minimum tier (e.g. Californium-252 can be used in any assembling machine above tier 2).

The mass manufacturer's upgrades work differently in that they only modify the input and output quantities of a recipe, effectively allowing multiples of a recipe to be processed at a time. 

// --==Crafttweaker Methods==-- //
mods.modularmachinery.RecipeBuilder.newBuilder(String recipeRegistryName, String associatedMachineRegistryName, int processingTickTime, int sortingPriority)
	.addEnergyPerTickInput(int perTick)
	.addItemOutput(IItemStack stack)
	.addItemInput(IItemStack stack)
	.addItemInput(IOreDictEntry oreDict, int amount)
	.addFluidInput(ILiquidStack stack)
	.build();

mods.modularmachinery.RecipeBuilder.newBuilder(machineName + "item name here", machineName, int processingTickTime)
	.addEnergyPerTickInput(int perTick)
	.addItemOutput(<ore:thing>, 2)
	.addItemInput(<ore:thing>)
	.addItemInput(<ore:thing>)
	.addFluidInput(<fluid:thing>)
	.build();

*/


// --==Removals==-- //


// Remove all Precision Assembler Recipes
mods.jei.JEI.removeAndHide(<advancedrocketry:precisionassemblingmachine>);
//mods.advancedrocketry.PrecisionAssembler.clear();

// Remove all TR Assembler Recipes

	mods.jei.JEI.removeAndHide(<techreborn:assembling_machine>);
//mods.techreborn.assemblingMachine.removeAll();

// Remove some NC Assembler Recipes
val qmdremovals =
[
<qmd:part:4>*6,
<qmd:chemical_dust:1>*3,
<qmd:source>.withTag({storage: {amount: 6000}}),
<qmd:part:6>*6,
<qmd:part:3>,
<qmd:semiconductor:4>,
<qmd:semiconductor:5>,
<qmd:semiconductor:6>,
<qmd:part:8>
]
 as IItemStack[];

for item in qmdremovals {
	mods.nuclearcraft.Assembler.removeRecipeWithOutput(item);
}


##############################################
##
##           Basic Assembling Machine (MK I)
##
##############################################

// Tech Reborn Circuits //

// Basic Circuit Board
mods.modularmachinery.RecipeBuilder.newBuilder("assemblermkone" + "_basic_circuit_board_1", "assemblermkone", 50)
	.addEnergyPerTickInput(1000)
	.addItemOutput(<techreborn:part:40>*2)
	.addItemInput(<techreborn:plates:35>)
	.addItemInput(<ore:plateElectrum>, 2)
	.build();

mods.modularmachinery.RecipeBuilder.newBuilder("assemblermkone" + "_basic_circuit_board_2", "assemblermkone", 50)
	.addEnergyPerTickInput(1000)
	.addItemOutput(<techreborn:part:40>*2)
	.addItemInput(<ore:plateAluminum>)
	.addItemInput(<ore:plateElectrum>, 2)
	.build();

// Electronic Circuit
mods.modularmachinery.RecipeBuilder.newBuilder("assemblermkone" + "_electronic_circuit_1", "assemblermkone", 150)
	.addEnergyPerTickInput(2000)
	.addItemOutput(<techreborn:part:29>)
	.addItemInput(<techreborn:part:40>)
	.addItemInput(<techreborn:cable:5>*3)
	.build();

mods.modularmachinery.RecipeBuilder.newBuilder("assemblermkone" + "_electronic_circuit_2", "assemblermkone", 200)
	.addEnergyPerTickInput(2000)
	.addItemOutput(<techreborn:part:29>)
	.addItemInput(<powersuits:powerarmorcomponent>*4)
	.addItemInput(<minecraft:redstone>*2)
    .addItemInput(<techreborn:plates:35>)
	.build();

// Advanced Circuit Board
mods.modularmachinery.RecipeBuilder.newBuilder("assemblermkone" + "_advanced_circuit_board_1", "assemblermkone", 150)
	.addEnergyPerTickInput(2000)
	.addItemOutput(<techreborn:part:41>*2)
	.addItemInput(<ore:waferSilicon>)
	.addItemInput(<ore:plateElectrum>, 4)
	.build();

mods.modularmachinery.RecipeBuilder.newBuilder("assemblermkone" + "_advanced_circuit_board_2", "assemblermkone", 150)
	.addEnergyPerTickInput(2000)
	.addItemOutput(<techreborn:part:41>)
	.addItemInput(<ore:circuitBasic>)
	.addItemInput(<ore:plateElectrum>, 2)
	.build();

// Advanced Circuit Parts
mods.modularmachinery.RecipeBuilder.newBuilder("assemblermkone" + "_advanced_circuit_parts_1", "assemblermkone", 150)
	.addEnergyPerTickInput(2000)
	.addItemOutput(<techreborn:part:42>*2)
	.addItemInput(<techreborn:dust:48>)
	.addItemInput(<minecraft:glowstone_dust>)
	.addItemInput(<advgenerators:iron_tubing>)
	.build();

mods.modularmachinery.RecipeBuilder.newBuilder("assemblermkone" + "_advanced_circuit_parts_2", "assemblermkone", 150)
	.addEnergyPerTickInput(2000)
	.addItemOutput(<techreborn:part:42>)
	.addItemInput(<techreborn:dust:28>*2)
	.addItemInput(<minecraft:glowstone_dust>)
	.addItemInput(<advgenerators:iron_tubing>)
	.build();

// Advanced Electronic Circuit
mods.modularmachinery.RecipeBuilder.newBuilder("assemblermkone" + "_advanced_electronic_circuit", "assemblermkone", 20)
	.addEnergyPerTickInput(4000)
	.addItemOutput(<techreborn:part:30>)
	.addItemInput(<techreborn:part:41>)
	.addItemInput(<techreborn:part:42>*2)
	.build();

// Processor Circuit Board
mods.modularmachinery.RecipeBuilder.newBuilder("assemblermkone" + "_processor_circuit_board", "assemblermkone", 200)
	.addEnergyPerTickInput(4000)
	.addItemOutput(<techreborn:part:43>)
	.addItemInput(<ore:circuitAdvanced>)
	.addItemInput(<ore:platePlatinum>)
	.build();

// Data Storage Circuit
mods.modularmachinery.RecipeBuilder.newBuilder("assemblermkone" + "_data_storage_circuit_1", "assemblermkone", 200)
	.addEnergyPerTickInput(4000)
	.addItemOutput(<techreborn:part:2>*4)
	.addItemInput(<ore:circuitAdvanced>)
	.addItemInput(<ore:gemEmerald>, 8)
	.build();

mods.modularmachinery.RecipeBuilder.newBuilder("assemblermkone" + "_data_storage_circuit_2", "assemblermkone", 200)
	.addEnergyPerTickInput(4000)
	.addItemOutput(<techreborn:part:2>*4)
	.addItemInput(<ore:circuitAdvanced>)
	.addItemInput(<ore:gemPeridot>, 8)
	.build();

mods.modularmachinery.RecipeBuilder.newBuilder("assemblermkone" + "_data_storage_circuit_3", "assemblermkone", 200)
	.addEnergyPerTickInput(4000)
	.addItemOutput(<techreborn:part:2>*4)
	.addItemInput(<ore:circuitAdvanced>)
	.addItemInput(<ore:dustEmerald>, 8)
	.build();

mods.modularmachinery.RecipeBuilder.newBuilder("assemblermkone" + "_data_storage_circuit_4", "assemblermkone", 200)
	.addEnergyPerTickInput(4000)
	.addItemOutput(<techreborn:part:2>*4)
	.addItemInput(<ore:circuitAdvanced>)    
	.addItemInput(<ore:dustPeridot>, 8)
	.build();

// Data Control Circuit
mods.modularmachinery.RecipeBuilder.newBuilder("assemblermkone" + "_data_control_circuit", "assemblermkone", 300)
	.addEnergyPerTickInput(5000)
	.addItemOutput(<techreborn:part:1>)
	.addItemInput(<techreborn:part:43>)    
	.addItemInput(<techreborn:part:2>)
	.build();

// Energy Flow Circuit
mods.modularmachinery.RecipeBuilder.newBuilder("assemblermkone" + "_energy_flow_circuit", "assemblermkone", 300)
	.addEnergyPerTickInput(5000)
	.addItemOutput(<techreborn:part>)
	.addItemInput(<techreborn:part:43>)
	.addItemInput(<techreborn:lapotroncrystal>)
	.build();

// Data Orb
mods.modularmachinery.RecipeBuilder.newBuilder("assemblermkone" + "_data_orb", "assemblermkone", 600)
	.addEnergyPerTickInput(10000)
	.addItemOutput(<techreborn:part:3>)
	.addItemInput(<techreborn:part:1>)
	.addItemInput(<techreborn:part:2>*8)
	.build();

// Gold Cable
mods.modularmachinery.RecipeBuilder.newBuilder("assemblermkone" + "_gold_cable", "assemblermkone", 40)
	.addEnergyPerTickInput(500)
	.addItemOutput(<techreborn:cable:6>)
	.addItemInput(<techreborn:cable:2>)
	.addItemInput(<ore:itemRubber>)
	.build();



// AA Coils //

// Basic Coil
mods.modularmachinery.RecipeBuilder.newBuilder("assemblermkone" + "_basic_coil_1", "assemblermkone", 100)
	.addEnergyPerTickInput(1000)
	.addItemOutput(<actuallyadditions:item_misc:7>)
	.addItemInput(<immersiveengineering:wirecoil>*4)
	.addItemInput(<actuallyadditions:item_crystal>)
	.build();

mods.modularmachinery.RecipeBuilder.newBuilder("assemblermkone" + "_basic_coil_2", "assemblermkone", 100)
	.addEnergyPerTickInput(1000)
	.addItemOutput(<actuallyadditions:item_misc:7>*2)
	.addItemInput(<immersiveengineering:wirecoil:1>*4)
	.addItemInput(<actuallyadditions:item_crystal>)
	.build();

mods.modularmachinery.RecipeBuilder.newBuilder("assemblermkone" + "_basic_coil_3", "assemblermkone", 100)
	.addEnergyPerTickInput(1000)
	.addItemOutput(<actuallyadditions:item_misc:7>*4)
	.addItemInput(<immersiveengineering:wirecoil:2>*4)
	.addItemInput(<actuallyadditions:item_crystal>)
	.build();

// Advanced Coil
mods.modularmachinery.RecipeBuilder.newBuilder("assemblermkone" + "_advanced_coil", "assemblermkone", 100)
	.addEnergyPerTickInput(1500)
	.addItemOutput(<actuallyadditions:item_misc:8>)
	.addItemInput(<techreborn:cable:6>*4)
	.addItemInput(<actuallyadditions:item_misc:7>)
	.build();



// Thermal Coils

// Redstone Reception Coil
mods.modularmachinery.RecipeBuilder.newBuilder("assemblermkone" + "_reception_coil", "assemblermkone", 200)
	.addEnergyPerTickInput(2000)
	.addItemOutput(<thermalfoundation:material:513>)
	.addItemInput(<advgenerators:iron_wiring>*2)
	.addItemInput(<moreplates:gold_stick>)
	.build();

// Redstone Transmission Coil
mods.modularmachinery.RecipeBuilder.newBuilder("assemblermkone" + "_transmission_coil", "assemblermkone", 200)
	.addEnergyPerTickInput(2000)
	.addItemOutput(<thermalfoundation:material:514>)
	.addItemInput(<advgenerators:iron_wiring>*2)
	.addItemInput(<moreplates:silver_stick>)
	.build();

// Redstone Conductance Coil
mods.modularmachinery.RecipeBuilder.newBuilder("assemblermkone" + "_conductance_coil", "assemblermkone", 200)
	.addEnergyPerTickInput(2000)
	.addItemOutput(<thermalfoundation:material:515>)
	.addItemInput(<advgenerators:iron_wiring>*2)
	.addItemInput(<moreplates:electrum_stick>)
	.build();



// Scaffoldings //

// Vanasteel Scaffolding
mods.modularmachinery.RecipeBuilder.newBuilder("assemblermkone" + "_vanasteel_scaffolding", "assemblermkone", 50)
	.addEnergyPerTickInput(500)
	.addItemOutput(<contenttweaker:vanasteel_scaffolding>*9)
	.addItemInput(<rockhounding_chemistry:alloy_items_tech:40>*3)
	.addItemInput(<contenttweaker:rod_vanasteel>*3)
	.build();

// Steel Scaffolding
mods.modularmachinery.RecipeBuilder.newBuilder("assemblermkone" + "_steel_scaffolding", "assemblermkone", 50)
	.addEnergyPerTickInput(500)
	.addItemOutput(<immersiveengineering:metal_decoration1:1>*9)
	.addItemInput(<thermalfoundation:material:160>*3)
	.addItemInput(<immersiveengineering:material:2>*3)
	.build();

// ScAl Scaffolding
mods.modularmachinery.RecipeBuilder.newBuilder("assemblermkone" + "_scal_scaffolding", "assemblermkone", 50)
	.addEnergyPerTickInput(500)
	.addItemOutput(<contenttweaker:scal_scaffolding>*9)
	.addItemInput(<rockhounding_chemistry:alloy_items_tech:4>*3)
	.addItemInput(<contenttweaker:rod_scal>*3)
	.build();

// BAM Scaffolding
mods.modularmachinery.RecipeBuilder.newBuilder("assemblermkone" + "_bam_scaffolding", "assemblermkone", 50)
	.addEnergyPerTickInput(500)
	.addItemOutput(<contenttweaker:bam_scaffolding>*9)
	.addItemInput(<rockhounding_chemistry:alloy_items_tech:7>*3)
	.addItemInput(<contenttweaker:rod_bam>*3)
	.build();

// Nimonic Scaffolding
mods.modularmachinery.RecipeBuilder.newBuilder("assemblermkone" + "_nimonic_scaffolding", "assemblermkone", 50)
	.addEnergyPerTickInput(500)
	.addItemOutput(<contenttweaker:nimonic_scaffolding>*9)
	.addItemInput(<rockhounding_chemistry:alloy_items_tech:16>*3)
	.addItemInput(<contenttweaker:rod_nimonic>*3)
	.build();

// Invar Scaffolding
mods.modularmachinery.RecipeBuilder.newBuilder("assemblermkone" + "_invar_scaffolding", "assemblermkone", 50)
	.addEnergyPerTickInput(500)
	.addItemOutput(<contenttweaker:invar_scaffolding>*9)
	.addItemInput(<thermalfoundation:material:162>*3)
	.addItemInput(<moreplates:invar_stick>*3)
	.build();

// Aluminium Scaffolding
mods.modularmachinery.RecipeBuilder.newBuilder("assemblermkone" + "_aluminium_scaffolding", "assemblermkone", 50)
	.addEnergyPerTickInput(500)
	.addItemOutput(<immersiveengineering:metal_decoration1:5>*9)
	.addItemInput(<thermalfoundation:material:132>*3)
	.addItemInput(<immersiveengineering:material:3>*3)
	.build();

// Nichrome Scaffolding
mods.modularmachinery.RecipeBuilder.newBuilder("assemblermkone" + "_nichrome_scaffolding", "assemblermkone", 50)
	.addEnergyPerTickInput(500)
	.addItemOutput(<jaopca:block_scaffoldingnichrome>*9)
	.addItemInput(<rockhounding_chemistry:alloy_items_tech:22>*3)
	.addItemInput(<jaopca:item_sticknichrome>*3)
	.build();

// Stainless Steel Scaffolding
mods.modularmachinery.RecipeBuilder.newBuilder("assemblermkone" + "_stainless_steel_scaffolding", "assemblermkone", 50)
	.addEnergyPerTickInput(500)
	.addItemOutput(<jaopca:block_scaffoldingstainlesssteel>*9)
	.addItemInput(<qmd:ingot_alloy:2>*3)
	.addItemInput(<jaopca:item_stickstainlesssteel>*3)
	.build();

// Syrmorite Scaffolding
mods.modularmachinery.RecipeBuilder.newBuilder("assemblermkone" + "_syrmorite_scaffolding", "assemblermkone", 50)
	.addEnergyPerTickInput(500)
	.addItemOutput(<jaopca:block_scaffoldingsyrmorite>*9)
	.addItemInput(<thebetweenlands:items_misc:11>*3)
	.addItemInput(<jaopca:item_sticksyrmorite>*3)
	.build();

// Thaumium Scaffolding
mods.modularmachinery.RecipeBuilder.newBuilder("assemblermkone" + "_thaumium_scaffolding", "assemblermkone", 50)
	.addEnergyPerTickInput(500)
	.addItemOutput(<jaopca:block_scaffoldingthaumium>*9)
	.addItemInput(<thaumcraft:ingot>*3)
	.addItemInput(<jaopca:item_stickthaumium>*3)
	.build();

// Miscellaneous Items //

// Basic Processor
mods.modularmachinery.RecipeBuilder.newBuilder("assemblermkone" + "_basic_processor", "assemblermkone", 100)
	.addEnergyPerTickInput(3000)
	.addItemOutput(<qmd:semiconductor:4>)
	.addItemInput(<qmd:semiconductor:1>)
	.addItemInput(<minecraft:redstone>*4)
	.addItemInput(<ore:ingotGold>)
	.addItemInput(<ore:ingotSilver>)
	.build();

// RFTools Quarry Card
mods.modularmachinery.RecipeBuilder.newBuilder("assemblermkone" + "_rftools_quarrycard", "assemblermkone", 500)
	.addEnergyPerTickInput(4000)
	.addItemOutput(<rftools:shape_card:2>)
	.addItemInput(<rftools:shape_card>)
	.addItemInput(<techreborn:part:6>*4)
	.addItemInput(<rockhounding_chemistry:misc_items:10>*4)
	.addItemInput(<qmd:semiconductor:4>*4)
    .addFluidInput(<liquid:liquid_nitrogen>*4000)
	.build();

##############################################
##
##           Advanced Assembling Machine (MK II)
##
##############################################

// --==Advanced Rocketry==-- //

// Circuits //

// Liquid IO Circuit Board
mods.modularmachinery.RecipeBuilder.newBuilder("assemblermktwo" + "_liquid_io_circuit_board", "assemblermktwo", 200)
	.addEnergyPerTickInput(15000)
	.addItemOutput(<advancedrocketry:ic:5>)
	.addItemInput(<moreplates:vivid_alloy_plate>*3)
	.addItemInput(<appliedenergistics2:material:55>)
	.addItemInput(<enderio:item_material:41>)
	.addItemInput(<techreborn:part:43>)
	.build();

// Control Circuit Board
mods.modularmachinery.RecipeBuilder.newBuilder("assemblermktwo" + "_control_circuit_board", "assemblermktwo", 200)
	.addEnergyPerTickInput(15000)
	.addItemOutput(<advancedrocketry:ic:3>)
	.addItemInput(<moreplates:vibrant_alloy_plate>*3)
	.addItemInput(<ore:circuitElite>)
	.addItemInput(<advgenerators:controller>)
	.addItemInput(<techreborn:part:43>)
	.build();

// Item IO Circuit Board
mods.modularmachinery.RecipeBuilder.newBuilder("assemblermktwo" + "_item_io_circuit_board", "assemblermktwo", 200)
	.addEnergyPerTickInput(15000)
	.addItemOutput(<advancedrocketry:ic:4>)
	.addItemInput(<moreplates:end_steel_plate>*3)
	.addItemInput(<rockhounding_chemistry:misc_items:10>)
	.addItemInput(<rockhounding_chemistry:misc_items:11>)
	.addItemInput(<techreborn:part:43>)
	.build();

// Basic Circuit Plate
mods.modularmachinery.RecipeBuilder.newBuilder("assemblermktwo" + "_basic_circuit_plate", "assemblermktwo", 100)
	.addEnergyPerTickInput(7500)
	.addItemOutput(<advancedrocketry:itemcircuitplate>)
	.addItemInput(<advancedrocketry:wafer>)
	.addItemInput(<contenttweaker:goldfoil>*4)
	.addItemInput(<advgenerators:iron_wiring>*2)
	.build();

// Advanced Circuit Plate
mods.modularmachinery.RecipeBuilder.newBuilder("assemblermktwo" + "_advanced_circuit_plate", "assemblermktwo", 200)
	.addEnergyPerTickInput(15000)
	.addItemOutput(<advancedrocketry:itemcircuitplate:1>)
	.addItemInput(<advancedrocketry:wafer>)
	.addItemInput(<techreborn:part:42>*4)
	.addItemInput(<actuallyadditions:item_misc:8>*2)
	.build();

// Data Storage Unit
mods.modularmachinery.RecipeBuilder.newBuilder("assemblermktwo" + "_data_storage_unit", "assemblermktwo", 400)
	.addEnergyPerTickInput(15000)
	.addItemOutput(<advancedrocketry:dataunit>)
	.addItemInput(<minecraft:redstone>)
	.addItemInput(<advancedrocketry:ic>)
	.addItemInput(<minecraft:emerald>)
	.build();

// Tracking Unit
mods.modularmachinery.RecipeBuilder.newBuilder("assemblermktwo" + "_tracking_unit", "assemblermktwo", 200)
	.addEnergyPerTickInput(7500)
	.addItemOutput(<advancedrocketry:ic:1>)
	.addItemInput(<minecraft:ender_eye>)
	.addItemInput(<minecraft:redstone>)
	.addItemInput(<advancedrocketry:itemcircuitplate>)
	.build();

// Space Elevator Chip
mods.modularmachinery.RecipeBuilder.newBuilder("assemblermktwo" + "_space_elevator_chip", "assemblermktwo", 200)
	.addEnergyPerTickInput(7500)
	.addItemOutput(<advancedrocketry:elevatorchip>)
	.addItemInput(<advancedrocketry:spacestationchip>)
	.addItemInput(<advancedrocketry:ic:1>)
	.build();



// Tools and Gadgets //

// Lens
mods.modularmachinery.RecipeBuilder.newBuilder("assemblermktwo" + "_lens", "assemblermktwo", 200)
	.addEnergyPerTickInput(15000)
	.addItemOutput(<advancedrocketry:blocklens>)
	.addItemInput(<minecraft:glass>*3)
	.addItemInput(<advancedrocketry:lens>*3)
	.addItemInput(<immersiveengineering:material:1>)
	.build();

// Atmosphere Analyser
mods.modularmachinery.RecipeBuilder.newBuilder("assemblermktwo" + "_atmosphere_analyser", "assemblermktwo", 200)
	.addEnergyPerTickInput(15000)
	.addItemOutput(<advancedrocketry:atmanalyser>)
	.addItemInput(<advancedrocketry:misc>)
	.addItemInput(<libvulpes:battery>)
	.addItemInput(<advancedrocketry:ic:2>)
	.addItemInput(<advancedrocketry:lens>)
	.addItemInput(<thermalfoundation:material:321>)
	.build();

// Beacon Finder
mods.modularmachinery.RecipeBuilder.newBuilder("assemblermktwo" + "_beacon_finder", "assemblermktwo", 200)
	.addEnergyPerTickInput(15000)
	.addItemOutput(<advancedrocketry:beaconfinder>)
	.addItemInput(<advancedrocketry:ic:1>)
	.addItemInput(<advancedrocketry:itemupgrade:4>)
	.build();

// Biome Changer Remote
mods.modularmachinery.RecipeBuilder.newBuilder("assemblermktwo" + "_biome_changer_remote", "assemblermktwo", 200)
	.addEnergyPerTickInput(15000)
	.addItemOutput(<advancedrocketry:biomechanger>)
	.addItemInput(<advancedrocketry:ic:1>)
	.addItemInput(<advancedrocketry:ic:2>)
	.addItemInput(<advancedrocketry:misc>)
	.addItemInput(<libvulpes:battery>)
	.addItemInput(<thermalfoundation:material:321>)
	.build();

// Biome Changer
mods.modularmachinery.RecipeBuilder.newBuilder("assemblermktwo" + "_biome_changer", "assemblermktwo", 200)
	.addEnergyPerTickInput(15000)
	.addItemOutput(<advancedrocketry:satelliteprimaryfunction:5>)
	.addItemInput(<libvulpes:productrod:4>*2)
	.addItemInput(<libvulpes:productrod:7>)
	.addItemInput(<advancedrocketry:wafer>)
	.addItemInput(<advancedrocketry:ic:2>)
	.build();


// Space Suit Upgrades //

// Bionic Leg Upgrade
mods.modularmachinery.RecipeBuilder.newBuilder("assemblermktwo" + "_bionic_leg_upgrade", "assemblermktwo", 400)
	.addEnergyPerTickInput(30000)
	.addItemOutput(<advancedrocketry:itemupgrade:2>)
	.addItemInput(<libvulpes:motor>)
	.addItemInput(<advancedrocketry:ic:2>)
	.addItemInput(<advancedrocketry:ic:3>)
	.build();

// Padded Landing Boots
mods.modularmachinery.RecipeBuilder.newBuilder("assemblermktwo" + "_padded_landing_boots", "assemblermktwo", 400)
	.addEnergyPerTickInput(30000)
	.addItemOutput(<advancedrocketry:itemupgrade:3>)
	.addItemInput(<advancedrocketry:ic:3>)
	.addItemInput(<advancedrocketry:ic:2>)
	.addItemInput(<minecraft:feather>)
	.addItemInput(<minecraft:leather_boots>)
	.build();

// Anti-Fog Visor
mods.modularmachinery.RecipeBuilder.newBuilder("assemblermktwo" + "_antifog_visor", "assemblermktwo", 400)
	.addEnergyPerTickInput(30000)
	.addItemOutput(<advancedrocketry:itemupgrade:4>)
	.addItemInput(<advancedrocketry:ic:3>)
	.addItemInput(<advancedrocketry:ic:2>)
	.addItemInput(<libvulpes:battery>)
	.addItemInput(<advancedrocketry:lens>)
	.build();

// Hover Upgrade
mods.modularmachinery.RecipeBuilder.newBuilder("assemblermktwo" + "_hover_upgrade", "assemblermktwo", 400)
	.addEnergyPerTickInput(30000)
	.addItemOutput(<advancedrocketry:itemupgrade>)
	.addItemInput(<advancedrocketry:ic:3>)
	.addItemInput(<advancedrocketry:ic:2>)
	.addItemInput(<minecraft:redstone>)
	.addItemInput(<minecraft:redstone_torch>)
	.build();

// Flight 速度 Control Upgrade
mods.modularmachinery.RecipeBuilder.newBuilder("assemblermktwo" + "_flight_速度_control_upgrade", "assemblermktwo", 400)
	.addEnergyPerTickInput(30000)
	.addItemOutput(<advancedrocketry:itemupgrade:1>)
	.addItemInput(<advancedrocketry:ic:3>)
	.addItemInput(<advancedrocketry:ic:2>)
	.addItemInput(<minecraft:diamond>)
	.addItemInput(<minecraft:fire_charge>)
	.build();

// --==AE2==-- //

// Logic Processor
mods.modularmachinery.RecipeBuilder.newBuilder("assemblermktwo" + "_logic_processor", "assemblermktwo", 50)
	.addEnergyPerTickInput(2500)
	.addItemOutput(<appliedenergistics2:material:22>)
	.addItemInput(<nuclearcraft:gem:6>)
	.addItemInput(<minecraft:redstone>)
	.addItemInput(<minecraft:gold_ingot>)
	.build();

// Calculation Processor
mods.modularmachinery.RecipeBuilder.newBuilder("assemblermktwo" + "_calculation_processor", "assemblermktwo", 50)
	.addEnergyPerTickInput(2500)
	.addItemOutput(<appliedenergistics2:material:23>)
	.addItemInput(<nuclearcraft:gem:6>)
	.addItemInput(<minecraft:redstone>)
	.addItemInput(<appliedenergistics2:material:10>)
	.build();

// Engineering Processor
mods.modularmachinery.RecipeBuilder.newBuilder("assemblermktwo" + "_engineering_processor", "assemblermktwo", 50)
	.addEnergyPerTickInput(2500)
	.addItemOutput(<appliedenergistics2:material:24>)
	.addItemInput(<nuclearcraft:gem:6>)
	.addItemInput(<minecraft:redstone>)
	.addItemInput(<minecraft:diamond>)
	.build();

// Massively Parallel Processor
mods.modularmachinery.RecipeBuilder.newBuilder("assemblermktwo" + "_massively_parallel_processor", "assemblermktwo", 100)
	.addEnergyPerTickInput(15000)
	.addItemOutput(<threng:material:6>)
	.addItemInput(<nuclearcraft:gem:6>)
	.addItemInput(<minecraft:redstone>)
	.addItemInput(<threng:material:5>)
	.build();

// Speculative Processor
mods.modularmachinery.RecipeBuilder.newBuilder("assemblermktwo" + "_speculative_processor", "assemblermktwo", 400)
	.addEnergyPerTickInput(50000)
	.addItemOutput(<threng:material:14>)
	.addItemInput(<nuclearcraft:gem:6>)
	.addItemInput(<minecraft:redstone>)
	.addItemInput(<threng:material:13>)
	.build();

// Fluix Logic Unit
mods.modularmachinery.RecipeBuilder.newBuilder("assemblermktwo" + "_fluix_logic_unit", "assemblermktwo", 100)
	.addEnergyPerTickInput(15000)
	.addItemOutput(<threng:material:4>)
	.addItemInput(<threng:material>*4)
	.addItemInput(<appliedenergistics2:material:22>)
	.addItemInput(<appliedenergistics2:material:24>)
	.addItemInput(<rockhounding_chemistry:misc_items:10>)
	.build();



// --==QMD==-- //

// Advanced Processor
mods.modularmachinery.RecipeBuilder.newBuilder("assemblermktwo" + "_advanced_processor", "assemblermktwo", 100)
	.addEnergyPerTickInput(15000)
	.addItemOutput(<qmd:semiconductor:5>)
	.addItemInput(<qmd:semiconductor:4>)
	.addItemInput(<minecraft:redstone>*4)
	.addItemInput(<qmd:chemical_dust:5>)
	.addItemInput(<qmd:semiconductor>)
	.build();

// Plastic Scintillator
mods.modularmachinery.RecipeBuilder.newBuilder("assemblermktwo" + "_plastic_scintillator", "assemblermktwo", 100)
	.addEnergyPerTickInput(7500)
	.addItemOutput(<qmd:part:3>)
	.addItemInput(<nuclearcraft:part:6>*2)
	.addItemInput(<ore:dyeBlue>)
	.build();

// Gold Plated Tungsten Wire
mods.modularmachinery.RecipeBuilder.newBuilder("assemblermktwo" + "_goldtungsten_wire", "assemblermktwo", 100)
	.addEnergyPerTickInput(7500)
	.addItemOutput(<qmd:part:6>*6)
	.addItemInput(<ore:ingotTungsten>, 4)
	.addItemInput(<ore:ingotGold>, 2)
	.build();

// Tungsten Filament
mods.modularmachinery.RecipeBuilder.newBuilder("assemblermktwo" + "_tungsten_filament", "assemblermktwo", 100)
	.addEnergyPerTickInput(7500)
	.addItemOutput(<qmd:source>.withTag({storage: {amount: 6000}}))
	.addItemInput(<ore:ingotTungsten>, 2)
	.build();

// Miscellaneous Items //

// Machine Circuitry
mods.modularmachinery.RecipeBuilder.newBuilder("assemblermktwo" + "_machine_circuitry", "assemblermktwo", 400)
	.addEnergyPerTickInput(10000)
	.addItemOutput(<modularmachinery:blockcasing:5>)
	.addItemInput(<advancedrocketry:ic:5>)
	.addItemInput(<advancedrocketry:ic:3>)
	.addItemInput(<advancedrocketry:ic:4>)
	.addItemInput(<modularmachinery:blockcasing>)
	.addFluidInput(<liquid:liquid_nitrogen>*2000)
	.build();

// Connectors
mods.modularmachinery.RecipeBuilder.newBuilder("assemblermktwo" + "_connector", "assemblermktwo", 200)
	.addEnergyPerTickInput(30000)
	.addItemOutput(<environmentaltech:connector>)
	.addItemInput(<powersuits:powerarmorcomponent:6>)
	.addItemInput(<techreborn:part:28>)
	.addItemInput(<nuclearcraft:part:2>)
	.addItemInput(<advgenerators:iron_wiring>*2)
	.build();

##############################################
##
##           Elite Assembling Machine (MK III)
##
##############################################

// Mekanism Laser Acceptor
mods.modularmachinery.RecipeBuilder.newBuilder("assemblermkthree" + "_mekanism_laser_acceptor", "assemblermkthree", 400)
	.addEnergyPerTickInput(400000)
	.addItemOutput(<modulardiversity:blockmeklaseracceptor>)
	.addItemInput(<modularmachinery:blockcasing:4>)
	.addItemInput(<environmentaltech:laser_core>*2)
	.addItemInput(<rockhounding_chemistry:alloy_parts:34>*4)
	.addItemInput(<mekanismgenerators:reactorglass:1>*2)
	.addFluidInput(<liquid:liquid_nitrogen>*4000)
	.build();

// Highly Advanced Machine Frame
mods.modularmachinery.RecipeBuilder.newBuilder("assemblermkthree" + "_highly_advanced_machine_frame", "assemblermkthree", 50)
	.addEnergyPerTickInput(200000)
	.addItemOutput(<techreborn:machine_frame:2>)
	.addItemInput(<techreborn:machine_frame:1>)
	.addItemInput(<jaopca:item_gearsuperalloy>*4)
	.addItemInput(<techreborn:plates:38>*4)
	.addFluidInput(<liquid:liquid_nitrogen>*4000)
	.build();

// Lapotron Crystal
mods.modularmachinery.RecipeBuilder.newBuilder("assemblermkthree" + "_lapotron_crystal", "assemblermkthree", 50)
	.addEnergyPerTickInput(120000)
	.addItemOutput(<techreborn:lapotroncrystal>*4)
	.addItemInput(<contenttweaker:lazurite_gem>)
	.addItemInput(<ore:circuitAdvanced>)
	.addFluidInput(<liquid:lapis>*4000)
	.build();

// Lapotronic Energy Orb
mods.modularmachinery.RecipeBuilder.newBuilder("assemblermkthree" + "_lapotronic_energy_orb", "assemblermkthree", 100)
	.addEnergyPerTickInput(240000)
	.addItemOutput(<techreborn:lapotronicorb>*4)
	.addItemInput(<ore:lapotronCrystal>,8)
	.addItemInput(<ore:plateiridiumAlloy>)
	.addFluidInput(<liquid:lapis>*8000)
	.build();

// EV Capacitor
mods.modularmachinery.RecipeBuilder.newBuilder("assemblermkthree" + "_ev_capacitor", "assemblermkthree", 200)
	.addEnergyPerTickInput(480000)
	.addItemOutput(<powersuits:powerarmorcomponent:8>*4)
	.addItemInput(<ore:componentWiring>,6)
	.addItemInput(<ore:componentHVCapacitor>,2)
	.addItemInput(<ore:componentComputerChip>)
	.addFluidInput(<liquid:liquid_nitrogen>*2000)
	.build();

// BSCCO Dust
mods.modularmachinery.RecipeBuilder.newBuilder("assemblermkthree" + "_bscco_dust", "assemblermkthree", 50)
	.addEnergyPerTickInput(60000)
	.addItemOutput(<qmd:chemical_dust:1>*3)
	.addItemInput(<ore:dustBismuth>, 2)
	.addItemInput(<qmd:dust:14>*2)
	.addItemInput(<ore:dustCalcium>, 2)
	.addItemInput(<qmd:chemical_dust:4>*3)
	.build();

// BSCCO Wire
mods.modularmachinery.RecipeBuilder.newBuilder("assemblermkthree" + "_bscco_wire", "assemblermkthree", 50)
	.addEnergyPerTickInput(60000)
	.addItemOutput(<qmd:part:4>*6)
	.addItemInput(<qmd:chemical_dust:1>*3)
	.addItemInput(<ore:ingotSilver>, 6)
	.build();

// Elite Processor
mods.modularmachinery.RecipeBuilder.newBuilder("assemblermkthree" + "_elite_processor", "assemblermkthree", 50)
	.addEnergyPerTickInput(120000)
	.addItemOutput(<qmd:semiconductor:6>)
	.addItemInput(<qmd:semiconductor:5>)
	.addItemInput(<qmd:part:4>*4)
	.addItemInput(<qmd:chemical_dust:5>)
	.addItemInput(<ore:ingotPlatinum>)
	.build();

// Neodymium Magnet
mods.modularmachinery.RecipeBuilder.newBuilder("assemblermkthree" + "_neodymium_magnet", "assemblermkthree", 50)
	.addEnergyPerTickInput(60000)
	.addItemOutput(<qmd:part:8>)
	.addItemInput(<ore:ingotFerroboron>, 2)
	.addItemInput(<ore:ingotNeodymium>)
	.build();

##############################################
##
##           Mass Manufacturer (MK IV)
##
##############################################

//--== MK I Recipes for MK IV assembler ==--//

// Because MM is buggy and adapters for recipes that are too short cause JEI to crash

// Tech Reborn Circuits //

// Basic Circuit Board
mods.modularmachinery.RecipeBuilder.newBuilder("assemblermkfour" + "_basic_circuit_board_1", "assemblermkfour", 1)
	.addEnergyPerTickInput(320000)
	.addItemOutput(<techreborn:part:40>*2)
	.addItemInput(<techreborn:plates:35>)
	.addItemInput(<ore:plateElectrum>, 2)
	.build();

mods.modularmachinery.RecipeBuilder.newBuilder("assemblermkfour" + "_basic_circuit_board_2", "assemblermkfour", 1)
	.addEnergyPerTickInput(320000)
	.addItemOutput(<techreborn:part:40>*2)
	.addItemInput(<ore:plateAluminum>)
	.addItemInput(<ore:plateElectrum>, 2)
	.build();

// Electronic Circuit
mods.modularmachinery.RecipeBuilder.newBuilder("assemblermkfour" + "_electronic_circuit_1", "assemblermkfour", 1)
	.addEnergyPerTickInput(640000)
	.addItemOutput(<techreborn:part:29>)
	.addItemInput(<techreborn:part:40>)
	.addItemInput(<techreborn:cable:5>*3)
	.build();

mods.modularmachinery.RecipeBuilder.newBuilder("assemblermkfour" + "_electronic_circuit_2", "assemblermkfour", 1)
	.addEnergyPerTickInput(640000)
	.addItemOutput(<techreborn:part:29>)
	.addItemInput(<powersuits:powerarmorcomponent>*4)
	.addItemInput(<minecraft:redstone>*2)
    .addItemInput(<techreborn:plates:35>)
	.build();

// Advanced Circuit Board
mods.modularmachinery.RecipeBuilder.newBuilder("assemblermkfour" + "_advanced_circuit_board_1", "assemblermkfour", 1)
	.addEnergyPerTickInput(640000)
	.addItemOutput(<techreborn:part:41>*2)
	.addItemInput(<ore:waferSilicon>)
	.addItemInput(<ore:plateElectrum>, 4)
	.build();

mods.modularmachinery.RecipeBuilder.newBuilder("assemblermkfour" + "_advanced_circuit_board_2", "assemblermkfour", 1)
	.addEnergyPerTickInput(640000)
	.addItemOutput(<techreborn:part:41>)
	.addItemInput(<ore:circuitBasic>)
	.addItemInput(<ore:plateElectrum>, 2)
	.build();

// Advanced Circuit Parts
mods.modularmachinery.RecipeBuilder.newBuilder("assemblermkfour" + "_advanced_circuit_parts_1", "assemblermkfour", 1)
	.addEnergyPerTickInput(640000)
	.addItemOutput(<techreborn:part:42>*2)
	.addItemInput(<techreborn:dust:48>)
	.addItemInput(<minecraft:glowstone_dust>)
	.addItemInput(<advgenerators:iron_tubing>)
	.build();

mods.modularmachinery.RecipeBuilder.newBuilder("assemblermkfour" + "_advanced_circuit_parts_2", "assemblermkfour", 1)
	.addEnergyPerTickInput(640000)
	.addItemOutput(<techreborn:part:42>)
	.addItemInput(<techreborn:dust:28>*2)
	.addItemInput(<minecraft:glowstone_dust>)
	.addItemInput(<advgenerators:iron_tubing>)
	.build();

// Advanced Electronic Circuit
mods.modularmachinery.RecipeBuilder.newBuilder("assemblermkfour" + "_advanced_electronic_circuit", "assemblermkfour", 1)
	.addEnergyPerTickInput(1280000)
	.addItemOutput(<techreborn:part:30>)
	.addItemInput(<techreborn:part:41>)
	.addItemInput(<techreborn:part:42>*2)
	.build();

// Processor Circuit Board
mods.modularmachinery.RecipeBuilder.newBuilder("assemblermkfour" + "_processor_circuit_board", "assemblermkfour", 1)
	.addEnergyPerTickInput(1280000)
	.addItemOutput(<techreborn:part:43>)
	.addItemInput(<ore:circuitAdvanced>)
	.addItemInput(<ore:platePlatinum>)
	.build();

// Data Storage Circuit
mods.modularmachinery.RecipeBuilder.newBuilder("assemblermkfour" + "_data_storage_circuit_1", "assemblermkfour", 1)
	.addEnergyPerTickInput(1280000)
	.addItemOutput(<techreborn:part:2>*4)
	.addItemInput(<ore:circuitAdvanced>)
	.addItemInput(<ore:gemEmerald>, 8)
	.build();

mods.modularmachinery.RecipeBuilder.newBuilder("assemblermkfour" + "_data_storage_circuit_2", "assemblermkfour", 1)
	.addEnergyPerTickInput(1280000)
	.addItemOutput(<techreborn:part:2>*4)
	.addItemInput(<ore:circuitAdvanced>)
	.addItemInput(<ore:gemPeridot>, 8)
	.build();

mods.modularmachinery.RecipeBuilder.newBuilder("assemblermkfour" + "_data_storage_circuit_3", "assemblermkfour", 1)
	.addEnergyPerTickInput(1280000)
	.addItemOutput(<techreborn:part:2>*4)
	.addItemInput(<ore:circuitAdvanced>)
	.addItemInput(<ore:dustEmerald>, 8)
	.build();

mods.modularmachinery.RecipeBuilder.newBuilder("assemblermkfour" + "_data_storage_circuit_4", "assemblermkfour", 1)
	.addEnergyPerTickInput(1280000)
	.addItemOutput(<techreborn:part:2>*4)
	.addItemInput(<ore:circuitAdvanced>)    
	.addItemInput(<ore:dustPeridot>, 8)
	.build();

// Data Control Circuit
mods.modularmachinery.RecipeBuilder.newBuilder("assemblermkfour" + "_data_control_circuit", "assemblermkfour", 1)
	.addEnergyPerTickInput(1600000)
	.addItemOutput(<techreborn:part:1>)
	.addItemInput(<techreborn:part:43>)    
	.addItemInput(<techreborn:part:2>)
	.build();

// Energy Flow Circuit
mods.modularmachinery.RecipeBuilder.newBuilder("assemblermkfour" + "_energy_flow_circuit", "assemblermkfour", 1)
	.addEnergyPerTickInput(1600000)
	.addItemOutput(<techreborn:part>)
	.addItemInput(<techreborn:part:43>)
	.addItemInput(<techreborn:lapotroncrystal>)
	.build();

// Data Orb
mods.modularmachinery.RecipeBuilder.newBuilder("assemblermkfour" + "_data_orb", "assemblermkfour", 2)
	.addEnergyPerTickInput(3200000)
	.addItemOutput(<techreborn:part:3>)
	.addItemInput(<techreborn:part:1>)
	.addItemInput(<techreborn:part:2>*8)
	.build();

// Gold Cable
mods.modularmachinery.RecipeBuilder.newBuilder("assemblermkfour" + "_gold_cable", "assemblermkfour", 1)
	.addEnergyPerTickInput(160000)
	.addItemOutput(<techreborn:cable:6>)
	.addItemInput(<techreborn:cable:2>)
	.addItemInput(<ore:itemRubber>)
	.build();



// AA Coils //

// Basic Coil
mods.modularmachinery.RecipeBuilder.newBuilder("assemblermkfour" + "_basic_coil_1", "assemblermkfour", 1)
	.addEnergyPerTickInput(320000)
	.addItemOutput(<actuallyadditions:item_misc:7>)
	.addItemInput(<immersiveengineering:wirecoil>*4)
	.addItemInput(<actuallyadditions:item_crystal>)
	.build();

mods.modularmachinery.RecipeBuilder.newBuilder("assemblermkfour" + "_basic_coil_2", "assemblermkfour", 1)
	.addEnergyPerTickInput(320000)
	.addItemOutput(<actuallyadditions:item_misc:7>*2)
	.addItemInput(<immersiveengineering:wirecoil:1>*4)
	.addItemInput(<actuallyadditions:item_crystal>)
	.build();

mods.modularmachinery.RecipeBuilder.newBuilder("assemblermkfour" + "_basic_coil_3", "assemblermkfour", 1)
	.addEnergyPerTickInput(320000)
	.addItemOutput(<actuallyadditions:item_misc:7>*4)
	.addItemInput(<immersiveengineering:wirecoil:2>*4)
	.addItemInput(<actuallyadditions:item_crystal>)
	.build();

// Advanced Coil
mods.modularmachinery.RecipeBuilder.newBuilder("assemblermkfour" + "_advanced_coil", "assemblermkfour", 1)
	.addEnergyPerTickInput(480000)
	.addItemOutput(<actuallyadditions:item_misc:8>)
	.addItemInput(<techreborn:cable:6>*4)
	.addItemInput(<actuallyadditions:item_misc:7>)
	.build();



// Thermal Coils

// Redstone Reception Coil
mods.modularmachinery.RecipeBuilder.newBuilder("assemblermkfour" + "_reception_coil", "assemblermkfour", 1)
	.addEnergyPerTickInput(720000)
	.addItemOutput(<thermalfoundation:material:513>)
	.addItemInput(<advgenerators:iron_wiring>*2)
	.addItemInput(<moreplates:gold_stick>)
	.build();

// Redstone Transmission Coil
mods.modularmachinery.RecipeBuilder.newBuilder("assemblermkfour" + "_transmission_coil", "assemblermkfour", 1)
	.addEnergyPerTickInput(720000)
	.addItemOutput(<thermalfoundation:material:514>)
	.addItemInput(<advgenerators:iron_wiring>*2)
	.addItemInput(<moreplates:silver_stick>)
	.build();

// Redstone Conductance Coil
mods.modularmachinery.RecipeBuilder.newBuilder("assemblermkfour" + "_conductance_coil", "assemblermkfour", 1)
	.addEnergyPerTickInput(720000)
	.addItemOutput(<thermalfoundation:material:515>)
	.addItemInput(<advgenerators:iron_wiring>*2)
	.addItemInput(<moreplates:electrum_stick>)
	.build();



// Scaffoldings //

// Vanasteel Scaffolding
mods.modularmachinery.RecipeBuilder.newBuilder("assemblermkfour" + "_vanasteel_scaffolding", "assemblermkfour", 1)
	.addEnergyPerTickInput(180000)
	.addItemOutput(<contenttweaker:vanasteel_scaffolding>*9)
	.addItemInput(<rockhounding_chemistry:alloy_items_tech:40>*3)
	.addItemInput(<contenttweaker:rod_vanasteel>*3)
	.build();

// Steel Scaffolding
mods.modularmachinery.RecipeBuilder.newBuilder("assemblermkfour" + "_steel_scaffolding", "assemblermkfour", 1)
	.addEnergyPerTickInput(180000)
	.addItemOutput(<immersiveengineering:metal_decoration1:1>*9)
	.addItemInput(<thermalfoundation:material:160>*3)
	.addItemInput(<immersiveengineering:material:2>*3)
	.build();

// ScAl Scaffolding
mods.modularmachinery.RecipeBuilder.newBuilder("assemblermkfour" + "_scal_scaffolding", "assemblermkfour", 1)
	.addEnergyPerTickInput(180000)
	.addItemOutput(<contenttweaker:scal_scaffolding>*9)
	.addItemInput(<rockhounding_chemistry:alloy_items_tech:4>*3)
	.addItemInput(<contenttweaker:rod_scal>*3)
	.build();

// BAM Scaffolding
mods.modularmachinery.RecipeBuilder.newBuilder("assemblermkfour" + "_bam_scaffolding", "assemblermkfour", 1)
	.addEnergyPerTickInput(180000)
	.addItemOutput(<contenttweaker:bam_scaffolding>*9)
	.addItemInput(<rockhounding_chemistry:alloy_items_tech:7>*3)
	.addItemInput(<contenttweaker:rod_bam>*3)
	.build();

// Nimonic Scaffolding
mods.modularmachinery.RecipeBuilder.newBuilder("assemblermkfour" + "_nimonic_scaffolding", "assemblermkfour", 1)
	.addEnergyPerTickInput(180000)
	.addItemOutput(<contenttweaker:nimonic_scaffolding>*9)
	.addItemInput(<rockhounding_chemistry:alloy_items_tech:16>*3)
	.addItemInput(<contenttweaker:rod_nimonic>*3)
	.build();

// Invar Scaffolding
mods.modularmachinery.RecipeBuilder.newBuilder("assemblermkfour" + "_invar_scaffolding", "assemblermkfour", 1)
	.addEnergyPerTickInput(180000)
	.addItemOutput(<contenttweaker:invar_scaffolding>*9)
	.addItemInput(<thermalfoundation:material:162>*3)
	.addItemInput(<moreplates:invar_stick>*3)
	.build();

// Aluminium Scaffolding
mods.modularmachinery.RecipeBuilder.newBuilder("assemblermkfour" + "_aluminium_scaffolding", "assemblermkfour", 1)
	.addEnergyPerTickInput(180000)
	.addItemOutput(<immersiveengineering:metal_decoration1:5>*9)
	.addItemInput(<thermalfoundation:material:132>*3)
	.addItemInput(<immersiveengineering:material:3>*3)
	.build();

// Nichrome Scaffolding
mods.modularmachinery.RecipeBuilder.newBuilder("assemblermkfour" + "_nichrome_scaffolding", "assemblermkfour", 1)
	.addEnergyPerTickInput(180000)
	.addItemOutput(<jaopca:block_scaffoldingnichrome>*9)
	.addItemInput(<rockhounding_chemistry:alloy_items_tech:22>*3)
	.addItemInput(<jaopca:item_sticknichrome>*3)
	.build();

// Stainless Steel Scaffolding
mods.modularmachinery.RecipeBuilder.newBuilder("assemblermkfour" + "_stainless_steel_scaffolding", "assemblermkfour", 1)
	.addEnergyPerTickInput(180000)
	.addItemOutput(<jaopca:block_scaffoldingstainlesssteel>*9)
	.addItemInput(<qmd:ingot_alloy:2>*3)
	.addItemInput(<jaopca:item_stickstainlesssteel>*3)
	.build();

// Syrmorite Scaffolding
mods.modularmachinery.RecipeBuilder.newBuilder("assemblermkfour" + "_syrmorite_scaffolding", "assemblermkfour", 1)
	.addEnergyPerTickInput(180000)
	.addItemOutput(<jaopca:block_scaffoldingsyrmorite>*9)
	.addItemInput(<thebetweenlands:items_misc:11>*3)
	.addItemInput(<jaopca:item_sticksyrmorite>*3)
	.build();

// Thaumium Scaffolding
mods.modularmachinery.RecipeBuilder.newBuilder("assemblermkfour" + "_thaumium_scaffolding", "assemblermkfour", 1)
	.addEnergyPerTickInput(180000)
	.addItemOutput(<jaopca:block_scaffoldingthaumium>*9)
	.addItemInput(<thaumcraft:ingot>*3)
	.addItemInput(<jaopca:item_stickthaumium>*3)
	.build();

// Miscellaneous Items //

// Basic Processor
mods.modularmachinery.RecipeBuilder.newBuilder("assemblermkfour" + "_basic_processor", "assemblermkfour", 1)
	.addEnergyPerTickInput(960000)
	.addItemOutput(<qmd:semiconductor:4>)
	.addItemInput(<qmd:semiconductor:1>)
	.addItemInput(<minecraft:redstone>*4)
	.addItemInput(<ore:ingotGold>)
	.addItemInput(<ore:ingotSilver>)
	.build();

// RFTools Quarry Card
mods.modularmachinery.RecipeBuilder.newBuilder("assemblermkfour" + "_rftools_quarrycard", "assemblermkfour", 2)
	.addEnergyPerTickInput(1280000)
	.addItemOutput(<rftools:shape_card:2>)
	.addItemInput(<rftools:shape_card>)
	.addItemInput(<techreborn:part:6>*4)
	.addItemInput(<rockhounding_chemistry:misc_items:10>*4)
	.addItemInput(<qmd:semiconductor:4>*4)
    .addFluidInput(<liquid:liquid_nitrogen>*4000)
	.build();

##############################################
##
##           Assembling Machine Upgrade Tooltips/JEI Descriptions
##
##############################################

// Basic Assembling Machine Modifiers //

// Tooltips
var t1modifiers as IItemStack[] = [
<techreborn:storage2:10>,
<thermalfoundation:storage:6>,
<thermalfoundation:storage_alloy:7>,
<mekanism:basicblock>,
<plustic:osgloglasblock>
];

for item in t1modifiers {
	item.addTooltip(format.white("可用于强化基础装配机"));
}

// JEI Descriptions
addDescription(<techreborn:storage2:10>, "用于强化基础装配机时：", "无强化效果");
addDescription(<thermalfoundation:storage:6>, "用于强化基础装配机时：", "2x 速度, 2.67x 能量消耗");
addDescription(<thermalfoundation:storage_alloy:7>, "用于强化基础装配机时：", "2.5x 速度, 5x 能量消耗");
addDescription(<mekanism:basicblock>, "用于强化基础装配机时：", "3x 速度, 4x 能量消耗");
addDescription(<plustic:osgloglasblock>, "用于强化基础装配机时：", "3.75x 速度, 7.5x 能量消耗");


addDescription(<modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:assemblermkone"}), 
"中心方块变动时：",
"铂：2x 速度, 2.67x 能量消耗",
"末影: 2.5x 速度, 5x 能量消耗",
"锇: 3x 速度, 4x 能量消耗",
"锇荧黑曜合金: 3.75x 速度, 7.5x 能量消耗");

// Advanced Assembling Machine Modifiers //

// Tooltips
var t2modifiers as IItemStack[] = [
<techreborn:storage:2>,
<techreborn:storage:10>,
<techreborn:storage2>,
<thermalfoundation:storage:7>,
<plustic:osmiridiumblock>,
<enderio:block_alloy_endergy:3>
];

for item in t2modifiers {
	item.addTooltip(format.white("可用于强化高级装配机"));
}

// JEI Descriptions
addDescription(<techreborn:storage:2>, "用于强化基础装配机时：", "无强化效果");
addDescription(<techreborn:storage:10>, "用于强化基础装配机时：", "无强化效果");
addDescription(<techreborn:storage2>, "用于强化基础装配机时：", "1.5x 速度, 3x 能量消耗");
addDescription(<thermalfoundation:storage:7>, "用于强化基础装配机时：", "3x 速度, 4x 能量消耗");
addDescription(<plustic:osmiridiumblock>, "用于强化基础装配机时：", "3.75x 速度, 7.5x 能量消耗");
addDescription(<enderio:block_alloy_endergy:3>, "用于强化基础装配机时：", "4.8x 速度, 1.2x 流体消耗, 10.8x 能量消耗");


addDescription(<modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:assemblermktwo"}), 
"中心方块变动时：",
"钨钢：1.5x 速度, 3x 能量消耗",
"铱：3x 速度, 4x 能量消耗",
"铱锇合金：3.75x 速度, 7.5x 能量消耗",
"恒星合金：4.8x 速度, 1.2x 流体消耗, 10.8x 能量消耗");

// Elite Assembling Machine Modifiers //

// Tooltips
var t3modifiers as IItemStack[] = [
<extendedcrafting:storage>,
<extendedcrafting:storage:3>,
<extendedcrafting:storage:7>
];

for item in t3modifiers {
	item.addTooltip(format.blue("可用于强化精英装配机"));
}

// JEI Descriptions
addDescription(<extendedcrafting:storage>, "用于强化基础装配机时：", "无强化效果");
addDescription(<extendedcrafting:storage:3>, "用于强化基础装配机时：", "2x 速度, 2.66x 能量消耗");
addDescription(<extendedcrafting:storage:7>, "用于强化基础装配机时：", "2.5x 速度, 5x 能量消耗");


addDescription(<modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:assemblermkthree"}), 
"中心方块变动时：",
"晶素锭: 2x 速度, 2.66x 能量消耗",
"暮色金属锭: 2.5x 速度, 5x 能量消耗",
"水晶矩阵: 3x 速度, 4x 能量消耗",
"终极锭: 3.75x 速度, 1.3x 流体消耗, 7.5x 能量消耗");


// Mass Manufacturer Modifiers //

// Tooltips
var t4modifiers as IItemStack[] = [
<avaritia:block_resource>,
<avaritia:block_resource:1>
];

for item in t4modifiers {
	item.addTooltip(format.aqua("批量装配机"));
}

var t34modifiers as IItemStack[] = [
<avaritia:block_resource:2>,
<extendedcrafting:storage:4>
];

for item in t34modifiers {
	item.addTooltip(format.aqua("可用于强化精英装配机和批量装配机"));
}

// JEI Descriptions
addDescription(<avaritia:block_resource>, "用于强化批量装配机时：", "4倍化配方输入输出, 3x 能量消耗");
addDescription(<avaritia:block_resource:1>, "用于强化批量装配机时：", "16倍化配方输入输出, 25%概率不消耗流体, 4x 能量消耗");

addDescription(<avaritia:block_resource:2>, "可用于强化精英装配机和批量装配机。", "", "用于强化精英装配机时：", 
"3x 速度, 4x 能量消耗", "", "用于强化批量装配机时：", "无强化效果");
addDescription(<extendedcrafting:storage:4>, "可用于强化精英装配机和批量装配机。", "", "用于强化精英装配机时：", 
"3.75x 速度, 1.3x 流体消耗，7.5x 能量消耗", "", "用于强化批量装配机时：", "2倍化配方输入输出, 2x 能量消耗");



addDescription(<modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:assemblermkfour"}), 
"中心方块变动时：",
"终极锭: 2倍化配方输入输出, 2x 能量消耗",
"中子素: 4倍化配方输入输出, 3x 能量消耗",
"无尽之锭: 16倍化配方输入输出, 25%概率不消耗流体, 4x 能量消耗");

/*
// Special Modifiers //

// Tooltips

var specialmodifiers as IItemStack[] = [
<nuclearcraft:fertile_isotope:5>,
<nuclearcraft:fertile_isotope:6>,
<rockhounding_chemistry:alloy_blocks_tech:15>,
<rockhounding_chemistry:alloy_blocks_deco>,
<rockhounding_chemistry:alloy_blocks_deco:11>
];

for item in specialmodifiers {
	item.addTooltip(format.aqua("Assembling Machine Special Modifier"));
}

//JEI Descriptions
addDescription(<nuclearcraft:fertile_isotope:5>, "Can be used in all Assembling Machine multiblocks.", "", "When used as Assembling Machine Modifier:", "10%概率不消耗流体, 1.5x 能量消耗");
addDescription(<nuclearcraft:fertile_isotope:6>, "Can be used in all Assembling Machine multiblocks above Advanced tier.", "", "When used as Assembling Machine Modiffier:", 
"20%概率不消耗流体, 2x 能量消耗");
addDescription(<rockhounding_chemistry:alloy_blocks_tech:15>, "Can be used in all Assembling Machine multiblocks except Mass Manufacturer.", "", "When used as Assembling Machine Modifier:", 
"0.5x 速度, 0.5x 能量消耗");
addDescription(<rockhounding_chemistry:alloy_blocks_deco>, "Can be used in all Assembling Machine multiblocks except Mass Manufacturer.", "", "When used as Assembling Machine Modifier:", 
"0.125x 速度, 0.0625x 能量消耗");
addDescription(<rockhounding_chemistry:alloy_blocks_deco:11>, "Can be used in both Advanced Assembling Machine and Elite Assembling Machine", "", "When used as Assembling Machine Modifier:", 
"5x 速度, 5.5x 能量消耗, 5% chance for item outputs to be destroyed");

*/

##########################################################################################
print("==================== end of assemblerrecipes.zs ====================");
