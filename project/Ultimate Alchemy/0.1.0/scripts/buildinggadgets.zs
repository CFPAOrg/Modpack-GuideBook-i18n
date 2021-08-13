scripts.globals.replaceShaped("buildinggadgets:exchangingtool", <buildinggadgets:exchangertool>.withTag({mode: "Wall", range: 1, blockstate: {Name: "minecraft:air"}}), 
	[
		[<ore:ingotIron>, <ore:dustRedstone>, <ore:ingotIron>],
		[<extrautils2:suncrystal>, <ore:dustGlowstone>, <extrautils2:suncrystal>], 
		[<ore:ingotIron>, <ore:dustGlowstone>, <ore:ingotIron>]
	]);
scripts.globals.replaceShaped("buildinggadgets:buildingtool", <buildinggadgets:buildingtool>.withTag({mode: "BuildToMe", blockstate: {Name: "minecraft:air"}}),
	[
		[<ore:ingotIron>, <ore:dustRedstone>, <ore:ingotIron>], 
		[<extrautils2:suncrystal>, <ore:dustRedstone>, <extrautils2:suncrystal>], 
		[<ore:ingotIron>, <ore:dustGlowstone>, <ore:ingotIron>]
	]);
scripts.globals.replaceShaped("buildinggadgets:copypastetool", <buildinggadgets:copypastetool>.withTag({mode: "Copy"}),
	[
		[<ore:ingotIron>, <ore:dustRedstone>, <ore:ingotIron>],
		[<extrautils2:suncrystal>, <ore:gemLapis>, <extrautils2:suncrystal>],
		[<ore:ingotIron>, <ore:dustGlowstone>, <ore:ingotIron>]
	]);
	
scripts.globals.replaceShaped("buildinggadgets:templatemanager", <buildinggadgets:templatemanager>, 
	[
		[<ore:ingotGold>, <ore:dustRedstone>, <ore:ingotGold>],
		[<extrautils2:suncrystal>, <ore:dustRedstone>, <extrautils2:suncrystal>], 
		[<ore:ingotGold>, <ore:dustGlowstone>, <ore:ingotGold>]
	]);
	
recipes.addShapeless("constructionpastepowder", <buildinggadgets:constructionblockpowder> * 4, [<ore:sand>, <ore:dye>, <ore:gravel>]);