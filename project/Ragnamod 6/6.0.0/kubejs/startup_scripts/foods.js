events.listen('item.registry', function (e) {
e.create('miraculous_soup')
.displayName('奇迹之汤')
.food(foodConsumer => {
foodConsumer.hunger(20)
            .saturation(20.0)
            .alwaysEdible()
            .eaten(eatenEvent => {
                eatenEvent.player.tell("我好倒霉");
                eatenEvent.getEntity().getPotionEffects().add("minecraft:saturation",2000,4,false,false)
                eatenEvent.getEntity().getPotionEffects().add("minecraft:regeneration",2000,4,false,false)
                eatenEvent.getEntity().getPotionEffects().add("minecraft:unluck",6000,0,false,false)
            });
});
e.create('ultimate_skewer')
.displayName('终极肉串')
.food(foodConsumer => {
  foodConsumer.hunger(20)
              .saturation(5.0)
              .eaten(eatenEvent => {
                eatenEvent.player.tell("我渴望鲜血！");
                eatenEvent.getEntity().getPotionEffects().add("minecraft:strength",6000,4,false,false)
                eatenEvent.getEntity().getPotionEffects().add("minecraft:health_boost",6000,3,false,false)
                eatenEvent.getEntity().getPotionEffects().add("minecraft:saturation",2000,4,false,false)
                eatenEvent.getEntity().getPotionEffects().add("minecraft:regeneration",2000,4,false,false)
                eatenEvent.getEntity().getPotionEffects().add("botania:bloodthirst",12000,0,false,false)
              });
});
})