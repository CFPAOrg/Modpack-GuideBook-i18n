import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.soulus.Composer;

print("---------------Chickens Start------------------");


var itemsDisabled as IItemStack[] = [
	<chickens:colored_egg:15>,
	<chickens:colored_egg:4>,
	<chickens:spawn_egg>.withTag({ChickenType: {id: "morechickens:boopbeepchick"}}),
	<chickens:spawn_egg>.withTag({ChickenType: {id: "morechickens:mramericanchick"}}),
	<chickens:spawn_egg>.withTag({ChickenType: {id: "morechickens:funwaychick"}})
];

for i in itemsDisabled {
	mods.jei.JEI.removeAndHide(i);
}

val metallum = <thaumcraft:phial:1>.withTag({Aspects: [{amount: 10, key: "metallum"}]});
val vitreus = <thaumcraft:phial:1>.withTag({Aspects: [{amount: 10, key: "vitreus"}]});
val perditio = <thaumcraft:phial:1>.withTag({Aspects: [{amount: 10, key: "perditio"}]});
val bindingReagent = <bloodmagic:component:8>;
val voidCrystal = <actuallyadditions:item_crystal:3>;
val water = <botania:rune>;
val fire = <botania:rune:1>;
val earth = <botania:rune:2>;
val air = <botania:rune:3>;
val spring = <botania:rune:4>;
val summer = <botania:rune:5>;
val autumn = <botania:rune:6>;
val winter = <botania:rune:7>;
val mana = <botania:rune:8>;
val lust = <botania:rune:9>;
val gluttony = <botania:rune:10>;
val greed = <botania:rune:11>;
val sloth = <botania:rune:12>;
val wrath = <botania:rune:13>;
val envy = <botania:rune:14>;
val pride = <botania:rune:15>;

	/* Unused Combinations
	[vitreus, mana]
	
	[vitreus, envy]
	
	*/



var eggRecipeMap as IItemStack[][string] = {
	"morechickens:silverorechicken" : [metallum, air],
	"chickens:bluechicken" : [vitreus, water],
	"morechickens:platinumchicken" : [metallum, pride],
	"contenttweaker:grossularchicken" : [perditio, earth],
	"morechickens:sapphirechicken" : [vitreus, earth],
	"contenttweaker:magnesiumchicken" : [metallum, spring],
	"morechickens:nickelchicken" : [metallum, fire],
	"contenttweaker:spessartinechicken" : [perditio, lust],
	"contenttweaker:soapstonechicken" : [perditio, spring],
	"morechickens:tinchicken" : [metallum, earth],
	"chickens:goldchicken" : [metallum, greed],
	"contenttweaker:stibnitechicken" : [metallum, winter],
	"morechickens:leadchicken" : [metallum, autumn],
	"morechickens:aluminumchicken" : [metallum, summer],
	"chickens:diamondchicken" : [vitreus, lust],
	"morechickens:siliconchicken" : [perditio, air],
	"contenttweaker:manganesechicken" : [perditio, pride],
	"contenttweaker:tantalumchicken" : [vitreus, gluttony],
	"chickens:whitechicken" : [perditio, winter],
	"chickens:ironchicken" : [metallum, mana],
	"morechickens:uraniumchicken" : [perditio, wrath],
	"morechickens:copperchicken" : [metallum, water],
	"contenttweaker:phosphorchicken" : [perditio, fire],
	"morechickens:arditechicken" : [perditio, summer],
	"chickens:quartzchicken" : [vitreus, summer],
	"morechickens:titaniumchicken" : [metallum, lust],
	"contenttweaker:bentonitechicken" : [vitreus, air],
	"morechickens:sulfurchicken" : [perditio, gluttony],
	"morechickens:zincchicken" : [perditio, mana],
	"chickens:glowstonechicken" : [perditio, greed],
	"chickens:coalchicken" : [vitreus, fire],
	"contenttweaker:vanadiumchicken" : [metallum, sloth],
	"contenttweaker:apatitechicken" : [vitreus, sloth],
	"morechickens:iridiumchicken" : [metallum, wrath],
	"chickens:emeraldchicken" : [vitreus, spring],
	"contenttweaker:monazitechicken" : [perditio, autumn],
	"morechickens:rubychicken" : [vitreus, greed],
	"morechickens:tungstenchicken" : [metallum, gluttony],
	"morechickens:topazchicken" : [vitreus, autumn],
	"chickens:redstonechicken" : [perditio, envy],
	"contenttweaker:graphitechicken" : [perditio, water],
	"contenttweaker:glauconitechicken" : [perditio, sloth],
	"morechickens:osmiumchicken" : [metallum, envy],
	"morechickens:cobaltchicken" : [vitreus, winter],
	"morechickens:titaniumchicken" : [vitreus, wrath],
	"contenttweaker:niobiumchicken" : [vitreus, pride]
};


	#Chickens
for chicken, ingredients in eggRecipeMap {
	Composer.recipe(chicken + "_eggrecipe", 
	<chickens:spawn_egg>.withTag({ChickenType: {id: chicken}}))
		.setTime(1)
		.setShaped([
			[null, ingredients[1], null],
			[null, bindingReagent, null],
			[ingredients[0], <minecraft:egg>, voidCrystal]])
		.setMobsRequired({ "minecraft:chicken": 2})
		.create();
}

	#Smart Chicken
Composer.recipe("chickens:smartchicken" + "_eggrecipe", 
	<chickens:spawn_egg>.withTag({ChickenType: {id: "chickens:smartchicken"}}))
		.setTime(1)
		.setShaped([
			[null, <rftools:smartwrench>, null],
			[null, <minecraft:egg>, null],
			[null, <thermalfoundation:wrench>, null]])
		.setMobsRequired({ "minecraft:chicken": 2})
		.create();

	


print("---------------Chickens End------------------");