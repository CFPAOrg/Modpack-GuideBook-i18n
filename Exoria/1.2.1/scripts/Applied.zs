print("Applied Energistics");


recipes.removeShaped(<appliedenergistics2:grindstone>);
recipes.addShaped(<appliedenergistics2:grindstone>, [[<ore:stone>, <ore:gearWood>, <ore:stone>], [<primal:flint_point>, <ore:stone>, <primal:flint_point>], [<ore:cobblestone>, <primal:flint_point>, <ore:cobblestone>]]);
<appliedenergistics2:grindstone>.displayName = "燧石磨具";

// Use Quartz Dust for something different
<ore:dustQuartz>.remove(<appliedenergistics2:material:3>);
<ore:dustNetherQuartz>.remove(<appliedenergistics2:material:3>);
<appliedenergistics2:material:3>.displayName = "小堆尘土";
recipes.addShaped(<exnihilocreatio:block_dust>, [[<appliedenergistics2:material:3>, <appliedenergistics2:material:3>], [<appliedenergistics2:material:3>, <appliedenergistics2:material:3>]]);
furnace.remove(<*>, <appliedenergistics2:material:3>);

// Charger
recipes.remove(<appliedenergistics2:charger>);
recipes.addShaped(<appliedenergistics2:charger>, [[<ore:ingotSteel>, <appliedenergistics2:material>, <ore:ingotSteel>], [<ore:ingotSteel>, null, null], [<ore:ingotSteel>, <appliedenergistics2:material>, <ore:ingotSteel>]]);

// Remove unnecessary stuff
mods.jei.JEI.removeAndHide(<appliedenergistics2:quartz_vibrant_glass>);
mods.jei.JEI.removeAndHide(<appliedenergistics2:quartz_fixture>);
mods.jei.JEI.removeAndHide(<appliedenergistics2:sky_compass>);
mods.jei.JEI.removeAndHide(<appliedenergistics2:inscriber>);
mods.jei.JEI.removeAndHide(<appliedenergistics2:wireless_access_point>);
mods.jei.JEI.removeAndHide(<appliedenergistics2:security_station>);
mods.jei.JEI.removeAndHide(<appliedenergistics2:quantum_ring>);
mods.jei.JEI.removeAndHide(<appliedenergistics2:spatial_pylon>);
mods.jei.JEI.removeAndHide(<appliedenergistics2:spatial_io_port>);
mods.jei.JEI.removeAndHide(<appliedenergistics2:controller>);
mods.jei.JEI.removeAndHide(<appliedenergistics2:drive>);
mods.jei.JEI.removeAndHide(<appliedenergistics2:chest>);
mods.jei.JEI.removeAndHide(<appliedenergistics2:interface>);
mods.jei.JEI.removeAndHide(<appliedenergistics2:cell_workbench>);
mods.jei.JEI.removeAndHide(<appliedenergistics2:io_port>);
mods.jei.JEI.removeAndHide(<appliedenergistics2:condenser>);
mods.jei.JEI.removeAndHide(<appliedenergistics2:energy_acceptor>);
mods.jei.JEI.removeAndHide(<appliedenergistics2:vibration_chamber>);
mods.jei.JEI.removeAndHide(<appliedenergistics2:quartz_growth_accelerator>);
mods.jei.JEI.removeAndHide(<appliedenergistics2:energy_cell>);
mods.jei.JEI.removeAndHide(<appliedenergistics2:dense_energy_cell>);
mods.jei.JEI.removeAndHide(<appliedenergistics2:creative_energy_cell>);
mods.jei.JEI.removeAndHide(<appliedenergistics2:crafting_unit>);
mods.jei.JEI.removeAndHide(<appliedenergistics2:crafting_accelerator>);
mods.jei.JEI.removeAndHide(<appliedenergistics2:crafting_storage_1k>);
mods.jei.JEI.removeAndHide(<appliedenergistics2:crafting_storage_4k>);
mods.jei.JEI.removeAndHide(<appliedenergistics2:crafting_storage_16k>);
mods.jei.JEI.removeAndHide(<appliedenergistics2:crafting_storage_64k>);
mods.jei.JEI.removeAndHide(<appliedenergistics2:crafting_monitor>);
mods.jei.JEI.removeAndHide(<appliedenergistics2:molecular_assembler>);
mods.jei.JEI.removeAndHide(<appliedenergistics2:light_detector>);
mods.jei.JEI.removeAndHide(<appliedenergistics2:entropy_manipulator>);
mods.jei.JEI.removeAndHide(<appliedenergistics2:wireless_terminal>);
mods.jei.JEI.removeAndHide(<appliedenergistics2:charged_staff>);
mods.jei.JEI.removeAndHide(<appliedenergistics2:matter_cannon>);
mods.jei.JEI.removeAndHide(<appliedenergistics2:portable_cell>);
mods.jei.JEI.removeAndHide(<appliedenergistics2:color_applicator>);
mods.jei.JEI.removeAndHide(<appliedenergistics2:biometric_card>);
mods.jei.JEI.removeAndHide(<appliedenergistics2:memory_card>);
mods.jei.JEI.removeAndHide(<appliedenergistics2:network_tool>);
mods.jei.JEI.removeAndHide(<appliedenergistics2:creative_storage_cell>);
mods.jei.JEI.removeAndHide(<appliedenergistics2:view_cell>);
mods.jei.JEI.removeAndHide(<appliedenergistics2:storage_cell_1k>);
mods.jei.JEI.removeAndHide(<appliedenergistics2:storage_cell_4k>);
mods.jei.JEI.removeAndHide(<appliedenergistics2:storage_cell_16k>);
mods.jei.JEI.removeAndHide(<appliedenergistics2:storage_cell_64k>);
mods.jei.JEI.removeAndHide(<appliedenergistics2:spatial_storage_cell_2_cubed>);
mods.jei.JEI.removeAndHide(<appliedenergistics2:spatial_storage_cell_16_cubed>);
mods.jei.JEI.removeAndHide(<appliedenergistics2:spatial_storage_cell_128_cubed>);
mods.jei.JEI.removeAndHide(<appliedenergistics2:crystal_seed:*>);
mods.jei.JEI.removeAndHide(<appliedenergistics2:paint_ball:*>);
mods.jei.JEI.removeAndHide(<appliedenergistics2:material:28>);
mods.jei.JEI.removeAndHide(<appliedenergistics2:material:44>);
mods.jei.JEI.removeAndHide(<appliedenergistics2:material:25>);
mods.jei.JEI.removeAndHide(<appliedenergistics2:material:52>);
mods.jei.JEI.removeAndHide(<appliedenergistics2:material:27>);
mods.jei.JEI.removeAndHide(<appliedenergistics2:material:53>);
mods.jei.JEI.removeAndHide(<appliedenergistics2:material:29>);
mods.jei.JEI.removeAndHide(<appliedenergistics2:material:31>);
mods.jei.JEI.removeAndHide(<appliedenergistics2:material:26>);
mods.jei.JEI.removeAndHide(<appliedenergistics2:material:30>);
mods.jei.JEI.removeAndHide(<appliedenergistics2:material:34>);
mods.jei.JEI.removeAndHide(<appliedenergistics2:material:37>);
mods.jei.JEI.removeAndHide(<appliedenergistics2:material:33>);
mods.jei.JEI.removeAndHide(<appliedenergistics2:material:35>);
mods.jei.JEI.removeAndHide(<appliedenergistics2:material:32>);
mods.jei.JEI.removeAndHide(<appliedenergistics2:material:36>);
mods.jei.JEI.removeAndHide(<appliedenergistics2:material:38>);
mods.jei.JEI.removeAndHide(<appliedenergistics2:material:39>);
mods.jei.JEI.removeAndHide(<appliedenergistics2:material:43>);
mods.jei.JEI.removeAndHide(<appliedenergistics2:material:41>);
mods.jei.JEI.removeAndHide(<appliedenergistics2:material:42>);
mods.jei.JEI.removeAndHide(<appliedenergistics2:part:*>);

