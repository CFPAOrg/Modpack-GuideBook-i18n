import mods.modularmachinery.RecipePrimer;
import mods.modularmachinery.RecipeBuilder;

var machineName = "improved_coke_oven";

function createRecipeName(machineName as string, recipeName as string) as string {
	return machineName + "_" + recipeName;
}


	#Coke coal from charcoal
mods.modularmachinery.RecipeBuilder.newBuilder(createRecipeName(machineName, "cokeCoalfromCharcoal"), machineName, 500)
	.addItemOutput(<ore:gemCoke>.firstItem * 1)
	.addItemInput(<ore:charcoal>)
	.addFluidOutput(<liquid:creosote> * 1000)
	.build();
	
	#Lignite Coke Coal
mods.modularmachinery.RecipeBuilder.newBuilder(createRecipeName(machineName, "lignitecokeCoal"), machineName, 500)
	.addItemOutput(<ore:gemLigniteCoke>.firstItem * 1)
	.addItemInput(<ore:gemLignite>)
	.addFluidOutput(<liquid:creosote> * 1500)
	.build();
	
	#Coke Coal
mods.modularmachinery.RecipeBuilder.newBuilder(createRecipeName(machineName, "cokeCoal"), machineName, 500)
	.addItemOutput(<ore:gemCoke>.firstItem * 1)
	.addItemInput(<ore:coal>)
	.addFluidOutput(<liquid:creosote> * 1500)
	.build();	
	
	#Charocoal
mods.modularmachinery.RecipeBuilder.newBuilder(createRecipeName(machineName, "charcoalfromWood"), machineName, 250)
	.addItemOutput(<minecraft:coal:1>)
	.addItemInput(<ore:logWood>)
	.addFluidOutput(<liquid:creosote> * 50)
	.build();
	
	#CharocoalFromMenril
mods.modularmachinery.RecipeBuilder.newBuilder(createRecipeName(machineName, "charcoalfromMenrilWood"), machineName, 250)
	.addItemOutput(<minecraft:coal:1>)
	.addItemInput(<ore:logMenril>)
	.addFluidOutput(<liquid:creosote> * 100)
	.build();