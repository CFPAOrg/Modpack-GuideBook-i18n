import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.block.IBlockState;
import mods.animus.AnimusPlugin;
import mods.gregtech.recipe.RecipeMap;
import mods.gregtech.recipe.RecipeMaps;
import mods.astralsorcery.Utils;
import mods.modularmachinery.RecipePrimer;
import mods.modularmachinery.RecipeBuilder as mmBuilder;


print("---------------Deep Mob Learning Start------------------");

val sootyRedstone = <deepmoblearning:soot_covered_redstone>;
val alloyer = mods.gregtech.recipe.RecipeMap.getByName("alloy_smelter");
val chemReactor = mods.gregtech.recipe.RecipeMap.getByName("chemical_reactor");
val assembler = mods.gregtech.recipe.RecipeMap.getByName("assembler");
val centrifuge = mods.gregtech.recipe.RecipeMap.getByName("centrifuge");

    #remove crafting recipes
recipes.removeShapeless(<minecraft:prismarine_shard>*2, [<deepmoblearning:living_matter_overworldian>,<ore:plateNetherQuartz>.firstItem], true);
recipes.removeByRecipeName("deepmoblearning:living_matter_exchange/transmutes0_overworldian/recipe9_cobweb");
recipes.removeByRecipeName("deepmoblearning:living_matter_exchange/transmutes0_overworldian/recipe8_gunpowder");
recipes.removeByRecipeName("deepmoblearning:living_matter_exchange/transmutes0_overworldian/recipe7_spider_eye");
recipes.removeByRecipeName("deepmoblearning:living_matter_exchange/transmutes0_overworldian/recipe6_arrow");
recipes.removeByRecipeName("deepmoblearning:living_matter_exchange/transmutes0_overworldian/recipe5_bone");
recipes.removeByRecipeName("deepmoblearning:living_matter_exchange/transmutes0_overworldian/recipe3_rotten_flesh");
recipes.removeByRecipeName("deepmoblearning:living_matter_exchange/transmutes0_overworldian/recipe2_potato");
recipes.removeByRecipeName("deepmoblearning:living_matter_exchange/transmutes0_overworldian/recipe1_carrot");
recipes.removeByRecipeName("deepmoblearning:living_matter_exchange/transmutes0_overworldian/recipe0_grass");
recipes.removeByRecipeName("deepmoblearning:living_matter_exchange/transmutes1_hellish/recipe0_soul_sand");
recipes.removeByRecipeName("deepmoblearning:living_matter_exchange/transmutes1_hellish/recipe5_nether_wart");
recipes.removeByRecipeName("deepmoblearning:living_matter_exchange/transmutes1_hellish/recipe2_blaze_rod");
recipes.removeByRecipeName("deepmoblearning:living_matter_exchange/transmutes1_hellish/recipe1_blaze_powder");
recipes.removeByRecipeName("deepmoblearning:living_matter_exchange/transmutes1_hellish/recipe3_ghast_tear"); 
recipes.removeByRecipeName("deepmoblearning:living_matter_exchange/transmutes2_extraterrestrial/recipe4_chorus_fruit");
recipes.removeByRecipeName("deepmoblearning:living_matter_exchange/transmutes2_extraterrestrial/recipe3_nether_star"); 
recipes.removeByRecipeName("deepmoblearning:living_matter_exchange/transmutes2_extraterrestrial/recipe1_end_stone");

	#Loot Fabricator Recipe Replacements in Infuser
/*
mods.modularmachinery.mmBuilder.newBuilder(recipeName, value, overclockedTime)
		.addEnergyPerTickInput(overclockedRate)
		.addItemInput(input)
		.addItemOutput(output)
		.build();
*/
	#Pristine Zombie Matter
recipes.addShapeless(<minecraft:rotten_flesh> * 64, [<deepmoblearning:pristine_matter_zombie>]);
mmBuilder.newBuilder("zombieHeart", "alchemical_matter_infuser", 100)
	.addItemInput(<deepmoblearning:pristine_matter_zombie>)
	.addItemOutput(<xreliquary:mob_ingredient:6>) 	//Zombie Heart
	.build();
mmBuilder.newBuilder("zombieHead", "alchemical_matter_infuser", 100)
	.addItemInput(<deepmoblearning:pristine_matter_zombie>)
	.addFluidInput(<liquid:unstable_mana> * 100)
	.addFluidInput(<liquid:xpjuice> * 40)
	.addItemOutput(<minecraft:skull:2> * 8)			//Zombie Skull
	.build();

	#Pristine Skeleton Matter
recipes.addShapeless(<minecraft:bone> * 64, [<deepmoblearning:pristine_matter_skeleton>]);
mmBuilder.newBuilder("skeletonBone", "alchemical_matter_infuser", 100)
	.addItemInput(<deepmoblearning:pristine_matter_skeleton>)
	.addItemOutput(<xreliquary:mob_ingredient>) 	//Rib Bone
	.build();
mmBuilder.newBuilder("skeletonSkull", "alchemical_matter_infuser", 100)
	.addItemInput(<deepmoblearning:pristine_matter_skeleton>)
	.addFluidInput(<liquid:unstable_mana> * 100)
	.addFluidInput(<liquid:xpjuice> * 40)
	.addItemOutput(<minecraft:skull> * 8)			//Skeleton Skull
	.build();

	#Pristine Matter Creeper
recipes.addShapeless(<minecraft:gunpowder> * 64, [<deepmoblearning:pristine_matter_creeper>]);
mmBuilder.newBuilder("creeperGland", "alchemical_matter_infuser", 100)
	.addItemInput(<deepmoblearning:pristine_matter_creeper>)
	.addItemOutput(<xreliquary:mob_ingredient:3>) 		//Catalyzing Gland
	.build();
mmBuilder.newBuilder("creeperSkull", "alchemical_matter_infuser", 100)
	.addItemInput(<deepmoblearning:pristine_matter_creeper>)
	.addFluidInput(<liquid:unstable_mana> * 100)
	.addFluidInput(<liquid:xpjuice> * 40)
	.addItemOutput(<minecraft:skull:4> * 8)				//Creeper Skull
	.build();

	#Pristine Matter Spider
recipes.addShapeless(<minecraft:string> * 64, [<deepmoblearning:pristine_matter_spider>]);
mmBuilder.newBuilder("spiderChelicerae", "alchemical_matter_infuser", 100)
	.addItemInput(<deepmoblearning:pristine_matter_spider>)
	.addItemOutput(<xreliquary:mob_ingredient:2>) 		//Chelicerae
	.build();
mmBuilder.newBuilder("spiderEye", "alchemical_matter_infuser", 100)
	.addItemInput(<deepmoblearning:pristine_matter_spider>)
	.addFluidInput(<liquid:unstable_mana> * 100)
	.addFluidInput(<liquid:xpjuice> * 40)
	.addItemOutput(<minecraft:spider_eye> * 16)			//Spider Eye
	.build();

	#Pristine Wither Skeleton Matter
recipes.addShapeless(<xreliquary:mob_ingredient:1> * 16, [<deepmoblearning:pristine_matter_wither_skeleton>]);
mmBuilder.newBuilder("witherSkull", "alchemical_matter_infuser", 100)
	.addItemInput(<deepmoblearning:pristine_matter_wither_skeleton>)
	.addFluidInput(<liquid:unstable_mana> * 100)
	.addFluidInput(<liquid:xpjuice> * 40)
	.addItemOutput(<minecraft:skull:1> * 18)			//Wither Skull
	.build();

	#Pristine Slime Matter
mmBuilder.newBuilder("slime", "alchemical_matter_infuser", 100)
	.addItemInput(<deepmoblearning:pristine_matter_slime>)
	.addItemOutput(<minecraft:slime> * 5)				//Slime Block
	.build();
	
	#squid beak 

mmBuilder.newBuilder("squidBeak", "alchemical_matter_infuser", 100)
	.addItemInput(<harvestcraft:calamarirawitem>*4)
	.addFluidInput(<liquid:unstable_mana> * 100)
	.addFluidInput(<liquid:xpjuice> * 40)
	.addItemOutput(<xreliquary:mob_ingredient:12>)			
	.build();	


	#Creative Model Learner
assembler.recipeBuilder()
	.inputs(<deepmoblearning:deep_learner>,<deepmoblearning:glitch_infused_ingot>*16, <projecte:item.pe_matter>*2,<ore:circuitLudicrous>, <deepmoblearning:pristine_matter_thermal_elemental>, <deepmoblearning:pristine_matter_blaze>, <deepmoblearning:pristine_matter_enderman>)
    .outputs(<deepmoblearning:creative_model_learner>)
	.fluidInputs([<liquid:polytetrafluoroethylene> * 288])
    .duration(200)
    .EUt(7196)
    .buildAndRegister();
	
mmBuilder.newBuilder("slimePearl", "alchemical_matter_infuser", 100)
	.addItemInput(<deepmoblearning:pristine_matter_slime>)
	.addFluidInput(<liquid:unstable_mana> * 100)
	.addFluidInput(<liquid:xpjuice> * 40)
	.addItemOutput(<xreliquary:mob_ingredient:4> * 4)		
	.build();	

	#Pristine Witch Matter
recipes.addShapeless(<minecraft:sugar> * 64, [<deepmoblearning:pristine_matter_witch>]);
mmBuilder.newBuilder("witchHat", "alchemical_matter_infuser", 100)
	.addItemInput(<deepmoblearning:pristine_matter_witch>)
	.addItemOutput(<xreliquary:witch_hat>)
	.build();

	#Pristine Blaze Matter
recipes.addShapeless(<minecraft:blaze_powder> * 64, [<deepmoblearning:pristine_matter_blaze>]);
mmBuilder.newBuilder("blazeRod", "alchemical_matter_infuser", 100)
	.addItemInput(<deepmoblearning:pristine_matter_blaze>)
	.addItemOutput(<minecraft:blaze_rod> * 16) 					//Blaze Rod
	.build();
mmBuilder.newBuilder("blazeCore", "alchemical_matter_infuser", 100)
	.addItemInput(<deepmoblearning:pristine_matter_blaze>)
	.addFluidInput(<liquid:unstable_mana> * 100)
	.addFluidInput(<liquid:xpjuice> * 40)
	.addItemOutput(<xreliquary:mob_ingredient:7> * 16)			//Blaze Core
	.build();

	#Pristine Ghast Matter
mmBuilder.newBuilder("ghastTear", "alchemical_matter_infuser", 100)
	.addItemInput(<deepmoblearning:pristine_matter_ghast>)
	.addItemOutput(<minecraft:ghast_tear> * 8)
	.build();

	#Pristine Enderman Matter
recipes.addShapeless(<minecraft:ender_pearl> * 32, [<deepmoblearning:pristine_matter_enderman>]);
mmBuilder.newBuilder("enderHeart", "alchemical_matter_infuser", 100)
	.addItemInput(<deepmoblearning:pristine_matter_enderman>)
	.addItemOutput(<xreliquary:mob_ingredient:11> * 16) 	//Nebulous Heart
	.build();
mmBuilder.newBuilder("enderHead", "alchemical_matter_infuser", 100)
	.addItemInput(<deepmoblearning:pristine_matter_enderman>)
	.addFluidInput(<liquid:unstable_mana> * 100)
	.addFluidInput(<liquid:xpjuice> * 40)
	.addItemOutput(<enderio:block_enderman_skull> * 16)
	.build();

	#Pristine Shulker Matter
mmBuilder.newBuilder("shulkerShell", "alchemical_matter_infuser", 100)
	.addItemInput(<deepmoblearning:pristine_matter_shulker>)
	.addItemOutput(<minecraft:shulker_shell> * 16) 					//Shulker Shell
	.build();

	#Pristine Guardian Matter
recipes.addShapeless(<minecraft:fish> * 64, [<deepmoblearning:pristine_matter_guardian>]);
mmBuilder.newBuilder("guardianPrismarine", "alchemical_matter_infuser", 100)
	.addItemInput(<deepmoblearning:pristine_matter_guardian>)
	.addItemOutput(<minecraft:prismarine_shard> * 16) 	//Guardian Spike
	.build();
mmBuilder.newBuilder("guardianSpike", "alchemical_matter_infuser", 100)
	.addItemInput(<deepmoblearning:pristine_matter_guardian>)
	.addFluidInput(<liquid:unstable_mana> * 100)
	.addFluidInput(<liquid:xpjuice> * 40)
	.addItemOutput(<xreliquary:mob_ingredient:16> * 8)
	.build();


	#Pristine Blue Slime Matter
mmBuilder.newBuilder("blueSlime", "alchemical_matter_infuser", 150)
	.addItemInput(<deepmoblearning:pristine_matter_tinker_slime>)
	.addFluidInput(<liquid:liquid_death> * 1000)
	.addFluidInput(<liquid:xpjuice> * 40)
	.addItemOutput(<tconstruct:slime_congealed:2> * 16)
	.build();
	
mmBuilder.newBuilder("orangeSlime", "alchemical_matter_infuser", 150)
	.addItemInput(<deepmoblearning:pristine_matter_tinker_slime>)
	.addFluidInput(<liquid:unstable_mana> * 100)
	.addFluidInput(<liquid:xpjuice> * 40)
	.addItemOutput(<tconstruct:slime_congealed:1> * 16)
	.build();

mmBuilder.newBuilder("purpleSlime", "alchemical_matter_infuser", 150)
	.addItemInput(<deepmoblearning:pristine_matter_tinker_slime>)
	.addFluidInput(<liquid:lava> * 1000)
	.addFluidInput(<liquid:xpjuice> * 40)
	.addItemOutput(<tconstruct:slime_congealed:4> * 16)
	.build();

	#Pristine Thermal Elemental
mmBuilder.newBuilder("rodBlizz", "alchemical_matter_infuser", 100)
	.addItemInput(<deepmoblearning:pristine_matter_thermal_elemental>)
	.addFluidInput(<liquid:water> * 1000)
	.addFluidInput(<liquid:xpjuice> * 40)
	.addItemOutput(<ore:rodBlizz>.firstItem * 8)
	.build();
mmBuilder.newBuilder("rodBlitz", "alchemical_matter_infuser", 100)
	.addItemInput(<deepmoblearning:pristine_matter_thermal_elemental>)
	.addFluidInput(<liquid:unstable_mana> * 100)
	.addFluidInput(<liquid:xpjuice> * 40)
	.addItemOutput(<ore:rodBlitz>.firstItem * 8)
	.build();
mmBuilder.newBuilder("rodBasalz", "alchemical_matter_infuser", 100)
	.addItemInput(<deepmoblearning:pristine_matter_thermal_elemental>)
	.addFluidInput(<liquid:lava> * 1000)
	.addFluidInput(<liquid:xpjuice> * 40)
	.addItemOutput(<ore:rodBasalz>.firstItem * 8)
	.build();


	#Pristine Matter Wither
recipes.remove(<deepmoblearning:data_model_wither>);
mods.jei.JEI.removeAndHide(<deepmoblearning:pristine_matter_wither>);

	#Pristine Matter Dragon
mmBuilder.newBuilder("dragonBreath", "alchemical_matter_infuser", 150)
	.addItemInput(<deepmoblearning:pristine_matter_dragon>)
	.addItemInput(<minecraft:glass_bottle> * 64)
	.addFluidInput(<liquid:xpjuice> * 400)	
	.addItemOutput(<minecraft:dragon_breath> * 64) 			//Dragon Breath
	.build();

mmBuilder.newBuilder("dragonEgg", "alchemical_matter_infuser", 100)
	.addItemInput(<deepmoblearning:pristine_matter_dragon>)
	.addFluidInput(<liquid:unstable_mana> * 100)
	.addFluidInput(<liquid:xpjuice> * 8000)				//Dragon Egg
	.addItemOutput(<minecraft:dragon_egg> * 4)
	.build();

	#new matter centrifuge recipes
centrifuge.recipeBuilder()
	.inputs(<deepmoblearning:living_matter_overworldian>)
	.fluidOutputs([<liquid:xpjuice> * 200])
	.chancedOutput(<minecraft:bone>, 2500)
	.chancedOutput(<minecraft:rotten_flesh>, 5000)
	.chancedOutput(<minecraft:spider_eye>, 750)
	.chancedOutput(<minecraft:gunpowder>, 2000)
	.chancedOutput(<minecraft:arrow>, 2500)
	.chancedOutput(<minecraft:prismarine_shard>, 100)
    .duration(120)
    .EUt(8)
    .buildAndRegister();

centrifuge.recipeBuilder()
	.inputs(<deepmoblearning:living_matter_hellish>)
	.fluidOutputs([<liquid:xpjuice> * 280])
	.chancedOutput(<minecraft:blaze_rod>, 500)
	.chancedOutput(<minecraft:soul_sand>, 2500)
	.chancedOutput(<minecraft:nether_wart>, 750)
    .duration(240)
    .EUt(8)
    .buildAndRegister();

centrifuge.recipeBuilder()
	.inputs(<deepmoblearning:living_matter_extraterrestrial>)
	.fluidOutputs([<liquid:xpjuice> * 400])
	.chancedOutput(<minecraft:ender_pearl>, 100)
	.chancedOutput(<quark:biotite>, 250)
	.chancedOutput(<botania:manaresource:15>, 150)
    .duration(360)
    .EUt(8)
    .buildAndRegister();
	

recipes.remove(<deepmoblearningbm:digital_agonizer>);
mods.astralsorcery.Altar.addAttunementAltarRecipe("deepmoblearning:agonizer", <deepmoblearningbm:digital_agonizer>, 500, 600, [
	<astralsorcery:blockblackmarble>, <ore:plateThaumium>, <astralsorcery:blockblackmarble>,
	<metaitem:electric.pump.lv>, <gregtech:machine_casing:1>,<bloodmagic:monster_soul>,
	<astralsorcery:blockblackmarble>, <ore:plateThaumium>, <astralsorcery:blockblackmarble>,
	<ore:cableGtSingleRedAlloy>, <ore:cableGtSingleRedAlloy>, <ore:cableGtSingleRedAlloy>, <ore:cableGtSingleRedAlloy>]);
	
	#agonizer linker
recipes.remove(<deepmoblearningbm:altar_linker>);
mods.astralsorcery.Altar.addDiscoveryAltarRecipe("deepmoblearning:linker", <deepmoblearningbm:altar_linker>, 120, 200, [
	null, null, null,
	<ore:cableGtSingleRedAlloy>, <ore:eyeofredstone>, <metaitem:circuit.vacuum.tube>,
	<deepmoblearning:soot_covered_plate>, <deepmoblearning:soot_covered_plate>, <deepmoblearning:soot_covered_plate>]);
	
	#deep Learner
recipes.remove(<deepmoblearning:deep_learner>);
recipes.addShaped(<deepmoblearning:deep_learner>, [
	[<deepmoblearning:soot_covered_plate>, <ore:plateLapis>, <deepmoblearning:soot_covered_plate>],
	[<ore:wireGtSingleRedAlloy>, <deepmoblearning:soot_covered_plate>, <ore:wireGtSingleRedAlloy>], 
	[<deepmoblearning:soot_covered_plate>, <tconstruct:edible:2>, <deepmoblearning:soot_covered_plate>]]);
	
	#soot covered machine casing
recipes.remove(<deepmoblearning:machine_casing>);
recipes.addShaped(<deepmoblearning:machine_casing>, [
	[<deepmoblearning:soot_covered_plate>, <minecraft:obsidian>, <deepmoblearning:soot_covered_plate>],
	[<minecraft:obsidian>, <gregtech:machine:501>, <minecraft:obsidian>], 
	[<deepmoblearning:soot_covered_plate>, <minecraft:obsidian>, <deepmoblearning:soot_covered_plate>]]);
	
	#data model blank
recipes.remove(<deepmoblearning:data_model_blank>);
recipes.addShaped(<deepmoblearning:data_model_blank>, 
	[[<ore:screwManasteel>, <metaitem:circuit.vacuum.tube>, <ore:screwManasteel>],
	[<ore:cableGtSingleRedAlloy>, <ore:plateIron>, <ore:cableGtSingleRedAlloy>],
	[<ore:screwManasteel>, <ore:plateGold>, <ore:screwManasteel>]]);

	#remove loot fabricator
mods.jei.JEI.removeAndHide(<deepmoblearning:extraction_chamber>);

	#remove wither data model
mods.jei.JEI.removeAndHide(<deepmoblearning:data_model_wither>);
mods.jei.JEI.removeAndHide(<deepmoblearning:data_model_dragon>);
	
	#polymer clay
recipes.remove(<deepmoblearning:polymer_clay>);
alloyer.recipeBuilder()
    .inputs(<minecraft:clay_ball>*4, <ore:ingotPlastic>)
    .outputs(<deepmoblearning:polymer_clay> * 32)
    .duration(80)
    .EUt(18)
    .buildAndRegister();
	
	#remove matter shapecraft recipes
recipes.remove(<deepmoblearning:living_matter_hellish>);
recipes.remove(<deepmoblearning:living_matter_extraterrestrial>);
	
	#glitch armor and sword
recipes.remove(<deepmoblearning:glitch_infused_leggings>);
recipes.addShaped(<deepmoblearning:glitch_infused_leggings>, [
	[<deepmoblearning:glitch_infused_ingot>, <ore:plateNetherStar>, <deepmoblearning:glitch_infused_ingot>],
	[<ore:screwTungstenSteel>, <minecraft:iron_leggings>, <ore:screwTungstenSteel>], 
	[<deepmoblearning:glitch_infused_ingot>, <ore:screwTungstenSteel>, <deepmoblearning:glitch_infused_ingot>]]);

recipes.remove(<deepmoblearning:glitch_infused_boots>);
recipes.addShaped(<deepmoblearning:glitch_infused_boots>, [
	[<deepmoblearning:glitch_infused_ingot>, <ore:plateNetherStar>, <deepmoblearning:glitch_infused_ingot>],
	[<ore:screwTungstenSteel>, <minecraft:iron_boots>, <ore:screwTungstenSteel>], 
	[<deepmoblearning:glitch_infused_ingot>, <ore:screwTungstenSteel>, <deepmoblearning:glitch_infused_ingot>]]);

recipes.remove(<deepmoblearning:glitch_infused_helmet>);
recipes.addShaped(<deepmoblearning:glitch_infused_helmet>, [
	[<deepmoblearning:glitch_infused_ingot>, <ore:plateNetherStar>, <deepmoblearning:glitch_infused_ingot>],
	[<ore:screwTungstenSteel>, <minecraft:iron_helmet>, <ore:screwTungstenSteel>], 
	[<deepmoblearning:glitch_infused_ingot>, <ore:screwTungstenSteel>, <deepmoblearning:glitch_infused_ingot>]]);

recipes.remove(<deepmoblearning:glitch_infused_chestplate>);
recipes.addShaped(<deepmoblearning:glitch_infused_chestplate>, [
	[<deepmoblearning:glitch_infused_ingot>, <metaitem:quantumstar>, <deepmoblearning:glitch_infused_ingot>],
	[<ore:screwTungstenSteel>, <minecraft:iron_chestplate>, <ore:screwTungstenSteel>], 
	[<deepmoblearning:glitch_infused_ingot>, <ore:screwTungstenSteel>, <deepmoblearning:glitch_infused_ingot>]]);

recipes.remove(<deepmoblearning:glitch_infused_sword>);
recipes.addShaped(<deepmoblearning:glitch_infused_sword>, [
	[null, null, <deepmoblearning:glitch_infused_ingot>],
	[<ore:screwTungstenSteel>, <deepmoblearning:glitch_infused_ingot>, null], 
	[<metaitem:quantumstar>, <ore:screwTungstenSteel>, null]]);	
	
	#trial key
recipes.remove(<deepmoblearning:trial_key>);
mods.astralsorcery.Altar.addAttunementAltarRecipe("deepmoblearning:trialkey", <deepmoblearning:trial_key>, 350, 250, [
	null, null, null,
	<ore:ringSteel>, <ore:stickDiamond>,<ore:stickDiamond>,
	null, <ore:nuggetAluminium>, <ore:nuggetAluminium>,
	sootyRedstone,sootyRedstone,sootyRedstone,sootyRedstone]);

print("---------------Deep Mob Learning Start------------------");
