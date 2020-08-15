import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.artisanworktables.builder.RecipeBuilder;
import mods.zensummoning.SummoningDirector;
import mods.zensummoning.SummoningAttempt;
import mods.zensummoning.SummoningInfo;
import mods.zensummoning.MobInfo;


print("---------------ZenSummoning Start------------------");

<zensummoning:altar>.addTooltip(format.darkRed("开始仪式的诱变剂是在紧挨着祭坛上方显示的物品。不是最上面的物品。"));
<zensummoning:altar>.addTooltip(format.darkRed("拿着诱变剂Shift右击来激活"));
#altar
mods.bloodmagic.AlchemyArray.addRecipe(<zensummoning:altar>, <projecte:item.pe_covalence_dust>, <minecraft:bookshelf>);

//SummoningDirector.enableDebugging();
#Zombie Villager
SummoningDirector.addSummonInfo(
	SummoningInfo.create()
		.setCatalyst(<minecraft:bone>)
		.setReagents([<wizardry:devil_dust>,<minecraft:leather>*2,<minecraft:beef>,<primal_tech:bone_shard>*2])
		.addMob(MobInfo.create()
			.setMob("minecraft:zombie_villager")
			.setOffset(1,2,1)
			.setSpread(1,1,1)
			.setData({
				"Health":200, 
				"Attributes":[
					{"Name":"generic.maxHealth", "Base":200},
					{"Name":"generic.movementSpeed", "Base":0.3},
					{"Name":"generic.attackDamage", "Base":6}
				],
				"CustomName":"A Lost Soul",
				"PersistenceRequired":1,
				"CustomNameVisible":1
			})
		)
);

#chicken
SummoningDirector.addSummonInfo(
	SummoningInfo.create()
		.setCatalyst(<minecraft:wheat_seeds>)
		.setReagents([<wizardry:devil_dust>, <minecraft:leather>,<primal_tech:bone_shard>])
		.addMob(MobInfo.create()
			.setMob("minecraft:chicken")
			.setOffset(1,2,1)
			.setSpread(1,1,1)			
			.setData({
				"Health":20, 
				"CustomName":"Colonel McCluckins",
				"PersistenceRequired":1,
				"CustomNameVisible":1
			})
		)
);	

	
#cow
SummoningDirector.addSummonInfo(
	SummoningInfo.create()
		.setCatalyst(<minecraft:leather>)
		.setReagents([<wizardry:devil_dust>, <minecraft:leather>,<minecraft:beef>,<primal_tech:bone_shard>])
		.addMob(MobInfo.create()
			.setMob("minecraft:cow")
			.setOffset(1,2,1)
			.setSpread(1,1,1)
			.setData({
				"Health":20, 
				"CustomName":"General Hansburger",
				"PersistenceRequired":1,
				"CustomNameVisible":1
			})
		)
);		
		
#sheep
SummoningDirector.addSummonInfo(
	SummoningInfo.create()
		.setCatalyst(<minecraft:string>)
		.setReagents([<wizardry:devil_dust>, <minecraft:leather>,<primal_tech:bone_shard>])
		.addMob(MobInfo.create()
			.setMob("minecraft:sheep")
			.setOffset(1,2,1)
			.setSpread(1,1,1)
			.setData({
				"Health":20, 
				"CustomName":"Admiral Fuzzybritches",
				"PersistenceRequired":1,
				"CustomNameVisible":1
			})
		)
);	

#pig
SummoningDirector.addSummonInfo(
	SummoningInfo.create()
		.setCatalyst(<minecraft:carrot>)
		.setReagents([<wizardry:devil_dust>, <minecraft:leather>,<primal_tech:bone_shard>])
		.addMob(MobInfo.create()
			.setMob("minecraft:pig")
			.setOffset(1,2,1)
			.setSpread(1,1,1)
			.setData({
				"Health":20, 
				"CustomName":"Wilbur",
				"PersistenceRequired":1,
				"CustomNameVisible":1
			})
		)
);

#llama
SummoningDirector.addSummonInfo(
	SummoningInfo.create()
		.setCatalyst(<minecraft:sand>)
		.setReagents([<wizardry:devil_dust>, <minecraft:leather>,<primal_tech:bone_shard>])
		.addMob(MobInfo.create()
			.setMob("minecraft:llama")
			.setOffset(1,2,1)
			.setSpread(1,1,1)
			.setData({
				"Health":20, 
				"CustomName":"Kevin",
				"PersistenceRequired":1,
				"CustomNameVisible":1
			})
		)
);	

	#Deer
SummoningDirector.addSummonInfo(
	SummoningInfo.create()
		.setCatalyst(<minecraft:melon>)
		.setReagents([<wizardry:devil_dust>,<minecraft:leather>,<primal_tech:bone_shard>])
		.addMob(MobInfo.create()
			.setMob("emberroot:deers")
			.setOffset(1,2,1)
			.setSpread(1,1,1)
			.setData({
				"Health":20, 
				"CustomName":"Jane Doe",
				"PersistenceRequired":1,
				"CustomNameVisible":1
			})
		)
);			
 
	#cat
SummoningDirector.addSummonInfo(
	SummoningInfo.create()
		.setCatalyst(<minecraft:fish>)
		.setReagents([<wizardry:devil_dust>, <minecraft:leather>,<primal_tech:bone_shard>])
		.addMob(MobInfo.create()
			.setMob("minecraft:ocelot")
			.setOffset(1,2,1)
			.setSpread(1,1,1)
			.setData({
				"Health":20, 
				"CustomName":"Field Marshal Felix",
				"PersistenceRequired":1,
				"CustomNameVisible":1
			})
		)
);			
 
 	#parrot
SummoningDirector.addSummonInfo(
	SummoningInfo.create()
		.setCatalyst(<rustic:cloudsbluff>)
		.setReagents([<wizardry:devil_dust>, <minecraft:feather>,<primal_tech:bone_shard>])
		.addMob(MobInfo.create()
			.setMob("minecraft:parrot")
			.setOffset(1,2,1)
			.setSpread(1,1,1)
			.setData({
				"Health":20, 
				"CustomName":"Senor Suavecito",
				"PersistenceRequired":1,
				"CustomNameVisible":1
			})
		)
);
		
	#spider
SummoningDirector.addSummonInfo(
	SummoningInfo.create()
		.setCatalyst(<minecraft:flint>)
		.setReagents([<wizardry:devil_dust>, <minecraft:string> * 2, <primal_tech:bone_shard>])
		.addMob(MobInfo.create()
			.setMob("minecraft:spider")
			.setOffset(1,2,1)
			.setSpread(1,1,1)
			.setData({
				"Health":20, 
				"CustomName":"Charlotte",
				"PersistenceRequired":1,
				"CustomNameVisible":1
			})
		)
);

	#Rabbit
SummoningDirector.addSummonInfo(
	SummoningInfo.create()
		.setCatalyst(<harvestcraft:veggiebaititem>)
		.setReagents([<wizardry:devil_dust>, <minecraft:leather>,<primal_tech:bone_shard>])
		.addMob(MobInfo.create()
			.setMob("minecraft:rabbit")
			.setOffset(1,2,1)
			.setSpread(1,1,1)
			.setData({
				"Health":20, 
				"CustomName":"The Killer of Caerbannog",
				"PersistenceRequired":1,
				"CustomNameVisible":1
			})
		)
);	

	#Squid
SummoningDirector.addSummonInfo(
	SummoningInfo.create()
		.setCatalyst(<minecraft:fish>)		
		.setReagents([<wizardry:devil_dust>, <actuallyadditions:item_water_bowl>, <primal_tech:bone_shard>])
		.addMob(MobInfo.create()
			.setMob("minecraft:squid")
			.setOffset(1,2,1)
			.setSpread(1,1,1)
			.setData({
				"Health":20, 
				"CustomName":"Squidward Tentacles",
				"PersistenceRequired":1,
				"CustomNameVisible":1
			})
		)
);		
		
	#spirit - cannot be summoned in void world
SummoningDirector.addSummonInfo(
	SummoningInfo.create()
		.setCatalyst(<wizardry:blackened_spirit>)
		.setMutator(function(attempt as SummoningAttempt) {
			if (attempt.world.dimension != 0) {
				attempt.message = "Spirits rise from the void!";
			} else {
				attempt.success = false;
				attempt.message = "All spirits have been lost to the void in this world.";
			}
		})	
		.setReagents([<wizardry:devil_dust>, <minecraft:dye:4>, <minecraft:dye:4>])
		.addMob(MobInfo.create()
			.setMob("randomthings:spirit")
			.setOffset(1,2,1)
			.setSpread(1,1,1)
			.setData({
				"Health":1, 
				"CustomName":"Void minion",
				"PersistenceRequired":1,
				"CustomNameVisible":1
			})
		)
);		

	#The Mighty Ender Chicken
SummoningDirector.addSummonInfo(
	SummoningInfo.create()
		.setCatalyst(<minecraft:dragon_egg>)
		.setMutator(function(attempt as SummoningAttempt) {
			if (attempt.world.dimension == 147) {
				attempt.message = "The skies darken as death approaches!";
			} else {
				attempt.success = false;
				attempt.message = "You can only summon the mighty ender chicken from the dying heart of the Aurellian Star. " + "Current dimension is: " + attempt.world.dimension;
                
            }
			
		})	
		.setReagents([<wizardry:devil_dust>, <astralsorcery:itemshiftingstar>, <waterstrainer:worm>, <metaitem:quantumeye>])
		.addMob(MobInfo.create()
			.setMob("mightyenderchicken:ent_enderchicken")
			.setCount(3)
			 .setOffset(1,8,1)
			.setSpread(3,3,3)
			.setData({
				"Health":800
				})
		)
);		
		
print("----------------ZenSummoning End-------------------");


