import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.artisanworktables.builder.RecipeBuilder;
import crafttweaker.block.IBlockState;
import mods.thaumcraft.ArcaneWorkbench;
import mods.thaumcraft.Infusion;
import mods.animus.AnimusPlugin;
import crafttweaker.liquid.ILiquidDefinition;
import mods.gregtech.recipe.RecipeMap;
import mods.astralsorcery.Utils;

print("---------------BloodMagic Start------------------");

val rockCrystal = mods.astralsorcery.Utils.getCrystalORIngredient(false, false);
val celestialCrystal = mods.astralsorcery.Utils.getCrystalORIngredient(true, false);
val attunedCelestialCrystal = mods.astralsorcery.Utils.getCrystalORIngredient(true,true);
val mixer = mods.gregtech.recipe.RecipeMap.getByName("mixer");
val flightPotion = <bloodmagic:potion_flask:7>.withTag({CustomPotionEffects: [{Ambient: 0 as byte, CurativeItems: [{id: "minecraft:milk_bucket", Count: 1 as byte, Damage: 0 as short}], ShowParticles: 1 as byte, Duration: 800, Id: 71, Amplifier: 0 as byte}]});
val featherPotion = <rustic:elixir>.withTag({ElixirEffects: [{Effect: "rustic:feather", Duration: 3600, Amplifier: 0}]});
val chemReactor = mods.gregtech.recipe.RecipeMap.getByName("chemical_reactor");
val fluidExtractor = mods.gregtech.recipe.RecipeMap.getByName("fluid_extractor");

	#bloodapple
	<animus:bloodapple>.addTooltip(format.darkRed("食用它可以添加LP到你的网络。在祭坛附近食用它可以添加LP到祭坛。"));
	
#blood from chicken
fluidExtractor.recipeBuilder()
	.inputs(<animus:bloodapple> * 1)
	.fluidOutputs([<liquid:lifeessence> * 10])
	.duration(60)
	.EUt(18)
	.buildAndRegister();	
	
	#snare
	recipes.remove(<bloodmagic:soul_snare>);

	#inspectus book
	mods.bloodmagic.BloodAltar.removeRecipe(<minecraft:book>);
	<bloodmagic:sanguine_book>.addTooltip(format.darkRed("使用Animus的祭坛推测器，祭坛四柱的顶端方块被修改了，在JEI中搜索tooltip“祭坛柱顶”以获取更多信息。"));

	#flight potion
mods.rustic.Condenser.addRecipe(flightPotion, featherPotion, <wizardry:sky_dust>);

	#altar diviner
	recipes.remove(<animus:altardiviner>);
	recipes.addShaped(<animus:altardiviner>, [[null, <bloodmagic:monster_soul>, <projecte:item.pe_covalence_dust:1>],[null, <botania:manaresource:3>, null], [<projecte:item.pe_covalence_dust:1>, null, null]]);

	#awakened Activation Sigil
	recipes.remove(<bloodmagic:activation_crystal:1>);
	mods.thaumcraft.Infusion.registerRecipe("awakenedActivation", "INFUSION", <bloodmagic:activation_crystal:1>, 7, [<aspect:tenebrae> * 32, <aspect:potentia> * 18, <aspect:exanimis> * 16, <aspect:victus> * 32], <bloodmagic:activation_crystal>,
	[<bloodmagic:slate:3>,<bloodmagic:slate:3>,<botania:manaresource:1>,<botania:manaresource:1>,<minecraft:nether_star>]);

	
	#demon blood shard
mixer.recipeBuilder()
    .inputs(<bloodmagic:blood_shard>,<bloodmagic:item_demon_crystal>*4)
    .fluidInputs([<liquid:lifeessence> * 1000])
    .outputs(<bloodmagic:blood_shard:1>)
    .duration(800)
    .EUt(200)
    .buildAndRegister();
	
	#common tartaric gem
	mods.thaumcraft.Infusion.registerRecipe("commonTartaric", "INFUSION", <bloodmagic:soul_gem:2>, 3, [<aspect:victus> * 16, <aspect:potentia> * 18, <aspect:spiritus> * 8, <aspect:auram> * 8], <bloodmagic:soul_gem:1>,
	[<bloodmagic:slate:1>,<bloodmagic:slate:1>,<ore:plateElectrum>.firstItem,<ore:plateElectrum>.firstItem,<ore:plateElectrum>.firstItem,<botania:manaresource:2>]);	
	
	#sacrificial dagger
	recipes.remove(<bloodmagic:sacrificial_dagger>);
	<bloodmagic:sacrificial_dagger>.addTooltip(format.darkRed("被禁用了？肯定会有其他的方法......（看看DML的数字化苦难之井吧）"));

	//mods.bloodmagic.BloodAltar.addRecipe(IItemStack output, IItemStack input, int minimumTier, int syphon, int consumeRate, int drainRate);
	#bloodOrbs
	#weak blood orb
	mods.bloodmagic.BloodAltar.removeRecipe(<minecraft:diamond>);
	mods.bloodmagic.BloodAltar.addRecipe(<bloodmagic:blood_orb>.withTag({orb: "bloodmagic:weak"}), <astralsorcery:itemperkgem:2>, 0, 2000,2,1);

	#apprentice blood orb
	mods.bloodmagic.BloodAltar.removeRecipe(<minecraft:redstone_block>);
	mods.bloodmagic.BloodAltar.addRecipe(<bloodmagic:blood_orb>.withTag({orb: "bloodmagic:apprentice"}), <extrautils2:ingredients:2>, 1, 5000,5,5);

	mods.bloodmagic.BloodAltar.removeRecipe(<minecraft:gold_block>);
	mods.bloodmagic.BloodAltar.addRecipe(<bloodmagic:blood_orb>.withTag({orb: "bloodmagic:magician"}), <tconstruct:metal:1>, 2, 25000,20,20);

	mods.bloodmagic.BloodAltar.removeRecipe(<minecraft:nether_star>);
	mods.bloodmagic.BloodAltar.addRecipe(<bloodmagic:blood_orb>.withTag({orb: "bloodmagic:archmage"}), <astralsorcery:itemshiftingstar>.withTag({astralsorcery: {starAttunement: "astralsorcery.constellation.aevitas"}}), 4, 80000,50,100);

	#sentient gem
	mods.bloodmagic.TartaricForge.removeRecipe([<minecraft:diamond_chestplate>, <bloodmagic:soul_gem:1>, <minecraft:iron_block>, <minecraft:obsidian>]);
	mods.thaumcraft.Infusion.registerRecipe("sentientGem", "INFUSION", <bloodmagic:sentient_armour_gem>, 6, [<aspect:tenebrae> * 32, <aspect:potentia> * 18, <aspect:sensus> * 16], <thaumcraft:thaumium_chest>,
	[<ore:platePigIron>.firstItem,<ore:platePigIron>.firstItem,<ore:platePigIron>.firstItem,<astralsorcery:itemcraftingcomponent>,<astralsorcery:itemcraftingcomponent>, <botania:manaresource:2>]);

	#simple catalyst

mixer.recipeBuilder()
	.inputs(<minecraft:nether_wart>*10, <minecraft:redstone>*10,<metaitem:gelled_toluene>)
	.fluidInputs([<liquid:lifeessence> * 5000])
	.outputs(<bloodmagic:component:29>*10)
    .duration(600)
    .EUt(350)
    .buildAndRegister();

	#ritualdiviner
	recipes.remove(<bloodmagic:ritual_diviner>);
	mods.astralsorcery.Altar.addAttunementAltarRecipe("interactions:ritualdiviner", <bloodmagic:ritual_diviner>, 250, 200, [
	<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "ignis"}]}), <ore:manaDiamond>, <ore:manaDiamond>,
	<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "terra"}]}), <ore:livingwoodTwig>, <ore:manaDiamond>,
	<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "aqua"}]}), <thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "aer"}]}), <thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "ordo"}]}),
	<bloodmagic:slate>,<bloodmagic:slate>,null,null]);

	#altar block tooltips
	<netherbackport:netheriteblock>.addTooltip(format.darkRed("用作三级血魔法祭坛柱顶。"));
	<appliedenergistics2:smooth_sky_stone_block>.addTooltip(format.darkRed("用作四级血魔法祭坛柱顶。"));
	<cyclicmagic:beacon_potion>.addTooltip(format.darkRed("用作五级血魔法祭坛柱顶。"));
	<bloodmagic:decorative_brick:2>.addTooltip(format.darkRed("用作六级血魔法祭坛柱顶。"));

	#hellfireForge
recipes.remove(<bloodmagic:soul_forge>);
recipes.addShaped(<bloodmagic:soul_forge>, [[<tconstruct:seared:3>, <bloodmagic:blood_orb>.withTag({orb: "bloodmagic:weak"}).reuse(), <tconstruct:seared:3>],[<ore:plateManasteel>, <botania:livingrock0slab>, <ore:plateManasteel>], [<tconstruct:seared:3>, <extrautils2:simpledecorative:1>, <tconstruct:seared:3>]]);

	#self sacrifice runes
	mods.jei.JEI.removeAndHide(<bloodmagic:blood_rune:4>);

	#runes
	//mods.botania.RuneAltar.addRecipe(IItemStack output, IIngredient[] input, int mana);
	//mods.botania.RuneAltar.addRecipe(null,[<bloodmagic:blood_rune>, ], 2000);
	#speed rune
	recipes.remove(<bloodmagic:blood_rune:1>);
	mods.botania.RuneAltar.addRecipe(<bloodmagic:blood_rune:1>,[<bloodmagic:blood_rune>,<bloodmagic:slate>,<bloodmagic:slate>,<ore:gemQuartzite>], 20000);

	#displacement runes
	recipes.remove(<bloodmagic:blood_rune:5>);
	mods.botania.RuneAltar.addRecipe(<bloodmagic:blood_rune:5>,[<bloodmagic:blood_rune>,<bloodmagic:component>,<bloodmagic:slate:1>,<bloodmagic:slate:1>], 25000);

	#capacity rune
	recipes.remove(<bloodmagic:blood_rune:6>);
	mods.botania.RuneAltar.addRecipe(<bloodmagic:blood_rune:6>,[<bloodmagic:blood_rune>,<bloodmagic:slate:2>,<minecraft:cauldron>, <minecraft:blaze_powder>], 20000);

	#rune of sacrifice
	recipes.remove(<bloodmagic:blood_rune:3>);
	mods.botania.RuneAltar.addRecipe(<bloodmagic:blood_rune:3>,[<bloodmagic:blood_rune>,<ore:dustBlackSteel>, <bloodmagic:slate:2>, <bloodmagic:item_demon_crystal:3>], 50000);

	#acceleration rune
	recipes.remove(<bloodmagic:blood_rune:9>);
	mods.botania.RuneAltar.addRecipe(<bloodmagic:blood_rune:9>,[<bloodmagic:blood_rune>, <bloodmagic:slate:3>, <ore:foilRoseGold>, <integrateddynamics:crystalized_menril_block>], 100000);

	#charging rune
	recipes.remove(<bloodmagic:blood_rune:10>);
	mods.botania.RuneAltar.addRecipe(<bloodmagic:blood_rune:10>,[<bloodmagic:blood_rune>,<ore:dustQuartzBlack>, <ore:glowstone>, <ore:glowstone>, <bloodmagic:slate:3>  ], 50000);

	#augmented capacity
	recipes.remove(<bloodmagic:blood_rune:7>);
	mods.botania.RuneAltar.addRecipe(<bloodmagic:blood_rune:7>,[<bloodmagic:blood_rune:6>, <bloodmagic:slate:3>, <ore:plateSkystone>,<ore:plateSkystone> ], 50000);

	#alchemy table
	recipes.remove(<bloodmagic:alchemy_table>);
	mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("interactions:alchemytable", "", 15, [<aspect:ordo> * 2, <aspect:perditio> * 2, <aspect:ignis> *2], <bloodmagic:alchemy_table>,
	[[<thaumcraft:slab_arcane_stone>, <thaumcraft:slab_arcane_stone>, <thaumcraft:slab_arcane_stone>],
	[<wizardry:wisdom_wood_planks>, <minecraft:brewing_stand>, <wizardry:wisdom_wood_planks>],
	[<ore:plateGold>, null, <ore:plateGold>]
	]);

	#sigils
	#compression
	mods.jei.JEI.hide(<bloodmagic:sigil_compression>);
	mods.jei.JEI.hide(<bloodmagic:component:14>);
	mods.bloodmagic.TartaricForge.removeRecipe([<minecraft:iron_block>,<minecraft:gold_block>,<minecraft:obsidian>,<minecraft:cobblestone>]);

	#alternate binding reagent
	mods.bloodmagic.TartaricForge.addRecipe(<bloodmagic:component:8>,[<enderio:item_material:75>,<ore:ingotRoseGold>.firstItem,<minecraft:gunpowder>,<minecraft:glowstone_dust>], 200, 20);

	#whirlwind
	mods.bloodmagic.AlchemyArray.addRecipe(<bloodmagic:sigil_whirlwind>, <bloodmagic:component:2>, <bloodmagic:slate:4>, "bloodmagic:textures/models/AlchemyArrays/shardoflaputa.png");

	val volatusCrystal = <thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "volatus"}]});

	#air reagent
	mods.bloodmagic.TartaricForge.removeRecipe([<minecraft:ghast_tear>,<minecraft:feather>,<minecraft:feather>]);
	mods.astralsorcery.Altar.addAttunementAltarRecipe("interactions:airreagent", <bloodmagic:component:2>, 250, 200, [
	<ore:plateSkystone>, <minecraft:feather>, <ore:plateSkystone>,
	<minecraft:feather>, <minecraft:ghast_tear>, <minecraft:feather>,
	<ore:plateSkystone>, <minecraft:feather>, <ore:plateSkystone>,
	volatusCrystal,volatusCrystal,volatusCrystal,volatusCrystal]);

	#leech Sigil
	mods.bloodmagic.TartaricForge.removeRecipe([<minecraft:sapling>,<minecraft:leaves>,<minecraft:tallgrass:1>,<minecraft:cooked_porkchop>]);
	mods.bloodmagic.TartaricForge.addRecipe(<animus:component:3>,[<harvestcraft:spicygreensitem>,<plants2:crystal_leaves>,<plants2:plantball>,<harvestcraft:creepercookieitem>], 500, 350);

	#void sigil/reagent
	mods.bloodmagic.TartaricForge.removeRecipe([<minecraft:bucket>,<minecraft:string>,<minecraft:string>,<minecraft:gunpowder>]);
	mods.bloodmagic.TartaricForge.addRecipe(<bloodmagic:component:4>,[<minecraft:ender_eye>,<ore:blockGunpowder>.firstItem,<botania:manaresource:16>, <randomthings:ingredient:3>], 500, 350);

	#transposition reagent
	mods.bloodmagic.TartaricForge.removeRecipe([<minecraft:end_stone>,<minecraft:ender_pearl>,<minecraft:obsidian>,<minecraft:chest>]);
	mods.bloodmagic.TartaricForge.addRecipe(<animus:component:5>,[<rftools:infused_enderpearl>,<deepmoblearning:glitch_infused_ingot>,<minecraft:obsidian>], 500, 200);

	#elemental reagent
	mods.bloodmagic.TartaricForge.removeRecipe([<bloodmagic:sigil_water>,<bloodmagic:sigil_air>,<bloodmagic:sigil_lava>,<minecraft:obsidian>]);
	mods.bloodmagic.TartaricForge.addRecipe(<bloodmagic:component:6>,[<bloodmagic:sigil_water>,<bloodmagic:sigil_air>,<bloodmagic:sigil_lava>,<deepmoblearning:pristine_matter_thermal_elemental>], 5000, 300);

	#blank slate
	mods.bloodmagic.BloodAltar.removeRecipe(<minecraft:stone>);
mixer.recipeBuilder()
    .inputs(<thaumcraft:stone_arcane>, <astralsorcery:itemusabledust:1>)
    .fluidInputs([<liquid:lifeessence> * 1000])
	.outputs(<bloodmagic:slate>)
    .duration(200)
    .EUt(24)
    .buildAndRegister();


	#Routing nodes moved to Astral altar crafting
	#node router
	mods.bloodmagic.TartaricForge.removeRecipe([<minecraft:stick>,<bloodmagic:slate:1>,<minecraft:dye:4>,<minecraft:dye:4>]);
	mods.astralsorcery.Altar.addDiscoveryAltarRecipe("interactions:noderouter", <bloodmagic:node_router>, 120, 600, [
	null, <ore:gemLapis>, rockCrystal,
	null, <wizardry:wisdom_stick>, <ore:gemLapis>,
	<wizardry:wisdom_stick>, null, null]);


	#master routing node
	mods.bloodmagic.TartaricForge.removeRecipe([<minecraft:iron_block>,<minecraft:diamond>,<bloodmagic:slate:2>]);
	mods.astralsorcery.Altar.addDiscoveryAltarRecipe("interactions:masterroutingnode", <bloodmagic:master_routing_node>, 120, 600, [
	null, <ore:manaDiamond>, null,
	<ore:platePigIron>, <bloodmagic:slate:1>, <ore:platePigIron>,
	<ore:platePigIron>, <ore:plateSteel>, <ore:platePigIron>]);

	#routing node
	mods.bloodmagic.TartaricForge.removeRecipe([<minecraft:glowstone_dust>, <minecraft:redstone>, <minecraft:glass>, <minecraft:stone>]);
	mods.astralsorcery.Altar.addDiscoveryAltarRecipe("interactions:routingnode", <bloodmagic:item_routing_node> * 4, 120, 600, [
	null, <extrautils2:decorativeglass:4>, null,
	<ore:platePigIron>, <bloodmagic:slate:1>, <ore:platePigIron>,
	<ore:platePigIron>, <ore:plateRedAlloy>, <ore:platePigIron>]);

	#input routing node
	mods.bloodmagic.TartaricForge.removeRecipe([<minecraft:glowstone_dust>, <minecraft:redstone>, <minecraft:iron_ingot>, <bloodmagic:item_routing_node>]);
	mods.astralsorcery.Altar.addDiscoveryAltarRecipe("interactions:inputroutingnode", <bloodmagic:input_routing_node>, 120, 600, [
	null, null, null,
	null, <thermalfoundation:material:513>, null,
	<ore:platePigIron>, <bloodmagic:item_routing_node>, <ore:platePigIron>]);

	#output routing node
	mods.bloodmagic.TartaricForge.removeRecipe([<minecraft:glowstone_dust>, <minecraft:redstone>, <minecraft:gold_ingot>, <bloodmagic:item_routing_node>]);
	mods.astralsorcery.Altar.addDiscoveryAltarRecipe("interactions:outputroutingnode", <bloodmagic:output_routing_node>, 120, 600, [
	null, null, null,
	null, <thermalfoundation:material:514>, null,
	<ore:platePigIron>, <bloodmagic:item_routing_node>, <ore:platePigIron>]);

	#kammas
	recipes.remove(<animus:kama_wood>);
	recipes.remove(<animus:kama_stone>);
	recipes.remove(<animus:kama_iron>);
	recipes.remove(<animus:kama_gold>);
	recipes.remove(<animus:kama_diamond>);
	recipes.addShaped(<animus:kama_diamond>, [[null, <ore:plateDiamond>, null],[<ore:plateDiamond>, null, <ore:plateDiamond>], [null, null, <ore:toolHeadSwordDiamond>]]);
	recipes.addShaped(<animus:kama_gold>, [[null, <ore:plateGold>, null],[<ore:plateGold>, null, <ore:plateGold>], [null, null, <ore:toolHeadSwordGold>]]);
	recipes.addShaped(<animus:kama_iron>, [[null, <ore:platePigIron>, null],[<ore:platePigIron>, null, <ore:platePigIron>], [null, null, <ore:toolHeadSwordIron>]]);
	recipes.addShaped(<animus:kama_stone>, [[null, <ore:plateStone>, null],[<ore:plateStone>, null, <ore:plateStone>], [null, null, <ore:toolHeadSwordFlint>]]);
	recipes.addShaped(<animus:kama_wood>, [[null, <ore:plateWood>, null],[<ore:plateWood>, null, <ore:plateWood>], [null, null, <minecraft:wooden_sword>]]);


	#tanks
	mods.jei.JEI.removeAndHide(<bloodmagic:blood_tank:*>);

	#bloodletters
	mods.jei.JEI.removeAndHide(<bloodmagic:pack_self_sacrifice>);

	#coat of arms
	recipes.remove(<bloodmagic:pack_sacrifice>);
	recipes.addShaped(<bloodmagic:pack_sacrifice>, [[<ore:screwIron>, <minecraft:bucket>, <ore:screwIron>],[<ore:platePigIron>, <minecraft:leather_chestplate>, <ore:platePigIron>], [<ore:screwIron>, <ore:platePigIron>, <ore:screwIron>]]);

	#pig iron
	mods.bloodmagic.BloodAltar.addRecipe(<ore:ingotPigIron>.firstItem, <minecraft:iron_ingot>, 0, 500,20,20);

	#dagger of sacrifice
	mods.bloodmagic.BloodAltar.removeRecipe(<minecraft:iron_sword>);
	mods.bloodmagic.BloodAltar.addRecipe(<bloodmagic:dagger_of_sacrifice>, <thaumcraft:elemental_sword>.withTag({infench: [{lvl: 2 as short, id: 5 as short}]}), 1, 3000,5,5);

	#Altar
	recipes.remove(<bloodmagic:altar>);
	recipes.addShaped(<bloodmagic:altar>,
	[[<thermalfoundation:rockwool:7>, null, <thermalfoundation:rockwool:7>],
	[<thermalfoundation:rockwool:7>, <randomthings:obsidianskull>, <thermalfoundation:rockwool:7>],
	[<ore:plateGold>, <bloodmagic:monster_soul>, <ore:plateGold>]]);

RecipeBuilder.get("basic")
	.setShaped([
		[<projecte:item.pe_covalence_dust>, <ore:shardGlass>, <projecte:item.pe_covalence_dust>],
		[<ore:shardGlass>, <tconstruct:edible:33>, <ore:shardGlass>],
		[<projecte:item.pe_covalence_dust>, <ore:shardGlass>, <projecte:item.pe_covalence_dust>]])
	.addTool(<ore:toolCutters>, 10)
	.addOutput(<bloodmagic:soul_snare>*8)
	.create();

	#Arcane Ashes
mods.bloodmagic.TartaricForge.removeRecipe([<bloodmagic:arcane_ashes>]);
RecipeBuilder.get("basic")
	.setShaped([
		[<projecte:item.pe_covalence_dust>, <ore:dustAsh>, <projecte:item.pe_covalence_dust>],
		[<projecte:item.pe_covalence_dust>, <minecraft:sugar>, <projecte:item.pe_covalence_dust>],
		[<projecte:item.pe_covalence_dust>, <wizardry:blackened_spirit> , <projecte:item.pe_covalence_dust>]])
	.addTool(<ore:artisanHammers>, 10)
	.setFluid(<liquid:water>*1000)
	.addOutput(<bloodmagic:arcane_ashes>)
	.create();

	#liquid Dirt
mods.bloodmagic.AlchemyArray.addRecipe(<forge:bucketfilled>.withTag({FluidName: "blockfluiddirt", Amount: 1000}),
	<minecraft:dirt>, <minecraft:water_bucket>, "bloodmagic:textures/models/AlchemyArrays/shardoflaputa.png" );
mods.bloodmagic.AlchemyArray.addRecipe(<ceramics:clay_bucket>.withTag({fluids: {FluidName: "blockfluiddirt", Amount: 1000}}),
	<minecraft:dirt>, <ceramics:clay_bucket>.withTag({fluids: {FluidName: "water", Amount: 1000}}), "bloodmagic:textures/models/AlchemyArrays/shardoflaputa.png");

	val dirtDefinition = <liquid:blockfluiddirt>.definition;
	dirtDefinition.temperature = 350;

	#Philosopher's stone
mods.bloodmagic.AlchemyArray.addRecipe(<ore:dustTinyGlowstone>.firstItem * 5, <projecte:item.pe_covalence_dust:1>, <astralsorcery:itemusabledust>);

	#Crying Obsidian
	mods.bloodmagic.AlchemyArray.addRecipe(<cryingobsidian:crying_obsidian_block>, <minecraft:obsidian>, <ceramics:clay_bucket>.withTag({fluids: {FluidName: "water", Amount: 1000}}) );
	<cryingobsidian:crying_obsidian_block>.addTooltip(format.darkRed("用于替代床"));

	#AltarCaps
	//print("-------------------------modify altar ----------------------------");
	//Valid component types:
	//GLOWSTONE
	//BLOODSTONE
	//BEACON
	//BLOODRUNE
	//CRYSTAL
	//NOTAIR

	//print("-------------------------removing glowstone tiles from altar ----------------------------");

var glowstoneToUnregister as IBlockState[] = [
	<blockstate:minecraft:glowstone>,
	<blockstate:minecraft:sea_lantern>,
	<blockstate:chisel:glowstone:variation=0>,
	<blockstate:chisel:glowstone:variation=1>,
	<blockstate:chisel:glowstone:variation=2>,
	<blockstate:chisel:glowstone:variation=3>,
	<blockstate:chisel:glowstone:variation=4>,
	<blockstate:chisel:glowstone:variation=5>,
	<blockstate:chisel:glowstone:variation=6>,
	<blockstate:chisel:glowstone:variation=7>,
	<blockstate:chisel:glowstone:variation=8>,
	<blockstate:chisel:glowstone:variation=9>,
	<blockstate:chisel:glowstone:variation=10>,
	<blockstate:chisel:glowstone:variation=11>,
	<blockstate:chisel:glowstone:variation=12>,
	<blockstate:chisel:glowstone:variation=13>,
	<blockstate:chisel:glowstone:variation=14>,
	<blockstate:chisel:glowstone:variation=15>,
	<blockstate:chisel:glowstone1:variation=0>,
	<blockstate:chisel:glowstone1:variation=1>,
	<blockstate:chisel:glowstone1:variation=2>,
	<blockstate:chisel:glowstone1:variation=3>,
	<blockstate:chisel:glowstone1:variation=4>,
	<blockstate:chisel:glowstone1:variation=5>,
	<blockstate:chisel:glowstone1:variation=6>,
	<blockstate:chisel:glowstone1:variation=7>,
	<blockstate:chisel:glowstone1:variation=8>,
	<blockstate:chisel:glowstone1:variation=9>,
	<blockstate:chisel:glowstone1:variation=10>,
	<blockstate:chisel:glowstone1:variation=11>,
	<blockstate:chisel:glowstone1:variation=12>,
	<blockstate:chisel:glowstone1:variation=13>,
	<blockstate:chisel:glowstone1:variation=14>,
	<blockstate:chisel:glowstone1:variation=15>,
	<blockstate:chisel:glowstone2:variation=0>
	];


for i in glowstoneToUnregister {
	AnimusPlugin.removeComponentMapping(i,"GLOWSTONE"); //t3
}

	//print("-------------------------adding glowstone tiles to altar ----------------------------");
	
	AnimusPlugin.addComponentMapping(<blockstate:netherbackport:netheriteblock:>, "GLOWSTONE");
	
	//print("-------------------------removing bloodstone tiles from altar ----------------------------");

	AnimusPlugin.addComponentMapping(<blockstate:appliedenergistics2:smooth_sky_stone_block>, "BLOODSTONE");
	mods.jei.JEI.removeAndHide(<bloodmagic:decorative_brick:1>);

	//print("-------------------------removing beacon tiles from altar ----------------------------");
	AnimusPlugin.removeComponentMapping(<blockstate:minecraft:beacon>,"BEACON"); //t5

	//print("-------------------------adding beacon tiles to altar ----------------------------");
	AnimusPlugin.addComponentMapping(<blockstate:cyclicmagic:beacon_potion>, "BEACON");

	//print("-------------------------End altar ----------------------------");


	#crystal clusters
	recipes.remove(<bloodmagic:decorative_brick:2>);
	recipes.addShaped(<bloodmagic:decorative_brick:2>,
	[[<bloodmagic:item_demon_crystal:3>, <ore:plateTungstenSteel>, <bloodmagic:item_demon_crystal:1>],
	[<ore:plateTungstenSteel>, <bloodmagic:item_demon_crystal>, <ore:plateTungstenSteel>],
	[<bloodmagic:item_demon_crystal:2>, <ore:plateTungstenSteel>, <bloodmagic:item_demon_crystal:4>]]);

	recipes.remove(<bloodmagic:decorative_brick:3>);

	#antimatter
mods.jei.JEI.addDescription(<animus:blockantimatter>, "Antimatter is the byproduct of liquid antimatter or the sigil of consumption spreading to a normal block. Once it is mined all blocks touching it will be destroyed in a cascade of disintegration.");

mods.jei.JEI.addDescription(<forge:bucketfilled>.withTag({FluidName: "blockfluidantimatter", Amount: 1000}), "Liquid antimatter is created when life essence comes in contact with a lightning strike or other liquid antimatter. Any block it touches will be converted into an antimatter block. WARNING: Liquid antimatter is fast and extremely destructive, it will destroy EVERYTHING in its path to the void.");

	#remove alchemy table ore processing
	mods.bloodmagic.AlchemyTable.removeRecipe([<ore:oreMithril>.firstItem, <bloodmagic:cutting_fluid>]);
	mods.bloodmagic.AlchemyTable.removeRecipe([<ore:oreSilver>.firstItem, <bloodmagic:cutting_fluid>]);
	mods.bloodmagic.AlchemyTable.removeRecipe([<ore:oreCopper>.firstItem, <bloodmagic:cutting_fluid>]);
	mods.bloodmagic.AlchemyTable.removeRecipe([<ore:oreAluminium>.firstItem, <bloodmagic:cutting_fluid>]);
	mods.bloodmagic.AlchemyTable.removeRecipe([<ore:oreQuartzBlack>.firstItem, <bloodmagic:cutting_fluid>]);
	mods.bloodmagic.AlchemyTable.removeRecipe([<ore:oreGold>.firstItem, <bloodmagic:cutting_fluid>]);
	mods.bloodmagic.AlchemyTable.removeRecipe([<ore:oreOsmium>.firstItem, <bloodmagic:cutting_fluid>]);
	mods.bloodmagic.AlchemyTable.removeRecipe([<ore:oreEmerald>.firstItem, <bloodmagic:cutting_fluid>]);
	mods.bloodmagic.AlchemyTable.removeRecipe([<ore:oreDiamond>.firstItem, <bloodmagic:cutting_fluid>]);
	mods.bloodmagic.AlchemyTable.removeRecipe([<ore:oreRedstone>.firstItem, <bloodmagic:cutting_fluid>]);
	mods.bloodmagic.AlchemyTable.removeRecipe([<ore:oreCertusQuartz>.firstItem, <bloodmagic:cutting_fluid>]);
	mods.bloodmagic.AlchemyTable.removeRecipe([<ore:oreIron>.firstItem, <bloodmagic:cutting_fluid>]);
	mods.bloodmagic.AlchemyTable.removeRecipe([<ore:oreNetherQuartz>.firstItem, <bloodmagic:cutting_fluid>]);
	mods.bloodmagic.AlchemyTable.removeRecipe([<ore:oreLapis>.firstItem, <bloodmagic:cutting_fluid>]);
	mods.bloodmagic.AlchemyTable.removeRecipe([<ore:oreLead>.firstItem, <bloodmagic:cutting_fluid>]);
	mods.bloodmagic.AlchemyTable.removeRecipe([<ore:oreNickel>.firstItem, <bloodmagic:cutting_fluid>]);
	mods.bloodmagic.AlchemyTable.removeRecipe([<ore:oreTin>.firstItem, <bloodmagic:cutting_fluid>]);
	mods.bloodmagic.AlchemyTable.removeRecipe([<ore:orePlatinum>.firstItem, <bloodmagic:cutting_fluid>]);
	mods.bloodmagic.AlchemyTable.removeRecipe([<ore:oreAstralStarmetal>.firstItem, <bloodmagic:cutting_fluid>]);
	mods.bloodmagic.AlchemyTable.removeRecipe([<ore:oreIridium>.firstItem, <bloodmagic:cutting_fluid>]);
	mods.bloodmagic.AlchemyTable.removeRecipe([<ore:oreDraconium>.firstItem, <bloodmagic:cutting_fluid>]);
	mods.bloodmagic.AlchemyTable.removeRecipe([<ore:oreDilithium>.firstItem, <bloodmagic:cutting_fluid>]);
	mods.bloodmagic.AlchemyTable.removeRecipe([<ore:oreQuartz>.firstItem, <bloodmagic:cutting_fluid>]);
	mods.bloodmagic.AlchemyTable.removeRecipe([<ore:oreAluminum>.firstItem, <bloodmagic:cutting_fluid>]);
	mods.bloodmagic.AlchemyTable.removeRecipe([null, <bloodmagic:cutting_fluid>]);

print("----------------BloodMagic End-------------------");
