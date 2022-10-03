mods.immersiveengineering.Crusher.removeRecipesForInput(<minecraft:wool:11>);



mods.immersiveengineering.CokeOven.addRecipe(<minecraft:coal>, 2, <ore:dustCharcoal>, 200);

scripts.globals.addCrusher(<immersiveengineering:material:17>, <immersiveengineering:material:6>);
scripts.globals.addCrusher(<immersiveengineering:material:17>, <thermalfoundation:material:802>);

scripts.globals.addCrusher(<immersiveengineering:material:17> * 9, <thermalfoundation:storage_resource:1>);
scripts.globals.addCrusher(<immersiveengineering:material:17> * 9, <immersiveengineering:stone_decoration:3>);


recipes.addShaped("coal_ball", <contenttweaker:coal_ball>, [[<ore:dustCoal>, <ore:dustCoal>, <ore:dustCoal>],[<ore:dustCoal>, <minecraft:flint>, <ore:dustCoal>],[<ore:dustCoal>, <ore:dustCoal>, <ore:dustCoal>]]);

mods.immersiveengineering.MetalPress.addRecipe(<contenttweaker:coal_ball_compressed>, <contenttweaker:coal_ball>, <contenttweaker:compression_mold>, 2000);

recipes.addShaped("coal_ball_dense", <contenttweaker:coal_dense_ball>, [[<contenttweaker:coal_ball_compressed>, <contenttweaker:coal_ball_compressed>, <contenttweaker:coal_ball_compressed>],[<contenttweaker:coal_ball_compressed>, <ore:ingotBrick>, <contenttweaker:coal_ball_compressed>],[<contenttweaker:coal_ball_compressed>,<contenttweaker:coal_ball_compressed>,<contenttweaker:coal_ball_compressed>]]);

mods.immersiveengineering.MetalPress.addRecipe(<contenttweaker:coal_dense_ball_compressed>, <contenttweaker:coal_dense_ball>, <contenttweaker:compression_mold>, 2000);

mods.immersiveengineering.ArcFurnace.addRecipe(<minecraft:diamond>, <contenttweaker:coal_dense_ball_compressed>, null, 50, 2048 * 16, [<ore:gemLapis>, <ore:gemLapis>, <ore:gemLapis>, <ore:gemLapis>], "Alloying");

mods.immersiveengineering.Blueprint.addRecipe("molds", <contenttweaker:compression_mold>, [<ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>, <immersiveengineering:tool:1>]);

mods.immersiveengineering.Refinery.addRecipe(<liquid:dragon_breath> * 1000, <liquid:void> * 2000, <liquid:liquidchorus> * 2000, 10000);


mods.thermalexpansion.Transposer.addExtractRecipe(<liquid:dragon_breath> * 1000, <minecraft:dragon_breath>, 800, <minecraft:glass_bottle> % 100);
mods.thermalexpansion.Transposer.addFillRecipe(<minecraft:dragon_breath>, <minecraft:glass_bottle>, <liquid:dragon_breath> * 1000, 800);

mods.immersiveengineering.MetalPress.addRecipe(<draconicevolution:draconium_ingot>, <minecraft:brick>, <minecraft:skull:5>, 2000);



recipes.addShaped("unbreakable_graphite_electrode", 
	<immersiveengineering:graphite_electrode>.withTag({Unbreakable: 1 as byte}).withDisplayName("强化混合晶化石墨电极").withLore(["强化混合晶化金属镶嵌其内起到散热的作用，将热量和熔融材料从电极芯转移出去，防止石墨损耗。", "这也使电极很难被折断。"]),
	[[null, <stevescarts:modulecomponents:49>, <immersiveengineering:graphite_electrode>],
	[<stevescarts:modulecomponents:49>,<immersiveengineering:graphite_electrode>,<stevescarts:modulecomponents:49>],
	[<immersiveengineering:graphite_electrode>,<stevescarts:modulecomponents:49>,null]]);