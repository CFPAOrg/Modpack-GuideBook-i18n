import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

	#Category Removals
var hideCategories = [
	#Actually Additions
	"actuallyadditions.crushing",
	"actuallyadditions.reconstructor",
	"actuallyadditions.empowerer",
	"actuallyadditions.booklet",
	"actuallyadditions.reconstructor",

	#Advanced Rocketry
	"zmaster587.AR.electrolyzer",
	"zmaster587.AR.lathe",
	"zmaster587.AR.chemicalReactor",


	#Artisan Worktabble
	"artisanworktables_basic_workstation",
	"artisanworktables_basic_workshop",

	#Applied Energistics
	"appliedenergistics2.inscriber",
	"appliedenergistics2.condenser",
	
	#Botania
	"botania.orechid",
	"botania.orechid_ignem",

	#Avaritia
	"Avatitia.Extreme",

	#EIO
	"EIOWC",
	"Vat",
	"EIOWO",
	//"Painter",
	"SagMill",
	"GrindingBall",

	#Extra Utils 2
	"xu2_machine_extrautils2:enchanter",
	//"extrautils2.resonator",
	"extrautils2.terraformer",
	"xu2_machine_extrautils2:furnace",
	"xu2_machine_extrautils2:crusher",
	"xu2_machine_extrautils2:enchanter",
	"xu2_machine_extrautils2:generator_survival",
	"xu2_machine_extrautils2:generator",
	"xu2_machine_extrautils2:generator_culinary",
	"xu2_machine_extrautils2:generator_lava",
	"xu2_machine_extrautils2:generator_redstone",
	"xu2_machine_extrautils2:generator_ender",
	"xu2_machine_extrautils2:generator_potion",
	"xu2_machine_extrautils2:generator_pink",
	"xu2_machine_extrautils2:generator_overclock",
	"xu2_machine_extrautils2:generator_tnt",
	"xu2_machine_extrautils2:generator_netherstar",
	"xu2_machine_extrautils2:generator_dragonsbreath",
	"xu2_machine_extrautils2:generator_ice",
	"xu2_machine_extrautils2:generator_death",
	"xu2_machine_extrautils2:generator_enchant",
	"xu2_machine_extrautils2:generator_slime",

	#Industrial Foregoing
	"protein_reactor_accepted_items",

	#Mekanism 
	#"mekanism.crusher",
	#"mekanism.chemical_crystallizer",
	#"mekanism.chemical_dissolution_chamber",
	#"mekanism.chemical_infuser",
	#"mekanism.chemical_oxidizer",
	#"mekanism.chemical_washer",
	#"mekanism.combiner",
	#"mekanism.purification_chamber",
	##"mekanism.osmium_compressor",
	#"mekanism.chemical_injection_chamber",
	#"mekanism.enrichment_chamber",
	#"mekanism.chemical_dissolution_chamber",
	#"mekanism.metallurgic_infuser",
	#"mekanism.precision_sawmill",
	"mekanism.pressurizedreactionchamber",

	#Harvestcraft
	"jehc.presser",
	"jehc.shippingbin",
	"jehc.grinder",
	"jehc.waterfilter",



	#Primal Tech
	"primal_tech.stone_grill_recipes",

	#Reliquary
	"xreliquary:alkahestryCrafting",
	"xreliquary:alkahestryCharging",
	"xreliquary:cauldron",
	"xreliquary:mortar",

	#Rustic


	#Thermal Expansion
	"thermalexpansion.enchanter",
	"thermalexpansion.furnace",
	"thermalexpansion.furnace_food",
	"thermalexpansion.furnace_ore",
	"thermalexpansion.furnace_pyrolysis",
	"thermalexpansion.pulverizer",
	"thermalexpansion.pulverizer_petrotheum",
	"thermalexpansion.sawmill",
	"thermalexpansion.sawmill_tapper",
	"thermalexpansion.smelter",
	"thermalexpansion.smelter_pyrotheum",
	"thermalexpansion.centrifuge",
	"thermalexpansion.compactor",
	"thermalexpansion.compactor_mint",
	"thermalexpansion.compactor_gear",
	"thermalexpansion.crucible",
	"thermalexpansion.crucible_lava",
	"thermalexpansion.refinery",
	"thermalexpansion.refinery_fossil",
	"thermalexpansion.refinery_potion",
	"thermalexpansion.centrifuge_mobs",
	"thermalexpansion.extruder",
	"thermalexpansion.extruder_sedimentary",
	"thermalexpansion.steam",
	"thermalexpansion.magmatic",
	"thermalexpansion.compression",
	"thermalexpansion.reactant",
	"thermalexpansion.reactant_elemental",
	"thermalexpansion.enervation",
	"thermalexpansion.numismatic",
	"thermalexpansion.numismatic_gem",
	"thermalexpansion.factorizer_combine",
	"thermalexpansion.factorizer_split"


	] as string[];

for i in hideCategories {
	mods.jei.JEI.hideCategory(i);
}

