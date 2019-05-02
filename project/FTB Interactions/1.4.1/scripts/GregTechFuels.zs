import mods.gregtech.recipe.RecipeMaps;

print("---------------Gregtech Start------------------");
	var infusedFuel = mods.gregtech.recipe.FuelRecipe.create(<liquid:infused_nitrofuel> *2, 15, 128);
	RecipeMaps.DIESEL_GENERATOR_FUELS.addRecipe(infusedFuel);

print("----------------Gregtech End-------------------");

