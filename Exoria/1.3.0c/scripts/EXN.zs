print("Ex Nihilo");

// Remove Porcelain Clay
mods.jei.JEI.removeAndHide(<exnihilocreatio:item_material:1>);

// Sieve
mods.recipestages.Recipes.setRecipeStage("sieving_knowledge", <exnihilocreatio:block_sieve>);

// String Mesh
recipes.remove(<exnihilocreatio:item_mesh:1>);
recipes.addShaped(<exnihilocreatio:item_mesh:1>, [[<primal:plant_fiber>, <primal:plant_fiber>, <primal:plant_fiber>], [<primal:plant_fiber>, <primal:plant_fiber>, <primal:plant_fiber>], [<primal:plant_fiber>, <primal:plant_fiber>, <primal:plant_fiber>]]);
<exnihilocreatio:item_mesh:1>.displayName = "纤维筛网";

// Flint Mesh
recipes.remove(<exnihilocreatio:item_mesh:2>);
recipes.addShaped(<exnihilocreatio:item_mesh:2>, [[<primal:flint_point>, <primal:flint_point>, <primal:flint_point>], [<primal:flint_point>, <exnihilocreatio:item_mesh:1>, <primal:flint_point>], [<primal:flint_point>, <primal:flint_point>, <primal:flint_point>]]);

// Iron Mesh
recipes.remove(<exnihilocreatio:item_mesh:3>);
recipes.addShaped(<exnihilocreatio:item_mesh:3>, [[<primal:iron_mesh>, <primal:iron_mesh>, <primal:iron_mesh>], [<primal:iron_mesh>, <exnihilocreatio:item_mesh:2>, <primal:iron_mesh>], [<primal:iron_mesh>, <primal:iron_mesh>, <primal:iron_mesh>]]);

// Diamond Mesh
recipes.remove(<exnihilocreatio:item_mesh:4>);
recipes.addShaped(<exnihilocreatio:item_mesh:4>, [[<primal:diamond_point>, <primal:diamond_point>, <primal:diamond_point>], [<primal:diamond_point>, <exnihilocreatio:item_mesh:3>, <primal:diamond_point>], [<primal:diamond_point>, <primal:diamond_point>, <primal:diamond_point>]]);

// Axle
recipes.remove(<exnihilocreatio:block_axle_stone>);
recipes.addShaped(<exnihilocreatio:block_axle_stone>, [[<ore:stickStone>, <ore:stickStone>, <ore:gearStone>]]);

// Disable Hammers and Crooks
mods.jei.JEI.removeAndHide(<exnihilocreatio:hammer_wood>);
mods.jei.JEI.removeAndHide(<exnihilocreatio:hammer_stone>);
mods.jei.JEI.removeAndHide(<exnihilocreatio:hammer_iron>);
mods.jei.JEI.removeAndHide(<exnihilocreatio:hammer_diamond>);
mods.jei.JEI.removeAndHide(<exnihilocreatio:hammer_gold>);
mods.jei.JEI.removeAndHide(<exnihilocreatio:crook_wood>);
mods.jei.JEI.removeAndHide(<exnihilocreatio:crook_bone>);


