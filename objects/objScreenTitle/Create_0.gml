image_xscale = 4; image_yscale = 4;
version = "0.1.1.8";

charCursor = 0;

randomize();
ww.seed = irandom_range(1, 1000000);
ww.bgmTrack = irandom_range(0, 7);

//charBig = [imgMCHeroOld, imgMCBarbarianOld, imgMCBardOld, imgMCKnightOld, imgMCMonkOld, imgMCRogueOld, imgMCSorcererOld, imgMCWizardOld];
charBig = [imgMCHero, imgMCBarbarian, imgMCBard, imgMCKnight, imgMCMonk, imgMCRogue, imgMCSorcerer, imgMCWizard];
charSmall = [imgMCHero, imgMCBarbarian, imgMCBard, imgMCKnight, imgMCMonk, imgMCRogue, imgMCSorcerer, imgMCWizard];
charPower = [
	"Extra Food",
	"More STR",
	"Evasive",
	"Wealthy",
	"Healthy",
	"More AGI",
	"Wand Expert",
	"ID Potions",
]


pc.bossSeen = [];
for(var i=0; i<array_length(charSmall); i++){
	pc.bossSeen[i] = charSmall[i];
}