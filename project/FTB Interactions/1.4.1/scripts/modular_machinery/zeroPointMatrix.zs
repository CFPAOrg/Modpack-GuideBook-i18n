import mods.modularmachinery.RecipePrimer;
import mods.modularmachinery.RecipeBuilder;

var machineName = "zero_point_matrix";

function createRecipeName(machineName as string, recipeName as string) as string {
	return machineName + "_" + recipeName;
}

	#Enriched naquadah fuel from dust + a ton of energy 
mods.modularmachinery.RecipeBuilder.newBuilder(createRecipeName(machineName, "naquadahfuel"), machineName, 1)
	.addEnergyPerTickInput(554400)
	.addItemInput(<ore:dustTinyNaquadahEnriched>)
	.addFluidOutput(<liquid:naquadah_enriched> * 16)
	.build();
	