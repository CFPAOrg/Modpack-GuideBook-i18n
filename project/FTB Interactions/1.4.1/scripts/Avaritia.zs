import mods.gregtech.recipe.RecipeMap;
import mods.gregtech.recipe.RecipeMaps;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.thaumcraft.ArcaneWorkbench;

print("---------------Avaritia Start------------------");
val blast_furnace = mods.gregtech.recipe.RecipeMap.getByName("blast_furnace");
val assembler = mods.gregtech.recipe.RecipeMap.getByName("assembler");
val implosion = mods.gregtech.recipe.RecipeMap.getByName("implosion_compressor");
val autoclave = mods.gregtech.recipe.RecipeMap.getByName("autoclave");
val thermalCent = mods.gregtech.recipe.RecipeMap.getByName("thermal_centrifuge");
val spinnyGoFast = mods.gregtech.recipe.RecipeMap.getByName("centrifuge");
val assembly_line = mods.gregtech.recipe.RecipeMap.getByName("assembly_line");

	#Crystal Lattice
recipes.remove(<avaritia:resource>);
recipes.addShaped(<avaritia:resource>, 
	[[<ore:screwStarmetal>, <ore:plateDiamond>, <ore:screwStarmetal>],
	[<ore:plateDiamond>, <rftools:infused_diamond>, <ore:plateDiamond>], 
	[<ore:screwStarmetal>, <ore:plateDiamond>, <ore:screwStarmetal>]]);

	#Crystal Matrix Ingot
recipes.remove(<avaritia:resource:1>);
blast_furnace.recipeBuilder()
    .inputs(<avaritia:resource>*2, <minecraft:nether_star>)
    .fluidInputs([<liquid:astralsorcery.liquidstarlight> * 10000])
    .outputs(<avaritia:resource:1>)
    .property("temperature", 1700)
    .duration(10000)
    .EUt(480)
    .buildAndRegister();
	
	
	#endest pearl
	mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("endestpearl", "", 5, [<aspect:aer> * 3, <aspect:terra> *3, <aspect:perditio> * 10], <avaritia:endest_pearl>,
	[[null, <avaritia:resource:3>, null],
	[<avaritia:resource:3>, <rftools:infused_enderpearl>,<avaritia:resource:3>],
	[null, <avaritia:resource:3>, null]
	]);
	
	#skullfire sword
	mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("skullfiresword", "", 5, [<aspect:ignis> * 10, <aspect:ordo> *3, <aspect:perditio> * 3], <avaritia:skullfire_sword>,
	[[<ore:screwManasteel>.firstItem, <enderio:block_infinity_fog>, <ore:screwManasteel>.firstItem],
	[<botania:quartz:2>, <astralsorcery:itemcrystalsword>, <botania:quartz:2>],
	[<ore:screwManasteel>.firstItem, <enderio:block_infinity_fog>, <ore:screwManasteel>.firstItem]
	]);
		
#TO INFINITY....
	blast_furnace.recipeBuilder()
		.inputs(<ore:ingotDraconiumAwakened>*4, <avaritia:resource:5>)
		.fluidInputs([<liquid:argon> * 500])
		.outputs(<avaritia:resource:6> *4)
		.property("temperature", 9001)
		.duration(500)
		.EUt(30720)
		.buildAndRegister();	
		
	#molten infinity
mods.tconstruct.Melting.addRecipe(<liquid:infinity>*144, <contenttweaker:infinityegg>);			
		
	#infinity chicken egg
	spinnyGoFast.recipeBuilder()
    .inputs(<contenttweaker:infinityegg>)
    .outputs(<minecraft:egg>)
	.chancedOutput(<roost:chicken>.withTag({Growth: 10, Chicken: "contenttweaker:infinitychicken", Gain: 10, Strength: 10}), 500)
	.chancedOutput(<harvestcraft:scrambledeggitem>, 1500)
	.chancedOutput(<ore:dustNetherStar>.firstItem, 5000)
	.chancedOutput(<rftools:dimensional_shard>, 7500)
    .duration(800)
    .EUt(384)
    .buildAndRegister();
		
	#neutrons
	recipes.remove(<avaritia:resource:2>);
	recipes.remove(<avaritia:resource:3>);
	recipes.remove(<avaritia:resource:4>);
	recipes.addShapeless(<avaritia:resource:4> * 9, [<avaritia:block_resource>]);
	recipes.addShapeless(<avaritia:resource:2> * 9, [<avaritia:resource:3>]);
	recipes.addShapeless(<avaritia:resource:3> * 9, [<avaritia:resource:4>]);

	autoclave.recipeBuilder()
    .inputs(<contenttweaker:infinityegg>)
    .fluidInputs([<liquid:blockfluidantimatter> * 250])
    .outputs(<avaritia:resource:4>* 1)
    .duration(200)
    .EUt(480)
    .buildAndRegister();
	
	#nuggets from dust
	implosion.recipeBuilder()
    .inputs(<avaritia:resource:2>*36)
	.property("explosives", 32)
    .outputs(<avaritia:resource:3>*4)
    .duration(20)
    .EUt(24)
    .buildAndRegister();
	
	#infinity chicken
	assembly_line.recipeBuilder()
	.inputs(<metaitem:stemcells>*8,<draconicevolution:chaos_shard>, <ore:blockDraconiumAwakened>*20, <ore:blockCrystalMatrix>*16, <bloodmagic:decorative_brick:2>*16, <ore:blockCosmicNeutronium>*8, <deepmoblearning:glitch_heart>*8, <ore:blockInfinity>*4)
    .outputs(<roost:chicken>.withTag({Growth: 10, Chicken: "contenttweaker:infinitychicken", Gain: 10, Strength: 10}))
	.fluidInputs([<fluid:mana> * 10000, <fluid:lubricant> * 250, <fluid:polytetrafluoroethylene> * 100])
    .duration(600)
    .EUt(30720)
    .buildAndRegister();
	
	#ingots from nuggets
	implosion.recipeBuilder()
    .inputs(<avaritia:resource:3>*9)
	.property("explosives", 64)
    .outputs(<avaritia:resource:4>)
    .duration(40)
    .EUt(24)
    .buildAndRegister();	
	
	#infinity Armor
	#helmet
	assembly_line.recipeBuilder()
	.inputs(<draconicevolution:draconic_helm>, <ore:plateNaquadahAlloy>*16, <ore:plateNeutronium>*4, <metaitem:field.generator.iv>*2)
    .outputs(<avaritia:infinity_helmet>)
	.fluidInputs([<fluid:infinity> * 6480, <fluid:lubricant> * 250])
    .duration(600)
    .EUt(30720)
    .buildAndRegister();
	
	#chestplate
	assembly_line.recipeBuilder()
	.inputs(<draconicevolution:draconic_chest>, <ore:plateNaquadahAlloy>*16, <ore:plateNeutronium>*4, <metaitem:field.generator.iv>*2)
    .outputs(<avaritia:infinity_chestplate>)
	.fluidInputs([<fluid:infinity> * 10368, <fluid:lubricant> * 250])
    .duration(600)
    .EUt(30720)
    .buildAndRegister();	
	
	#leggings
	assembly_line.recipeBuilder()
	.inputs(<draconicevolution:draconic_legs>, <ore:plateNaquadahAlloy>*16, <ore:plateNeutronium>*4, <metaitem:field.generator.iv>*2)
    .outputs(<avaritia:infinity_pants>)
	.fluidInputs([<fluid:infinity> * 9072, <fluid:lubricant> * 250])
    .duration(600)
    .EUt(30720)
    .buildAndRegister();
	
	#longbow
	assembly_line.recipeBuilder()
	.inputs(<draconicevolution:draconic_bow>, <ore:plateNaquadahAlloy>*8, <ore:plateNeutronium>*2, <metaitem:field.generator.iv>)
    .outputs(<avaritia:infinity_bow>)
	.fluidInputs([<fluid:infinity> * 3888, <fluid:lubricant> * 250])
    .duration(600)
    .EUt(30720)
    .buildAndRegister();	
	
	#Infinity Sword
	assembly_line.recipeBuilder()
	.inputs(<draconicevolution:draconic_sword>, <ore:plateNaquadahAlloy>*8, <ore:plateNeutronium>*2, <metaitem:field.generator.iv>)
    .outputs(<avaritia:infinity_sword>)
	.fluidInputs([<fluid:infinity> * 3888, <fluid:lubricant> * 250])
    .duration(600)
    .EUt(30720)
    .buildAndRegister();		
	
	#infinity Tools
	
		#Infinity pick
	assembly_line.recipeBuilder()
	.inputs(<draconicevolution:draconic_pick>, <ore:plateNaquadahAlloy>*3, <metaitem:field.generator.iv>)
    .outputs(<avaritia:infinity_pickaxe>)
	.fluidInputs([<fluid:infinity> * 432, <fluid:lubricant> * 250])
    .duration(600)
    .EUt(30720)
    .buildAndRegister();	

		#Infinity hoe
	assembly_line.recipeBuilder()
	.inputs(<draconicevolution:draconic_hoe>, <ore:plateNaquadahAlloy>*3, <metaitem:field.generator.iv>)
    .outputs(<avaritia:infinity_hoe>)
	.fluidInputs([<fluid:infinity> * 288, <fluid:lubricant> * 250])
    .duration(600)
    .EUt(30720)
    .buildAndRegister();
	
	#Infinity axe
	assembly_line.recipeBuilder()
	.inputs(<draconicevolution:draconic_axe>, <ore:plateNaquadahAlloy>*3, <metaitem:field.generator.iv>)
    .outputs(<avaritia:infinity_axe>)
	.fluidInputs([<fluid:infinity> * 432, <fluid:lubricant> * 250])
    .duration(600)
    .EUt(30720)
    .buildAndRegister();

	#Infinity shovel
	assembly_line.recipeBuilder()
	.inputs(<draconicevolution:draconic_shovel>, <ore:plateNaquadahAlloy>*3, <metaitem:field.generator.iv>)
    .outputs(<avaritia:infinity_shovel>)
	.fluidInputs([<fluid:infinity> * 144, <fluid:lubricant> * 250])
    .duration(600)
    .EUt(30720)
    .buildAndRegister();
	
	
	mods.jei.JEI.addDescription(<avaritia:resource:2>, "A byproduct of the Mighty Ender Chicken being slowly dissolved in liquid antimatter. How does this happen? Well, that's up to you.");
	
	#Extreme crafting table
mods.jei.JEI.removeAndHide(<avaritia:extreme_crafting_table>);
	
	#Neutronium compressor
mods.jei.JEI.hide(<avaritia:neutronium_compressor>);

	#Neutron collector
mods.jei.JEI.hide(<avaritia:neutron_collector>);
	
	#remove singularities
mods.avaritia.Compressor.remove(<avaritia:singularity:4>); 
mods.jei.JEI.hide(<avaritia:singularity:4>);
mods.avaritia.Compressor.remove(<avaritia:singularity:3>); 
mods.jei.JEI.hide(<avaritia:singularity:3>);
mods.avaritia.Compressor.remove(<avaritia:singularity:2>); 
mods.jei.JEI.hide(<avaritia:singularity:2>);
mods.avaritia.Compressor.remove(<avaritia:singularity:1>); 
mods.jei.JEI.hide(<avaritia:singularity:1>);
mods.avaritia.Compressor.remove(<avaritia:singularity>); 
mods.jei.JEI.hide(<avaritia:singularity>);
	
print("----------------Avaritia End-------------------");
