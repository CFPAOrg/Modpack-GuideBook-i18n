import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.artisanworktables.builder.RecipeBuilder;
import mods.gregtech.recipe.RecipeMap;
import mods.gregtech.recipe.RecipeMaps;
import mods.thaumcraft.Crucible;

print("---------------Draconic Evolution Start------------------");
var fusionReactor = mods.gregtech.recipe.RecipeMap.getByName("fusion_reactor");
val assembler = mods.gregtech.recipe.RecipeMap.getByName("assembler");
val mixer = mods.gregtech.recipe.RecipeMap.getByName("mixer");
val solidifier = mods.gregtech.recipe.RecipeMap.getByName("fluid_solidifier");

	#info tablet
	recipes.remove(<draconicevolution:info_tablet>);
	recipes.addShaped(<draconicevolution:info_tablet>, 
	[[<thaumcraft:stone_arcane>, <thaumcraft:stone_arcane>, <thaumcraft:stone_arcane>],
	[<thaumcraft:stone_arcane>, <draconicevolution:draconium_ingot>, <thaumcraft:stone_arcane>], 
	[<thaumcraft:stone_arcane>, <thaumcraft:stone_arcane>, <thaumcraft:stone_arcane>]]);

	#block conversion from gt draconium
	recipes.addShapeless(<gregtech:compressed_17:9>, [<draconicevolution:draconium_block>]);
	recipes.addShapeless(<draconicevolution:draconium_block>, [<gregtech:compressed_17:9>]);
	

	#Awakened Draconium
recipes.addShapeless(<draconicevolution:draconic_ingot> * 9, [<draconicevolution:draconic_block>]);
mods.thaumcraft.Crucible.registerRecipe("awakeneddraconium", "BASEALCHEMY", <draconicevolution:draconic_ingot>*3, <contenttweaker:infinityegg>, [<aspect:draco> * 5, <aspect:potentia> * 5, <aspect:cognitio> * 4 ]);
	
	#item dislocator
recipes.remove(<draconicevolution:magnet>);
assembler.recipeBuilder()
    .inputs(<draconicevolution:dislocator>, <ore:ringSteelMagnetic>, <ore:dustDraconium>*2, <ore:plateTitanium>*2)
    .fluidInputs([<liquid:ender> * 250])
    .outputs(<draconicevolution:magnet>)
    .duration(600)
    .EUt(96)
    .buildAndRegister();
	
	#Capacitors
mods.jei.JEI.removeAndHide(<draconicevolution:draconium_capacitor:1>);
mods.jei.JEI.removeAndHide(<draconicevolution:draconium_capacitor>);

	#remove lower tier fusion crafters
mods.jei.JEI.hide(<draconicevolution:crafting_injector:1>);
mods.jei.JEI.hide(<draconicevolution:crafting_injector:2>);
mods.jei.JEI.removeAndHide(<draconicevolution:crafting_injector>);
	
	#relocalize draconic dust
<draconicevolution:draconium_dust>.displayName = "含杂龙尘";	
mixer.recipeBuilder()
    .inputs(<ore:dustStarmetal>*2, <ore:dustSmallTungsten>, <enderio:block_infinity_fog>)
    .fluidInputs([<liquid:lifeessence> * 1000])
    .outputs(<draconicevolution:draconium_dust>)
    .duration(1200)
    .EUt(96)
    .buildAndRegister();	
	
	#Chaotic fusion Crafter
assembler.recipeBuilder()
    .inputs(<ore:ingotCrystalMatrix>*2, <draconicevolution:draconic_core>, <gregtech:machine_casing:3>)
    .fluidInputs([<liquid:ender> * 1000])
    .outputs(<draconicevolution:crafting_injector:3>)
    .duration(6000)
    .EUt(480)
    .buildAndRegister();

	#Draconic Core
recipes.remove(<draconicevolution:draconic_core>);
recipes.addShaped(<draconicevolution:draconic_core>, [
	[<ore:plateTungstenCarbide>, <ore:circuitExtreme>, <ore:plateTungstenCarbide>],
	[null , <metaitem:quantumeye>, null],
	[<ore:plateTungstenCarbide>, <ore:circuitExtreme>, <ore:plateTungstenCarbide>]]);

	#Draconium Ingot
<draconicevolution:draconium_ingot>.addTooltip(format.darkRed("此物品已停用，将其合成为来自GTCE的替代品。"));
recipes.addShapeless(<ore:ingotDraconium>.firstItem, [<draconicevolution:draconium_ingot>]);

	#Dislocator
recipes.remove(<draconicevolution:dislocator>);
mods.botania.RuneAltar.addRecipe(<draconicevolution:dislocator>, [<ore:dustImpureDraconium>, <ore:dustImpureDraconium>, <ore:dustImpureDraconium>, <ore:dustImpureDraconium>, <lteleporters:endercrystal>], 50000);

	#Dislocator Pedestal
recipes.remove(<draconicevolution:dislocator_pedestal>);
recipes.addShaped(<draconicevolution:dislocator_pedestal>,[
	[null, <ore:stone>, null],
	[null, <ore:stone>, null],
	[<ore:slabStone>, <ore:slabStone>, <ore:slabStone>]]);


	#Dislocator Receptacle
recipes.remove(<draconicevolution:dislocator_receptacle>);
recipes.addShaped(<draconicevolution:dislocator_receptacle>, [
	[<ore:plateTungstenSteel>, <draconicevolution:draconic_core>, <ore:plateTungstenSteel>],
	[null, <draconicevolution:infused_obsidian>,null],
	[<ore:plateTungstenSteel>, null, <ore:plateTungstenSteel>]]);


	#Draconium Infused Obsidian
recipes.remove(<draconicevolution:infused_obsidian>);
solidifier.recipeBuilder()
	.inputs([<ore:dustImpureDraconium>])
    .fluidInputs([<liquid:obsidian> * 144])
	.outputs(<draconicevolution:infused_obsidian>)
	.duration(600)
	.EUt(120)
	.buildAndRegister();

	#Potentiometer
recipes.remove(<draconicevolution:potentiometer>);
recipes.addShapeless(<draconicevolution:potentiometer>, [<minecraft:comparator>, <minecraft:lever>]);

	#Draconium - waiting on GTCE update
furnace.remove(<draconicevolution:draconium_ingot>);
recipes.remove(<draconicevolution:draconium_ingot>);
fusionReactor.recipeBuilder()
	.fluidInputs([<liquid:red_matter> * 8, <liquid:osmiridium>*8])
    .fluidOutputs(<liquid:draconium> * 16)
    .duration(32)
    .EUt(30720)
    .property("eu_to_start", 140000)
    .buildAndRegister();

	#energy core
	recipes.remove(<draconicevolution:energy_storage_core>);
	assembler.recipeBuilder()
    .inputs(<ore:ringDraconium>,<gregtech:machine:509>, <draconicevolution:wyvern_energy_core>, <draconicevolution:wyvern_core>, <ore:screwTerrasteel>, <ore:batteryUltimate>)
    .fluidInputs([<liquid:ender> * 1000])
    .outputs(<draconicevolution:energy_storage_core>)
    .duration(2400)
    .EUt(480)
    .buildAndRegister();
	
    #Grinder (Disabled due to redundancy/DML)
mods.jei.JEI.removeAndHide(<draconicevolution:grinder>);


	#wyvern tools
	#sword
	recipes.remove(<draconicevolution:wyvern_sword>);
	mods.thaumcraft.Infusion.registerRecipe("wyvernsword", "INFUSION", <draconicevolution:wyvern_sword>, 6, 
		[<aspect:draco> * 15, <aspect:praecantatio> * 8, <aspect:potentia> * 32, <aspect:aversio> * 32], 
		<tconstruct:large_sword_blade>.withTag({Material: "terrasteel"}),
		[<draconicevolution:wyvern_core>, <gregtech:meta_item_1:14072>, <gregtech:meta_item_1:14072>, <enderio:item_material:75>]);
	
	#pickaxe
	recipes.remove(<draconicevolution:wyvern_pick>);
	mods.thaumcraft.Infusion.registerRecipe("wyvernpick", "INFUSION", <draconicevolution:wyvern_pick>, 6, 
		[<aspect:draco> * 15, <aspect:praecantatio> * 8, <aspect:potentia> * 32, <aspect:instrumentum> * 32], 
		<tconstruct:pick_head>.withTag({Material: "terrasteel"}),
		[<draconicevolution:wyvern_core>, <gregtech:meta_item_1:14072>, <gregtech:meta_item_1:14072>, <enderio:item_material:75>]);
		
	#axe
	recipes.remove(<draconicevolution:wyvern_axe>);
	mods.thaumcraft.Infusion.registerRecipe("wyvernaxe", "INFUSION", <draconicevolution:wyvern_axe>, 6, 
		[<aspect:draco> * 15, <aspect:praecantatio> * 8, <aspect:potentia> * 32, <aspect:instrumentum> * 32], 
		<tconstruct:axe_head>.withTag({Material: "terrasteel"}),
		[<draconicevolution:wyvern_core>, <gregtech:meta_item_1:14072>, <gregtech:meta_item_1:14072>, <enderio:item_material:75>]);	

	#shovel
	recipes.remove(<draconicevolution:wyvern_shovel>);
	mods.thaumcraft.Infusion.registerRecipe("wyvernshovel", "INFUSION", <draconicevolution:wyvern_shovel>, 6, 
		[<aspect:draco> * 15, <aspect:praecantatio> * 8, <aspect:potentia> * 32, <aspect:instrumentum> * 32], 
		<tconstruct:shovel_head>.withTag({Material: "terrasteel"}),
		[<draconicevolution:wyvern_core>, <gregtech:meta_item_1:14072>, <gregtech:meta_item_1:14072>, <enderio:item_material:75>]);	
	
	#bow
	recipes.remove(<draconicevolution:wyvern_bow>);
	mods.thaumcraft.Infusion.registerRecipe("wyvernbow", "INFUSION", <draconicevolution:wyvern_bow>, 6, 
		[<aspect:draco> * 15, <aspect:praecantatio> * 8, <aspect:potentia> * 32, <aspect:aversio> * 32], 
		<iceandfire:dragonbone_bow>,
		[<draconicevolution:wyvern_core>, <gregtech:meta_item_1:14072>, <gregtech:meta_item_1:14072>, <enderio:item_material:75>, <randomthings:ingredient:12>,<randomthings:ingredient:12> ,<randomthings:ingredient:12>]);	
	
	#Generator
mods.jei.JEI.removeAndHide(<draconicevolution:generator>);

    #Wyvern - Armor
recipes.remove(<draconicevolution:wyvern_boots>);
recipes.remove(<draconicevolution:wyvern_chest>);
recipes.remove(<draconicevolution:wyvern_legs>);
recipes.remove(<draconicevolution:wyvern_helm>);

	#Wither soul
mods.astralsorcery.StarlightInfusion.addInfusion(<contenttweaker:infinityegg>, <draconicevolution:mob_soul>.withTag({EntityName: "Wither"}), true, 0.7, 600);	

	#Wyvern Core
recipes.remove(<draconicevolution:wyvern_core>);
recipes.addShaped(<draconicevolution:wyvern_core>, [
	[<draconicevolution:draconic_core>, <ore:dustDraconium> | <ore:dustImpureDraconium>, <draconicevolution:draconic_core>],
	[<ore:dustDraconium> | <ore:dustImpureDraconium>, <ore:circuitLudicrous>, <ore:dustDraconium> | <ore:dustImpureDraconium>],
	[<draconicevolution:draconic_core>, <ore:dustDraconium> | <ore:dustImpureDraconium>, <draconicevolution:draconic_core>]]);

	#Wyvern armor
	recipes.addShaped(<draconicevolution:wyvern_boots>, 
	[[<ore:screwTungstenSteel>, <draconicevolution:wyvern_core>, <ore:screwTungstenSteel>],
	[<metaitem:plate.iridium.alloy>, <bloodmagic:living_armour_boots>, <metaitem:plate.iridium.alloy>], 
	[<ore:screwTungstenSteel>, <metaitem:plate.iridium.alloy>, <ore:screwTungstenSteel>]]);

	recipes.addShaped(<draconicevolution:wyvern_legs>, 
	[[<ore:screwTungstenSteel>, <draconicevolution:wyvern_core>, <ore:screwTungstenSteel>],
	[<metaitem:plate.iridium.alloy>, <bloodmagic:living_armour_leggings>, <metaitem:plate.iridium.alloy>], 
	[<ore:screwTungstenSteel>, <metaitem:plate.iridium.alloy>, <ore:screwTungstenSteel>]]);

	recipes.addShaped(<draconicevolution:wyvern_chest>, 
	[[<ore:screwTungstenSteel>, <draconicevolution:wyvern_core>, <ore:screwTungstenSteel>],
	[<metaitem:plate.iridium.alloy>, <bloodmagic:living_armour_chest>, <metaitem:plate.iridium.alloy>], 
	[<ore:screwTungstenSteel>, <metaitem:plate.iridium.alloy>, <ore:screwTungstenSteel>]]);

	recipes.addShaped(<draconicevolution:wyvern_helm>, 
	[[<ore:screwTungstenSteel>, <draconicevolution:wyvern_core>, <ore:screwTungstenSteel>],
	[<metaitem:plate.iridium.alloy>, <bloodmagic:living_armour_helmet>, <metaitem:plate.iridium.alloy>], 
	[<ore:screwTungstenSteel>, <metaitem:plate.iridium.alloy>, <ore:screwTungstenSteel>]]);	
	
print("----------------Draconic Evolution End-------------------");