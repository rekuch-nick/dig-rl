image_xscale = 4; image_yscale = 4;
version = "0.0.4.35";

charCursor = 0;

randomize();
ww.seed = irandom_range(1, 1000000);


charBig = [imgMCHeroOld, imgMCBarbarianOld, imgMCBardOld, imgMCKnightOld, imgMCMonkOld, imgMCRogueOld, imgMCSorcererOld, imgMCWizardOld];
charSmall = [imgMCHero, imgMCBarbarian, imgMCBard, imgMCKnight, imgMCMonk, imgMCRogue, imgMCSorcerer, imgMCWizard];
charPower = [
	"Extra Food",
	"More STR",
	"Evasive",
	"Wealthy",
	"Fast Healing",
	"More AGI",
	"Wand Expert",
	"ID Potions",
]


pc.bossSeen = [];
for(var i=0; i<array_length(charSmall); i++){
	pc.bossSeen[i] = charSmall[i];
}