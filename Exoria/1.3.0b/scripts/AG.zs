print("Advanced Generators");

// Frame
recipes.remove(<advgenerators:iron_frame>);
recipes.addShaped(<advgenerators:iron_frame>, [[<ore:plateIron>, <ore:plateIron>], [<ore:plateIron>, <ore:plateIron>]]);

// Tubing
recipes.remove(<advgenerators:iron_tubing>);
recipes.addShaped(<advgenerators:iron_tubing> * 4, [[null, null, <ore:stickWood>], [null, <immersiveengineering:wirecoil:2>, null], [<ore:stickWood>, null, null]]);
<advgenerators:iron_tubing>.displayName = "钢制管道";
recipes.remove(<advgenerators:iron_wiring>);
recipes.addShaped(<advgenerators:iron_wiring> * 4, [[null, null, <ore:stickWood>], [null, <immersiveengineering:wirecoil:5>, null], [<ore:stickWood>, null, null]]);

// Power IO Module
recipes.remove(<advgenerators:power_io>);
recipes.addShaped(<advgenerators:power_io>, [[<thermaldynamics:duct_0:2>, <minecraft:piston>, <thermaldynamics:duct_0:2>], [<thermaldynamics:duct_0:2>, <buildcraftsilicon:redstone_chipset>, <thermaldynamics:duct_0:2>], [<thermaldynamics:duct_0:2>, <minecraft:piston>, <thermaldynamics:duct_0:2>]]);

// Circuit
recipes.remove(<advgenerators:controller>);
recipes.addShaped(<advgenerators:controller>, [[<appliedenergistics2:material:7>, <buildcraftsilicon:redstone_chipset:3>, <appliedenergistics2:material:7>], [<buildcraftsilicon:redstone_chipset:3>, <forestry:chipsets:2>, <buildcraftsilicon:redstone_chipset:3>], [<appliedenergistics2:material:7>, <buildcraftsilicon:redstone_chipset:3>, <appliedenergistics2:material:7>]]);

// Advanced Pressure Valve
mods.thermalexpansion.InductionSmelter.addRecipe(<advgenerators:advanced_pressure_valve>, <advgenerators:pressure_valve>, <thermalfoundation:material:167> * 4, 10000);

// Turbines
recipes.remove(<advgenerators:turbine_enderium>);
recipes.remove(<advgenerators:turbine_steel>);
recipes.remove(<advgenerators:turbine_gold>);
recipes.remove(<advgenerators:turbine_bronze>);
recipes.remove(<advgenerators:turbine_manyullyn>);
recipes.remove(<advgenerators:turbine_iron>);
recipes.addShaped(<advgenerators:turbine_enderium>, [[<advgenerators:iron_frame>, <advgenerators:iron_tubing>, <advgenerators:iron_frame>], [<advgenerators:iron_wiring>, <advgenerators:turbine_rotor_enderium>, <advgenerators:iron_wiring>], [<advgenerators:iron_frame>, <appliedenergistics2:quantum_link>, <advgenerators:iron_frame>]]);
recipes.addShaped(<advgenerators:turbine_steel>, [[<advgenerators:iron_frame>, <advgenerators:iron_tubing>, <advgenerators:iron_frame>], [<advgenerators:iron_wiring>, <advgenerators:turbine_rotor_steel>, <advgenerators:iron_wiring>], [<advgenerators:iron_frame>, <appliedenergistics2:quantum_link>, <advgenerators:iron_frame>]]);
recipes.addShaped(<advgenerators:turbine_gold>, [[<advgenerators:iron_frame>, <advgenerators:iron_tubing>, <advgenerators:iron_frame>], [<advgenerators:iron_wiring>, <advgenerators:turbine_rotor_gold>, <advgenerators:iron_wiring>], [<advgenerators:iron_frame>, <appliedenergistics2:quantum_link>, <advgenerators:iron_frame>]]);
recipes.addShaped(<advgenerators:turbine_bronze>, [[<advgenerators:iron_frame>, <advgenerators:iron_tubing>, <advgenerators:iron_frame>], [<advgenerators:iron_wiring>, <advgenerators:turbine_rotor_bronze>, <advgenerators:iron_wiring>], [<advgenerators:iron_frame>, <appliedenergistics2:quantum_link>, <advgenerators:iron_frame>]]);
recipes.addShaped(<advgenerators:turbine_manyullyn>, [[<advgenerators:iron_frame>, <advgenerators:iron_tubing>, <advgenerators:iron_frame>], [<advgenerators:iron_wiring>, <advgenerators:turbine_rotor_manyullyn>, <advgenerators:iron_wiring>], [<advgenerators:iron_frame>, <appliedenergistics2:quantum_link>, <advgenerators:iron_frame>]]);
recipes.addShaped(<advgenerators:turbine_iron>, [[<advgenerators:iron_frame>, <advgenerators:iron_tubing>, <advgenerators:iron_frame>], [<advgenerators:iron_wiring>, <advgenerators:turbine_rotor_iron>, <advgenerators:iron_wiring>], [<advgenerators:iron_frame>, <appliedenergistics2:quantum_link>, <advgenerators:iron_frame>]]);

// Controller Staging
mods.recipestages.Recipes.setRecipeStage("multiblock_knowledge", <advgenerators:turbine_controller>);
mods.recipestages.Recipes.setRecipeStage("multiblock_knowledge", <advgenerators:exchanger_controller>);
mods.recipestages.Recipes.setRecipeStage("multiblock_knowledge", <advgenerators:steam_turbine_controller>);
mods.recipestages.Recipes.setRecipeStage("multiblock_knowledge", <advgenerators:syngas_controller>);