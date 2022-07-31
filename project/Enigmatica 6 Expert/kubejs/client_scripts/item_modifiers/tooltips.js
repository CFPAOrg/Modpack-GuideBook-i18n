onEvent('item.tooltip', (event) => {
    /*
    Valid Color Codes:
    
    .black()
    .darkBlue()
    .darkGreen()
    .darkAqua()
    .darkRed()
    .darkPurple()
    .gold()
    .gray()
    .darkGray()
    .blue()
    .green()
    .aqua()
    .red()
    .lightPurple()
    .yellow()
    .white()
    .color('#808080') //any hex color
    */
    const recipes = [
        {
            items: [
                'integratedtunnels:part_interface_fluid',
                'integratedtunnels:part_importer_fluid',
                'integratedtunnels:part_exporter_fluid'
            ],
            text: [Text.of('最大流体传输速率被限制在65,536mb每游戏刻').red()]
        },
        {
            items: [
                'integratedtunnels:part_interface_energy',
                'integratedtunnels:part_importer_energy',
                'integratedtunnels:part_exporter_energy'
            ],
            text: [Text.of('最大能量传输速率被限制在65,536FE每游戏刻').red()]
        },
        {
            items: ['powah:charged_snowball', 'thermal:lightning_charge'],
            text: [Text.of('在击中的地方召唤一道闪电').gold()]
        },
        {
            items: ['kubejs:altered_recipe_indicator'],
            text: [Text.of('被Enigmatica 6: Expert更改了配方，请查阅JEI').gold()]
        },
        {
            items: ['kubejs:disabled_recipe_indicator'],
            text: [Text.of('被Enigmatica 6禁用').gold()]
        },
        {
            items: ['tconstruct:crafting_station', 'tconstruct:part_builder', 'tconstruct:tinker_station'],
            text: [Text.of('可用任何木头合成').gold()]
        },
        {
            items: ['tconstruct:scorched_anvil', 'tconstruct:tinkers_anvil'],
            text: [Text.of('可用任何合金方块合成').gold()]
        },
        {
            items: [
                'engineersdecor:rebar_concrete_tile_stairs',
                'engineersdecor:rebar_concrete_tile_slab',
                'engineersdecor:rebar_concrete_tile',
                'engineersdecor:rebar_concrete_wall',
                'engineersdecor:rebar_concrete_stairs',
                'engineersdecor:rebar_concrete_slab',
                'engineersdecor:rebar_concrete',
                'thermal:enderium_glass',
                'thermal:lumium_glass',
                'thermal:signalum_glass',
                'thermal:obsidian_glass',
                'engineersdecor:panzerglass_block'
            ],
            text: [Text.of('可以抵挡凋灵').color('#4F0D75')]
        },
        {
            items: ['modularrouters:blast_upgrade'],
            text: [Text.of('使路由器能够抵挡凋灵').color('#4F0D75')]
        },
        {
            items: ['astralsorcery:illumination_wand'],
            text: [Text.of('使方块能够抵挡凋灵').color('#4F0D75')]
        },
        {
            items: [
                'rftoolsbuilder:shield_block4',
                'rftoolsbuilder:shield_block3',
                'rftoolsbuilder:shield_block2',
                'rftoolsbuilder:shield_block1'
            ],
            text: [Text.of('护盾投射仪的护盾能够抵挡凋灵').color('#4F0D75')]
        },
        {
            items: [/bloodmagic:quick_draw_anointment/],
            text: [Text.of('使弓和弩获得快速拉弓的效果').color('#7e24b3')]
        },
        {
            items: [/bloodmagic:fortune_anointment/],
            text: [Text.of('使工具获得额外的时运效果').color('#7e24b3')]
        },
        {
            items: [/bloodmagic:holy_water_anointment/],
            text: [Text.of('提升对亡灵的近战伤害').color('#7e24b3')]
        },
        {
            items: [/bloodmagic:melee_anointment/],
            text: [Text.of('提升近战伤害').color('#7e24b3')]
        },
        {
            items: [/bloodmagic:bow_power_anointment/],
            text: [Text.of('提升弓和弩的伤害').color('#7e24b3')]
        },
        {
            items: [/bloodmagic:silk_touch_anointment/],
            text: [Text.of('获得精准采集的效果').color('#7e24b3')]
        },
        {
            items: [/bloodmagic:hidden_knowledge_anointment/],
            text: [Text.of('收获方块时获得额外经验').color('#7e24b3')]
        },
        {
            items: [/bloodmagic:smelting_anointment/],
            text: [Text.of('获得自动冶炼的效果').color('#7e24b3')]
        },
        {
            items: [/bloodmagic:looting_anointment/],
            text: [Text.of('使武器获得额外的掠夺效果').color('#7e24b3')]
        },
        {
            items: [/bloodmagic:bow_velocity_anointment/],
            text: [Text.of('增加弓和弩的弹射物速度').color('#7e24b3')]
        },
        {
            items: ['#enigmatica:burning_hot'],
            text: [Text.of('超级烫！').darkRed()]
        },
        {
            items: [
                'resourcefulbees:t1_beehive',
                'resourcefulbees:t2_beehive',
                'resourcefulbees:t3_beehive',
                'resourcefulbees:t4_beehive'
            ],
            text: [
                Text.of(`分级蜂箱被弃用了`).red(),
                Text.of(`请改用在世界中自然生成的蜂巢，并对之使用蜂巢升级`).red(),
                Text.of(`分级蜂箱可以在合成栏里转换成蜂巢升级`).red()
            ]
        },
        {
            items: [/natures\w+:\w+_generator/],
            text: [Text.of(`灵气生成器`).green()]
        },
        {
            items: ['clockout:clockout_block'],
            text: [Text.of(`玩家在线时发出红石信号`).aqua()]
        },
        {
            items: ['kubejs:soggy_treasure_box'],
            text: [Text.of(`箱子的锁看起来坏掉了……里面会是什么呢？`).darkAqua()]
        },
        {
            items: [/masterfulmachinery:\w+_mana_port/],
            text: [Text.of(`与魔力发射器和火花兼容`).green()]
        },
        {
            items: ['kubejs:amadron_survey_tools'],
            text: [Text.of(`亚马龙无人机使用的工具，用于采集稀有资源`).aqua()]
        },
        {
            items: ['kubejs:monster_mash'],
            text: [Text.of(`……它火地很突然……`).red()]
        },
        {
            items: ['refinedstorage:silk_touch_upgrade'],
            text: [Text.of('对刷怪笼无效。').red()]
        }
    ];

    refinedStorageItems.forEach((item) => {
        recipes.push({
            items: [`refinedstorage:${item}`],
            text: ['可以通过合成染色或在世界中右击染色']
        });
    });

    recipes.forEach((recipe) => {
        event.add(recipe.items, recipe.text);
    });
});
