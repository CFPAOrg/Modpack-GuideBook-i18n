onEvent('jei.information', (event) => {
    const recipes = [
        {
            items: ['simplefarming:cheese_slice'],
            text: ['右击奶酪圈获得。']
        },
        {
            items: ['farmersdelight:ham'],
            text: ['用小刀击杀猪或疣猪兽获得。']
        },
        {
            items: ['astralsorcery:stardust'],
            text: [
                '用星辉锭切割工具左击星辉锭获得。详情见星芒宝典。'
            ]
        },
        {
            items: ['buildinggadgets:construction_paste'],
            text: ['用镐子破坏致密构建方块获得。']
        },
        {
            items: ['powah:uraninite', 'powah:uraninite_block'],
            text: [
                '铀矿被移除了且不会自然生成。使用Powah的充能台配方来获得晶质铀。'
            ]
        },
        {
            items: ['thermal:blizz_rod', 'thermal:blizz_spawn_egg'],
            text: [
                '暴雪人生成于寒冷的生物群系中。用机械诅咒之土或暗夜粉建造它们的刷怪塔会很方便。'
            ]
        },
        {
            items: ['thermal:blitz_rod', 'thermal:blitz_spawn_egg'],
            text: [
                '狂风人生成于温暖干燥的生物群系中。用机械诅咒之土或暗夜粉建造它们的刷怪塔会很方便。'
            ]
        },
        {
            items: ['thermal:basalz_rod', 'thermal:basalz_spawn_egg'],
            text: [
                '岩石人通常出没于贫瘠或多山的生物群系或下界的玄武岩三角洲中。 用机械诅咒之土或暗夜粉建造它们的刷怪塔会很方便。'
            ]
        },
        {
            items: ['betterendforge:emerald_ice'],
            text: [
                '可以在末地的寒冰星空中找到，也可以在远古翡翠冰旁放置水制造。'
            ]
        },
        {
            items: ['betterendforge:dense_emerald_ice'],
            text: [
                '可以在末地的寒冰星空中找到，也可以在远古翡翠冰旁放置翡翠冰制造。'
            ]
        },
        {
            items: ['betterendforge:ancient_emerald_ice'],
            text: [
                '可以在末地的寒冰星空中找到，可以把相邻的水方块变成翡翠冰，把翡翠冰变成致密翡翠冰。'
            ]
        },
        {
            items: ['simplefarming:habanero'],
            text: ['收获辣椒时的稀有掉落物。']
        },
        {
            items: ['mekanismgenerators:fusion_reactor_controller'],
            text: [
                '核聚变反应堆被大幅地削弱了。',
                '被动产生6万至25万rf/刻的电力，但与一个或多个蒸汽涡轮配对时有高得多的产能。'
            ]
        },
        {
            items: [
                'industrialforegoing:infinity_backpack',
                'industrialforegoing:infinity_saw',
                'industrialforegoing:infinity_drill',
                'industrialforegoing:infinity_hammer',
                'industrialforegoing:infinity_trident',
                'industrialforegoing:infinity_nuke',
                'industrialforegoing:infinity_launcher'
            ],
            text: [
                "九百亿亿是个非常大的数字。真的很大。你不会相信它有多大的。"
            ]
        },
        {
            items: [
                'industrialforegoing:infinity_backpack',
                'industrialforegoing:infinity_saw',
                'industrialforegoing:infinity_drill',
                'industrialforegoing:infinity_hammer',
                'industrialforegoing:infinity_trident',
                'industrialforegoing:infinity_nuke',
                'industrialforegoing:infinity_launcher'
            ],
            text: [
                "正常的手段是没法充满这个工具的，除非你准备在这里干等上几个世纪。据说你要的答案在核合成里可以找到。"
            ]
        },
        {
            items: ['farmersdelight:brown_mushroom_colony', 'minecraft:brown_mushroom'],
            text: [
                '将棕色蘑菇种在黑暗环境下的沃土上来长成蘑菇菌落，破坏后可以获得很好的收益。'
            ]
        },
        {
            items: ['farmersdelight:red_mushroom_colony', 'minecraft:red_mushroom'],
            text: [
                '将红色蘑菇种在黑暗环境下的沃土上来长成蘑菇菌落，破坏后可以获得很好的收益。'
            ]
        },
        {
            items: [
                'integratedtunnels:part_interface_energy',
                'integratedtunnels:part_importer_energy',
                'integratedtunnels:part_exporter_energy'
            ],
            text: ['最大能量传输速率被限制在65,536FE每游戏刻。']
        },
        {
            items: [
                'integratedtunnels:part_interface_fluid',
                'integratedtunnels:part_importer_fluid',
                'integratedtunnels:part_exporter_fluid'
            ],
            text: ['最大流体传输速率被限制在65,536mb每游戏刻。']
        },
        {
            items: ['minecraft:nautilus_shell'],
            text: [
                '击杀生成在暖水海洋的鹦鹉螺获得。',
                ' ',
                '也可以通过包埋鹦鹉螺的石头获得。包埋鹦鹉螺的石头可以在海洋和沙滩的地下找到。'
            ]
        },
        {
            items: ['architects_palette:twisted_sapling'],
            text: ['在主世界向下界传送门投掷树苗获得。']
        },
        {
            items: ['architects_palette:warpstone'],
            text: ['在主世界向下界传送门投掷粘土块获得。']
        },
        {
            items: ['byg:warped_cactus'],
            text: ['在主世界向下界传送门投掷仙人掌获得。']
        },
        {
            items: ['byg:warped_coral', 'byg:warped_coral_fan', 'byg:warped_coral'],
            text: ['在主世界向下界传送门投掷任意珊瑚获得。']
        },
        {
            items: ['architects_palette:chiseled_abyssaline_bricks'],
            text: ['可以用海洋之心右击充能。用于给渊晶石方块供能。']
        },
        {
            items: [
                'architects_palette:abyssaline_lamp',
                'architects_palette:abyssaline_tile_slab',
                'architects_palette:abyssaline_tiles',
                'architects_palette:abyssaline_brick_slab',
                'architects_palette:abyssaline_pillar',
                'architects_palette:abyssaline_bricks',
                'architects_palette:abyssaline'
            ],
            text: [
                '旁边放置充能錾制渊晶石砖时会被供能。能量可以通过其他渊晶石方块传递。'
            ]
        },
        {
            items: [
                'architects_palette:blank_acacia_totem',
                'architects_palette:shocked_acacia_totem',
                'architects_palette:placid_acacia_totem',
                'architects_palette:grinning_acacia_totem'
            ],
            text: ['用斧子右击来改变脸型。']
        },
        {
            items: ['betterendforge:silk_fiber'],
            text: ['击杀生成在蚕蛾巢穴的蚕蛾获得。']
        },
        {
            items: [/upgrade_aquatic:(?!.*dead_coralstone|chiseled)(?=.*_coralstone$)/],
            text: ['在活珊瑚旁放置珊瑚石获得。']
        },
        {
            items: ['upgrade_aquatic:coralstone'],
            text: ['放置在活珊瑚旁来将其灌注。']
        },
        {
            items: ['upgrade_aquatic:dead_coralstone'],
            text: ['用不带精准采集的工具破坏灌注珊瑚石获得。']
        },
        {
            items: [
                'quark:red_crystal',
                'quark:orange_crystal',
                'quark:yellow_crystal',
                'quark:green_crystal',
                'quark:blue_crystal',
                'quark:indigo_crystal',
                'quark:violet_crystal',
                'quark:white_crystal',
                'quark:black_crystal'
            ],
            text: [
                '如果在地底深处放置，将会长成四格高。生长时会发出粒子效果。',
                ' ',
                '也许还会长出刚玉簇来。'
            ]
        },
        {
            items: [/quark:\w+_crystal_cluster/],
            text: ['在地底下的刚玉方块生长时随机出现。']
        },
        {
            items: ['quark:bottled_cloud'],
            text: ['在Y值126到132之间用玻璃瓶右击空气获得。']
        },
        {
            items: [Item.of('naturesaura:aura_bottle', { stored_type: 'naturesaura:overworld' })],
            text: [
                '在主世界或阿图姆世界用瓶与塞右击空气获得。此举措会将该地区的灵气移除。',
                ' ',
                `能通过发射器自动化。`
            ]
        },
        {
            items: [Item.of('naturesaura:aura_bottle', { stored_type: 'naturesaura:end' })],
            text: [
                '在末地或深暗之园用瓶与塞右击空气获得。此举措会将该地区的灵气移除。',
                ' ',
                `能通过发射器自动化。`
            ]
        },
        {
            items: [Item.of('naturesaura:aura_bottle', { stored_type: 'naturesaura:nether' })],
            text: [
                '在下界用瓶与塞右击空气获得。此举措会将该地区的灵气移除。',
                ' ',
                `能通过发射器自动化。`
            ]
        },
        {
            items: ['quark:root_item'],
            text: [
                '破坏洞穴根茎时随机掉落。',
                ' ',
                '洞穴根茎可以像藤蔓一样被合成，低亮度时会生长。'
            ]
        },
        {
            items: ['quark:root'],
            text: ['可以像藤蔓一样被合成或生长，低亮度时会生长。']
        },
        {
            items: ['meetyourfight:phantoplasm'],
            text: ['由敲钟人掉落。用缠魂铃铛召唤。']
        },
        {
            items: ['meetyourfight:mossy_tooth'],
            text: ['由沼泽巨颌怪掉落。用化石之饵召唤。']
        },
        {
            items: ['meetyourfight:fortunes_favor'],
            text: [`由福尔图娜女爵掉落。用恶魔赌注召唤。`]
        },
        {
            items: ['atum:ectoplasm'],
            text: [`由阿图姆的沙漠废墟中的怨灵掉落。`]
        },
        {
            items: ['minecraft:firework_rocket'],
            text: [`无序合成：一张纸和至少一撮火药。`]
        },
        {
            items: ['minecraft:firework_rocket'],
            text: [
                `添加更多的火药来延长火箭的飞行时间。`,
                `最多能添加三撮火药或七个烟火之星。`
            ]
        },
        {
            items: ['minecraft:firework_star'],
            text: [`无序合成：一撮火药和至少一个染料。`]
        },
        {
            items: ['minecraft:firework_star'],
            text: [
                `最多能添加八个染料。`,
                `添加头颅、金粒、羽毛或火焰弹可以改变形状。`,
                `钻石和荧石粉都能和任何材料一起加入。`
            ]
        },
        {
            items: ['minecraft:dragon_egg'],
            text: [
                `重复生成末影龙可以获得更多龙蛋。`,
                ` `,
                `在末地的末地传送门的东南西北方向各放上末影水晶来召唤末影龙。`
            ]
        },
        {
            items: ['byg:leaf_pile'],
            text: [`使用剪刀采集。`]
        },
        {
            items: ['eidolon:soul_shard'],
            text: [
                `通过在亡灵生物周围举行结晶仪式获得。该仪式可以在秘仪教典中找到。`,
                ` `,
                `也可以通过用死神镰刀击杀亡灵生物获得。`
            ]
        },
        {
            items: ['atum:anputs_fingers_spores'],
            text: [`可在死树木下发现，需要黑暗才能生长。`]
        },
        {
            items: ['immersiveengineering:furnace_heater', 'mekanism:fuelwood_heater', 'mekanism:resistive_heater'],
            text: [`可以为气动工艺的机器提供热量。`]
        },
        {
            items: ['immersiveengineering:logic_circuit'],
            text: [
                `在逻辑单元中使用以创造高级的红石逻辑。`,
                ` `,
                `在工程师电路台中合成。需要电路背板和焊料（铅或铜线）。除了SET模式外所有运算模式都需要真空管。`
            ]
        },
        {
            items: ['alexsmobs:hemolymph_sac', 'alexsmobs:warped_muscle'],
            text: [
                `击败诡异蚊鬼后获得。`,
                ` `,
                `诡异蚊鬼是一种由绯红蚊子突变形成的怪物。玩家需要前往蘑菇岛找到一个没有蘑菇的蘑菇菌，然后用诡异菌插满它的身体（5个即可），让绯红蚊子吸它的血，然后绯红蚊子会变成蓝色并慢慢变大，最后突变成诡异蚊鬼。`
            ]
        },
        {
            items: ['alexsmobs:hemolymph_sac', 'alexsmobs:warped_muscle'],
            text: [
                `蘑菇菌可以通过生育祭坛召唤。而绯红蚊子可以由苍蝇在下界转变而来。`
            ]
        },
        {
            items: ['astralsorcery:gem_crystal_cluster'],
            text: [
                `将水晶石或天体水晶石和辉光粉一起丢进星能液形成。`,
                ` `,
                `不同的生长完毕时的时间会产生不同的种类宝石。`
            ]
        },
        {
            items: ['astralsorcery:celestial_crystal_cluster'],
            text: [`将水晶石或天体水晶石和星尘一起丢进星能液形成。`]
        },
        {
            items: ['astralsorcery:celestial_crystal_cluster'],
            text: [
                `在星辉矿上生长时速度更快。天体水晶簇会将下方的星辉矿石退化成铁矿，所以需要用聚能水晶链接将其转换回来。`
            ]
        },
        {
            items: ['bloodmagic:weak_tau'],
            text: [`可在恶魔领域的箱子中找到。`]
        },
        {
            items: ['bloodmagic:strong_tau'],
            text: [`如果在血命果生长之时上方有牛、羊等友善动物，血命果会对它们造成伤害，最终成长为饱满血命果。`]
        },
        {
            items: ['eidolon:unholy_symbol'],
            text: [`通过对掉落在地上的锡镴嵌材咏唱“黑暗的触摸”仪式获得。`]
        },
        {
            items: [
                'resourcefulbees:t1_beehive',
                'resourcefulbees:t2_beehive',
                'resourcefulbees:t3_beehive',
                'resourcefulbees:t4_beehive'
            ],
            text: [
                `分级蜂箱被弃用了。请改用在世界中自然生成的蜂巢，并对之使用蜂巢升级。分级蜂箱可以在合成栏里转换成蜂巢升级。`
            ]
        },
        {
            items: ['upgrade_aquatic:flare_spawn_egg'],
            text: [`对幻翼喷溅失眠药水将其转变成耀翼。`]
        },
        {
            items: ['immersiveengineering:cloche'],
            text: [
                `可用的肥料：`,
                ` `,
                `骨粉：1.25x`,
                `花肥：1.5x`,
                `绿色堆肥：1.5x`,
                `肥料：1.7x`,
                `红色堆肥：2.0x`,
                `植育一号：3.0x`
            ]
        },
        {
            items: ['quark:dragon_scale'],
            text: [`只在第一次杀死末影龙后再次击杀末影龙获得。`]
        },
        {
            items: [
                'dankstorage:1_to_2',
                'dankstorage:2_to_3',
                'dankstorage:3_to_4',
                'dankstorage:4_to_5',
                'dankstorage:5_to_6',
                'dankstorage:6_to_7'
            ],
            text: [`Shift+右击升级坞里的黑盒。`]
        },
        {
            items: [Item.of('resourcefulbees:bee_jar', { Entity: 'resourcefulbees:dusty_mummbee_bee' })],
            text: [`异沙蜜蜂可以在法老的石棺中找到。`]
        },
        {
            items: ['quark:slime_in_a_bucket'],
            text: [`用空桶把小史莱姆装起来。`]
        },
        {
            items: ['alexsmobs:mysterious_worm'],
            text: [
                `将神秘蠕虫丢入末地的虚空中，即可召唤虚空蠕虫。`,
                ` `,
                `将绯红蚊子幼虫放入衣壳中，等待片刻后，将会掉落神秘蠕虫。`
            ]
        },
        {
            items: ['alexsmobs:capsid'],
            text: [
                `由末影噬菌体掉落。`,
                ` `,
                `影噬菌体罕见地生成在末地中型岛屿上。服用异界蜂蜜瓶也可强行召唤它们。`
            ]
        },
        {
            items: ['eidolon:sanguine_amulet', 'eidolon:sapping_sword'],
            text: [`想要知道合成步骤，请查阅秘仪教典仪式分栏的深红之物章节。`]
        },
        {
            items: ['atum:papyrus_plant'],
            text: [
                `通常在阿图姆的绿洲中找到。像甘蔗一样，只不过生长在怪沙或肥沃土壤上。`
            ]
        },
        {
            items: ['astralsorcery:infused_wood'],
            text: [`将任何木头丢进星能液中获得。`]
        },
        {
            items: ['environmental:thief_hood'],
            text: [`可以用兔子皮修复。`]
        },
        {
            items: ['naturesaura:gold_leaf'],
            text: [`破坏黄金树叶获得。`]
        },
        {
            items: ['naturesaura:golden_leaves'],
            text: [`通过使用闪耀纤维右击树叶可获得，经过一段时间被感染过的树叶会扩散感染其它相邻的树叶。`]
        },
        {
            items: [/masterfulmachinery:\w+_controller/],
            text: [`人工搭建这个结构会非常困难。`]
        },
        {
            items: [/masterfulmachinery:\w+_controller/],
            text: [
                `使用在Enigmatica-6实例文件夹找到的"building_gadgets_patterns"中的建筑小帮手模板。`,
                ` `,
                '可以旋转，但不能镜像翻转。'
            ]
        },
        {
            items: [/masterfulmachinery:\w+_controller/],
            text: [
                '关于这些机器的配方中所示值的注释：',
                `●FE在每游戏刻都会被消耗`,
                `●气动的空气在每游戏刻都会被消耗，且其压力必须大于10bar`,
                `●星辉的星光在每游戏刻都会被消耗`,
                `●流体在每游戏刻都会被消耗或产生`,
                `●物品会在合成结束时被消耗或产生`,
                `●魔力会在合成开始时被消耗或在合成结束时被产生`
            ]
        },
        {
            items: ['naturesaura:break_prevention'],
            text: [
                `用铁砧给工具应用该物品后，工具在耐久值耗尽时会失去原有功能，而不是直接损坏。`
            ]
        },
        {
            items: ['ars_nouveau:belt_of_levitation'],
            text: [`装备在腰带槽后，在空中按下潜行键悬浮。`]
        },
        {
            items: ['create:chromatic_compound', 'create:refined_radiance'],
            text: [
                `异彩化合物被丢弃后，如果吸收光亮，会转变成光辉石。在环境光下的转换非常缓慢，周围有光照方块会更快，在激活的信标上会瞬间转化。`
            ]
        },
        {
            items: ['create:chromatic_compound', 'create:shadow_steel'],
            text: [
                `异彩化合物被丢弃后，如果坠入虚空，吸收黑暗，则会转变成暗影钢，在完成转化后会飘上来。`
            ]
        },
        {
            items: ['naturesaura:projectile_generator'],
            text: [`有效的弹射物：`, ``, `● 雪球`, `● 鸡蛋`, `● 箭矢`, `● 火焰弹`, `● 光灵箭`]
        },
        {
            items: ['naturesaura:projectile_generator'],
            text: [`● 末影珍珠`, `● 羊驼的口水`, `● 附魔之瓶`, `● 潜影贝的导弹`, `● 三叉戟`]
        },
        {
            items: ['naturesaura:birth_spirit'],
            text: [`在灵气过量的区域繁殖动物获得。`]
        },
        {
            items: ['create:hose_pulley'],
            text: [
                `可用于无限泵取以下流体：`,
                ` `,
                `● 熔岩`,
                `● 水`,
                `● 牛奶`,
                `● 胶乳`,
                `● 污水`,
                `● 污泥`,
                `● 石油`,
                `● 树脂`,
                `● 树汁`,
                `● 致毒混合物`,
                `● 建筑工茶饮`,
                `● 巧克力`,
                `● 紫颂果浆`,
                `● 门瑞欧树脂`,
                `● 血`,
                `● 黏液`,
                `● 末影黏液`,
                `● 碧空黏液`
            ]
        },
        {
            items: ['farmersdelight:honey_glazed_ham'],
            text: [`用碗右击放置的蜜汁火腿获得。`]
        },
        {
            items: ['farmersdelight:stuffed_pumpkin'],
            text: [`用碗右击放置的填馅南瓜获得。`]
        },
        {
            items: ['farmersdelight:roast_chicken'],
            text: [`用碗右击放置的烤鸡获得。`]
        },
        {
            items: ['simplefarming:brewing_barrel'],
            text: [`用于酿造各种酒精饮料。`, ` `, `● 啤酒`, `● 巴西啤酒`, `● 苹果酒`, `● 蜂蜜酒`]
        },
        {
            items: ['simplefarming:brewing_barrel'],
            text: [`● 日式清酒`, `● 美式格瓦斯`, `● 伏特加`, `● 威士忌`, `● 红酒`]
        }
    ];

    const simplefarming_beverages = [
        { type: 'beer', ingredient: '大麦', effect: '力量' },
        { type: 'cauim', ingredient: '木薯', effect: '跳跃提升' },
        { type: 'cider', ingredient: '苹果', effect: '幸运' },
        { type: 'mead', ingredient: '蜜脾', effect: '急迫' },
        { type: 'sake', ingredient: '水稻', effect: '速度' },
        { type: 'tiswin', ingredient: '仙人掌果', effect: '生命提升' },
        { type: 'vodka', ingredient: '马铃薯', effect: '抗性提升' },
        { type: 'whiskey', ingredient: '小麦', effect: '伤害吸收' },
        { type: 'wine', ingredient: '葡萄', effect: '生命恢复' }
    ];

    simplefarming_beverages.forEach((beverage) => {
        recipes.push({
            items: [`simplefarming:${beverage.type}`],
            text: [
                `将${beverage.ingredient}右键放进酿造桶酿造而成。`,
                `使饮用者获得${beverage.effect}。`
            ]
        });
    });

    recipes.forEach((recipe) => {
        recipe.items.forEach((item) => {
            event.add(item, recipe.text);
        });
    });

    disabledItems.forEach((item) => {
        event.add(
            item,
            "该物品已被禁用。"
        );
    });

    refinedStorageItems.forEach((item) => {
        event.add(`refinedstorage:${item}`, '可以通过合成或在世界中右击来染色。');
    });

    generatableCobblestone.forEach((cobblestone) => {
        event.add(
            cobblestone,
            '可以通过原版刷石机生成。生成圆石的下方需要铁块。'
        );
    });

    generatableStone.forEach((stone) => {
        event.add(
            stone,
            '可以通过原版刷石机生成。生成石头的下方需要钻石块。'
        );
    });

    var framedDrawers = [
        'compact_drawer',
        'drawer_controller',
        'slave',
        'trim',
        'full_one',
        'full_two',
        'full_four',
        'half_one',
        'half_two',
        'half_four'
    ];

    framedDrawers.forEach((drawer) => {
        event.add('framedcompactdrawers:framed_' + drawer, [
            '必须镶嵌方块才能使用。打开合成栏，在镶框抽屉的上方和左对角放上方块来镶嵌这两个方块。',
            '你也可以使用不同的方块组合来进一步自定义你的抽屉！'
        ]);
    });
});
