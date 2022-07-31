onEvent('jei.information', (event) => {
    if (global.isExpertMode == false) {
        return;
    }

    const recipes = [
        {
            items: ['bloodmagic:soulpickaxe'],
            text: ['可以挖掘艾瑟金属矿石。']
        },
        {
            items: ['atum:nebu_hammer', 'mythicbotany:alfsteel_pick', 'aiotbotania:alfsteel_aiot'],
            text: ['可以将神铸方块分解为阿图姆遗物。']
        },
        {
            items: ['resourcefulbees:t2_apiary', 'resourcefulbees:t3_apiary', 'resourcefulbees:t4_apiary'],
            text: [
                '制作此物品时配方所含的蜜蜂会被消耗 - 请确保移除蜜蜂后再进行合成！'
            ]
        },
        {
            items: ['industrialforegoing:mob_slaughter_factory'],
            text: [
                // This works but doesn't provide color in JEI text.
                // I just made it like this to be easily copied from tooltips script
                Text.of('在专家模式中被禁用。').red(),
                Text.of('肉汤可以通过“处理”牛来获得。').color('#6e2a2a'),
                Text.of('粉红黏液可以用流体镭射钻从粉色凋灵处收获。').color('#da07e6')
            ]
        },
        {
            items: ['refinedstorage:4k_storage_part', 'refinedstorage:1k_storage_part'],
            text: ['专家模式删除了该配方，请从16k存储元件开始合成。']
        },
        {
            items: ['refinedstorage:256k_fluid_storage_part', 'refinedstorage:64k_fluid_storage_part'],
            text: ['专家模式删除了该配方，请从1024k流体存储元件开始合成。']
        }
    ];

    recipes.forEach((recipe) => {
        recipe.items.forEach((item) => {
            event.add(item, recipe.text);
        });
    });

    const disabledItems = [
        'pneumaticcraft:air_compressor',
        'pneumaticcraft:advanced_air_compressor',
        'integrateddynamics:energy_battery',
        'integrateddynamics:mechanical_squeezer',
        'integrateddynamics:mechanical_drying_basin',
        'integrateddynamics:squeezer',
        'integrateddynamics:drying_basin',
        'integrateddynamics:coal_generator',
        'mekanism:upgrade_filter',
        'darkutils:rune_damage_player',
        'integrateddynamics:coal_generator',
        /darkutils:export_plate/,
        /integrateddynamics:energy_battery/,
        /powah:energy_cable_/,
        'eidolon:crucible',
        'eidolon:wooden_brewing_stand',
        'tanknull:dock',
        'dankstorage:dock',
        'engineersdecor:factory_placer'
    ];
    disabledItems.forEach((item) => {
        event.add(
            item,
            "此物品在专家模式中被禁用"
        );
    });
});
