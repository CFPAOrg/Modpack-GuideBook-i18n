import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.artisanworktables.builder.RecipeBuilder;

print("---------------Plants Start------------------");

	#Lower crystalTool Durabilities
var crystalTools as IItemStack[] = [
	<plants2:dark_crystal_sword>,
	<plants2:dark_crystal_axe>,
	<plants2:dark_crystal_pickaxe>,
	<plants2:dark_crystal_shovel>,
	<plants2:dark_crystal_hoe>
	];

for i in crystalTools {
	i.maxDamage = 512;
}

	#buff decorative blocks
	recipes.remove(<plants2:crystal:1>);
	recipes.remove(<plants2:crystal:4>);
	recipes.addShaped(<plants2:crystal:4> * 8,
	[[<ore:blockGlass>, <ore:blockGlass>, <ore:blockGlass>],
	[<ore:blockGlass>, <plants2:generic:8>, <ore:blockGlass>], 
	[<ore:blockGlass>, <ore:blockGlass>, <ore:blockGlass>]]);
	
	recipes.addShaped(<plants2:crystal:1> * 8, 
	[[<ore:blockGlass>, <ore:blockGlass>, <ore:blockGlass>],
	[<ore:blockGlass>, <plants2:generic:6>, <ore:blockGlass>], 
	[<ore:blockGlass>, <ore:blockGlass>, <ore:blockGlass>]]);
	
	
	#dark crystal chunks - could be re-implemented elsehwere
recipes.remove(<plants2:generic:8>);

	#disable standard crystal axe
recipes.remove(<plants2:crystal_axe>);
mods.jei.JEI.removeAndHide(<plants2:crystal_axe>);

	#plant ball
	recipes.remove(<plants2:plantball>);
RecipeBuilder.get("basic")
	.setShapeless([<ore:plant>, <ore:plant>, <ore:plant>, <ore:plant>])
	.addTool(<ore:artisanHammers>, 20)
	.setFluid(<liquid:water> * 100)
	.addOutput(<plants2:plantball>*2)
	.create();	
	
	#dark crystals
	mods.bloodmagic.AlchemyArray.addRecipe(<plants2:generic:8>, <astralsorcery:itemusabledust:1>, <plants2:generic:6>);

	<plants2:desert_0:3>.addTooltip(format.darkRed("沙漠之花，可以通过在沙子上使用植物球来获得。"));
	
	mods.thermalexpansion.Insolator.addRecipe(<plants2:crystal_log:1>*16, <plants2:generic:8>, <thermalfoundation:fertilizer>, 1000, <plants2:generic:8>*2, 100);
	mods.thermalexpansion.Insolator.addRecipe(<plants2:crystal_log>*16, <plants2:generic:6>, <thermalfoundation:fertilizer>, 1000, <plants2:generic:6>*2, 100);
	
print("----------------Plants End-------------------");
