// priority: 0

console.info('Hello, World! (You will only see this line once in console, during startup)')


//Empowered Blocks

events.listen('item.registry', function (event) {
  // The texture for this item has to be placed in kubejs/assets/kubejs/textures/item/test_item.png
  // If you want a custom item model, you can create one in Blockbench and put it in kubejs/assets/kubejs/models/item/test_item.json
  event.create('charged_nightsky_diamond_block').displayName('充能夜空钻石块').glow(true)
})

events.listen('item.registry', function (event) {
  event.create('charged_nightsky_lapis_block').displayName('充能夜空青金石块').glow(true)
})

events.listen('item.registry', function (event) {
  event.create('charged_nightsky_emerald_block').displayName('充能夜空绿宝石块').glow(true)
})

events.listen('item.registry', function (event) {
  event.create('charged_nightsky_iron_block').displayName('充能夜空铁块').glow(true)
})

events.listen('item.registry', function (event) {
  event.create('charged_nightsky_redstone_block').displayName('充能夜空红石块').glow(true)
})

events.listen('item.registry', function (event) {
  event.create('charged_nightsky_coal_block').displayName('充能夜空煤炭块').glow(true)
})

//Non Empowered Blocks

events.listen('item.registry', function (event) {
  event.create('nightsky_diamond_block').displayName('夜空钻石块')
})

events.listen('item.registry', function (event) {
  event.create('nightsky_lapis_block').displayName('夜空青金石块')
})

events.listen('item.registry', function (event) {
  event.create('nightsky_emerald_block').displayName('夜空绿宝石块')
})

events.listen('item.registry', function (event) {
  event.create('nightsky_iron_block').displayName('夜空铁块')
})

events.listen('item.registry', function (event) {
  event.create('nightsky_redstone_block').displayName('夜空红石块')
})

events.listen('item.registry', function (event) {
  event.create('nightsky_coal_block').displayName('夜空煤炭块')
})

//Empowered Crystals

events.listen('item.registry', function (event) {
  event.create('charged_nightsky_diamond').displayName('充能夜空钻石').glow(true)
})

events.listen('item.registry', function (event) {
  event.create('charged_nightsky_lapis').displayName('充能夜空青金石').glow(true)
})

events.listen('item.registry', function (event) {
  event.create('charged_nightsky_emerald').displayName('充能夜空绿宝石').glow(true)
})

events.listen('item.registry', function (event) {
  event.create('charged_nightsky_iron').displayName('充能夜空铁').glow(true)
})

events.listen('item.registry', function (event) {
  event.create('charged_nightsky_redstone').displayName('充能夜空红石').glow(true)
})

events.listen('item.registry', function (event) {
  event.create('charged_nightsky_coal').displayName('充能夜空煤炭').glow(true)
})

//Non Empowered Crystals

events.listen('item.registry', function (event) {
  event.create('nightsky_diamond').displayName('夜空钻石')
})

events.listen('item.registry', function (event) {
  event.create('nightsky_lapis').displayName('夜空青金石')
})

events.listen('item.registry', function (event) {
  event.create('nightsky_emerald').displayName('夜空绿宝石')
})

events.listen('item.registry', function (event) {
  event.create('nightsky_iron').displayName('夜空铁')
})

events.listen('item.registry', function (event) {
  event.create('nightsky_redstone').displayName('夜空红石')
})

events.listen('item.registry', function (event) {
  event.create('nightsky_coal').displayName('夜空煤炭')
})

//Others

events.listen('item.registry', function (event) {
  event.create('upgrade_base').displayName('升级底板')
})

events.listen('item.registry', function (event) {
  event.create('cosmic_anime_food').displayName('寰宇二次元大餐')
})

events.listen('item.registry', function (event) {
  event.create('supreme_endestest_pearl').displayName('至尊终末珍珠').glow(true)
})

events.listen('item.registry', function (event) {
  event.create('endestest_pearl').displayName('终末珍珠')
})

events.listen('item.registry', function (event) {
  event.create('uwuterium_pearl').displayName('终焉末狱珍珠')
})

events.listen('item.registry', function (event) {
  event.create('uwuterium_ingot').displayName('终焉末狱锭')
})

events.listen('item.registry', function (event) {
  event.create('uwuterium_nugget').displayName('终焉末狱粒')
})

events.listen('item.registry', function (event) {
  event.create('uwuterium_pile').displayName('终焉末狱尘')
})

events.listen('item.registry', function (event) {
  event.create('uwuterium_block').displayName('终焉末狱块')
})

events.listen('item.registry', function (event) {
  event.create('enderpearl_block').displayName('末影珍珠块')
})



