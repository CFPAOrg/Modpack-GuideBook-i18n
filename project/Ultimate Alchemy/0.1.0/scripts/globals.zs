#priority 200

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.oredict.IOreDictEntry;

function capitalize(str as string) as string {
	return str.substring(0, 1).toUpperCase() + str.substring(1);
}

function addCrusher(output as IItemStack, input as IItemStack) as bool {
	print("Adding crusher recipe [" ~ display(input) ~ " -> " ~ display(output) ~ "]");
	mods.extrautils2.Crusher.add(output, input);
	mods.thermalexpansion.Pulverizer.addRecipe(output, input, 4000);
	mods.actuallyadditions.Crusher.addRecipe(output, input);
	mods.immersiveengineering.Crusher.addRecipe(output, input, 4000);
	return true;
}


function addCrusherSecondary(output as IItemStack, input as IItemStack, secondary as IItemStack, chance as int) as bool {
	print("Adding crusher recipe [" ~ display(input) ~ " -> " ~ display(output) ~ " + " ~ display(secondary) ~ " * " ~ chance ~ "% ]");
	mods.thermalexpansion.Pulverizer.addRecipe(output, input, 4000, secondary, chance);
	mods.actuallyadditions.Crusher.addRecipe(output, input, secondary, chance);
	return true;
}

function addAlloy(output as IItemStack, first as IIngredient, second as IIngredient) as bool {
	print("Adding alloy recipe [" ~ display(first) ~ " + " ~ display(second) ~ " -> " ~ display(output) ~ "]");
	mods.immersiveengineering.AlloySmelter.addRecipe(output, first, second, 2000);
	for firstStack in first.items {
		for secondStack in second.items {
			mods.thermalexpansion.InductionSmelter.addRecipe(output, firstStack, secondStack, 2400);
		}
	}
	return true;
}

function display(input as IIngredient) as string {	
	return input.commandString;
}


function replaceShaped(name as string, output as IItemStack, input as IIngredient[][] ) as bool {
	print("Replacing Shaped " ~ name);
	recipes.removeByRecipeName(name);
	recipes.addShaped(stripRecipeName(name), output, input);
	return true;
}

function replaceShapeless(name as string, output as IItemStack, input as IIngredient[] ) as bool {
	print("Replacing Shapeless " ~ name);
	recipes.removeByRecipeName(name);
	recipes.addShapeless(stripRecipeName(name), output, input);
	return true;
}

function stripRecipeName(input as string) as string {
	return input.replaceAll(':','_');
}

function makeBreakable(stack as IItemStack) as bool {
	print("Making breakable: " ~ display(stack));
	var bedrock_definition = stack.asBlock().definition;
	bedrock_definition.hardness = 1;
	bedrock_definition.setHarvestLevel("pickaxe", 0);
	return true;
}

function addFilling(output as IItemStack, cast as IIngredient, liquid as ILiquidStack, amount as int, isBlock as bool) as bool {
	print("Adding filling recipe [" ~ display(cast) ~ " + " ~ display(liquid * amount) ~  " -> " ~ display(output) ~ "]");
	if (isBlock){
		mods.tconstruct.Casting.addBasinRecipe(output, cast, liquid, amount, true);
	} else {
		mods.tconstruct.Casting.addTableRecipe(output, cast, liquid, amount, true);
	}
	for castStack in cast.items {
		mods.thermalexpansion.Transposer.addFillRecipe(output, castStack, liquid * amount, 2000);
	}
	mods.immersiveengineering.BottlingMachine.addRecipe(output, cast, liquid * amount);
	//mods.forestry.Carpenter.addRecipe(output, [[cast]], 30, liquid * amount);
	return true;
}

function addMelting(output as ILiquidStack, input as IIngredient) as bool {
	mods.tconstruct.Melting.addRecipe(output, input);
	for inStack in input.items {
		mods.thermalexpansion.Crucible.addRecipe(output, inStack, 2000);
	}
	return true;
}


//scripts.globals.addChisel("thinker_statue", <contenttweaker:thinker_statue>, <minecraft:stone>);
function addChisel(name as string, output  as IItemStack, input as IItemStack) as bool{
	recipes.addShapeless(name, output, [input, (<chisel:chisel_iron:*> | <chisel:chisel_diamond:*> | <chisel:chisel_hitech:*>).transformDamage(1)]);
	return true;
}

function addJEIBucketTooltip(liquid as string,  tooltip as crafttweaker.formatting.IFormattedText) as bool {
	/*
	<forge:bucketfilled>.withTag({FluidName: liquid}).addTooltip(tooltip);
	<forestry:can:1>.withTag({Fluid: {FluidName: liquid}});
	<forestry:capsule:1>.withTag({Fluid: {FluidName: liquid}});
	<forestry:refractory:1>.withTag({Fluid: {FluidName: liquid}});
	<thermalexpansion:florb>.withTag({Fluid: liquid});
	*/
	return true;
}