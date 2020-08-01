import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

print("---------------Cyclic Start------------------");
	#Disabling Melter
mods.jei.JEI.removeAndHide(<cyclicmagic:melter>);

	#remove tank
mods.jei.JEI.removeAndHide(<cyclicmagic:block_storeempty>);

	#Cyclic Wand
recipes.remove(<cyclicmagic:cyclic_wand_build>);
mods.bloodmagic.AlchemyArray.addRecipe(<cyclicmagic:cyclic_wand_build>, <minecraft:bone>, <minecraft:obsidian>);

	#Pharoh's beacon
recipes.remove(<cyclicmagic:beacon_potion>);
recipes.addShaped(<cyclicmagic:beacon_potion>,
	[[<ore:plateVinteum>, <ore:plateVinteum>, <ore:plateVinteum>],
	[<ore:plateVinteum>, <ore:lensNetherStar>, <ore:plateVinteum>],
	[<ore:plateVinteum>, <botania:storage:1>, <ore:plateVinteum>]]);

	#Magic apple
<cyclicmagic:apple_emerald>.displayName = "恢复之果";
<cyclicmagic:apple_emerald>.addTooltip(format.darkRed("用于治愈僵尸村民。(见Zen Summoning模组!)"));

recipes.remove(<cyclicmagic:apple_emerald>);
recipes.addShaped(<cyclicmagic:apple_emerald>,
	[[<projecte:item.pe_covalence_dust>, <minecraft:apple>, <projecte:item.pe_covalence_dust>],
	[<projecte:item.pe_covalence_dust>, <rustic:elixir>.withTag({ElixirEffects: [{Effect: "minecraft:instant_health", Duration: 1, Amplifier: 0}]}), <projecte:item.pe_covalence_dust>], [<projecte:item.pe_covalence_dust>, <projecte:item.pe_covalence_dust>, <projecte:item.pe_covalence_dust>]]);

	#duskflame essence
recipes.remove(<cyclicmagic:fire_dark_anim>*4);
recipes.addShaped(<cyclicmagic:fire_dark_anim>,
	[[null, <minecraft:gunpowder>, null],
	[<minecraft:gunpowder>, <thaumcraft:nitor_purple>, <minecraft:gunpowder>],
	[null, <minecraft:gunpowder>, null]]);

	#Obsidian Shears
recipes.remove(<cyclicmagic:shears_obsidian>);
recipes.addShaped(<cyclicmagic:shears_obsidian>, [
	[null, <minecraft:obsidian>, null],
	[<minecraft:obsidian>, <pickletweaks:flint_shears>, <minecraft:obsidian>],
	[null, <minecraft:obsidian>, null],]);


	#glowing helmet
recipes.remove(<cyclicmagic:glowing_helmet>);
recipes.addShaped(<cyclicmagic:glowing_helmet>,
	[[<ore:plateBrass>, <astralsorcery:blockworldilluminator>, <ore:plateBrass>],
	[<ore:plateBronze>, <minecraft:leather_helmet>, <ore:plateBronze>],
	[<ore:plateBrass>, <ore:plateBronze>, <ore:plateBrass>]]);

	#redstone wireless emitter and transmitter
recipes.remove(<cyclicmagic:wireless_receiver>);
recipes.addShaped(<cyclicmagic:wireless_receiver> * 4,
	[[<ore:plateIron>, <enderio:item_capacitor_grainy>, <ore:plateIron>],
	[<ore:wireGtSingleRedAlloy>, <metaitem:emitter.lv>, <ore:wireGtSingleRedAlloy>],
	[<ore:plateIron>, <ore:wireGtSingleRedAlloy>, <ore:plateIron>]]);

recipes.remove(<cyclicmagic:wireless_transmitter>);
recipes.addShaped(<cyclicmagic:wireless_transmitter> * 4,
	[[<ore:plateIron>, <ore:wireGtSingleRedAlloy>, <ore:plateIron>],
	[<ore:wireGtSingleRedAlloy>, <metaitem:emitter.lv>, <ore:wireGtSingleRedAlloy>],
	[<ore:plateIron>, <enderio:item_capacitor_grainy>, <ore:plateIron>]]);

	#player launcher
recipes.remove(<cyclicmagic:tool_launcher>);
recipes.addShaped(<cyclicmagic:tool_launcher>,
	[[<botania:manaresource:16>, <astralsorcery:itemcraftingcomponent>, <botania:manaresource:16>],
	[<astralsorcery:itemcraftingcomponent>, <dmonsters:harpoon_diamond>, <astralsorcery:itemcraftingcomponent>],
	[null, <ore:stickWroughtIron>, null]]);

	#soul stone
recipes.remove(<cyclicmagic:soulstone>);
recipes.addShaped(<cyclicmagic:soulstone>,
	[[null, <minecraft:emerald>, null],
	[<minecraft:golden_apple>, <astralsorcery:itemshiftingstar>, <minecraft:golden_apple>],
	[null, <minecraft:diamond>, null]]);

	#air charm
recipes.remove(<cyclicmagic:charm_air>);
<cyclicmagic:charm_air>.addTooltip(format.darkRed("只能通过战利品获得。"));

	#Dark Flame Wand
recipes.remove(<cyclicmagic:ender_blaze>);
mods.astralsorcery.Altar.addDiscoveryAltarRecipe("cyclic:darkflamewand", <cyclicmagic:ender_blaze>, 150, 600,
	[null,<cyclicmagic:fire_dark_anim>,<cyclicmagic:fire_dark_anim>,
	null,<ore:stickThaumium>,<cyclicmagic:fire_dark_anim>,
	<ore:stickThaumium>,null,null]);

	#rainbow cannon
recipes.remove(<cyclicmagic:ender_blaze>);
mods.astralsorcery.Altar.addDiscoveryAltarRecipe("cyclic:rainbowcannon", <cyclicmagic:ender_blaze>, 150, 600, [
		null,<astralsorcery:itemcraftingcomponent>,<ceramics:rainbow_clay:7>,
		null,<ore:stickManasteel>,<thaumcraft:morphic_resonator>,
		<ore:stickManasteel>,null,null]);

	#automatic torch
recipes.remove(<cyclicmagic:tool_auto_torch>);
mods.astralsorcery.Altar.addDiscoveryAltarRecipe("cyclic:autotorch", <cyclicmagic:tool_auto_torch>, 150, 600, [
		<ore:obsidian>,<minecraft:iron_bars>,<ore:obsidian>,
		null,<astralsorcery:itemperkgem:2>,null,
		null,<minecraft:iron_bars>,null]);

	#rod of elevation
recipes.remove(<cyclicmagic:tool_elevate>);
mods.astralsorcery.Altar.addDiscoveryAltarRecipe("cyclic:elevationwand", <cyclicmagic:tool_elevate>, 150, 600, [
		null,<ore:dustGlowstone>,<wizardry:sky_dust>,
		null,<ore:stickBrass>,<ore:dustGlowstone>,
		<ore:stickBrass>,null,null]);

	#torch launcher
recipes.remove(<cyclicmagic:tool_torch_launcher>);
mods.astralsorcery.Altar.addDiscoveryAltarRecipe("cyclic:torchlaunchers", <cyclicmagic:tool_torch_launcher>, 150, 600, [
		null,<ore:plateBrass>,<ore:blockCoke>,
		null,<ore:blockCoke>,<ore:plateBrass>,
		<ore:stickBrass>,null,null]);

	#repulsar
recipes.remove(<cyclicmagic:magnet_anti_block>);
recipes.addShaped(<cyclicmagic:magnet_anti_block>,
	[[<ore:plateLapis>, <minecraft:glowstone>, <ore:plateLapis>],
	[<minecraft:glowstone>, <botania:manaresource:2>, <minecraft:glowstone>],
	[<ore:plateLapis>, <minecraft:glowstone>, <ore:plateLapis>]]);

	#frostbringer
recipes.remove(<cyclicmagic:ender_snow>);
mods.astralsorcery.Altar.addDiscoveryAltarRecipe("cyclic:endersnow", <cyclicmagic:ender_snow>, 150, 600, [
		null,<minecraft:packed_ice>,<ore:gemSapphire>,
		null,<ore:stickBrass>,<minecraft:packed_ice>,
		<ore:stickBrass>,null,null]);

	#confusion wand
recipes.remove(<cyclicmagic:wand_hypno>);
mods.astralsorcery.Altar.addDiscoveryAltarRecipe("cyclic:confusionwand", <cyclicmagic:wand_hypno>, 325, 600, [
		null,<bloodmagic:component:25>,<minecraft:ghast_tear>,
		null,<ore:stickTerrasteel>,<bloodmagic:component:25>,
		<ore:stickTerrasteel>,null,null]);

	#sprinkler
recipes.remove(<cyclicmagic:sprinkler>);
mods.astralsorcery.Altar.addDiscoveryAltarRecipe("cyclic:sprinkler", <cyclicmagic:sprinkler>, 150, 600, [
		<minecraft:iron_bars>,<minecraft:iron_bars>,<minecraft:iron_bars>,
		<ore:slabStone>,<metaitem:electric.pump.lv>,<ore:slabStone>,
		<ore:slabStone>,<ore:slabStone>,<ore:slabStone>]);

	#fire charm
recipes.remove(<cyclicmagic:charm_fire>);
mods.astralsorcery.Altar.addDiscoveryAltarRecipe("cyclic:firecharm", <cyclicmagic:charm_fire>, 320, 600, [
		null,null,<ore:rodBlaze>,
		<ore:blockNetherWart>,<ore:manaDiamond>,null,
		<botania:rune:1>,<ore:blockNetherWart>,null]);

	#water charm
recipes.remove(<cyclicmagic:charm_water>);
mods.astralsorcery.Altar.addDiscoveryAltarRecipe("cyclic:water", <cyclicmagic:charm_water>, 320, 600, [
		null,null,<minecraft:fish:3>,
		<minecraft:packed_ice>,<botania:manaresource:2>,null,
		<botania:rune>,<minecraft:packed_ice>,null]);

	#wireless energy transfer
	mods.jei.JEI.removeAndHide(<cyclicmagic:cable_wireless_energy>);
	mods.jei.JEI.removeAndHide(<cyclicmagic:cable_wireless>);
	
	#wireless fluid transfer node
	recipes.remove(<cyclicmagic:cable_wireless_fluid>);
	recipes.addShaped(<cyclicmagic:cable_wireless_fluid>,
	[[<ore:plateGraphite>, <extrautils2:ingredients:2>, <ore:plateGraphite>],
	[<metaitem:electric.pump.lv>, <astralsorcery:itemshiftingstar>, <metaitem:electric.pump.lv>],
	[<ore:plateGraphite>, <gregtech:machine:2197>, <ore:plateGraphite>]]);

	#speed charm
recipes.remove(<cyclicmagic:charm_speed>);
mods.astralsorcery.Altar.addDiscoveryAltarRecipe("cyclic:speed", <cyclicmagic:charm_speed>, 320, 600, [
		null,null,<ore:stickEmerald>,
		<ore:plateManasteel>,<botania:manaresource:2>,null,
		<botania:rune:4>,<ore:plateManasteel>,null]);
	print("----------------Cyclic End-------------------");
