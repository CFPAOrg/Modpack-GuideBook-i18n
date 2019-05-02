import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import mods.artisanworktables.builder.RecipeBuilder;
import mods.gregtech.recipe.RecipeMap;
import mods.thaumcraft.Infusion;
import mods.thaumcraft.ArcaneWorkbench;
import mods.thaumcraft.Crucible;
import mods.astralsorcery.Utils;
import mods.botaniatweaks.Agglomeration;
import mods.botaniatweaks.AgglomerationRecipe;
import mods.modularmachinery.RecipePrimer;
import mods.modularmachinery.RecipeBuilder as mmBuilder;



print("---------------Botania Start------------------");
val forgeHammer = mods.gregtech.recipe.RecipeMap.getByName("forge_hammer");

	#disable manasteel armor
mods.jei.JEI.removeAndHide(<botania:manasteelhelm>);
mods.jei.JEI.removeAndHide(<botania:manasteelhelmreveal>);
mods.jei.JEI.removeAndHide(<botania:manasteelchest>);
mods.jei.JEI.removeAndHide(<botania:manasteellegs>);
mods.jei.JEI.removeAndHide(<botania:manasteelboots>);

	#remove 3x3 shape craft for botania lamps
	recipes.remove(<botania:blazeblock>);

	#disable flux field
mods.jei.JEI.removeAndHide(<botania:rfgenerator>);

mods.jei.JEI.removeAndHide(<botania:fertilizer>);
		
val resonatingGem = <astralsorcery:itemcraftingcomponent:4>;
val marbleSlab = <astralsorcery:blockmarbleslab>;
val autoclave = mods.gregtech.recipe.RecipeMap.getByName("autoclave");	
val compressor as RecipeMap = RecipeMap.getByName("compressor");
val alloyer = mods.gregtech.recipe.RecipeMap.getByName("alloy_smelter");
val blast_furnace = mods.gregtech.recipe.RecipeMap.getByName("blast_furnace");
val mixer = mods.gregtech.recipe.RecipeMap.getByName("mixer");
val assembler = mods.gregtech.recipe.RecipeMap.getByName("assembler");
val illuminationPowder = <astralsorcery:itemusabledust>;
val rockCrystal = mods.astralsorcery.Utils.getCrystalORIngredient(false, false);
val celestialCrystal = mods.astralsorcery.Utils.getCrystalORIngredient(true, false);
val manaPlate = <ore:plateManasteel>;
val attunedCelestialCrystal = mods.astralsorcery.Utils.getCrystalORIngredient(true,true);	
val manaDiamond = <botania:manaresource:2>;
val manaPearl = <botania:manaresource:1>;
val basicWand = <botania:twigwand>.withTag({color1: 0, color2: 0, boundTileZ: 0, boundTileX: 0, boundTileY: -1});
val manaPowder = <botania:manaresource:23>;

    #Cellular Block
recipes.remove(<botania:cellblock>);
recipes.addShaped(<botania:cellblock>*3, [
	[<ore:plant>, <ore:plant>, <ore:plant>],
	[<ore:foodFirmtofu>, <ore:listAllveggie>, <ore:cropBeet>]]);

	#Conjuration Catalyst & Removals
mods.botania.ManaInfusion.removeRecipe(<minecraft:quartz>);
mods.botania.ManaInfusion.removeRecipe(<minecraft:redstone>);
mods.botania.ManaInfusion.removeRecipe(<minecraft:glowstone_dust>);
mods.botania.ManaInfusion.removeRecipe(<minecraft:coal>);
mods.botania.ManaInfusion.removeRecipe(<minecraft:snowball>);
mods.botania.ManaInfusion.removeRecipe(<minecraft:netherrack>);
mods.botania.ManaInfusion.removeRecipe(<minecraft:soul_sand>);

	#unstable_mana productions
mixer.recipeBuilder()
	.inputs(<ore:dustRedstone>*20, <bloodmagic:component:29>)
	.fluidInputs([<liquid:mana_fluid> * 10000, <liquid:ethanol> * 1000])
	.fluidOutputs([<liquid:unstable_mana> * 2000])
    .duration(3600)
    .EUt(24)
    .buildAndRegister();

	#dandelifeon
RecipeBuilder.get("basic")
	.setShaped([
		[<botania:cellblock>, <thermalfoundation:fertilizer>, <botania:cellblock>],
		[<botania:petal:2>, <minecraft:red_flower:5>, <botania:petal:2>],
		[<botania:cellblock>, <botania:petal:4>, <botania:cellblock>]])
    .addTool(<ore:toolShear>, 25)
	.setFluid(<liquid:mana_fluid> * 1000)
    .addOutput(<botania:specialflower>.withTag({type: "dandelifeon"}))
    .create();

		#mana star
RecipeBuilder.get("basic")
	.setShaped([
		[null, <ore:petalMagenta>, null],
		[<ore:petalMagenta>, <plants2:cosmetic_5:1>, <ore:petalPurple>],
		[null, <ore:petalPurple>, null]])
    .addTool(<ore:toolShear>, 5)
	.setFluid(<liquid:mana_fluid> * 200)
    .addOutput(<botania:specialflower>.withTag({type: "manastar"}))
    .create();
	
	#manasteel block conversion
	recipes.addShapeless(<gregtech:compressed_17:4>, [<botania:storage>]);
recipes.addShapeless(<botania:storage>, [<gregtech:compressed_17:4>]);
	
	#diluted mana pool
recipes.remove(<botania:pool:2>);
mods.astralsorcery.Altar.addDiscoveryAltarRecipe("interactions:dilutedmanapool", <botania:pool:2>, 120, 600, [
	null, null, null,
	marbleSlab, null, marbleSlab,
	marbleSlab, marbleSlab, marbleSlab]);	
	
	#elementium helmet
recipes.remove(<botania:elementiumhelm>);
recipes.addShaped(<botania:elementiumhelm>,[
	[<ore:screwThaumium>,resonatingGem,<ore:screwThaumium>],
	[<ore:plateElementium>,<minecraft:leather_helmet>,<ore:plateElementium>],
	[<ore:screwThaumium>,<ore:plateElementium>,<ore:screwThaumium>]
	]);
	
	#elementium helmet of revealing
recipes.remove(<botania:elementiumhelmreveal>);
recipes.addShapeless(<botania:elementiumhelmreveal>,[<botania:elementiumhelmreveal>,<thaumcraft:goggles>]);
	
	#elementium chestplate
recipes.remove(<botania:elementiumchest>);
recipes.addShaped(<botania:elementiumchest>,[
	[<ore:screwThaumium>,resonatingGem,<ore:screwThaumium>],
	[<ore:plateElementium>,<minecraft:leather_chestplate>,<ore:plateElementium>],
	[<ore:screwThaumium>,<ore:plateElementium>,<ore:screwThaumium>]
	]);
	
	#elementium leggings
recipes.remove(<botania:elementiumboots>);
recipes.addShaped(<botania:elementiumboots>,[
	[<ore:screwThaumium>,resonatingGem,<ore:screwThaumium>],
	[<ore:plateElementium>,<minecraft:leather_boots>,<ore:plateElementium>],
	[<ore:screwThaumium>,<ore:plateElementium>,<ore:screwThaumium>]
	]);
	
	#elementium boots
recipes.remove(<botania:elementiumlegs>);	
recipes.addShaped(<botania:elementiumlegs>,[
	[<ore:screwThaumium>,resonatingGem,<ore:screwThaumium>],
	[<ore:plateElementium>,<minecraft:leather_leggings>,<ore:plateElementium>],
	[<ore:screwThaumium>,<ore:plateElementium>,<ore:screwThaumium>]
	]);

	#elven gateway
recipes.remove(<botania:alfheimportal>);
assembler.recipeBuilder()
    .inputs(<botania:livingwood>*6, <bloodmagic:component:29> *2, manaPearl)
    .fluidInputs([<liquid:unstable_mana> * 1000])
    .outputs(<botania:alfheimportal>)
    .duration(500)
    .EUt(48)
    .buildAndRegister();	

	#Endoflames
mods.jei.JEI.hide(<botania:specialflower>.withTag({type: "endoflame"}));
mods.jei.JEI.hide(<botania:floatingspecialflower>.withTag({type: "endoflame"}));

	#Entropinyums
Agglomeration.addRecipe(<botania:specialflower>.withTag({type: "entropinnyum"}), 
		[<minecraft:tnt>, <gregtech:metal_casing:6>, <minecraft:red_flower>]);

	#Gourmaryllis
RecipeMap.getByName("extruder").recipeBuilder()
	.inputs(<ore:foodDelightedmeal>*32)
	.notConsumable(<botania:autocraftinghalo>)
	.outputs(<botania:specialflower>.withTag({type: "gourmaryllis"}))
	.duration(600)
	.EUt(120)
	.buildAndRegister();

	#hopperHock
recipes.addShapeless(<botania:specialflower>.withTag({type: "hopperhock"}),
	[<thaumcraft:seal:1>,<botania:petal>,<botania:petal>,<ore:hopper>]);
	
	#jaded Amaranthus
mods.thaumcraft.Infusion.registerRecipe("jadedamaranthus", "INFUSION", <botania:specialflower>.withTag({type: "jadedAmaranthus"}), 5, 
	[<aspect:herba> * 48, <aspect:alienis> * 8, <aspect:praecantatio> * 8], <plants2:desert_0:3>, 
	[<minecraft:emerald>,<astralsorcery:itemcraftingcomponent>,<astralsorcery:itemcraftingcomponent>,
	<botania:petal:2>,<botania:petal:2>,<thaumcraft:salis_mundus>]);

	#Kekimurus
mods.astralsorcery.Altar.addAttunementAltarRecipe("interactions:kekimurus", <botania:specialflower>.withTag({type: "kekimurus"}), 250, 200, [
	null, null, null,
	null, <minecraft:cake>, null,
	null, null, null,
	<plants2:cosmetic_3:9>, <ore:gaiaIngot>, <ore:manaDiamond>, <ore:manaDiamond>]);

	#mana pool
recipes.remove(<botania:pool>);
mods.astralsorcery.Altar.addAttunementAltarRecipe("interactions:manapool", <botania:pool>, 250, 200, [
	null, null, null,
	<ore:livingrock>, null, <ore:livingrock>,
	<ore:livingrock>, <botania:pool:2>, <ore:livingrock>,
	<projecte:item.pe_covalence_dust:1>,<projecte:item.pe_covalence_dust:1>,<ore:powderMana>,<ore:powderMana>]);

	#mana pylon
recipes.remove(<botania:pylon>);
mods.astralsorcery.Altar.addAttunementAltarRecipe("interactions:manapylon", <botania:pylon>, 350, 200, [
	manaPlate, manaPlate, manaPlate,
	<ore:screwRoseGold>, <astralsorcery:itemperkgem>, <ore:screwRoseGold>,
	manaPlate, manaPlate, manaPlate,
	illuminationPowder,illuminationPowder,illuminationPowder,illuminationPowder]);		

	#mana spreader
recipes.remove(<botania:spreader>);
mods.astralsorcery.Altar.addAttunementAltarRecipe("interactions:spreader", <botania:spreader>, 250, 200, [
	<astralsorcery:blockinfusedwood>, <astralsorcery:blockinfusedwood>, <astralsorcery:blockinfusedwood>,
	<ore:plateBrass>, <astralsorcery:itemcraftingcomponent:3>, null,
	<astralsorcery:blockinfusedwood>, <astralsorcery:blockinfusedwood>, <astralsorcery:blockinfusedwood>,
	<wizardry:wisdom_wood_planks>, <wizardry:wisdom_wood_planks>, <wizardry:wisdom_wood_planks>, <wizardry:wisdom_wood_planks>]);

	#Munchdew
RecipeMap.getByName("chemical_reactor").recipeBuilder()
	.inputs([<botania:specialflower>.withTag({type: "puredaisy"}), manaPowder])
	.fluidInputs([<liquid:sulfuric_acid> * 4000])
	.outputs(<botania:specialflower>.withTag({type: "munchdew"}))
	.duration(2400)
	.EUt(30)
	.buildAndRegister();

	#Petals
var petalPlantMap as IOreDictEntry[IItemStack]= {
	<botania:petal> : <ore:plantWhite>,
	<botania:petal:1> : <ore:plantOrange>,
	<botania:petal:2> : <ore:plantMagenta>,
	<botania:petal:3> : <ore:plantLightBlue>,
	<botania:petal:4> : <ore:plantYellow>,
	<botania:petal:5> : <ore:plantLime>,
	<botania:petal:6> : <ore:plantPink>,
	<botania:petal:7> : <ore:plantGray>,
	<botania:petal:8> : <ore:plantSilver>,
	<botania:petal:9> : <ore:plantCyan>,
	<botania:petal:10> : <ore:plantPurple>,
	<botania:petal:11> : <ore:plantBlue>,
	<botania:petal:12> : <ore:plantBrown>,
	<botania:petal:13> : <ore:plantGreen>,
	<botania:petal:14> : <ore:plantRed>	
};

for petal, plant in petalPlantMap {
	RecipeBuilder.get("basic")
		.setShapeless(
    	[plant, <projecte:item.pe_covalence_dust>])
    	.addTool(<ore:toolShear>, 5)
		.setFluid(<liquid:mana_fluid> * 100)
    	.addOutput(petal)
    	.create();	
}


#floating flowers from tall plantS
var tallMap as IOreDictEntry[IItemStack]= {
	<botania:miniisland> : <ore:mysticFlowerWhiteDouble>,
	<botania:miniisland:4> : <ore:mysticFlowerYellowDouble>,
	<botania:miniisland:2> : <ore:mysticFlowerMagentaDouble>,
	<botania:miniisland:3> : <ore:mysticFlowerLightBlueDouble>,
	<botania:miniisland:5> : <ore:mysticFlowerLimeDouble>,
	<botania:miniisland:6> : <ore:mysticFlowerPinkDouble>,
	<botania:miniisland:7> : <ore:mysticFlowerGrayDouble>,
	<botania:miniisland:1> : <ore:mysticFlowerOrangeDouble>,
	<botania:miniisland:8> : <ore:mysticFlowerLightGrayDouble>,
	<botania:miniisland:9> : <ore:mysticFlowerCyanDouble>,
	<botania:miniisland:10> : <ore:mysticFlowerPurpleDouble>,
	<botania:miniisland:11> : <ore:mysticFlowerBlueDouble>,
	<botania:miniisland:12> : <ore:mysticFlowerBrownDouble>,
	<botania:miniisland:13> : <ore:mysticFlowerGreenDouble>,
	<botania:miniisland:14> : <ore:mysticFlowerRedDouble>,	
	<botania:miniisland:15> : <ore:mysticFlowerBlackDouble>
};

	for island, plant in tallMap {
	recipes.addShaped(island,[
		[null,plant,null],
		[null,<botania:grassseeds>,null],
		[null,<minecraft:dirt>,null]]);
}
	#Narslimmus
RecipeBuilder.get("basic")
	.setShaped([
		[<ore:blockSlime>, manaPowder, <ore:blockSlime>],
		[<ore:petalGreen>, <plants2:cataplant>, <ore:petalGreen>],
		[<ore:blockSlime>, <ore:petalGreen>, <ore:blockSlime>]])
    .addTool(<ore:toolShear>, 25)
	.setFluid(<liquid:mana_fluid> * 1000)
    .addOutput(<botania:specialflower>.withTag({type: "narslimmus"}))
    .create();

	#Natura pylon
recipes.remove(<botania:pylon:1>);
mods.thaumcraft.Infusion.registerRecipe("naturapylon", "INFUSION", <botania:pylon:1>, 5, 
	[<aspect:herba> * 16, <aspect:potentia> * 12, <aspect:praecantatio> * 8, <aspect:sensus> * 12], <botania:pylon>, 
	[manaDiamond,<botania:livingwood>,<botania:livingwood>,<botania:livingwood>,<botania:livingwood>,<minecraft:emerald>,<minecraft:emerald>,<minecraft:ender_eye>]);

	#petropetunia
RecipeBuilder.get("basic")
	.setShaped([
		[null, <thermalfoundation:fertilizer>, null],
		[<botania:petal>, <mekanism:basicblock:9>, <botania:petal>],
		[null, <minecraft:red_flower:6>, null]])
    .addTool(<ore:toolShear>, 25)
	.setFluid(<liquid:oil> * 1000)
    .addOutput(<botania:specialflower>.withTag({type: "petro_petunia"}))
    .create();
   
    #Rafflowsia
RecipeBuilder.get("basic")
	.setShaped([
		[null, manaPowder, null],
		[null, <botania:specialflower>.withTag({type: "puredaisy"}), null],
		[null, <extrautils2:trashcan>, null]])
    .addTool(<ore:toolShear>, 25)
	.setFluid(<liquid:mana_fluid> * 1000)
    .addOutput(<botania:specialflower>.withTag({type: "rafflowsia"}))
    .create();

    #Rannucarpus
//registerRecipe(String name, String research, IItemStack output, int instability, CTAspectStack[] aspects, IIngredient centralItem, IIngredient[] recipe)
mods.thaumcraft.Infusion.registerRecipe("rannucarpus", "INFUSION", <botania:specialflower>.withTag({type: "rannuncarpus"}), 3, 
	[<aspect:herba> * 16, <aspect:motus> * 8, <aspect:auram> * 8], 
	<minecraft:double_plant>, 
	[<actuallyadditions:item_crystal:1>, <botania:petal:4>, <botania:petal:1>, <botania:petal>, <thaumcraft:salis_mundus>]);

    #Rosa Arcana
mods.botania.ManaInfusion.addInfusion(<botania:specialflower>.withTag({type: "arcanerose"}), 
	<metaitem:electric.pump.lv>, 100000);

	#Shulk Me Not
mods.botania.ManaInfusion.addAlchemy(<botania:specialflower>.withTag({type: "shulk_me_not"}), <ore:gaiaIngot>, 750000);

    #Spectrolus
RecipeBuilder.get("basic")
	.setShaped([
		[null, manaPowder, null],
		[<ore:petalBlue>, <botania:specialflower>.withTag({type: "puredaisy"}), <ore:petalRed>],
		[<ore:petalYellow>, <ore:petalGreen>, <ore:petalPurple>]])
    .addTool(<ore:toolShear>, 25)
	.setFluid(<liquid:mana_fluid> * 1000)
    .addOutput(<botania:specialflower>.withTag({type: "spectrolus"}))
    .create();

	#terrasteel
 blast_furnace.recipeBuilder()
    .inputs(<ore:ingotManasteel>, <ore:manaDiamond>)
    .fluidInputs([<liquid:unstable_mana> * 1000])
    .outputs(<botania:manaresource:4>)
    .property("temperature", 1700)
    .duration(500)
    .EUt(480)
    .buildAndRegister();

	
	#Agglomeration
//Add apple-and-potato to cake recipe, consuming half a mana pool.
//Agglomeration.addRecipe(<minecraft:cake>, [<minecraft:apple>, <minecraft:potato>] as IIngredient[]);
//Add a very cheap recipe.
//Agglomeration.addRecipe(<minecraft:stone>, [<minecraft:cobblestone>] as IIngredient[], 500);
	
Agglomeration.removeDefaultRecipe();
recipes.remove(<botania:terraplate>);
	
	#Agglomeration Plate
assembler.recipeBuilder()
    .inputs(<ore:plateTerrasteel> *3, <bloodmagic:demon_light>, <ore:gemFlawlessLapis>)
    .fluidInputs([<liquid:unstable_mana> * 1000])
    .outputs(<botania:terraplate>)
    .duration(500)
    .EUt(48)
    .buildAndRegister();
	
	#glimmer wood
recipes.remove(<botania:livingwood:5>);
mods.astralsorcery.Altar.addAttunementAltarRecipe("interactions:glimmerwood", <botania:livingwood:5>, 350, 200, [
	<botania:livingwood>, <ore:nuggetEmerald>, <botania:livingwood>,
	<ore:nuggetEmerald>, <botania:livingwood>, <ore:nuggetEmerald>,
	<botania:livingwood>, <ore:nuggetEmerald>, <botania:livingwood>,
	illuminationPowder,illuminationPowder,illuminationPowder,illuminationPowder]);		
	
	#gaia ingot
	recipes.remove(<botania:manaresource:14>);
 blast_furnace.recipeBuilder()
    .inputs(<ore:eternalLifeEssence>*4, <ore:ingotTerrasteel>)
    .fluidInputs([<liquid:unstable_mana> * 4000])
    .outputs(<botania:manaresource:14>)
    .property("temperature", 4250)
    .duration(500)
    .EUt(480)
    .buildAndRegister();

	#Runic altar
recipes.remove(<botania:runealtar>);
mods.thaumcraft.Infusion.registerRecipe("runicaltar", "INFUSION", <botania:runealtar>, 12, 
	[<aspect:potentia> * 32, <aspect:praecantatio> * 16, <aspect:auram> * 8, <aspect:ordo> * 16 ], 
	<botania:pool>, 
	[<appliedenergistics2:sky_stone_block>,<appliedenergistics2:sky_stone_block>,
	<integrateddynamics:crystalized_menril_chunk>,<integrateddynamics:crystalized_menril_chunk>,
	<astralsorcery:itemperkgem:2>, <deepmoblearning:glitch_infused_ingot>, <deepmoblearning:glitch_infused_ingot>]);	
	
	#gravity lens
recipes.remove(<botania:lens:6>);
mods.astralsorcery.Altar.addAttunementAltarRecipe("interactions:gravitylens", <botania:lens:6>, 350, 200, [
	null, <botania:rune:7>, null,
	null, <botania:lens>, null,
	null, <ore:ingotSterlingSilver>, null,
	null,null,null,null]);	
	
	#bore lens
recipes.remove(<botania:lens:7>);
mods.astralsorcery.Altar.addAttunementAltarRecipe("interactions:borelens", <botania:lens:7>, 350, 200, [
	null, <botania:rune:4>, null,
	null, <botania:lens>, null,
	null, <ore:ingotSterlingSilver>, null,
	null,null,null,null]);	
	

	
	#terrasteel armor
	#terrasteel helmet
recipes.remove(<botania:terrasteelhelm>);
recipes.addShaped(<botania:terrasteelhelm>,[
	[<ore:screwSterlingSilver>,resonatingGem,<ore:screwSterlingSilver>],
	[<ore:plateTerrasteel>,<botania:elementiumhelm>,<ore:plateTerrasteel>],
	[<ore:screwSterlingSilver>,<ore:plateTerrasteel>,<ore:screwSterlingSilver>]
	]);
	
	#terrasteel helmet of revealing
recipes.remove(<botania:terrasteelhelmreveal>);
recipes.addShapeless(<botania:terrasteelhelmreveal>,
	[<botania:terrasteelhelm>,<thaumcraft:goggles>]);
	
	#terrasteel chestplate
recipes.remove(<botania:terrasteelchest>);
recipes.addShaped(<botania:terrasteelchest>,[
	[<ore:screwSterlingSilver>,resonatingGem,<ore:screwSterlingSilver>],
	[<ore:plateTerrasteel>,<botania:elementiumchest>,<ore:plateTerrasteel>],
	[<ore:screwSterlingSilver>,<ore:plateTerrasteel>,<ore:screwSterlingSilver>]
	]);
	
	#flasksar
recipes.remove(<botania:vial:1>);
recipes.remove(<botania:vial>);
	
	#basic flask
recipes.addShaped(<botania:vial>, 
	[[null, <botania:manaresource:19>, null],
	[<botania:managlass>, null, <botania:managlass>], 
	[null, <botania:managlass>, null]]);

	#elven flask
recipes.addShaped(<botania:vial:1>, 
	[[null, <botania:manaresource:18>, null],
	[<botania:elfglass>, null, <botania:elfglass>], 
	[null, <botania:elfglass>, null]]);
	
	#spark
recipes.remove(<botania:spark>);
assembler.recipeBuilder()
    .inputs(<ore:foilGold>.firstItem *2, <deepmoblearning:pristine_matter_blaze>)
    .fluidInputs([<liquid:astralsorcery.liquidstarlight> * 100])
    .outputs(<botania:spark>)
    .duration(100)
    .EUt(24)
    .buildAndRegister();
	
	#alternatespark
RecipeBuilder.get("basic")
  .setShaped([[null, <ore:plateGold>, null],
  [<ore:plateGold>,<deepmoblearning:pristine_matter_blaze>,<ore:plateGold>],
  [null,<ore:plateGold>,null]])
  .setFluid(<liquid:astralsorcery.liquidstarlight> * 1000)
  .addOutput(<botania:spark>)
  .create();
	
	#horn of the wild
recipes.remove(<botania:grasshorn>);
recipes.addShaped(<botania:grasshorn>, [
	[null, <botania:livingwood:5>, null],
	[<astralsorcery:blockinfusedwood>, <botania:grassseeds>, <astralsorcery:blockinfusedwood>], 
	[<astralsorcery:blockinfusedwood>, <astralsorcery:blockinfusedwood>, null]]);
	
	#quartz variants	
	#sunny
recipes.remove(<botania:quartz:6>);
autoclave.recipeBuilder()
    .inputs(<minecraft:quartz> * 1)
    .fluidInputs([<liquid:astralsorcery.liquidstarlight> * 50])
    .chancedOutput(<botania:quartz:6>, 9000)
    .duration(100)
    .EUt(24)
    .buildAndRegister();

recipes.remove(<botania:quartz:2>);
recipes.addShaped(<botania:quartz:2>, 
	[[<minecraft:blaze_powder>, <minecraft:blaze_powder>, <minecraft:blaze_powder>],
	[<minecraft:blaze_powder>, <minecraft:quartz>, <minecraft:blaze_powder>], 
	[<minecraft:blaze_powder>, <minecraft:blaze_powder>, <minecraft:blaze_powder>]]);
	
recipes.remove(<botania:quartz:3>);
recipes.addShaped(<botania:quartz:3>, 
	[[<randomthings:runedust:10>, <randomthings:runedust:10>, <randomthings:runedust:10>],
	[<randomthings:runedust:10>, <minecraft:quartz>, <randomthings:runedust:10>], 
	[<randomthings:runedust:10>, <randomthings:runedust:10>, <randomthings:runedust:10>]]);

recipes.remove(<botania:quartz:4>);	
recipes.addShaped(<botania:quartz:4>, 
	[[<minecraft:redstone>, <minecraft:redstone>, <minecraft:redstone>],
	[<minecraft:redstone>, <minecraft:quartz>, <minecraft:redstone>], 
	[<minecraft:redstone>, <minecraft:redstone>, <minecraft:redstone>]]);


recipes.remove(<botania:quartz>);
recipes.addShaped(<botania:quartz>, 
	[[<minecraft:coal>, <minecraft:coal>, <minecraft:coal>],
	[<minecraft:coal>, <minecraft:quartz>, <minecraft:coal>], 
	[<minecraft:coal>, <minecraft:coal>, <minecraft:coal>]]);
	
	#terrasteel boots
recipes.remove(<botania:terrasteelboots>);
recipes.addShaped(<botania:terrasteelboots>,[
	[<ore:screwSterlingSilver>,resonatingGem,<ore:screwSterlingSilver>],
	[<ore:plateTerrasteel>,<botania:elementiumboots>,<ore:plateTerrasteel>],
	[<ore:screwSterlingSilver>,<ore:plateTerrasteel>,<ore:screwSterlingSilver>]
	]);
	
	#terrasteel leggings
recipes.remove(<botania:terrasteellegs>);	
recipes.addShaped(<botania:terrasteellegs>,[
	[<ore:screwSterlingSilver>,resonatingGem,<ore:screwSterlingSilver>],
	[<ore:plateTerrasteel>,<botania:elementiumlegs>,<ore:plateTerrasteel>],
	[<ore:screwSterlingSilver>,<ore:plateTerrasteel>,<ore:screwSterlingSilver>]
	]);
	
	#redstring fertilizer
recipes.remove(<botania:redstringfertilizer>);
recipes.addShaped(<botania:redstringfertilizer>, 
	[[<botania:livingrock>, <botania:livingrock>, <botania:livingrock>],
	[<botania:livingrock>, <thermalfoundation:fertilizer>, <botania:manaresource:12>], 
	[<botania:livingrock>, <botania:livingrock>, <botania:livingrock>]]);
	
	
	#coporea index
recipes.remove(<botania:corporeaindex>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("interactions:coporeaindex", "", 25, 
	[<aspect:ordo> * 2, <aspect:perditio> * 2], <botania:corporeaindex>, 
	[[<astralsorcery:itemcraftingcomponent>,null,<astralsorcery:itemcraftingcomponent>], 
	[<ore:plateManasteel>,<botania:corporeaspark>,<ore:plateManasteel>], 
	[<projecte:item.pe_covalence_dust:1>, <ore:plateManasteel>, <projecte:item.pe_covalence_dust:1>]
	]);

	#coporea spark
recipes.remove(<botania:corporeaspark>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("interactions:coporeaspark", "", 25, 
	[<aspect:ordo> * 1, <aspect:perditio> * 1], <botania:corporeaspark>, 
	[[null,null,null], 
	[<thaumcraft:salis_mundus>,<botania:spark>,<thaumcraft:salis_mundus>], 
	[null, null, null]
	]);
	
	#Disabling Petal Apothecary
mods.jei.JEI.removeAndHide(<botania:altar:*>);
var apothecaryRecipesRemoved = [
	"puredaisy",
	"manastar",
	"hydroangeas",
	"thermalily",
	"arcanerose",
	"munchdew",
	"entropinnyum",
	"kekimurus",
	"gourmaryllis",
	"narslimmus",
	"spectrolus",
	"rafflowsia",
	"shulk_me_not",
	"dandelifeon",
	"jadedAmaranthus",
	"bellethorn",
	"dreadthorn",
	"heiseiDream",
	"tigerseye",
	"marimorphosis",
	"orechid",
	"orechidIgnem",
	"fallenKanade",
	"exoflame",
	"agricarnation",
	"hopperhock",
	"rannuncarpus",
	"tangleberrie",
	"jiyuulia",
	"hyacidus",
	"medumone",
	"pollidisiac",
	"clayconia",
	"loonium",
	"daffomill",
	"vinculotus",
	"spectranthemum",
	"bubbell",
	"solegnolia",
	"bergamute"
	] as string[];

for i in apothecaryRecipesRemoved {
	mods.botania.Apothecary.removeRecipe(i);
}




	#Orechid
mods.jei.JEI.hide(<botania:specialflower>.withTag({type: "orechid"}));

	#Orechid Ignem
mods.jei.JEI.hide(<botania:specialflower>.withTag({type: "orechidIgnem"}));

	#loonium
mods.jei.JEI.hide(<botania:specialflower>.withTag({type: "loonium"}));

	#fallen kanade
mods.jei.JEI.hide(<botania:specialflower>.withTag({type: "fallenKanade"}));

	#exoflame
mods.jei.JEI.hide(<botania:specialflower>.withTag({type: "exoflame"}));

	# Pure Daisy
RecipeBuilder.get("basic")
  .setShapeless([<minecraft:red_flower:8>, <roughtweaks:salve>])
  .setFluid(<liquid:mana_fluid> * 1000)
  .addOutput(<botania:specialflower>.withTag({type: "puredaisy"}))
  .create();
  
	#living wood
mods.botania.PureDaisy.removeRecipe(<botania:livingwood>);
mods.botania.PureDaisy.addRecipe(<astralsorcery:blockinfusedwood:6>,<botania:livingwood>, 150);
	
	#living rock
mods.botania.PureDaisy.removeRecipe(<botania:livingrock>);
mods.botania.PureDaisy.addRecipe(<gregtech:concrete>, <botania:livingrock>, 150);
		
	#Dragonstone Block
recipes.remove(blockDragonstone);
compressor.recipeBuilder()
	.inputs(<ore:elvenDragonstone> * 9)
	.outputs(blockDragonstone)
	.duration(400).EUt(2)
	.buildAndRegister();

	#Manadiamond Block
recipes.remove(blockManadiamond);
compressor.recipeBuilder()
	.inputs(<ore:manaDiamond> * 9)
	.outputs(blockManadiamond)
	.duration(400).EUt(2)
	.buildAndRegister();

	#Elementium Block
recipes.remove(blockElementium);
recipes.addShapeless(blockElementium, [<botania:storage:2>]);
compressor.recipeBuilder()
	.inputs(<ore:ingotElvenElementium> * 9)
	.outputs(blockElementium)
	.duration(400).EUt(2)
	.buildAndRegister();

	#Elementium Ingot from Dust
blast_furnace.recipeBuilder()
    .inputs(<ore:dustElementium>)
    .outputs(<ore:ingotElvenElementium>.firstItem )
    .property("temperature", 1700)
    .duration(80)
    .EUt(480)
    .buildAndRegister();

	#Terrasteel Block
recipes.remove(blockTerrasteel);
compressor.recipeBuilder()
	.inputs(<ore:ingotTerrasteel> * 9)
	.outputs(blockTerrasteel)
	.duration(400).EUt(2)
	.buildAndRegister();

	#Manasteel Block
recipes.remove(blockManasteel);
compressor.recipeBuilder()
	.inputs(<ore:ingotManasteel> * 9)
	.outputs(blockManasteel)
	.duration(400).EUt(2)
	.buildAndRegister();

	#Dark Quartz Block
recipes.remove(<botania:quartztypedark>);
compressor.recipeBuilder()
	.inputs(<ore:quartzDark> * 4)
	.outputs(<botania:quartztypedark>)
	.duration(400).EUt(2)
	.buildAndRegister();

	#Mana Quartz
recipes.remove(<botania:quartztypemana>);
compressor.recipeBuilder()
	.inputs(<ore:quartzMana> * 4)
	.outputs(<botania:quartztypemana>)
	.duration(400).EUt(2)
	.buildAndRegister();

	#Blaze Quartz Block
recipes.remove(<botania:quartztypeblaze>);
compressor.recipeBuilder()
	.inputs(<ore:quartzBlaze> * 4)
	.outputs(<botania:quartztypeblaze>)
	.duration(400).EUt(2)
	.buildAndRegister();

	#Lavender Quartz
recipes.remove(<botania:quartztypelavender>);
compressor.recipeBuilder()
	.inputs(<ore:quartzLavender> * 4)
	.outputs(<botania:quartztypelavender>)
	.duration(400).EUt(2)
	.buildAndRegister();

	#Red Quartz Block
recipes.remove(<botania:quartztypered>);
compressor.recipeBuilder()
	.inputs(<ore:quartzRed> * 4)
	.outputs(<botania:quartztypered>)
	.duration(400).EUt(2)
	.buildAndRegister();

	#Elf Quartz Block
recipes.remove(<botania:quartztypeelf>);
compressor.recipeBuilder()
	.inputs(<ore:quartzElven> * 4)
	.outputs(<botania:quartztypeelf>)
	.duration(400).EUt(2)
	.buildAndRegister();

	#Sunny Quartz Block
recipes.remove(<botania:quartztypesunny>);
compressor.recipeBuilder()
	.inputs(<ore:quartzSunny> * 4)
	.outputs(<botania:quartztypesunny>)
	.duration(400).EUt(2)
	.buildAndRegister();
	
	#redstone root
	recipes.remove(<botania:manaresource:6>);
	mods.thaumcraft.Crucible.registerRecipe("redstoneRoot", "BASEALCHEMY", <botania:manaresource:6>, <minecraft:redstone>, [<aspect:herba> * 5, <aspect:aer> * 1]);
	
	#Daffomill
	mods.thaumcraft.Crucible.registerRecipe("daffomill", "BASEALCHEMY", <botania:specialflower>.withTag({type: "daffomill"}), <plants2:cosmetic_3:15>, [<aspect:herba> * 5, <aspect:potentia> * 8, <aspect:motus> * 6]);

	#Bergamute
	mods.bloodmagic.AlchemyArray.addRecipe(<botania:specialflower>.withTag({type: "bergamute"}), <projecte:item.pe_covalence_dust>, <plants2:cosmetic_3>);

	#Solegnoia
	mods.bloodmagic.AlchemyArray.addRecipe(<botania:specialflower>.withTag({type: "solegnolia"}), <ore:dustMagnetite>.firstItem, <plants2:desert_0:11>);

	#Marimophosis
	mods.bloodmagic.AlchemyArray.addRecipe(<botania:specialflower>.withTag({type: "marimorphosis"}), <projecte:item.pe_covalence_dust>, <plants2:cosmetic_2:2>);

	
	#bubbell
	mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("interactions:bubbel", "", 25, 
	[<aspect:aer> * 2, <aspect:terra> * 2, <aspect:aqua> * 5], <botania:specialflower>.withTag({type: "bubbell"}), [
	[<ore:petalWhite>,<ore:petalLime>,<ore:petalWhite>], 
	[<thermalexpansion:florb>.withTag({Fluid: "oxygen"}),<plants2:harvest_1:5>,<thermalexpansion:florb>.withTag({Fluid: "oxygen"})], 
	[<ore:petalLightBlue>,<thaumcraft:salis_mundus>,<ore:petalLightBlue>]]);

	#spectrantheum
	mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("interactions:spectrantheum", "", 20, 
	[<aspect:aer> * 2, <aspect:terra> * 2, <aspect:perditio> * 2, <aspect:ordo> * 2], <botania:specialflower>.withTag({type: "spectranthemum"}), [
	[null,<ore:enderpearl>,null], 
	[<projecte:item.pe_covalence_dust>,<plants2:cosmetic_0:10>,<projecte:item.pe_covalence_dust>], 
	[null,<bloodmagic:soul_snare>,null]]);

	#clayconia
		mods.astralsorcery.Altar.addAttunementAltarRecipe("interactions:clayconia", <botania:specialflower>.withTag({type: "clayconia"}), 350, 600, [
		null, <astralsorcery:itemshiftingstar>, null,
		<ore:sand>, <ore:mysticFlowerGray>, <ore:blockClay>,
		null, <ore:dirt>, null,
		<projecte:item.pe_covalence_dust:1>,<projecte:item.pe_covalence_dust:1>,<projecte:item.pe_covalence_dust:1>,<projecte:item.pe_covalence_dust:1>]);

	#agricarnation
		mods.astralsorcery.Altar.addAttunementAltarRecipe("interactions:agricarnation", <botania:specialflower>.withTag({type: "agricarnation"}), 200, 200, [
		null, <bloodmagic:component:5>, null,
		<ore:powderMana>, <ore:mysticFlowerLime>, <ore:powderMana>,
		null, <ore:petalGreen>, null,
		<minecraft:dye:15>,<minecraft:dye:15>,<minecraft:dye:15>,<minecraft:dye:15>]);

	#tigerseye
		mods.astralsorcery.Altar.addAttunementAltarRecipe("interactions:tigerseye", <botania:specialflower>.withTag({type: "tigerseye"}), 200, 200, [
		null, <xreliquary:mob_ingredient:3>, null,
		<ore:powderMana>, <plants2:cosmetic_2:3>, <ore:powderMana>,
		null, <ore:runeAutumnB>, null,
		<ore:gunpowder>,<ore:gunpowder>,<ore:gunpowder>,<ore:gunpowder>]);
			
	#Heisei dream
	mods.thaumcraft.Infusion.registerRecipe("heiseidream", "INFUSION", <botania:specialflower>.withTag({type: "heiseiDream"}), 5, [<aspect:cognitio> * 16, <aspect:aversio> * 16, <aspect:alienis> * 48, <aspect:draco> * 15], 
	<plants2:harvest_1:3>,
	[<deepmoblearning:glitch_heart>, <metaitem:quantumeye>, <ore:petalPurple>.firstItem, <ore:petalPurple>.firstItem, <ore:petalGray>.firstItem, <ore:petalGray>.firstItem, <botania:manaresource:23>]);
	
	#bellathorne
	mods.bloodmagic.TartaricForge.addRecipe(<botania:specialflower>.withTag({type: "bellethorn"}),[<plants2:cosmetic_5:8>,<minecraft:cactus>,<botania:rune:8>,<botania:manaresource:2>], 80, 128);	

	#dreadthorn
	mods.bloodmagic.BloodAltar.addRecipe(<botania:specialflower>.withTag({type: "dreadthorn"}), <botania:specialflower>.withTag({type: "bellethorn"}), 0, 2000,20,20);
	
	#vinculotus 
	mods.astralsorcery.Altar.addAttunementAltarRecipe("integrations:vinculotus", <botania:specialflower>.withTag({type: "vinculotus"}), 500, 600, [
		<ore:petalPurple>, <ore:gemEnderEye>, <ore:petalBlack>,
		<ore:powderMana>, <plants2:cosmetic_1>, <ore:powderMana>,
		<ore:ingotManasteel>, <ore:cropNetherWart>, <ore:ingotManasteel>,
		<ore:redstoneRoot>,<ore:redstoneRoot>,<ore:redstoneRoot>,<ore:redstoneRoot>]);		
	
	#manapowder
mods.botania.ManaInfusion.removeRecipe(manaPowder);	
mods.botania.ManaInfusion.addInfusion(manaPowder, <thermalfoundation:fertilizer>, 7500);
mods.botania.ManaInfusion.addInfusion(manaPowder *2, <thermalfoundation:fertilizer:1>, 7500);
mods.botania.ManaInfusion.addInfusion(manaPowder *4, <thermalfoundation:fertilizer:2>, 7500);

	#managlass
mods.botania.ManaInfusion.removeRecipe(<botania:managlass>);
assembler.recipeBuilder()
    .inputs(<mekanism:basicblock:10>)
    .fluidInputs([<liquid:unstable_mana> * 10])
    .outputs(<botania:managlass>)
    .duration(100)
    .EUt(12)
    .buildAndRegister();
	
	#mana lens
recipes.remove(<botania:lens>);
mods.astralsorcery.Altar.addDiscoveryAltarRecipe("interactions:manalens", <botania:lens>, 120, 600, [
	null, <ore:ingotManasteel>, null,
	<ore:ingotManasteel>, <botania:managlasspane>, <ore:ingotManasteel>,
	null, <ore:ingotManasteel>, null]);	
		
	#manaweave cloth
recipes.remove(<botania:manaresource:22>);
assembler.recipeBuilder()
    .inputs(<thaumcraft:fabric>)
    .fluidInputs([<liquid:unstable_mana> * 50])
    .outputs(<botania:manaresource:22>)
    .duration(80)
    .EUt(24)
    .buildAndRegister();
	
	#mana pearl
mods.botania.ManaInfusion.removeRecipe(manaPearl);
assembler.recipeBuilder()
    .inputs(<minecraft:ender_eye>)
    .fluidInputs([<liquid:unstable_mana> * 500])
    .outputs(manaPearl)
    .duration(150)
    .EUt(24)
    .buildAndRegister();
	
	#mana diamond
mods.botania.ManaInfusion.removeRecipe(manaDiamond);
mods.botania.ManaInfusion.addInfusion(manaDiamond, <ore:gemFlawlessDiamond>.firstItem, 5000);
assembler.recipeBuilder()
    .inputs(<minecraft:diamond>)
    .fluidInputs([<liquid:unstable_mana> * 250])
    .outputs(manaDiamond)
    .duration(100)
    .EUt(12)
    .buildAndRegister();	
	
	
	#Quartz deblockify
forgeHammer.recipeBuilder()
    .inputs(<botania:quartztypedark>)
	.outputs(<botania:quartz> *4)
    .duration(100)
    .EUt(24)
    .buildAndRegister();	

forgeHammer.recipeBuilder()
    .inputs(<botania:quartztypelavender>)
	.outputs(<botania:quartz:3> *4)
    .duration(100)
    .EUt(24)
    .buildAndRegister();	
	
forgeHammer.recipeBuilder()
    .inputs(<botania:quartztypeblaze>)
	.outputs(<botania:quartz:2> *4)
    .duration(100)
    .EUt(24)
    .buildAndRegister();	

forgeHammer.recipeBuilder()
    .inputs(<botania:quartztypered>)
	.outputs(<botania:quartz:4> *4)
    .duration(100)
    .EUt(24)
    .buildAndRegister();	

forgeHammer.recipeBuilder()
    .inputs(<botania:quartztypeelf>)
	.outputs(<botania:quartz:5> *4)
    .duration(100)
    .EUt(24)
    .buildAndRegister();	

forgeHammer.recipeBuilder()
    .inputs(<botania:quartztypesunny>)
	.outputs(<botania:quartz:6> *4)
    .duration(100)
    .EUt(24)
    .buildAndRegister();	

forgeHammer.recipeBuilder()
    .inputs(<botania:quartztypemana>)
	.outputs(<botania:quartz:1> *4)
    .duration(100)
    .EUt(24)
    .buildAndRegister();	
	
	#Super lens
	val superLens = <botania:lens:2>.withTag({display: {Name: "Super Lens"}, compositeLens: {id: "botania:lens", Count: 1 as byte, tag: {}, Damage: 1 as short}});
	val praecantatioCrystal = <thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "praecantatio"}]});
	
	mods.astralsorcery.Altar.addDiscoveryAltarRecipe("interactions:superlens", superLens, 120, 200, 
	[<ore:screwThaumium>, <botania:manaresource:23>, <ore:screwThaumium>,
	praecantatioCrystal, <botania:lens>, praecantatioCrystal,
	<ore:screwThaumium>, praecantatioCrystal, <ore:screwThaumium>]);
	
	mods.jei.JEI.addItem(superLens);
	
	#alternate vibrant pasture seed
mods.bloodmagic.AlchemyArray.addRecipe(<botania:grassseeds:5>, <projecte:item.pe_covalence_dust>, <minecraft:tallgrass:1>);

	#Manasteel
mods.botania.ManaInfusion.removeRecipe(<botania:manaresource>);
mods.botania.ManaInfusion.removeRecipe(<botania:storage>);
mods.botania.ManaInfusion.addInfusion(<astralsorcery:blockmarble>, <gregtech:mineral>, 500);
mods.botania.ManaInfusion.addInfusion(<botania:manaresource:17>, <ore:nuggetWroughtIron>.firstItem, 5000);
mods.botania.ManaInfusion.addInfusion(<botania:manaresource>, <ore:ingotWroughtIron>.firstItem, 40000);
mods.botania.ManaInfusion.addInfusion(<botania:manaresource>, <ore:ingotSteel>.firstItem, 5000);
mods.botania.ManaInfusion.addInfusion(<botania:manaresource>*4, <ore:ingotStainlessSteel>.firstItem, 5000);
	
	#wand of the forest
recipes.remove(<botania:twigwand>.withTag({color1: 1, color2: 1, boundTileZ: 0, boundTileX: 0, boundTileY: -1}));
recipes.remove(<botania:twigwand>.withTag({color1: 2, color2: 2, boundTileZ: 0, boundTileX: 0, boundTileY: -1}));
recipes.remove(<botania:twigwand>.withTag({color1: 3, color2: 3, boundTileZ: 0, boundTileX: 0, boundTileY: -1}));
recipes.remove(<botania:twigwand>.withTag({color1: 4, color2: 4, boundTileZ: 0, boundTileX: 0, boundTileY: -1}));
recipes.remove(<botania:twigwand>.withTag({color1: 5, color2: 5, boundTileZ: 0, boundTileX: 0, boundTileY: -1}));
recipes.remove(<botania:twigwand>.withTag({color1: 6, color2: 6, boundTileZ: 0, boundTileX: 0, boundTileY: -1}));
recipes.remove(<botania:twigwand>.withTag({color1: 7, color2: 7, boundTileZ: 0, boundTileX: 0, boundTileY: -1}));
recipes.remove(<botania:twigwand>.withTag({color1: 8, color2: 8, boundTileZ: 0, boundTileX: 0, boundTileY: -1}));
recipes.remove(<botania:twigwand>.withTag({color1: 9, color2: 9, boundTileZ: 0, boundTileX: 0, boundTileY: -1}));
recipes.remove(<botania:twigwand>.withTag({color1: 10, color2: 10, boundTileZ: 0, boundTileX: 0, boundTileY: -1}));
recipes.remove(<botania:twigwand>.withTag({color1: 11, color2: 11, boundTileZ: 0, boundTileX: 0, boundTileY: -1}));
recipes.remove(<botania:twigwand>.withTag({color1: 12, color2: 12, boundTileZ: 0, boundTileX: 0, boundTileY: -1}));
recipes.remove(<botania:twigwand>.withTag({color1: 13, color2: 13, boundTileZ: 0, boundTileX: 0, boundTileY: -1}));
recipes.remove(<botania:twigwand>.withTag({color1: 14, color2: 14, boundTileZ: 0, boundTileX: 0, boundTileY: -1}));
recipes.remove(<botania:twigwand>.withTag({color1: 15, color2: 15, boundTileZ: 0, boundTileX: 0, boundTileY: -1}));
recipes.remove(<botania:twigwand>.withTag({color1: 0, color2: 0, boundTileZ: 0, boundTileX: 0, boundTileY: -1}));
recipes.remove(<botania:twigwand>);

recipes.addShaped(basicWand,[
	[null,<integrateddynamics:crystalized_menril_chunk>,<wizardry:wisdom_stick>],
	[null,<wizardry:wisdom_stick>,<ore:petalWhite>],
	[<wizardry:wisdom_stick>,null,null]
	]);	
	
	
	#Alchemy Recipes

	#everlasting guilty pool
	mods.thaumcraft.Infusion.registerRecipe("guiltypool", "INFUSION", <botania:pool:1>, 11, [<aspect:perditio> * 32, <aspect:ordo> * 32, <aspect:auram> * 48, <aspect:alienis> * 48, <aspect:desiderium> * 128], 
	<botania:pool:3>,
	[<industrialforegoing:black_hole_tank>, <gregtech:meta_item_1:32405>.withTag({Fluid: {FluidName: "unstable_mana", Amount: 64000}}), <gregtech:meta_item_1:32405>.withTag({Fluid: {FluidName: "mana", Amount: 64000}}), 
	<gregtech:meta_item_1:32405>.withTag({Fluid: {FluidName: "mana_fluid", Amount: 64000}}), <botania:rune:8>, <botania:rune:10>, <botania:rune:11>, <botania:rune:15>, <avaritia:resource:6>,<avaritia:resource:6>,
	<avaritia:resource:6>,<avaritia:resource:6>]);
	
#relics from dice
mmBuilder.newBuilder("ringofloki", "alchemical_matter_infuser", 100)
	.addItemInput(<botania:dice>)
	.addItemInput(<thaumcraft:baubles:1>)
	.addFluidInput(<liquid:xpjuice> * 40)
	.addItemOutput(<botania:lokiring>)				
	.build();	
	
#relics from dice
mmBuilder.newBuilder("ringofodin", "alchemical_matter_infuser", 100)
	.addItemInput(<botania:lokiring>)
	.addFluidInput(<liquid:xpjuice> * 40)
	.addItemOutput(<botania:odinring>)				
	.build();	
	
#relics from dice
mmBuilder.newBuilder("ringofthor", "alchemical_matter_infuser", 100)
	.addItemInput(<botania:odinring>)
	.addFluidInput(<liquid:xpjuice> * 40)
	.addItemOutput(<botania:thorring>)				
	.build();	
	

#relics from dice
mmBuilder.newBuilder("kingslaw", "alchemical_matter_infuser", 100)
	.addItemInput(<botania:dice>)
	.addItemInput(<minecraft:golden_sword>)
	.addFluidInput(<liquid:xpjuice> * 40)
	.addItemOutput(<botania:kingkey>)				
	.build();	

#relics from dice
mmBuilder.newBuilder("botaniafruit", "alchemical_matter_infuser", 100)
	.addItemInput(<botania:dice>)
	.addItemInput(<extrautils2:magicapple>)
	.addFluidInput(<liquid:xpjuice> * 40)
	.addItemOutput(<botania:infinitefruit>)				
	.build();		

#relics from dice
mmBuilder.newBuilder("eyeofflugel", "alchemical_matter_infuser", 100)
	.addItemInput(<botania:dice>)
	.addItemInput(<botania:manaresource:15>)
	.addFluidInput(<liquid:xpjuice> * 40)
	.addItemOutput(<botania:flugeleye>)				
	.build();	
	
print("----------------Botania End-------------------");
