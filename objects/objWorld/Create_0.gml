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
potFly = 20;
potBlink = 31;
potCrumble = 32;
potFireball = 33;
potFrost = 34;
potPox = 35;
potShock = 36;
potValor = 37;
potFireSingle = 38;
potBladeSpin = 39;
potBombSmart = 40;

perkDesc[1] = "+1 to DEF";
perkDesc[2] = "+1 HP Regen";
perkDesc[3] = "Your wands will recharge 2 extra charges per stage.";
perkDesc[4] = "Dig much more quickly, but AGI is reduced by 2."
perkDesc[5] = "While unencumbered, if your AGI bonus is greater than your STR bonus, add it to damage rolls instead of STR. Cannot gain more than 10 damage in this way.";
perkDesc[6] = "Twice as many monsters will drop Throwing Knives when they die, but HP is reduced by 100."
perkDesc[7] = "Normally you cannot find another wand after getting 3 of them, increase that limit by 1.";
perkDesc[8] = "All potions are IDed";
perkDesc[9] = "Treasure Potions last much longer. Start with 3.";
perkDesc[10] = "Drinking any potion will give you some bonus healing over time as well as its normal effect.";
perkDesc[11] = "Find a blasting potion at the start of each stage.";

perkDesc[20] = "Each point of STR over 20 gives you a chance to shrug off debuffs";
perkDesc[21] = "Each point of AGI over 20 gives .5 DEF and a small chance to deal double damage";
perkDesc[22] = "Greatly improves the amount of charges Wands gain each level";
perkDesc[23] = "Thrown items deal double damage, even potions";
perkDesc[24] = "Electric damage has a chance to remove monster abilities and cause debuffs";
perkDesc[25] = "Fly over traps all the time. Drinking a Flight Potion will temporally disable this ability";



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
perkBom = 11;

perkTroll = 20;
perkShadow = 21;
perkManticore = 22;
perkTitan = 23;
perkRaiju = 24;
perkPegasus = 25;

wepDesc[1] = "Swords grant Spring Attack: Make a free attack immediately after steping towards an enemy.";
wepDesc[2] = "Spears grant Strikethrough: Hit the two tiles behind an enemy when attacking.";
wepDesc[3] = "Axes grant Cleave: Make a free attack for 1/3 damage against other adjacent enemies when attacking.";
wepDesc[4] = "Mauls grant Shockwave: Clip your enemy for 1/3 damage even when the attack would miss.";

armDesc[1] = "Leather Armor grants 2 DEF and lets you add any AGI bonus to your DEF as long as STR is 10 or more. Being non-metal, it is immune to some effects."
armDesc[2] = "Scale Armor grants 4 DEF and lets you add any AGI bonus to your DEF as long as STR is 12 or more."
armDesc[3] = "Chain Armor grants 5 DEF and lets you add any AGI bonus to your DEF as long as STR is 13 or more."
armDesc[4] = "Banded Armor grants 6 DEF and lets you add any AGI bonus to your DEF as long as STR is 14 or more."
armDesc[5] = "Splint Armor grants 7 DEF and lets you add any AGI bonus to your DEF as long as STR is 16 or more."
armDesc[6] = "Plate Armor grants 8 DEF and lets you add any AGI bonus to your DEF as long as STR is 18 or more."


doorSigns = ["Horse","Goat","Monkey","Rooster","Dog","Pig","Rat","Ox","Tiger","Rabbit","Dragon","Snake"];


enum mobRole {
	minion, //very low stats, normal attack
	goon, // low everything
	rank, // normal everything
	champ, //moderate high all
	
	striker, //high attack / hit , good evade, 
	brute, //high dmg, low hit, hit hp, low def
	wild, //high hit, random damage
	tank, //high hp / def
	bat, //very high def, bad else
	sponge, //high hp goon
	rogue //boss level stats
	
	
}




defineMobSets();

music = true;
bgmTrack = 0;
musicList = [bgm01,bgm02,bgm03,bgm04,bgm05,bgm06,bgm07,bgm08,bgm09,]
nowPlaying = noone;


rollWord = false;
seed = 1;


itemDeck = ds_list_create();

draw_set_font(fntPlain);

instance_create_depth(0, 0, layerS, objScreenTitle);
logClear();

logInit();


