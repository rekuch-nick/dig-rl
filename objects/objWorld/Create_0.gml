W = 68;
H = 130;

W = 17;
H = 68;

layerF = -100;
layerT = -1800;
layerB = -2000;
layerP = -5000;
layerM = -7000;
layerE = -8000;
layerS = -9000;

gsWep = 0;
gsArm = 1;
gsRing = 2;
gsRing2 = 3;

potHeal = 0;
potBomb = 1;
potIce = 2;
potPoison = 3;
potSTR = 4;
potAGI = 5;
potWarp = 6;
potSword = 7;
potDefense = 8;
potBlessWep = 9;
potBlessArm = 10;
potBlessRing = 11;
potRestore = 12;
potSlow = 13;
potDisplace = 14;
potBombSmall = 15;
potPure = 16;
potTrueStrike = 17;
potSparks = 18;
potItemFind = 19;
potBlink = 31;
potCrumble = 32;
potFireball = 33;
potFrost = 34;
potPox = 35;
potShock = 36;
potValor = 37;
potFireSingle = 38;

perkDesc[1] = "+1 to DEF";
perkDesc[2] = "+1 HP Regen";
perkDesc[3] = "Your wands will recharge 2 extra charges per stage.";
perkDesc[4] = "Dig much more quickly, but AGI is reduced by 2."
perkDesc[5] = "While unencumbered, if your AGI bonus is greater than your STR bonus, add it to damage rolls instead of STR. Cannot gain more than 10 damage in this way.";
perkDesc[6] = "Many monsters will drop Throwing Knives when they die."
perkDesc[7] = "Normally you will cannot find another wand after getting 3 of them.";
perkDesc[8] = "All potions are IDed";
perkDesc[9] = "Treasure Potions last much longer. Start with 2.";
perkDesc[10] = "Drinking any potion will give you some bonus healing over time.";

perkDef = 1;
perkRegen = 2;
perkWandCharge = 3;
perkMoleHands = 4;
perkFin = 5;
perkScan = 6;
perkWandMore = 7;
perkIDPotions = 8;
perkLongTreasure = 9;
perkPotionsHeal = 10;

wepDesc[1] = "Swords grant Spring Attack: Make a free attack immediately after steping towards an enemy.";
wepDesc[2] = "Spears grant Strikethrough: Hit the two tiles behind an enemy when attacking.";
wepDesc[3] = "Axes grant Cleave: Make a free attack for 1/3 damage against other adjacent enemies when attacking.";
wepDesc[4] = "Mauls grant Shockwave: Clip your enemy for 1/4 damage even when the attack would miss.";

armDesc[1] = "Leather Armor grants 2 DEF and lets you add any AGI bonus to your DEF as long as STR is 10 or more. Being non-metal, it is immune to some effects."
armDesc[2] = "Scale Armor grants 4 DEF and lets you add any AGI bonus to your DEF as long as STR is 12 or more."
armDesc[3] = "Chain Armor grants 5 DEF and lets you add any AGI bonus to your DEF as long as STR is 13 or more."
armDesc[4] = "Banded Armor grants 6 DEF and lets you add any AGI bonus to your DEF as long as STR is 14 or more."
armDesc[5] = "Splint Armor grants 7 DEF and lets you add any AGI bonus to your DEF as long as STR is 16 or more."
armDesc[6] = "Plate Armor grants 8 DEF and lets you add any AGI bonus to your DEF as long as STR is 18 or more."


doorSigns = ["Horse","Goat","Monkey","Rooster","Dog","Pig","Rat","Ox","Tiger","Rabbit","Dragon","Snake"];

defineMobSets();



rollWord = false;
seed = 1;


itemDeck = ds_list_create();

draw_set_font(fntPlain);

instance_create_depth(0, 0, layerS, objScreenTitle);
logClear();

logInit();


