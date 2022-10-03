#loader contenttweaker

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Item;
import crafttweaker.item.IItemStack;
import mods.contenttweaker.IItemRightClick;
import mods.contenttweaker.Commands;
import crafttweaker.data.IData;
import crafttweaker.util.Position3f;
import crafttweaker.world.IBlockPos;


//var bedrock_definition = <block:minecraft:bedrock>.block.definition;
//bedrock_definition.hardness = 5;
//bedrock_definition.setHarvestLevel("pickaxe", 0);

var itemRawBucket = VanillaFactory.createItem("bucket_of_raw_lava");
itemRawBucket.maxStackSize = 1;
itemRawBucket.register();

var itemTrueClay = VanillaFactory.createItem("true_clay");
itemTrueClay.rarity = "epic";
itemTrueClay.itemRightClick = function(stack, world, player, hand) {
    if (!world.remote && !extrautilities2.Tweaker.XUTweaker.isPlayerFake(player)) { 
    	Commands.call("title @p reset", player, world, false, true);
        Commands.call("title @p title {\"text\":\"成功!\", \"color\":\"aqua\"}", player, world, false, true);
        Commands.call("title @p subtitle \"进入末地传送门来结束试炼!\"}", player, world, false, true);
        
        for x in 0 to 3 {
        	for z in 0 to 3 {
        		var pos3f = crafttweaker.util.Position3f.create(x - 1, 63, z - 1);
        		world.setBlockState(<block:minecraft:end_portal>.block.definition.defaultState, pos3f as IBlockPos);
        	}
        }
    }
    return "SUCCESS";
};
itemTrueClay.register();


VanillaFactory.createItem("rune_of_balance").register();

VanillaFactory.createItem("rune_of_iron").register();
VanillaFactory.createItem("rune_of_tragedy").register();
VanillaFactory.createItem("rune_of_comedy").register();

VanillaFactory.createItem("dollar").register();
VanillaFactory.createItem("tear_drop").register();

VanillaFactory.createItem("coal_ball").register();
VanillaFactory.createItem("coal_ball_compressed").register();
VanillaFactory.createItem("coal_dense_ball").register();
VanillaFactory.createItem("coal_dense_ball_compressed").register();


VanillaFactory.createItem("mini_void_seeds").register();

VanillaFactory.createItem("wheat_feather").register();

var void_egg_plant =VanillaFactory.createItemFood("void_egg_plant", 1250);
void_egg_plant.saturation = 5;
void_egg_plant.register();

VanillaFactory.createItemFood("void_carrot", 3).register();

VanillaFactory.createItemFood("red_herring", 1).register();

var itemCompressionMold = VanillaFactory.createItem("compression_mold");
itemCompressionMold.maxStackSize = 1;
itemCompressionMold.register();

var itemSoggyPearl = VanillaFactory.createItem("soggy_pearl");
itemSoggyPearl.maxStackSize = 16;
itemSoggyPearl.register();

var itemThinkerStatue = VanillaFactory.createItem("thinker_statue");
itemThinkerStatue.maxStackSize = 1;
itemThinkerStatue.rarity = "rare";
itemThinkerStatue.itemRightClick = function(stack, world, player, hand) {
	if !world.remote && !extrautilities2.Tweaker.XUTweaker.isPlayerFake(player) { 
		var time =  world.time % 24000;
		var hour =  time / 1000;
		var minute = ((time % 1000) * 60) / 1000;
		var minuteText = minute < 10 ? ("0" ~ minute) : ("" ~ minute);
		player.sendChat("我认为现在的时间是 " ~ hour ~ ":" ~ minuteText ~ "...");
		
	}
	return "SUCCESS";
};
itemThinkerStatue.register();

var lil_brudder = VanillaFactory.createItem("lil_brudder");
lil_brudder.maxStackSize = 1;
lil_brudder.itemRightClick = function(stack, world, player, hand) {
	if !world.remote && !extrautilities2.Tweaker.XUTweaker.isPlayerFake(player) { 
		// player.give(<ore:tear_drop>.firstItem * 2);
		player.update(player.data + {"TearCountdown": 80});
	}
	return "SUCCESS";
};
lil_brudder.register();

var cloth_wet = VanillaFactory.createItem("cloth_wet");
cloth_wet.register();

var cloth_dry = VanillaFactory.createItem("cloth_dry");
cloth_dry.itemRightClick = function(stack, world, player, hand) {
	if (!world.remote && !extrautilities2.Tweaker.XUTweaker.isPlayerFake(player)) { 
		if (!player.creative) {
			player.give(<ore:cloth_wet>.firstItem);
			stack.shrink(1);
			
		} else {
			player.sendChat("创造玩家浑身燥热");
		}
	}
	return "SUCCESS";
};
cloth_dry.register();



var dragon_scale = VanillaFactory.createItem("dragon_scale");
dragon_scale.register();

var dragon_eye = VanillaFactory.createItem("dragon_eye");
dragon_eye.register();

var dragon_horn = VanillaFactory.createItem("dragon_horn");
dragon_horn.register();

var dragon_tooth = VanillaFactory.createItem("dragon_tooth");
dragon_tooth.register();

var dragon_skull = VanillaFactory.createItem("dragon_skull");
dragon_skull.register();

var dragon_tongue = VanillaFactory.createItem("dragon_tongue");
dragon_tongue.register();

var dragon_skin = VanillaFactory.createItem("dragon_skin");
dragon_skin.register();

var soul_substitute = VanillaFactory.createItem("soul_substitute");
soul_substitute.maxStackSize = 1;
soul_substitute.register();



var cheat_sheet = VanillaFactory.createItem("alchemy_cheat_sheet");
cheat_sheet.itemRightClick = function(stack, world, player, hand) {
    if (!world.remote && !extrautilities2.Tweaker.XUTweaker.isPlayerFake(player)) { 
        Commands.call("thaumcraft research @p THAUMATORIUM", player, world, false, true);
        Commands.call("thaumcraft research @p IMPROVEDSMELTING2", player, world, false, true);
        Commands.call("thaumcraft research @p INFUSION", player, world, false, true);
        Commands.call("thaumcraft research @p BASEALCHEMY", player, world, false, true);
        Commands.call("thaumcraft research @p HEDGEALCHEMY", player, world, false, true);
        Commands.call("thaumcraft research @p BASEELDRITCH", player, world, false, true);
        stack.shrink(1);
    }
    return "SUCCESS";
};
cheat_sheet.maxStackSize = 1;
cheat_sheet.register();


var time_machine = extrautilities2.Tweaker.IMachineRegistry.createNewMachine("time_machine", 1000*1024, 1000*1024,
	[extrautilities2.Tweaker.IMachineSlot.newItemStackSlot("input_item", true, 64), extrautilities2.Tweaker.IMachineSlot.newFluidSlot("input_fluid", 4000, true, null)],
	[extrautilities2.Tweaker.IMachineSlot.newItemStackSlot("output_item", true, 64), extrautilities2.Tweaker.IMachineSlot.newFluidSlot("output_fluid", 4000, true, null)],
	"contenttweaker:blocks/time_machine",
	"contenttweaker:blocks/time_machine_active"
);