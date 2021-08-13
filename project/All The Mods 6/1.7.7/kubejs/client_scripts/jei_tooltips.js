onEvent(`item.tooltip`, e => {
  const beeTypes = java("com.resourcefulbees.resourcefulbees.compat.jei.JEICompat").ENTITY_INGREDIENT
  const refined = [`controller`, `creative_controller`, `grid`, `crafting_grid`, `pattern_grid`, `fluid_grid`, `network_receiver`, `network_transmitter`, `relay`, `detector`, `security_manager`, `wireless_transmitter`, `disk_manipulator`, `crafter`, `crafter_manager`, `crafting_monitor`]

  e.addForType(entityType, ['bee:starry'], ['将这个蜜蜂安置在创造蜂房中，即可每次收获10个蜜脾块', '你现在应该有一个了，好好利用它吧！'])
  refined.forEach(refin => e.add(`refinedstorage:${refin}`, `使用染料右键或与染料合成来染色`))
  e.add(`pedestals:pedestal/stone333`, [
    `对着§6§l调色板§r按U`,
    `来查看你能制作的不同颜色的基座`
  ])
  e.add(`creativewirelesstransmitter:creative_wireless_transmitter`, [`使用染料右键或与染料合成来染色`])
  e.add(`#pedestals:upgrades`, `将升级放在副手以添加到基座上`)
  e.add(`#resourcefulbees:valid_apiary`, `有效的蜂房方块`)
  e.add(`mekanism:creative_energy_cube`, [`§4§l未充满时会销毁能量`, `查看JEI的信息栏了解如何充满能量单元`])
})