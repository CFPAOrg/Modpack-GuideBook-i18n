import mods.initialinventory.InvHandler;
print("---------------Initial Inventory Start------------------");


InvHandler.addStartingItem(
	<spiceoflife:lunchbox>.withTag({
		Inventory: {
			Items: [
				{Slot: 0 as byte, id: "forestry:honeyed_slice", Count: 16 as byte, Damage: 0 as short},
				{Slot: 2 as byte, id: "xlfoodmod:cheesy_bread", Count: 16 as byte, Damage: 0 as short}, 
				{Slot: 3 as byte, id: "xlfoodmod:oreo_cupcake", Count: 16 as byte, Damage: 0 as short},
				{Slot: 4 as byte, id: "plants2:blackberry", Count: 16 as byte, Damage: 0 as short},
				{Slot: 5 as byte, id: "plants2:blueberry", Count: 16 as byte, Damage: 0 as short}
			]},
			Open: 0 as byte})
);

InvHandler.addStartingItem(<astralsorcery:itemjournal>);
InvHandler.addStartingItem(<projecte:item.pe_tome>);
InvHandler.addStartingItem(<ftbquests:book>);


print("----------------Initial Inventory End-------------------");
