import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.artisanworktables.builder.RecipeBuilder;
import mods.gregtech.recipe.RecipeMap;

print("---------------flux network Start------------------");
val mixer = mods.gregtech.recipe.RecipeMap.getByName("mixer");


	#remove RF Battery
	mods.jei.JEI.removeAndHide(<fluxnetworks:herculeanfluxstorage>);
	mods.jei.JEI.removeAndHide(<fluxnetworks:gargantuanfluxstorage>);
	mods.jei.JEI.removeAndHide(<fluxnetworks:fluxstorage>);
	val assembler as RecipeMap = RecipeMap.getByName("assembler");
	
	
	#flux powder
	mixer.recipeBuilder()
    .inputs(<ore:gemCrystalFlux>,<enderio:block_infinity_fog>*4, <ore:dustPlatinum>)
    .fluidInputs([<liquid:blockfluidantimatter> * 1000])
	.outputs(<fluxnetworks:flux>* 16)
    .duration(400)
    .EUt(48)
    .buildAndRegister();
	
	#flux core
	recipes.remove(<fluxnetworks:fluxcore>);
		assembler.recipeBuilder()
		.inputs(<fluxnetworks:flux>*4,<metaitem:quantumeye>,<ore:plateSkystone>*4)
		.fluidInputs(<liquid:redstone> * 1296)
		.outputs(<fluxnetworks:fluxcore>*4)
		.duration(250)
		.EUt(48)
		.buildAndRegister();
		
	#flux controlelr
	recipes.remove(<fluxnetworks:fluxcontroller>);
	recipes.addShaped(<fluxnetworks:fluxcontroller>, 
	[[<fluxnetworks:fluxblock>, <fluxnetworks:fluxcore>, <fluxnetworks:fluxblock>],
	[<fluxnetworks:flux>, <ore:circuitExtreme>, <fluxnetworks:flux>], 
	[<fluxnetworks:fluxblock>, <fluxnetworks:fluxblock>, <fluxnetworks:fluxblock>]]);
	
	#flux plug
	recipes.remove(<fluxnetworks:fluxplug>);
		assembler.recipeBuilder()
		.inputs(<fluxnetworks:fluxcore>*4, <ore:circuitExtreme>, <ore:skullEnderResonator>, <ore:cableGtQuadruplePlatinum>)
		.notConsumable(<metaitem:circuit.integrated>.withTag({Configuration: 0}))
		.fluidInputs(<liquid:redstone> * 576)
		.outputs(<fluxnetworks:fluxplug>)
		.duration(200)
		.EUt(48)
		.buildAndRegister();
	
	#flux Point
	recipes.remove(<fluxnetworks:fluxpoint>);
		assembler.recipeBuilder()
		.inputs(<fluxnetworks:fluxcore>*4, <ore:circuitExtreme>, <ore:skullEnderResonator>, <ore:cableGtQuadruplePlatinum>)
		.notConsumable(<metaitem:circuit.integrated>.withTag({Configuration: 1}))
		.fluidInputs(<liquid:redstone> * 576)
		.outputs(<fluxnetworks:fluxpoint>)
		.duration(200)
		.EUt(48)
		.buildAndRegister();	
print("----------------flux network End-------------------");