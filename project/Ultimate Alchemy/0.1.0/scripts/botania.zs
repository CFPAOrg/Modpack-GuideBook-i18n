import crafttweaker.item.IIngredient;

recipes.removeByRecipeName("botania:fertilizer_dye");

mods.botania.Apothecary.removeRecipe("orechid");
mods.botania.Apothecary.removeRecipe("orechidIgnem");
mods.botania.Apothecary.removeRecipe("clayconia");


//mods.botania.PureDaisy.addRecipe(<extrautils2:compresseddirt>, <botania:managlass>,5);
recipes.remove(<botania:grassseeds:7>);
recipes.remove(<botania:grassseeds:8>);

for i in 0 to 16 {
	var j = i + 1;
	if (j == 16) { j = 0; }
	mods.botania.PureDaisy.addRecipe(<botania:petalblock:0>.withDamage(i), <botania:petalblock:0>.withDamage(j), 20);
}

mods.botania.PureDaisy.addRecipe(<botania:altgrass:5>, <botania:altgrass:4>, 20 * 4);

mods.botania.ManaInfusion.addAlchemy(<minecraft:quartz_ore>, <ore:netherrack>, 5000);

recipes.addShapeless(<botania:altgrass:5> * 8, [<minecraft:dirt>,<minecraft:dirt>,<minecraft:dirt>,<minecraft:dirt>, <botania:cosmetic:23>.reuse(), <minecraft:dirt>, <minecraft:dirt>, <minecraft:dirt>, <minecraft:dirt>]);

mods.botania.RuneAltar.addRecipe(<contenttweaker:rune_of_balance> * 2,[<botania:altgrass:4>, <botania:altgrass:5>], 5200);
recipes.addShaped(<contenttweaker:rune_of_balance> * 2,[[null,<ore:nuggetTerrasteel>,null], [<botania:altgrass:4>, <botania:livingrock>, <botania:altgrass:5>],[null,<ore:nuggetTerrasteel>,null]]);

mods.botania.ElvenTrade.addRecipe([<thaumcraft:crystal_aer>, <thaumcraft:crystal_ignis>, <thaumcraft:crystal_terra>, <thaumcraft:crystal_aqua>, <thaumcraft:crystal_ordo>, <thaumcraft:crystal_perditio>, <thaumcraft:crystal_vitium>], [<contenttweaker:rune_of_balance>]);
mods.botania.ElvenTrade.addRecipe([<contenttweaker:alchemy_cheat_sheet>], [<minecraft:paper>]);


mods.botania.ManaInfusion.addInfusion(<botania:manaresource:2>, <extrautils2:suncrystal>, 1000);


mods.botania.PureDaisy.addRecipe(<thaumcraft:taint_rock>, <thaumcraft:stone_porous>, 4 * 20);
mods.botania.PureDaisy.addRecipe(<thaumcraft:taint_soil>, <botania:enchantedsoil>, 4 * 20);
mods.botania.PureDaisy.addRecipe(<thaumcraft:taint_crust>, <minecraft:sponge>, 4 * 20);

mods.botania.PureDaisy.addRecipe(<minecraft:iron_block>, <thermalfoundation:storage:4>, 10 * 20);
mods.botania.PureDaisy.addRecipe(<minecraft:iron_ore>, <thermalfoundation:ore:4>, 10 * 10);


function repeat(input as IIngredient, n as int) as IIngredient[] {
	var out = [] as IIngredient[];
	for i in 0 to n {
		out += input;
	}
	return out;
}

mods.botania.RuneAltar.addRecipe(<contenttweaker:rune_of_iron>, repeat(<ore:ingotIron>, 16), 5200);


mods.botania.RuneAltar.addRecipe(<contenttweaker:rune_of_tragedy>, [<chisel:cloud:*>, <thaumcraft:baubles:1>, <minecraft:water_bucket>, <thaumcraft:baubles:1>, <contenttweaker:rune_of_iron>], 1000);

mods.thermalexpansion.Transposer.addExtractRecipe(<liquid:void> * 1000, <botania:manaresource:15>, 800, <minecraft:glass_bottle> % 100);
mods.thermalexpansion.Transposer.addFillRecipe(<botania:manaresource:15>, <minecraft:glass_bottle>, <liquid:void> * 1000, 800);


mods.botania.Apothecary.addRecipe(<contenttweaker:dragon_tongue>, [<ore:runeGreedB>, <ore:runeGluttonyB>, <ore:eternalLifeEssence>, <ore:petalPurple>, <ore:petalBlack>, <ore:petalPurple>, <ore:petalBlack>]);

mods.botania.ManaInfusion.addConjuration(<ore:eternalLifeEssence>.firstItem * 2, <ore:eternalLifeEssence>, 50000);
mods.botania.ManaInfusion.addConjuration(<minecraft:spider_eye> * 2, <minecraft:spider_eye>, 5000);