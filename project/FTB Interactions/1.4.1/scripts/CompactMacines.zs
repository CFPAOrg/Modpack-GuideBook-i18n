import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

print("---------------Compact Machines Start------------------");

	#Personal Shrinking Device
recipes.remove(<compactmachines3:psd>);
recipes.addShaped(<compactmachines3:psd>, 
	[[<ore:screwAluminium>, <rftools:screen>, <ore:screwAluminium>],
	[<ore:plateIron>, <ore:circuitLow>, <ore:plateIron>], 
	[<ore:screwAluminium>, <ore:plateIron>, <ore:screwAluminium>]]);

	#field projector
recipes.remove(<compactmachines3:fieldprojector>);
recipes.addShaped(<compactmachines3:fieldprojector>, 
	[[null, <ore:pearlEnderEye>, null],
	[<ore:plateIron>, <ore:circuitMedium>, <ore:plateIron>], 
	[<ore:plateDiamond>, <compactmachines3:psd>.reuse(), <ore:plateDiamond>]]);	
	
print("---------------Compact Machines End------------------");