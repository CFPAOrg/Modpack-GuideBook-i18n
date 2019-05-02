import mods.dropt.Dropt;
print("----------------Dropt Start-------------------");

Dropt.list("astral_marble")

    // Set the list priority
    .priority(0)

	#Astral marble drops as gt marble cobblestone unless it is silktouched
    .add(Dropt.rule()
        .matchDrops([<astralsorcery:blockmarble>])
        .addDrop(Dropt.drop()
            .selector(Dropt.weight(70), "EXCLUDED", 0)
            .items([<gregtech:mineral:4>])
        )
        .addDrop(Dropt.drop()
            .selector(Dropt.weight(30), "EXCLUDED", 0)
            .items([<astralsorcery:blockmarble>])
        )		
        .addDrop(Dropt.drop()
            .selector(Dropt.weight(100), "REQUIRED", 0)
            .items([<astralsorcery:blockmarble>])
        )
    );

print("----------------Dropt Stop-------------------");