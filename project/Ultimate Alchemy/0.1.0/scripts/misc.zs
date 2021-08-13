import mods.contenttweaker.Commands;

<minecraft:clay_ball>.addTooltip(format.lightPurple("这是假的粘土。"));
<minecraft:clay>.addTooltip(format.lightPurple("这是假的粘土。"));
<contenttweaker:true_clay>.addTooltip(format.aqua("目标达成!"));
<contenttweaker:true_clay>.addTooltip(format.aqua("大吉大利，今晚吃鸡! <3"));
<contenttweaker:true_clay>.addTooltip(format.aqua("- Tema"));
<contenttweaker:true_clay>.addTooltip(format.blue("<拿在手里右键>"));
<contenttweaker:alchemy_cheat_sheet>.addTooltip(format.aqua("这不是作弊 - 这只是辅助学习的工具!"));
<contenttweaker:alchemy_cheat_sheet>.addTooltip(format.aqua("右键阅读。"));
<minecraft:bedrock>.addTooltip(format.aqua("没想到吧？它可以被破坏。"));
<extrautils2:decorativebedrock:0>.addTooltip(format.aqua("没想到吧？它可以被破坏。"));
<extrautils2:decorativebedrock:1>.addTooltip(format.aqua("没想到吧？它可以被破坏。"));
<extrautils2:decorativebedrock:2>.addTooltip(format.aqua("没想到吧？它可以被破坏。"));
<contenttweaker:thinker_statue>.addTooltip(format.aqua("储存思想和预知的神奇容器。"));
<contenttweaker:thinker_statue>.addTooltip(format.aqua("- 主观的客观存在。"));
<contenttweaker:thinker_statue>.addTooltip(format.aqua("- 因为他太强大了，所以他需要32X像素！"));
<contenttweaker:lil_brudder>.addTooltip(format.aqua("'我可以自己把它画出来。'"));
<contenttweaker:lil_brudder>.addTooltip(format.aqua(" - Lil' Brudder"));
<contenttweaker:lil_brudder>.addTooltip(format.aqua("右键止哭。"));
<contenttweaker:cloth_wet>.addTooltip(format.aqua("(Eww)"));
<contenttweaker:cloth_dry>.addTooltip(format.aqua("右键冷却。"));
<contenttweaker:dollar>.addTooltip(format.aqua("'财富'蕴于其中，原因尚不可知。"));
<contenttweaker:dollar>.addTooltip(format.aqua("不过看起来是个很神奇的技术！"));



scripts.globals.makeBreakable(<minecraft:bedrock>);
scripts.globals.makeBreakable(<extrautils2:decorativebedrock:0>);
scripts.globals.makeBreakable(<extrautils2:decorativebedrock:1>);
scripts.globals.makeBreakable(<extrautils2:decorativebedrock:2>);


for i in 0 to 9 {
	mods.jei.JEI.addItem(<enderio:item_alloy_ingot>.withDamage(i));
	mods.jei.JEI.addItem(<enderio:item_alloy_nugget>.withDamage(i));
	mods.jei.JEI.addItem(<enderio:block_alloy>.withDamage(i));
}

mods.jei.JEI.addItem(<yabba:item_barrel>.withTag({BlockEntityTag: {Item: {id: "minecraft:log", Count: 1 as byte, Damage: 0 as short}, Tier: "creative", Skin: "minecraft:log_oak", Count: 1000000000}}));
mods.jei.JEI.addItem(<yabba:item_barrel>.withTag({BlockEntityTag: {Item: {id: "minecraft:cobblestone", Count: 1 as byte, Damage: 0 as short}, Tier: "creative", Skin: "minecraft:cobblestone", Count: 1000000000}}));

mods.jei.JEI.addDescription(<contenttweaker:tear_drop>, "过于悲伤才会流出的眼泪。哦当然，你的双眼已经因为自我坚强太久而干涸了！不过，这儿有一幅单腿小狗的画...");
<ore:tear_drop>.add(<contenttweaker:tear_drop>);
<ore:cloth_wet>.add(<contenttweaker:cloth_wet>);

mods.jei.JEI.addDescription(<minecraft:end_stone>, "将末地空气砸到石头上即可获得");

mods.jei.JEI.hide(<minecraft:clay>);
mods.jei.JEI.hide(<minecraft:clay_ball>);
/*
var copper_ingot = <thermalfoundation:material:128>;
var tin_ingot = <thermalfoundation:material:129>;
for tin_rep in <ore:ingotTin>.items {
	if (!tin_ingot.matchesExact(tin_rep)) {
		mods.jei.JEI.hide(tin_rep);
	}
}

for copper_rep in <ore:ingotCopper>.items {
	if (!copper_ingot.matchesExact(copper_rep)) {
		mods.jei.JEI.hide(copper_rep);
	}
}
*/


events.onPlayerTick(function(event as crafttweaker.event.PlayerTickEvent){
	if(event.player.world.time % 1000 == 0){
    		event.player.foodStats.addStats(1, 1);
    	}
});

/*
events.onBlockHarvestDrops(function(event as crafttweaker.event.BlockHarvestDropsEvent){
	if(event.block in <block:minecraft:bedrock>.block){
		for stack in event.drops {
			val wItemStack = stack % 20;
			if(wItemStack in (<minecraft:bedrock> | <extrautils2:decorativebedrock:*>)){
				return;
			}
		}
		event.drops += <extrautils2:decorativebedrock:2>;
	}
});
*/

events.onPlayerTick(function(event as crafttweaker.event.PlayerTickEvent){
	if(!event.player.world.remote & event.player.world.dimension != 0 & event.player.world.dimension != 1){
		var homeDim = crafttweaker.world.IWorld.getFromID(0);
		var pos = homeDim.provider.getRandomizedSpawnPoint();
		var command = ("forge setdim " ~ event.player.name ~ " 0 " ~ pos.x ~ " " ~ pos.y ~ " " ~ pos.z) as string;
		print(command);
		var entity_def = <entity:minecraft:commandblock_minecart>;
		var entity = entity_def.createEntity(event.player.world);
		server.commandManager.executeCommand(entity, command);		
		
		
    		event.player.sendChat("违规：你不能进入其他维度。");
   	}
});


events.onPlayerTick(function(event as crafttweaker.event.PlayerTickEvent){
	var player = event.player as crafttweaker.player.IPlayer;
	if !player.world.remote {
		var data = player.data;
		if data has "TearCountdown" {
			var time = data.memberGet("TearCountdown") as int;
			if time > 0 {
				time = time - 1;
				player.update(data + {"TearCountdown": time});
				var t = player.world.time;
				if ((t % 13) == 0) | ((t % 17) == 0) | ((t % 23) == 0) {
					player.give(<contenttweaker:tear_drop>);
				}
			}

		}
	}
});