// 覆盖部分被写死在原脚本中的显示名改动，方便通过 lang 进行本地化

#priority -943943

import crafttweaker.item.IItemStack;
import crafttweaker.mods.IMod;

val ofsf = "omnifactory.";

val DNMap as string[IItemStack] = {
    <actuallyadditions:block_misc:9> : "aluminium_casing",
    <advancedrocketry:fuelingstation> : "fueling_station",
    <enderio:block_dark_iron_bars> : "dark_steel_bars",
    <armorplus:coal_helmet> : "cp_helmet",
    <armorplus:coal_chestplate> : "cp_chestplate",
    <armorplus:coal_leggings> : "cp_leggings",
    <armorplus:coal_boots> : "cp_boots",
    <enderio:item_dark_steel_helmet> : "ds_helmet",
    <enderio:item_dark_steel_chestplate> : "ds_chestplate",
    <enderio:item_dark_steel_leggings> : "ds_leggings",
    <enderio:item_dark_steel_boots> : "ds_boots",
    <enderio:item_end_steel_helmet> : "es_helmet",
    <enderio:item_end_steel_chestplate> : "es_chestplate",
    <enderio:item_end_steel_leggings> : "es_leggings",
    <enderio:item_end_steel_boots> : "es_boots",
    <thermalfoundation:tool.hammer_stone> : "hammer_stone",
    <thermalfoundation:tool.hammer_tin> : "hammer_tin",
    <thermalfoundation:tool.hammer_copper> : "hammer_copper",
    <thermalfoundation:tool.hammer_nickel> : "hammer_nickel",
    <thermalfoundation:tool.hammer_platinum> : "hammer_platinum",
    <thermalfoundation:tool.hammer_bronze> : "hammer_bronze",
    <thermalfoundation:tool.hammer_iron> : "hammer_iron",
    <thermalfoundation:tool.hammer_diamond> : "hammer_diamond",
    <minecraft:shears> : "shears",
    <rangedpumps:pump> : "ender_pump",
    <gregtech:machine:511> : "ebf_controller",
    <gregtech:machine:702> : "fih_ulv",
    <gregtech:machine:712> : "fih_lv",
    <gregtech:machine:722> : "fih_mv",
    <gregtech:machine:732> : "fih_hv",
    <gregtech:machine:742> : "fih_ev",
    <gregtech:machine:752> : "fih_iv",
    <gregtech:machine:762> : "fih_luv",
    <gregtech:machine:772> : "fih_zpm",
    <gregtech:machine:782> : "fih_uv",
    <gregtech:machine:792> : "fih_max",
    <gregtech:machine:703> : "foh_ulv",
    <gregtech:machine:713> : "foh_lv",
    <gregtech:machine:723> : "foh_mv",
    <gregtech:machine:733> : "foh_hv",
    <gregtech:machine:743> : "foh_ev",
    <gregtech:machine:753> : "foh_iv",
    <gregtech:machine:763> : "foh_luv",
    <gregtech:machine:773> : "foh_zpm",
    <gregtech:machine:783> : "foh_uv",
    <gregtech:machine:793> : "foh_max",
    <enderio:item_basic_capacitor> : "rf_cap_1",
    <enderio:item_basic_capacitor:1> : "rf_cap_2",
    <enderio:item_basic_capacitor:2> : "rf_cap_8",
    <enderio:item_power_conduit> : "econduit_cond_iron",
    <enderio:item_power_conduit:1> : "econduit_ener_alloy",
    <enderio:item_power_conduit:2> : "econduit_vibr_alloy",
    <enderio:item_endergy_conduit:1> : "econduit_end_steel",
    <enderio:item_endergy_conduit:6> : "econduit_lumium",
    <enderio:item_endergy_conduit:4> : "econduit_signalum",
    <enderio:item_endergy_conduit> : "econduit_enderium",
    <enderio:item_endergy_conduit:10> : "econduit_draconium",
    <enderio:item_endergy_conduit:11> : "econduit_superconductor",
    <thermalfoundation:material:72> : "mana_infused_dust",
    <thermalexpansion:frame> : "thermal_machine_casing",
    <thermalexpansion:frame:64> : "thermal_device_casing",
    <deepmoblearning:machine_casing> : "hull_dark_steel",
    <deepmoblearning:polymer_clay> : "pulsating_polymer_clay",
    <extendedcrafting:material:19> : "conflux_component",
    <extendedcrafting:material:13> : "conflux_catalyst",
    <extendedcrafting:table_advanced> : "ect",
    <extendedcrafting:table_elite> : "ect_elite",
    <extendedcrafting:table_ultimate> : "ect_ultimate",
    <extendedcrafting:singularity_ultimate> : "omnium_mote",
    <extendedcrafting:material:33> : "omnium_nugget",
    <extendedcrafting:material:32> : "omnium_ingot",
    <extendedcrafting:storage:4> : "omnium_block",
    <cns:star_fragment> : "nether_star_north",
    <extendedcrafting:storage:6> : "endest_block",
    <extendedcrafting:material:40> : "endest_star",
    <extendedcrafting:material:41> : "endest_nugget",
    <simplyjetpacks:metaitemmods:12> : "wrought_iron_plating",
    <gregtech:turbine_casing:3> : "magnalium_turbine_casing",
    <enderio:block_cap_bank:2> : "adv_cap_bank",
    <thermalexpansion:frame:130> : "mme_frame",
    <thermalexpansion:frame:146> : "mme_core",
    <thermalexpansion:frame:131> : "mme_frame_signalum",
    <thermalexpansion:frame:147> : "mme_core_signalum",
    <thermalexpansion:frame:132> : "mme_frame_enderium",
    <thermalexpansion:frame:148> : "mme_core_enderium",
    <enderio:block_enchanter> : "ds_enchanter",
    <modularmachinery:blockcontroller> : "mm_controller",
    <extendedcrafting:trimmed:0> : "blacksteel_block",
    <extendedcrafting:trimmed:1> : "blacksteel_block",
    <extendedcrafting:trimmed:2> : "blacksteel_block",
    <extendedcrafting:trimmed:3> : "blacksteel_block",
    <extendedcrafting:trimmed:4> : "blacksteel_block",
    <extendedcrafting:trimmed:5> : "blacksteel_block",
    <gregtech:meta_item_1:15154> : "red_lens",
    <gregtech:meta_item_1:15113> : "green_lens",
    <gregtech:meta_item_1:15092> : "blue_lens",
    <gregtech:meta_item_1:15214> : "draconium_lens",
    <simplefluidtanks:wrench> : "mft_wrench",
    <simplefluidtanks:tankitem> : "mft_block",
    <simplefluidtanks:valveitem> : "mft_valve"
};

for item in DNMap{
    item.displayName = game.localize(ofsf~DNMap[item]);
}
