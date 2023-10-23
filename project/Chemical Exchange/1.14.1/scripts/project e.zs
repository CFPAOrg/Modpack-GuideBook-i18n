recipes.remove(<projecte:item.pe_philosophers_stone>);
<projecte:item.pe_philosophers_stone>.addTooltip(format.red("目前禁用"));

val alchCoal = <projecte:item.pe_fuel>;
val mobiusCoal = <projecte:item.pe_fuel:1>;
val aetCoal = <projecte:item.pe_fuel:2>;
recipes.addShapeless(alchCoal,
[<minecraft:coal>,<minecraft:coal>,<minecraft:coal>,<minecraft:coal>,<alchemistry:element:94>]);
recipes.removeByRecipeName("projecte:item.pe_fuel_0");
recipes.removeByRecipeName("projecte:item.pe_fuel_1");
recipes.removeByRecipeName("projecte:item.pe_fuel_2");

recipes.removeByRecipeName("projecte:conversions/mobius_fuel_to_alchemical_coal");
recipes.removeByRecipeName("projecte:conversions/alchemical_coal_to_coal");
recipes.removeByRecipeName("projecte:conversions/emerald_to_diamond");
recipes.removeByRecipeName("projecte:conversions/gold_to_iron");
recipes.removeByRecipeName("projecte:conversions/diamonds_to_iron");
recipes.removeByRecipeName("projecte:conversions/iron_to_ender_pearl");
recipes.removeByRecipeName("projecte:conversions/iron_to_gold");
recipes.removeByRecipeName("projecte:conversions/diamond_to_emerald");
recipes.removeByRecipeName("projecte:conversions/gold_to_diamond");
recipes.removeByRecipeName("projecte:conversions/diamond_to_iron");
recipes.removeByRecipeName("projecte:conversions/aeternalis_fuel_to_mobius_fuel");

recipes.addShapeless(alchCoal*4,[mobiusCoal]);

recipes.addShapeless(mobiusCoal,[alchCoal,alchCoal,alchCoal,alchCoal,<minecraft:blaze_powder>]);

recipes.addShapeless(aetCoal,[mobiusCoal,mobiusCoal,mobiusCoal,mobiusCoal,<minecraft:ender_pearl>]);

recipes.remove(<projecte:transmutation_table>);
recipes.addShaped(<projecte:transmutation_table>,
[[<minecraft:obsidian>,<ore:stone>,<minecraft:obsidian>],
[<ore:stone>,mobiusCoal,<ore:stone>],
[<minecraft:obsidian>,<ore:stone>,<minecraft:obsidian>]]);

recipes.remove(<projecte:interdiction_torch>);
recipes.addShaped(<projecte:interdiction_torch>,
[[<minecraft:redstone_torch>,<minecraft:diamond>,<minecraft:redstone_torch>],
 [<minecraft:diamond>,<minecraft:torch>,<minecraft:diamond>],
 [<minecraft:glowstone_dust>,<minecraft:glowstone_dust>,<minecraft:glowstone_dust>]]);


 recipes.replaceAllOccurences(<minecraft:diamond>,<minecraft:ender_pearl>,<projecte:condenser_mk1>);

 recipes.replaceAllOccurences(<projecte:item.pe_covalence_dust:1>,<projecte:item.pe_covalence_dust>,<projecte:alchemical_chest>);
 recipes.replaceAllOccurences(<projecte:item.pe_covalence_dust:2>,<projecte:item.pe_covalence_dust>,<projecte:alchemical_chest>);

 recipes.remove(<projecte:item.pe_tome>);
 <projecte:item.pe_tome>.addTooltip(format.red("禁用"));

recipes.replaceAllOccurences(<projecte:item.pe_matter>,<projectex:matter:9>,<projecte:item.pe_time_watch>);

recipes.replaceAllOccurences(<projecte:item.pe_time_watch>,<projecte:item.pe_soul_stone>,<projecte:item.pe_gem_armor_1>);