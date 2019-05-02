import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.artisanworktables.builder.RecipeBuilder;

print("---------------Cyberware Start------------------");


val assembler = mods.gregtech.recipe.RecipeMap.getByName("assembler");

	#remove blueprint re-engineering blocks
	mods.jei.JEI.removeAndHide(<cyberware:blueprint_archive>);
	mods.jei.JEI.removeAndHide(<cyberware:component_box>);
	mods.jei.JEI.removeAndHide(<cyberware:engineering_table>);
	mods.jei.JEI.removeAndHide(<cyberware:scanner>);
	mods.jei.JEI.removeAndHide(<cyberware:beacon>);
	mods.jei.JEI.removeAndHide(<cyberware:beacon_large>);
	mods.jei.JEI.removeAndHide(<cyberware:radio_post>);
	mods.jei.JEI.removeAndHide(<cyberware:component:4>);
	mods.jei.JEI.removeAndHide(<cyberware:component:5>);
	mods.jei.JEI.removeAndHide(<cyberware:component:8>);
	mods.jei.JEI.removeAndHide(<cyberware:component:7>);
	mods.jei.JEI.removeAndHide(<cyberware:component:6>);
	mods.jei.JEI.removeAndHide(<cyberware:component:3>);
	mods.jei.JEI.removeAndHide(<cyberware:component:1>);
	mods.jei.JEI.removeAndHide(<cyberware:component:2>);

	#items that conflict with magical effects already in place
	mods.jei.JEI.hide(<cyberware:heart_upgrades:2>);
	mods.jei.JEI.hide(<cyberware:heart_upgrades:1>);
	mods.jei.JEI.hide(<cyberware:heart_upgrades>);
	mods.jei.JEI.hide(<cyberware:brain_upgrades:3>);
	mods.jei.JEI.hide(<cyberware:brain_upgrades:1>);
	mods.jei.JEI.hide(<cyberware:brain_upgrades>);
	mods.jei.JEI.hide(<cyberware:brain_upgrades:2>);
	mods.jei.JEI.hide(<cyberware:component:9>);
	mods.jei.JEI.hide(<cyberware:brain_upgrades:5>);
	mods.jei.JEI.hide(<cyberware:muscle_upgrades>);
	mods.jei.JEI.hide(<cyberware:muscle_upgrades:1>);
	mods.jei.JEI.hide(<cyberware:bone_upgrades>);
	mods.jei.JEI.hide(<cyberware:skin_upgrades:1>);
	mods.jei.JEI.hide(<cyberware:lower_organs_upgrades:3>);

	#charger
	recipes.remove(<cyberware:charger>);
	recipes.addShaped(<cyberware:charger>,
	[[<ore:plateSteel>, <gregtech:machine:502>, <ore:plateSteel>],
	[<minecraft:iron_bars>, <minecraft:redstone_block>, <minecraft:iron_bars>],
	[<ore:plateSteel>, <minecraft:iron_bars>, <ore:plateSteel>]]);

	#surgery chamber
	recipes.remove(<cyberware:surgery_chamber>);
	recipes.addShaped(<cyberware:surgery_chamber>,
	[[<ore:plateSteel>, <mekanism:enrichedalloy>, <ore:plateSteel>],
	[<ore:plateSteel>, <gregtech:frame_iron>, <ore:plateSteel>],
	[<ore:plateSteel>, <advancedrocketry:smallairlockdoor>, <ore:plateSteel>]]);

	#surgery
	recipes.remove(<cyberware:surgery>);
	recipes.addShaped(<cyberware:surgery>,
	[[<ore:plateSteel>, <gregtech:machine:502>, <ore:plateSteel>],
	[<ore:plateSteel>, <metaitem:emitter.mv>, <ore:plateSteel>],
	[<ore:plateSteel>, <botania:managlass>, <ore:plateSteel>]]);

	#mechanical limbs and addons
	recipes.addShaped(<cyberware:foot_upgrades:2>,
	[[null, null, null],
	[<ore:gearSteel>, <metaitem:electric.motor.lv>, <ore:gearSteel>],
	[null, null, null]]);

	recipes.addShaped(<cyberware:leg_upgrades>,
	[[null, <ore:stickSteel>, null],
	[null, <metaitem:electric.piston.lv>, null],
	[null, <ore:stickSteel>, null]]);

	recipes.addShaped(<cyberware:leg_upgrades:1>,
	[[null, <ore:stickSteel>, null],
	[null, <minecraft:iron_boots>, null],
	[null, <minecraft:slime>, null]]);

	recipes.addShaped(<cyberware:hand_upgrades:2>,
	[[null, <minecraft:stone_pickaxe>, null],
	[null, <ore:stickSteel>, null],
	[null, <hotornot:mitts>, null]]);

	recipes.addShaped(<cyberware:foot_upgrades:1>,
	[[null, <ore:stickSteel>, null],
	[<ore:stickSteel>, <ore:rotorTin>, <ore:stickSteel>],
	[null, <ore:stickSteel>, null]]);

	recipes.addShaped(<cyberware:foot_upgrades>,
	[[null, <harvestcraft:hardenedleatheritem>, null],
	[null, <ore:stickSteel>, null],
	[null, <ore:gearSmallSteel>, null]]);

	recipes.addShaped(<cyberware:hand_upgrades>,
	[[null, <ore:stickSteel>, null],
	[<ore:stickSteel>, <minecraft:crafting_table>, <ore:stickSteel>],
	[null, <ore:stickSteel>, null]]);

	recipes.addShaped(<cyberware:hand_upgrades:1>,
	[[null, null, null],
	[<ore:stickSteel>, <ore:stickSteel>, <ore:stickSteel>],
	[null, <hotornot:mitts>, null]]);

	recipes.addShaped(<cyberware:cyberlimbs:2>,
	[[null, <ore:stickSteel>, null],
	[<ore:stickSteel>, null, <ore:stickSteel>],
	[<ore:ingotSteel>, null, null]]);

	recipes.addShaped(<cyberware:cyberlimbs:3>,
	[[null, <ore:stickSteel>, null],
	[<ore:stickSteel>, null, <ore:stickSteel>],
	[null, null, <ore:ingotSteel>]]);

	recipes.addShaped(<cyberware:cyberlimbs>,
	[[null, <ore:stickSteel>, null],
	[<ore:stickSteel>, null, null],
	[null, <ore:stickSteel>, <ore:ingotSteel>]]);

	recipes.addShaped(<cyberware:cyberlimbs:1>,
	[[null, <ore:stickSteel>, null],
	[null, null, <ore:stickSteel>],
	[<ore:ingotSteel>, <ore:stickSteel>, null]]);

	#batteries
	recipes.addShaped(<cyberware:bone_upgrades:2>,
	[[null, <ore:ringSteel>, null],
	[null, <minecraft:bone>, null],
	[null, <metaitem:battery.re.lv.sodium>, null]]);

	recipes.addShaped(<cyberware:lower_organs_upgrades:2>,
	[[null, <ore:ringSteel>, null],
	[null, <ore:pipeSmallSteel>, null],
	[null, <metaitem:battery.re.mv.sodium>, null]]);

	recipes.addShaped(<cyberware:dense_battery>,
	[[null, <ore:ringSteel>, null],
	[null, <ore:pipeLargeSteel>, null],
	[null, <metaitem:battery.re.hv.sodium>, null]]);

	#generators
	recipes.addShaped(<cyberware:lower_organs_upgrades:1>,
	[[<ore:wireFineRedAlloy>, <ore:circuitMedium>, <ore:wireFineRedAlloy>],
	[<thaumcraft:flesh_block>, <ore:waferSilicon>, <thaumcraft:flesh_block>],
	[<ore:wireFineRedAlloy>, <ore:stickSteel>, <ore:wireFineRedAlloy>]]);

	recipes.addShaped(<cyberware:skin_upgrades>,
	[[<minecraft:glass>, <minecraft:glass>, <minecraft:glass>],
	[<minecraft:glass>, <ore:circuitMedium>, <minecraft:glass>],
	[<minecraft:rotten_flesh>, <ore:waferSilicon>, <minecraft:rotten_flesh>]]);

	#immunosuppresant
	recipes.addShaped(<cyberware:skin_upgrades:3>,
	[[null, <ore:circuitLow>, null],
	[<ore:cableGtSingleAluminium>, <xreliquary:mob_ingredient:3>, <ore:cableGtSingleAluminium>],
	[null, <ore:cableGtSingleAluminium>, null]]);

	#Quickdraw Flywheels
	recipes.addShaped(<cyberware:arm_upgrades>,
	[[null, null, null],
	[<ore:gearSmallSteel>, <botania:manaresource:16>, <ore:gearSmallSteel>],
	[null, null, null]]);

	#Citrate Enhancement
	recipes.addShaped(<cyberware:bone_upgrades:1>,
	[[<ore:screwSteel>, <ore:bonemeal>, <ore:screwSteel>],
	[<ore:bonemeal>, <ore:ingotMagnesium>, <ore:bonemeal>],
	[<ore:screwSteel>, <ore:bonemeal>, <ore:screwSteel>]]);

	#liver upgrade
	recipes.addShaped(<cyberware:lower_organs_upgrades>,
	[[<minecraft:leather>, <minecraft:poisonous_potato>, <minecraft:leather>],
	[<ore:dustCharcoal>, <minecraft:sponge>, <ore:dustCharcoal>],
	[<minecraft:leather>, <ore:dustCharcoal>, <minecraft:leather>]]);

	#Fake skin
	recipes.addShaped(<cyberware:skin_upgrades:2>,
	[[<minecraft:leather>, <ore:wireFineSteel>, <minecraft:leather>],
	[<ore:wireFineSteel>, null, <ore:wireFineSteel>],
	[<minecraft:leather>, <ore:wireFineSteel>, <minecraft:leather>]]);

	#Cyber heart
	recipes.addShaped(<cyberware:cyberheart>,
	[[null, <tconstruct:edible:3>, null],
	[<ore:wireFineSteel>, <metaitem:electric.pump.lv>, <ore:wireFineSteel>],
	[null, <ore:wireFineSteel>, null]]);

	#Threat matrix calculator
	recipes.addShaped(<cyberware:brain_upgrades:4>,
	[[<ore:wireFineSteel>, <ore:wireFineSteel>, <ore:wireFineSteel>],
	[<actuallyadditions:item_crystal>, <advancedrocketry:lens>, <actuallyadditions:item_crystal>],
	[<ore:wireFineSteel>, <ore:circuitPrimitive>, <ore:wireFineSteel>]]);

	#hudlens
	recipes.addShaped(<cyberware:eye_upgrades>,
	[[null, <ore:wireFineSolderingAlloy>, null],
	[<ore:wireFineSolderingAlloy>, <botania:lens>, <ore:wireFineSolderingAlloy>],
	[null, <ore:wireFineSolderingAlloy>, null]]);

	#hudjack
	recipes.addShaped(<cyberware:cybereye_upgrades:2>,
	[[<ore:foilIron>, <metaitem:circuit.vacuum.tube>, <ore:foilIron>],
	[<ore:foilIron>, <ore:ringSteelMagnetic>, <ore:foilIron>],
	[<ore:foilIron>, <metaitem:battery.re.lv.lithium>, <ore:foilIron>]]);

	#low Light vision
	recipes.addShaped(<cyberware:cybereye_upgrades>,
	[[<ore:wireFineAluminium>, <ore:circuitMedium>, <ore:wireFineAluminium>],
	[<astralsorcery:itemperkgem:2>, <thaumcraft:mind:1>, <astralsorcery:itemperkgem:2>],
	[<ore:wireFineAluminium>, <mekanism:reinforcedalloy>, <ore:wireFineAluminium>]]);

	#Distance enhancer
	recipes.addShaped(<cyberware:cybereye_upgrades:4>,
	[[<ore:wireFineSteel>, <ore:circuitPrimitive>, <ore:wireFineSteel>],
	[<ore:wireFineSteel>, <advancedrocketry:lens>, <ore:wireFineSteel>],
	[<ore:wireFineSteel>, <ore:plateSilicon>, <ore:wireFineSteel>]]);

	#Cyber Eyes
	recipes.addShaped(<cyberware:cybereye_upgrades:3>,
	[[null, <mekanism:enrichedalloy>, null],
	[null, <tconstruct:edible:3>, null],
	[null, <ore:foilIron>, null]]);

	#Hyperoxygenation boost
	recipes.addShaped(<cyberware:lungs_upgrades:1>,
	[[null, <actuallyadditions:item_crystal:5>, null],
	[<ore:wireFineSteel>, <ore:ringRubber>, <ore:wireFineSteel>],
	[null, <ore:wireFineSteel>, null]]);

	#Compressed Oxygen upgrade
	recipes.addShaped(<cyberware:lungs_upgrades>,
	[[null, <ore:wireFineSteel>, null],
	[<ore:wireFineSteel>, <advancedrocketry:pressuretank:2>, <ore:wireFineSteel>],
	[null, <metaitem:electric.pump.lv>, null]]);

	#Cyber Eyes
	recipes.addShaped(<cyberware:cybereyes>, [[null, <ore:circuitMedium>, null],
	[<ore:wireFineAluminium>, <minecraft:ender_eye>, <ore:wireFineAluminium>],
	[null, <ore:wireFineAluminium>, null]]);

	#Underwater sight
	recipes.addShaped(<cyberware:cybereye_upgrades:1>,
	[[<ore:wireFineSolderingAlloy>, <ore:circuitPrimitive>, <ore:wireFineSolderingAlloy>],
	[<ore:wireFineSolderingAlloy>, <astralsorcery:itemcraftingcomponent>, <ore:wireFineSolderingAlloy>],
	[<ore:wireFineSolderingAlloy>, <ore:plateSteel>, <ore:wireFineSolderingAlloy>]]);

	#Heart coupler
	recipes.addShaped(<cyberware:heart_upgrades:3>,
	[[null, <ore:circuitPrimitive>, null],
	[<ore:wireFineSolderingAlloy>, <deepmoblearning:glitch_heart>, <ore:wireFineSolderingAlloy>],
	[null, <ore:wireFineSolderingAlloy>, null]]);
	
	#creative capacitor
		#Creative Model Learner
	assembler.recipeBuilder()
	.inputs(<cyberware:dense_battery>*6, <metaitem:board.wetware>*2, <ore:batteryUltimate>, <ore:nuggetCosmicNeutronium>)
    .outputs(<cyberware:creative_battery>)
	.fluidInputs([<liquid:polytetrafluoroethylene> * 244])
    .duration(200)
    .EUt(1920)
    .buildAndRegister();

print("----------------Cyberware End-------------------");
