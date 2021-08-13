// Stages
/*
Oak + Stone
Lava (Vanilla)
Grass (Forestry)
Gold (TCon)
Lapis (TE)
Quartz (Botania)
*/

recipes.addShaped("draco_heart", <draconicevolution:dragon_heart>, [[<ore:ingotGold>, <ore:ingotDraconium>, <ore:ingotGold>], [<ore:ingotGold>,<ore:ingotGold>,<ore:ingotGold>],  [<ore:ingotDraconium>, <ore:ingotGold>, <ore:ingotDraconium>]]);
scripts.globals.addCrusher(<draconicevolution:chaos_shard> * 2, <minecraft:bedrock>);

recipes.addShaped("chaos_core", <draconicevolution:chaotic_core>, [[<ore:oreCrystalEntropy>,<ore:ingotDraconiumAwakened>,<ore:oreCrystalEntropy>], [<ore:ingotDraconiumAwakened>,<draconicevolution:chaos_shard>,<ore:ingotDraconiumAwakened>], [<ore:oreCrystalEntropy>,<ore:ingotDraconiumAwakened>,<ore:oreCrystalEntropy>]]);

recipes.addShaped("chaos_infusion", <draconicevolution:crafting_injector:3>,
[
	[<ore:gemDiamond>, null, <ore:gemDiamond>],
	[<stevescarts:modulecomponents:46>, <draconicevolution:crafting_injector:2>, <stevescarts:modulecomponents:46>],
	[<draconicevolution:chaotic_core>, <ore:dragonEgg>, <draconicevolution:chaotic_core>]]);