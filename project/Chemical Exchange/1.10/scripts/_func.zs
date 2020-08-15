import crafttweaker.item.IItemStack;


function disable(input as IItemStack) {
	recipes.remove(input);
	input.addTooltip(format.red("禁用"));
}

function disableAndHide(input as IItemStack){
	recipes.remove(input);
	mods.jei.JEI.hide(input);
}