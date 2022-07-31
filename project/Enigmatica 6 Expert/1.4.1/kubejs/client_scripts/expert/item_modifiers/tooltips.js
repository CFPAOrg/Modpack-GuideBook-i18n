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
    if (global.isExpertMode == false) {
        return;
    }
    const disabledInExpert = Text.of('在专家模式被禁用').red();
    const recipes = [
        {
            items: ['bloodmagic:soulpickaxe'],
            text: [Text.of('可以挖掘艾瑟金属矿石').color('#7e24b3')]
        },
        {
            items: ['tconstruct:seared_melter'],
            text: [disabledInExpert, Text.of('请改用冶炼炉控制器').aqua()]
        },
        {
            items: [
                'integrateddynamics:mechanical_squeezer',
                'integrateddynamics:mechanical_drying_basin',
                'integrateddynamics:squeezer',
                'integrateddynamics:drying_basin',
                'pneumaticcraft:air_compressor',
                'pneumaticcraft:advanced_air_compressor',
                'darkutils:rune_damage_player',
                'eidolon:crucible',
                'eidolon:wooden_brewing_stand',
                'engineersdecor:factory_placer',
                'eidolon:worktable',
                'mekanism:osmium_compressor',
                'mekanism:ultimate_compressing_factory',
                'mekanism:elite_compressing_factory',
                'mekanism:advanced_compressing_factory',
                'mekanism:basic_compressing_factory',
                'compactmachines:tunnel'
            ],
            text: [disabledInExpert]
        },
        {
            items: ['resourcefulbees:t2_apiary', 'resourcefulbees:t3_apiary', 'resourcefulbees:t4_apiary'],
            text: [
                Text.of('制作此物品时配方所含的蜜蜂会被消耗').red(),
                Text.of('请确保移除蜜蜂后再进行合成！').red()
            ]
        },
        {
            items: ['industrialforegoing:mob_slaughter_factory'],
            text: [
                disabledInExpert,
                Text.of('肉汤可以通过“处理”牛来获得').color('#6e2a2a'),
                Text.of('粉红黏液可以用流体镭射钻从粉色凋灵处收获').color('#da07e6')
            ]
        },
        {
            items: ['kubejs:medium_machinery_schematics'],
            text: [
                Text.of(`解锁构造以下结构的能力：`).blue(),
                Text.of(`- 自动化工程师装配台`).aqua(),
                Text.of(`- 柴油发电机`).aqua(),
                Text.of(`- 斗轮式挖掘机`).aqua(),
                Text.of(`- 工业发酵机`).aqua(),
                Text.of(`- 金属冲压机`).aqua(),
                Text.of(`- 混合器`).aqua(),
                Text.of(`- 采油机`).aqua(),
                Text.of(`- 炼油厂`).aqua(),
                Text.of(`- 锯木机`).aqua(),
                Text.of(`- 工业挤压机`).aqua()
            ]
        },
        {
            items: ['kubejs:heavy_machinery_schematics'],
            text: [
                Text.of(`解锁构造以下结构的能力：`).blue(),
                Text.of(`- 电弧炉`).aqua(),
                Text.of(`- 装配机`).aqua(),
                Text.of(`- 焦化器`).aqua(),
                Text.of(`- 粉碎机`).aqua(),
                Text.of(`- 精馏塔`).aqua(),
                Text.of(`- 避雷针`).aqua(),
                Text.of(`- 硫磺回收装置`).aqua()
            ]
        },
        {
            items: [/kubejs:diy/],
            text: [Text.of(`还需要一些零件`).green(), Text.of(`不含电池`).darkRed()]
        }
    ];

    recipes.forEach((recipe) => {
        event.add(recipe.items, recipe.text);
    });
});
