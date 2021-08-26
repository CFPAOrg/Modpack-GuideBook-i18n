##########################################################################################

#modloaded thebetweenlands

print("==================== loading mods betweenlands.zs ====================");
##########################################################################################

val oreDictRubber = <ore:itemRubber>;

//oreDictEnt.add(IItemStack... item_items);
oreDictRubber.add(
    <thebetweenlands:items_misc:23>
);

### CRAFTING RECIPES ###

//crafting the talisman 
recipes.addShaped(<thebetweenlands:swamp_talisman:1>, [[<thaumcraft:stone_arcane>, <thaumcraft:stone_arcane>, <thaumcraft:stone_arcane>],[<thaumcraft:stone_arcane>, <astralsorcery:itemusabledust:1>, <thaumcraft:stone_arcane>], [<thaumcraft:stone_arcane>, <thaumcraft:stone_arcane>, <thaumcraft:stone_arcane>]]);
recipes.addShaped(<thebetweenlands:swamp_talisman:2>, [[<thaumcraft:stone_arcane>, <thaumcraft:stone_arcane>, <thaumcraft:stone_arcane>],[<thaumcraft:stone_arcane>, <actuallyadditions:item_misc:7>, <thaumcraft:stone_arcane>], [<thaumcraft:stone_arcane>, <thaumcraft:stone_arcane>, <thaumcraft:stone_arcane>]]);
recipes.addShaped(<thebetweenlands:swamp_talisman:3>, [[<thaumcraft:stone_arcane>, <thaumcraft:stone_arcane>, <thaumcraft:stone_arcane>],[<thaumcraft:stone_arcane>, <arcanearchives:scintillating_inlay>, <thaumcraft:stone_arcane>], [<thaumcraft:stone_arcane>, <thaumcraft:stone_arcane>, <thaumcraft:stone_arcane>]]);
recipes.addShaped(<thebetweenlands:swamp_talisman:4>, [[<thaumcraft:stone_arcane>, <thaumcraft:stone_arcane>, <thaumcraft:stone_arcane>],[<thaumcraft:stone_arcane>, <embers:crystal_ember>, <thaumcraft:stone_arcane>], [<thaumcraft:stone_arcane>, <thaumcraft:stone_arcane>, <thaumcraft:stone_arcane>]]);

//converting at very low rate
recipes.addShaped(<thebetweenlands:log_weedwood>, [[<ore:logWood>, <ore:logWood>, <ore:logWood>],[<ore:logWood>, <thebetweenlands:swamp_talisman>.reuse(), <ore:logWood>], [<ore:logWood>, <ore:logWood>, <ore:logWood>]]);
recipes.addShaped(<thebetweenlands:smooth_betweenstone>, [[<minecraft:stone>, <minecraft:stone>, <minecraft:stone>],[<minecraft:stone>, <thebetweenlands:swamp_talisman>.reuse(), <minecraft:stone>], [<minecraft:stone>, <minecraft:stone>, <minecraft:stone>]]);
recipes.addShaped(<thebetweenlands:scabyst_ore>, [[<minecraft:lapis_ore>, <minecraft:lapis_ore>, <minecraft:lapis_ore>],[<minecraft:lapis_ore>, <thebetweenlands:swamp_talisman>.reuse(), <minecraft:lapis_ore>], [<minecraft:lapis_ore>, <minecraft:lapis_ore>, <minecraft:lapis_ore>]]);
recipes.addShaped(<thebetweenlands:items_misc:18>, [[<minecraft:coal>, <minecraft:coal>, <minecraft:coal>],[<minecraft:coal>, <thebetweenlands:swamp_talisman>.reuse(), <minecraft:coal>], [<minecraft:coal>, <minecraft:coal>, <minecraft:coal>]]);
recipes.addShaped(<thebetweenlands:items_misc:19>, [[<minecraft:diamond>, <minecraft:diamond>, <minecraft:diamond>],[<minecraft:diamond>, <thebetweenlands:swamp_talisman>.reuse(), <minecraft:diamond>], [<minecraft:diamond>, <minecraft:diamond>, <minecraft:diamond>]]);
recipes.addShaped(<thebetweenlands:syrmorite_ore>, [[<minecraft:gold_ore>, <minecraft:gold_ore>, <minecraft:gold_ore>],[<minecraft:gold_ore>, <thebetweenlands:swamp_talisman>.reuse(), <minecraft:gold_ore>], [<minecraft:gold_ore>, <minecraft:gold_ore>, <minecraft:gold_ore>]]);
recipes.addShaped(<thebetweenlands:octine_ore>, [[<minecraft:iron_ore>, <minecraft:iron_ore>, <minecraft:iron_ore>],[<minecraft:iron_ore>, <thebetweenlands:swamp_talisman>.reuse(), <minecraft:iron_ore>], [<minecraft:iron_ore>, <minecraft:iron_ore>, <minecraft:iron_ore>]]);
recipes.addShaped(<thebetweenlands:cragrock>, [[<minecraft:cobblestone>, <minecraft:cobblestone>, <minecraft:cobblestone>],[<minecraft:cobblestone>, <thebetweenlands:swamp_talisman>.reuse(), <minecraft:cobblestone>], [<minecraft:cobblestone>, <minecraft:cobblestone>, <minecraft:cobblestone>]]);

recipes.addShaped(<thebetweenlands:items_misc:14>, [[<ore:slimyMoss>, <ore:slimyMoss>, <ore:slimyMoss>],[<ore:slimyMoss>, <minecraft:bone>, <ore:slimyMoss>], [<ore:slimyMoss>, <ore:slimyMoss>, <ore:slimyMoss>]]);
recipes.addShaped(<thebetweenlands:slimy_bone_block>, [[<minecraft:bone>, <minecraft:bone>, <minecraft:bone>],[<minecraft:bone>, <tconstruct:materials:19>, <minecraft:bone>], [<minecraft:bone>, <minecraft:bone>, <minecraft:bone>]]);

//syrmorite TC material

val syrmorite = mods.contenttweaker.tconstruct.MaterialBuilder.create("syrmorite");
syrmorite.color = 0x294187;
syrmorite.craftable = false;
syrmorite.castable = true;
syrmorite.representativeItem = <thebetweenlands:items_misc:11>;
syrmorite.addItem(<thebetweenlands:items_misc:11>);
syrmorite.liquid = <liquid:syrmorite>;
syrmorite.localizedName = "赛摩铜";
syrmorite.addHeadMaterialStats(622, 6.45, 2.5, 2);
syrmorite.addHandleMaterialStats(1.6, -220);
syrmorite.addExtraMaterialStats(96);
syrmorite.addBowMaterialStats(0.65, 0.77, 0.33);
syrmorite.addProjectileMaterialStats();
syrmorite.addMaterialTrait("magnetic1", "head");
syrmorite.addMaterialTrait("heavy", "handle");
syrmorite.register();

//octine TC material

val octine = mods.contenttweaker.tconstruct.MaterialBuilder.create("octine");
octine.color = 0xffb120;
octine.craftable = false;
octine.castable = true;
octine.representativeItem = <thebetweenlands:octine_ingot>;
octine.addItem(<thebetweenlands:octine_ingot>);
octine.liquid = <liquid:octine>;
octine.localizedName = "炽炎铁";
octine.addHeadMaterialStats(777, 8.8, 8.5, 3);
octine.addHandleMaterialStats(0.7, 367);
octine.addExtraMaterialStats(-2);
octine.addBowMaterialStats(0.56, 0.42, 0.66);
octine.addProjectileMaterialStats();
octine.addMaterialTrait("flammable", "head");
octine.addMaterialTrait("autosmelt", "head");
octine.addMaterialTrait("aridiculous", "handle");
octine.register();

//valonite TC material

val valonite = mods.contenttweaker.tconstruct.MaterialBuilder.create("valonite");
valonite.color = 0xd8b8d8;
valonite.craftable = true;
valonite.castable = false;
valonite.representativeItem = <thebetweenlands:items_misc:19>;
valonite.addItem(<thebetweenlands:items_misc:19>);
valonite.localizedName = "法罗钠";
valonite.addHeadMaterialStats(146, 9, 9.5, 3);
valonite.addHandleMaterialStats(1.0, 12);
valonite.addExtraMaterialStats(146);
valonite.addBowMaterialStats(0.62, 0.58, 0.58);
valonite.addProjectileMaterialStats();
valonite.addMaterialTrait("momentum", "head");
valonite.addMaterialTrait("fractured", "handle");
valonite.register();
##########################################################################################
print("==================== end of mods betweenlands.zs ====================");
