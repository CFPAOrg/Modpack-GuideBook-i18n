import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.gregtech.recipe.RecipeMap;

print("---------------Ender IO Start------------------");


val alloyer = mods.gregtech.recipe.RecipeMap.getByName("alloy_smelter");
val blast_furnace = mods.gregtech.recipe.RecipeMap.getByName("blast_furnace");
val mixer = mods.gregtech.recipe.RecipeMap.getByName("mixer");
val assembler = mods.gregtech.recipe.RecipeMap.getByName("assembler");
val solidifier = mods.gregtech.recipe.RecipeMap.getByName("fluid_solidifier");

	#Alloy Smelter Removal
	mods.jei.JEI.removeAndHide(<enderio:block_decoration2>);
	mods.jei.JEI.removeAndHide(<enderio:block_decoration3:1>);
	mods.jei.JEI.removeAndHide(<enderio:block_simple_alloy_smelter>);
	mods.jei.JEI.removeAndHide(<enderio:block_alloy_smelter>);
	mods.jei.JEI.removeAndHide(<enderio:block_ender_generator>);
	mods.jei.JEI.removeAndHide(<enderio:block_franken_zombie_generator>);
	mods.jei.JEI.removeAndHide(<enderio:block_zombie_generator>);
	mods.jei.JEI.removeAndHide(<enderio:block_stirling_generator>);
	mods.jei.JEI.removeAndHide(<enderio:block_combustion_generator>);
	mods.jei.JEI.removeAndHide(<enderio:block_enhanced_combustion_generator>);
	mods.jei.JEI.removeAndHide(<enderio:block_simple_stirling_generator>);
	mods.jei.JEI.removeAndHide(<enderio:block_solar_panel>);
	mods.jei.JEI.removeAndHide(<enderio:block_solar_panel:1>);
	mods.jei.JEI.removeAndHide(<enderio:block_solar_panel:2>);
	mods.jei.JEI.removeAndHide(<enderio:block_solar_panel:3>);

	mods.jei.JEI.hide(<enderio:item_inventory_charger_basic>.withTag({"enderio.darksteel.upgrade.energyUpgrade": {level: 0}}));
	mods.jei.JEI.hide(<enderio:item_inventory_charger_basic>.withTag({"enderio.darksteel.upgrade.energyUpgrade": {level: 3, energy: 5000000}}));
	mods.jei.JEI.hide(<enderio:item_inventory_charger>.withTag({"enderio.darksteel.upgrade.energyUpgrade": {level: 0}}));
	mods.jei.JEI.hide(<enderio:item_inventory_charger>.withTag({"enderio.darksteel.upgrade.energyUpgrade": {level: 3, energy: 25000000}}));
	mods.jei.JEI.hide(<enderio:item_inventory_charger_vibrant>.withTag({"enderio.darksteel.upgrade.energyUpgrade": {level: 0}}));
	mods.jei.JEI.hide(<enderio:item_inventory_charger_vibrant>.withTag({"enderio.darksteel.upgrade.energyUpgrade": {level: 3, energy: 125000000}}));


	#broken spawner recipe
	recipes.addShaped(<enderio:item_broken_spawner>.withTag({entityId: "astralsorcery:entityflare"}), 
	[[<minecraft:iron_bars>, <deepmoblearning:living_matter_extraterrestrial>, <minecraft:iron_bars>],
	[<actuallyadditions:item_misc:20>, <astralsorcery:itemcraftingcomponent:4>, <actuallyadditions:item_misc:20>], 
	[<minecraft:iron_bars>, <deepmoblearning:living_matter_extraterrestrial>, <minecraft:iron_bars>]]);

	mods.jei.JEI.addItem(<enderio:item_broken_spawner>.withTag({entityId: "astralsorcery:entityflare"}));
	
	
	<enderio:item_material:20>.addTooltip(format.darkRed("基岩尘生成的怪物死亡时有概率掉落。"));
	<enderio:block_farm_station>.addTooltip(format.darkRed("***不要使用格雷科技斧子***。"));
	
	#high tier RF cabling
	mods.jei.JEI.removeAndHide(<enderio:item_endergy_conduit:11>);
	mods.jei.JEI.removeAndHide(<enderio:item_endergy_conduit:10>);
	mods.jei.JEI.removeAndHide(<enderio:item_endergy_conduit:9>);
	mods.jei.JEI.removeAndHide(<enderio:item_endergy_conduit:8>);
	mods.jei.JEI.removeAndHide(<enderio:item_endergy_conduit:7>);
	mods.jei.JEI.removeAndHide(<enderio:item_endergy_conduit:6>);
	mods.jei.JEI.removeAndHide(<enderio:item_endergy_conduit:5>);
	mods.jei.JEI.removeAndHide(<enderio:item_endergy_conduit:4>);
	mods.jei.JEI.removeAndHide(<enderio:item_endergy_conduit:2>);
	mods.jei.JEI.removeAndHide(<enderio:item_endergy_conduit:1>);
	mods.jei.JEI.removeAndHide(<enderio:item_endergy_conduit:2>);
	mods.jei.JEI.removeAndHide(<enderio:item_endergy_conduit:3>);
	
	
	#Obelisk and Xp rod
	recipes.remove(<enderio:block_experience_obelisk>);
	recipes.remove(<enderio:item_xp_transfer>);


	recipes.addShaped(<enderio:block_experience_obelisk>, 
	[[null, <enderio:item_xp_transfer>, null],[<enderio:item_alloy_endergy_ingot:1>, <enderio:block_tank>, <enderio:item_alloy_endergy_ingot:1>], [<enderio:item_alloy_ingot:7>, <enderio:item_material:53>, <enderio:item_alloy_ingot:7>]]);

	recipes.addShaped(<enderio:item_xp_transfer>, [[null, null, <enderio:item_alloy_ingot:7>],[null, <enderio:item_alloy_endergy_ingot:1>, null], [<enderio:item_alloy_ingot:7>, null, null]]);
	
	#slicensplice
	mods.jei.JEI.removeAndHide(<enderio:block_decoration2:9>);
	mods.jei.JEI.removeAndHide(<enderio:block_slice_and_splice>);

	#add message about overworld creation
	<enderio:block_infinity_fog>.addTooltip(format.darkRed("使用燧石左键单击基岩时有一定概率获得。消耗4xp，并大概率消耗使用的燧石。"));

	#recipe for infninity grains
	mods.astralsorcery.Lightwell.addLiquefaction(<enderio:item_material:20>, <liquid:liquidnightmares>, 0.8, 12, 0);
	mods.astralsorcery.Lightwell.addLiquefaction(<extrautils2:ingredients:10>, <liquid:liquidnightmares>, 1.0, 15, 0);
	
	solidifier.recipeBuilder()
	.notConsumable(<metaitem:shape.mold.nugget>)
    .fluidInputs([<liquid:liquidnightmares> * 144])
    .outputs(<enderio:block_infinity_fog>*9)
    .duration(200)
    .EUt(12)
    .buildAndRegister();

	#manual infinity dust
	mods.bloodmagic.AlchemyArray.addRecipe(<enderio:block_infinity_fog>, <ore:dustAsh>.firstItem, <enderio:item_material:20>);

	//lava generator
	mods.jei.JEI.removeAndHide(<enderio:block_lava_generator>);

	recipes.addShaped(<enderio:item_inventory_charger_simple>.withTag({"enderio.darksteel.upgrade.energyUpgrade": {level: 0}}), [
	[<ore:screwAluminium>,<ore:plateTin>,<ore:screwAluminium>],
	[<ore:plateTin>,<metaitem:battery.re.mv.lithium>,<ore:plateTin>],
	[<ore:screwAluminium>,<ore:plateTin>,<ore:screwAluminium>]]);

	#darksteel bow
	
	recipes.remove(<enderio:item_dark_steel_bow>);
	recipes.addShaped(<enderio:item_dark_steel_bow>, 
	[[null, <tconstruct:tough_tool_rod>.withTag({Material: "obsidian"}), <randomthings:ingredient:12>],
	[<enderio:item_alloy_ingot:6>, null, <randomthings:ingredient:12>], 
	[null, <tconstruct:tough_tool_rod>.withTag({Material: "obsidian"}), <randomthings:ingredient:12>]]);
	
	#darksteel armors
	recipes.remove(<enderio:item_dark_steel_helmet>);
	recipes.remove(<enderio:item_dark_steel_leggings>);
	recipes.remove(<enderio:item_dark_steel_boots>);
	recipes.remove(<enderio:item_dark_steel_chestplate>);

	recipes.addShaped(<enderio:item_dark_steel_helmet>, 
	[[<ore:screwStarmetal>, <mekanism:atomicalloy>, <ore:screwStarmetal>],
	[<enderio:item_alloy_ingot:6>, <minecraft:iron_helmet>, <enderio:item_alloy_ingot:6>], 
	[<ore:screwStarmetal>, <enderio:item_alloy_ingot:6>, <ore:screwStarmetal>]]);

	recipes.addShaped(<enderio:item_dark_steel_leggings>, 
	[[<ore:screwStarmetal>, <mekanism:atomicalloy>, <ore:screwStarmetal>],
	[<enderio:item_alloy_ingot:6>, <minecraft:iron_leggings>, <enderio:item_alloy_ingot:6>], 
	[<ore:screwStarmetal>, <enderio:item_alloy_ingot:6>, <ore:screwStarmetal>]]);

	recipes.addShaped(<enderio:item_dark_steel_boots>, 
	[[<ore:screwStarmetal>, <mekanism:atomicalloy>, <ore:screwStarmetal>],
	[<enderio:item_alloy_ingot:6>, <minecraft:iron_boots>, <enderio:item_alloy_ingot:6>], 
	[<ore:screwStarmetal>, <enderio:item_alloy_ingot:6>, <ore:screwStarmetal>]]);

	recipes.addShaped(<enderio:item_dark_steel_chestplate>, 
	[[<ore:screwStarmetal>, <mekanism:atomicalloy>, <ore:screwStarmetal>],
	[<enderio:item_alloy_ingot:6>, <minecraft:iron_chestplate>, <enderio:item_alloy_ingot:6>],
	 [<ore:screwStarmetal>, <enderio:item_alloy_ingot:6>, <ore:screwStarmetal>]]);
		
	#Endergy advanced tools and armors
	mods.jei.JEI.removeAndHide(<enderio:item_stellar_alloy_pickaxe>);
	mods.jei.JEI.removeAndHide(<enderio:item_stellar_alloy_axe>);
	mods.jei.JEI.removeAndHide(<enderio:item_stellar_alloy_helmet>);
	mods.jei.JEI.removeAndHide(<enderio:item_stellar_alloy_boots>);
	mods.jei.JEI.removeAndHide(<enderio:item_stellar_alloy_chestplate>);
	mods.jei.JEI.removeAndHide(<enderio:item_stellar_alloy_leggings>);
	mods.jei.JEI.removeAndHide(<enderio:item_end_steel_helmet>);
	mods.jei.JEI.removeAndHide(<enderio:item_end_steel_chestplate>);
	mods.jei.JEI.removeAndHide(<enderio:item_end_steel_leggings>);
	mods.jei.JEI.removeAndHide(<enderio:item_end_steel_boots>);
	mods.jei.JEI.removeAndHide(<enderio:item_end_steel_axe>);
	mods.jei.JEI.removeAndHide(<enderio:item_end_steel_pickaxe>);
	mods.jei.JEI.removeAndHide(<enderio:item_end_steel_sword>);

	#enderium base
	mods.jei.JEI.removeAndHide(<enderio:item_material:39>);

	#simple machines
	mods.jei.JEI.removeAndHide(<enderio:block_simple_furnace>);
	mods.jei.JEI.removeAndHide(<enderio:block_simple_sag_mill>);
	mods.jei.JEI.removeAndHide(<enderio:block_simple_wired_charger>);
	mods.jei.JEI.removeAndHide(<enderio:block_simple_crafter>);

	#inventory charger
	mods.jei.JEI.removeAndHide(<enderio:item_inventory_charger_simple>);
	mods.jei.JEI.removeAndHide(<enderio:item_inventory_charger_vibrant>);
	mods.jei.JEI.removeAndHide(<enderio:item_inventory_charger>);
	mods.jei.JEI.removeAndHide(<enderio:item_inventory_charger_basic>);


	#Enhanced machines
	mods.jei.JEI.removeAndHide(<enderio:block_enhanced_alloy_smelter>);
	mods.jei.JEI.removeAndHide(<enderio:block_enhanced_sag_mill>);
	mods.jei.JEI.removeAndHide(<enderio:block_enhanced_wired_charger>);

	#Vat
	mods.jei.JEI.removeAndHide(<enderio:block_vat>);
	mods.jei.JEI.removeAndHide(<enderio:block_enhanced_vat>);

	#Decorative blocks
	mods.jei.JEI.removeAndHide(<enderio:block_decoration3:4>);

	# Capacitors
var energyDisabled as IItemStack[]= [
	<enderio:block_cap_bank:1>,
	<enderio:block_cap_bank:2>,
	<enderio:block_cap_bank:3>,
	<enderio:block_solar_panel>,
	<enderio:block_solar_panel:1>,
	<enderio:block_solar_panel:2>,
	<enderio:block_solar_panel:3>
	];

for i in energyDisabled {
	mods.jei.JEI.removeAndHide(i);
}

	var SagMillStuff as IItemStack[] = [
		<enderio:block_decoration2:8>,
		<enderio:block_sag_mill>,
		<enderio:item_alloy_ball>,
		<enderio:item_alloy_ball:1>,
		<enderio:item_alloy_ball:2>,
		<enderio:item_alloy_ball:3>,
		<enderio:item_alloy_ball:4>,
		<enderio:item_alloy_ball:5>,
		<enderio:item_alloy_ball:6>,
		<enderio:item_alloy_ball:7>,
		<enderio:item_alloy_ball:8>,
		<enderio:item_alloy_ball:9>,
		<enderio:item_material:57>,
		<enderio:item_material:58>,
		<enderio:item_material:59>,
		<enderio:item_alloy_endergy_ball>,
		<enderio:item_alloy_endergy_ball:1>,
		<enderio:item_alloy_endergy_ball:2>,
		<enderio:item_alloy_endergy_ball:3>,
		<enderio:item_alloy_endergy_ball:4>,
		<enderio:item_alloy_endergy_ball:5>,
		<enderio:item_alloy_endergy_ball:6>,
		<enderio:item_capacitor_stellar>,
		<enderio:item_capacitor_totemic>,
		<enderio:item_capacitor_crystalline>,
		<enderio:item_capacitor_melodic>,
		<enderio:item_capacitor_vivid>
		];

for i in SagMillStuff {
	mods.jei.JEI.removeAndHide(i);
}		

	#Enchanter
	mods.jei.JEI.removeAndHide(<enderio:block_enchanter>);

	#Flour
mods.jei.JEI.removeAndHide(<enderio:item_material:21>);
recipes.addShapeless(<ore:dustWheat>.firstItem, [<enderio:item_material:21>]);
<enderio:item_material:21>.addTooltip(format.darkRed("此物品已停用，将其合成为来自GTCE的替代品。"));

	#Spawner removal
	mods.jei.JEI.removeAndHide(<enderio:block_powered_spawner>);
	mods.jei.JEI.removeAndHide(<enderio:item_broken_spawner>);

	recipes.remove(<enderio:item_basic_capacitor>);
	assembler.recipeBuilder()
    .inputs(<opencomputers:material:6>, <enderio:block_infinity_fog>)
    .fluidInputs([<liquid:redstone> * 144])
    .outputs(<enderio:item_basic_capacitor>)
    .duration(200)
    .EUt(24)
    .buildAndRegister();

	#item buffer
	recipes.remove(<enderio:block_buffer>);
	alloyer.recipeBuilder()
    .inputs(<enderio:item_conduit_facade>, <ore:chest>)
    .outputs(<enderio:block_buffer>)
    .duration(100)
    .EUt(12)
    .buildAndRegister();

	#power Buffer
	recipes.remove(<enderio:block_buffer:1>);
	assembler.recipeBuilder()
    .inputs(<gregtech:machine:501>, <ore:screwBlueSteel>*2,<ore:wireFineCopper>*4)
    .fluidInputs([<liquid:redstone> * 144])
    .outputs(<enderio:block_buffer:1>)
    .duration(160)
    .EUt(22)
    .buildAndRegister();	

	#zlogic controller
	assembler.recipeBuilder()
    .inputs(<minecraft:skull:2>,<ore:ingotSoularium>*2, <ore:waferSilicon>*2)
    .fluidInputs([<liquid:redstone> * 144])
    .outputs(<ore:skullZombieController>.firstItem)
    .duration(160)
    .EUt(48)
    .buildAndRegister();	

	#Skeletal contractor
	assembler.recipeBuilder()
    .inputs(<minecraft:skull>,<ore:ingotElectricalSteel>*2, <ore:waferSilicon>*2)
    .fluidInputs([<liquid:redstone> * 144])
    .outputs(<ore:skullSkeletalContractor>.firstItem)
    .duration(160)
    .EUt(28)
    .buildAndRegister();	


	#ender resonator
	assembler.recipeBuilder()
    .inputs(<ore:ingotSoularium>*2, <enderio:block_enderman_skull>, <appliedenergistics2:material:20>*2, <ore:ingotVibrantAlloy>)
    .fluidInputs([<liquid:ender> * 1000])
    .outputs(<enderio:item_material:43>)
    .duration(1200)
    .EUt(24)
    .buildAndRegister();
	
	#me conduit
	assembler.recipeBuilder()
    .inputs(<enderio:item_material:4>*2, <appliedenergistics2:part:16>)
    .fluidInputs([<liquid:redstone> * 20])
    .outputs(<enderio:item_me_conduit>)
    .duration(80)
    .EUt(24)
    .buildAndRegister();

	#soul machine frame
	alloyer.recipeBuilder()
    .inputs(<gregtech:machine:502>, <enderio:item_alloy_ingot:7>*2)
    .outputs(<enderio:item_material:53>)
    .duration(80)
    .EUt(42)
    .buildAndRegister();


	#Alloys
	#Conductive iron
alloyer.recipeBuilder()
    .inputs(<ore:dustRedstone>*4, <ore:ingotIron>)
    .outputs(<enderio:item_alloy_ingot:4> * 1)
    .duration(50)
    .EUt(42)
    .buildAndRegister();

	#Redstone alloy
alloyer.recipeBuilder()
    .inputs(<ore:ingotRedAlloy>, <ore:ingotIron>)
    .outputs(<enderio:item_alloy_ingot:3> * 2)
    .duration(40)
    .EUt(12)
    .buildAndRegister();

	#Pulsating iron
alloyer.recipeBuilder()
    .inputs(<ore:dustEnderPearl>, <minecraft:iron_ingot>)
    .outputs(<enderio:item_alloy_ingot:5>)
    .duration(120)
    .EUt(48)
    .buildAndRegister();

	#Iron alloy
alloyer.recipeBuilder()
    .inputs(<ore:dustGraphite>, <ore:ingotIron> * 4 )
    .outputs(<enderio:item_alloy_ingot:9> * 4)
    .duration(40)
    .EUt(12)
    .buildAndRegister();

	#Electrical Steel
alloyer.recipeBuilder()
    .inputs(<ore:dustSilicon>, <ore:ingotSteel> * 4 )
    .outputs(<enderio:item_alloy_ingot> * 4)
    .duration(40)
    .EUt(120)
    .buildAndRegister();

	#Crude steel from coaldust
alloyer.recipeBuilder()
    .inputs(<ore:ingotIron>, <ore:dustCoal>)
    .outputs(<enderio:item_alloy_endergy_ingot>)
    .duration(40)
    .EUt(16)
    .buildAndRegister();

	#Crude steel from charcoal dust
alloyer.recipeBuilder()
    .inputs(<ore:ingotIron>, <ore:dustCharcoal>)
    .outputs(<enderio:item_alloy_endergy_ingot>)
    .duration(60)
    .EUt(18)
    .buildAndRegister();
	
	#Clear glass	
	alloyer.recipeBuilder()
    .inputs(<ore:sand>, <ore:blockGlass> )
    .outputs(<enderio:block_fused_glass>)
    .duration(10)
    .EUt(4)
    .buildAndRegister();
	
	#Enlightened Clear glass	
	alloyer.recipeBuilder()
    .inputs(<enderio:block_fused_glass>, <ore:dustGlowstone>)
    .outputs(<enderio:block_enlightened_fused_glass>)
    .duration(60)
    .EUt(12)
    .buildAndRegister();	

	#Dark Clear glass	
	alloyer.recipeBuilder()
    .inputs(<enderio:block_fused_glass>, <ore:dustCharcoal>)
    .outputs(<enderio:block_dark_fused_glass>)
    .duration(60)
    .EUt(12)
    .buildAndRegister();	

	alloyer.recipeBuilder()
    .inputs(<enderio:block_fused_glass>, <ore:dustCoal>)
    .outputs(<enderio:block_dark_fused_glass>)
    .duration(60)
    .EUt(12)
    .buildAndRegister();	
	
	#Crystalline Alloy Ingot
	alloyer.recipeBuilder()
    .inputs(<ore:crystalChunk>, <ore:dustDiamond>*4)
    .outputs(<ore:ingotCrystallineAlloy>.firstItem)
    .duration(80)
    .EUt(42)
    .buildAndRegister();

	
	#crude steel cooks into slag
	<enderio:item_alloy_endergy_ingot>.addTooltip(format.darkRed("通过在炼狱熔炉烧制得到钢。"));
	furnace.remove(<thermalfoundation:rockwool:7>);
	furnace.addRecipe(<thermalfoundation:material:864>, <enderio:item_alloy_endergy_ingot>);

	#soularium
blast_furnace.recipeBuilder()
    .inputs(<minecraft:soul_sand>, <netherbackport:netheriteingot>)
    .fluidInputs([<liquid:nitrogen> * 500])
    .outputs(<enderio:item_alloy_ingot:7>)
    .property("temperature", 1700)
    .duration(220)
    .EUt(120)
    .buildAndRegister();

	#dark steel
blast_furnace.recipeBuilder()
    .inputs(<ore:dustObsidian>*4, <ore:ingotBlackSteel>)
    .fluidInputs([<liquid:hydrogen> * 500])
    .outputs(<enderio:item_alloy_ingot:6>)
    .property("temperature", 2500)
    .duration(220)
    .EUt(480)
    .buildAndRegister();

	#end steel
blast_furnace.recipeBuilder()
    .inputs(<ore:dustTungstenSteel>, <deepmoblearning:living_matter_extraterrestrial>)
    .fluidInputs([<liquid:hydrogen> * 500])
    .outputs(<enderio:item_alloy_ingot:8>)
    .property("temperature", 2500)
    .duration(220)
    .EUt(480)
    .buildAndRegister();

	#fused Quartz
blast_furnace.recipeBuilder()
    .inputs(<ore:dustNetherQuartz> * 4, <ore:dustGraphite>)
    .fluidInputs([<liquid:oxygen> * 100])
    .outputs(<enderio:block_fused_quartz> *2)
    .property("temperature", 1700)
    .duration(100)
    .EUt(120)
    .buildAndRegister();

	#energetic Alloy
blast_furnace.recipeBuilder()
    .inputs(<ore:dustRedstone> * 4, <ore:ingotGold>)
    .fluidInputs([<liquid:hydrogen> * 500])
    .outputs(<enderio:item_alloy_ingot:1>)
    .property("temperature", 2500)
    .duration(100)
    .EUt(480)
    .buildAndRegister();

	#Vibrant Alloy
blast_furnace.recipeBuilder()
    .inputs(<ore:dustEnderPearl>,<ore:ingotEnergeticAlloy>)
    .fluidInputs([<liquid:hydrogen> * 500])
    .outputs(<enderio:item_alloy_ingot:2>)
    .property("temperature", 2500)
    .duration(200)
    .EUt(480)
    .buildAndRegister();

	#stellar alloy
mixer.recipeBuilder()
    .inputs(<actuallyadditions:item_dust:7>*2,<astralsorcery:itemcraftingcomponent:2>, <enderio:block_infinity_fog>, <ore:dustFluix>)
    .fluidInputs([<liquid:glowstone> * 144])
    .outputs(<ore:dustStellarAlloy>.firstItem * 2)
    .duration(80)
    .EUt(320)
    .buildAndRegister();

	#infinity reagent
	mods.astralsorcery.Altar.addAttunementAltarRecipe("interactions:infinityreagent", <enderio:item_material:75>*3, 320, 200, [
	null,<projecte:item.pe_covalence_dust:1>,null,
	<ore:dustObsidian>,<enderio:block_infinity_fog>,<ore:dustObsidian>,
	null,<bloodmagic:component:29>,null,
	<ore:dustGraphite>,<ore:dustGraphite>,<ore:dustGraphite>,<ore:dustGraphite>]);		
	
mixer.recipeBuilder()
    .inputs(<ore:dustGraphite>, <projecte:item.pe_covalence_dust:1>, <ore:dustObsidian>*2)
    .fluidInputs([<fluid:liquidnightmares> * 50])
	.outputs(<enderio:item_material:75>*3)
    .duration(200)
    .EUt(220)
    .buildAndRegister();
	
	
	#wired Charger
	recipes.remove(<enderio:block_wired_charger>);

	#stellarIngot
	furnace.addRecipe(<enderio:item_alloy_endergy_ingot:3>, <ore:dustStellarAlloy>);

	#transceiver
	recipes.remove(<enderio:block_transceiver>);
	recipes.addShaped(<enderio:block_transceiver>,
	[[<ore:stickEnderium>, <thermalfoundation:glass_alloy>, <ore:stickEnderium>],
	[<ore:plateNetherStar>, <metaitem:emitter.ev>, <ore:plateNetherStar>],
	[<ore:stickEnderium>, <thermalfoundation:glass_alloy>, <ore:stickEnderium>]]);

	#unpresurized tank
	recipes.remove(<enderio:block_tank>);
	recipes.addShaped(<enderio:block_tank>,
	[[<ore:plateSteel>, <minecraft:iron_bars>, <ore:plateSteel>],
	[<minecraft:iron_bars>, <thermalexpansion:tank>, <minecraft:iron_bars>],
	[<ore:plateSteel>, <minecraft:iron_bars>, <ore:plateSteel>]]);

	#dark presssure plate
	recipes.remove(<enderio:block_painted_pressure_plate:8>);
	recipes.addShaped(<enderio:block_painted_pressure_plate:8>,
	[[null, <ore:plateSteel>, null],
	[null, <minecraft:stone_pressure_plate>, null],
	[null, <minecraft:wool:15>, null]]);

	#painting machine
	recipes.remove(<enderio:block_painter>);
	recipes.addShaped(<enderio:block_painter>,
	[[<ore:plateNetherQuartz>, <minecraft:diamond>, <ore:plateNetherQuartz>],
	[<enderio:item_material:11>, <gregtech:machine:501>, <enderio:item_material:11>],
	[<ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>]]);

	#advanced item filter
	recipes.remove(<enderio:item_advanced_item_filter>);
	recipes.addShaped(<enderio:item_advanced_item_filter>,
	[[<minecraft:redstone>, <metaitem:circuit.vacuum.tube>, <minecraft:redstone>],
	[<minecraft:redstone>, <enderio:item_basic_item_filter>, <minecraft:redstone>],
	[<minecraft:redstone>, <minecraft:redstone>, <minecraft:redstone>]]);

	#industrial chassis
	recipes.addShaped(<enderio:item_material:1>, [[<enderio:item_material:69>, <enderio:item_material:69>, <enderio:item_material:69>],[<enderio:item_material:69>, <gregtech:machine:502>, <enderio:item_material:69>], [<enderio:item_material:69>, <enderio:item_material:69>, <enderio:item_material:69>]]);


print("----------------Ender IO End-------------------");
