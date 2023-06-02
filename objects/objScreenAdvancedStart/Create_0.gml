image_xscale = 4; image_yscale = 4;

ww.skillpoints = 9;
charSmall = [imgMCHero, imgMCBarbarian, imgMCBard, imgMCKnight, imgMCMonk, imgMCRogue, imgMCSorcerer, imgMCWizard];
charCursor = 0;
seedDig = 1;


//pc.bossSeen[charCursor] = noone;


go = instance_create_depth(1040, 790, depth - 1, objSetupButton);
go.cost = 0;
go.txt = "GO";
go.selected = true;


for(var i=0; i<array_length(charSmall); i++){
	bSpriteSelect[i] = instance_create_depth(300 + (i * 100), 120, depth - 1, objSetupButton);
	bSpriteSelect[i].txt = "";
	bSpriteSelect[i].img = charSmall[i];
	bSpriteSelect[i].spriteGroup = true;
	if(i == 0){ bSpriteSelect[i].selected = true; }
}

for(var i=0; i<4; i++){
	bWepType[i] = instance_create_depth(300 + (i * 180), 200, depth - 1, objSetupButton);
	bWepType[i].wepTypeGroup = true;
}
bWepType[0].txt = "Sword"; bWepType[0].selected = true;
bWepType[0].desc = ww.wepDesc[1];
bWepType[1].txt = "Axe"; bWepType[1].desc = ww.wepDesc[2];
bWepType[2].txt = "Maul"; bWepType[2].desc = ww.wepDesc[3];
bWepType[3].txt = "Spear"; bWepType[3].desc = ww.wepDesc[4];

//for(var i=0; i<8; i++){
//	bWepProp[i] = instance_create_depth(100 + (i * 130), 240, depth - 1, objSetupButton);
//	bWepProp[i].wepPropGroup = true;
//}
//bWepProp[0].txt = "Mason"; bWepProp[0].selected = true; bWepProp[1].txt = "Venom"; bWepProp[2].txt = "Crush"; bWepProp[3].txt = "Multi"; bWepProp[4].txt = "Blur"; bWepProp[5].txt = "Firey"; bWepProp[6].txt = "Ice"; bWepProp[7].txt = "Bolt";

for(var i=0; i<6; i++){
	bArmType[i] = instance_create_depth(270 + (i * 150), 240, depth - 1, objSetupButton);
	bArmType[i].armTypeGroup = true;
}
bArmType[0].txt = "Leather"; bArmType[0].selected = true; bArmType[0].desc = ww.armDesc[1];
bArmType[1].txt = "Scale"; bArmType[1].desc = ww.armDesc[2];
bArmType[2].txt = "Chain"; bArmType[2].desc = ww.armDesc[3];
bArmType[3].txt = "Banded"; bArmType[3].desc = ww.armDesc[4];
bArmType[4].txt = "Splint"; bArmType[4].desc = ww.armDesc[5];
bArmType[5].txt = "Plate"; bArmType[5].desc = ww.armDesc[6];

bPerkLongT = instance_create_depth(200, 360, depth - 1, objSetupButton);
bPerkLongT.txt = "Treasure Sight";
bPerkLongT.desc = ww.perkDesc[ww.perkLongTreasure];

bPerkEvade = instance_create_depth(200, 400, depth - 1, objSetupButton);
bPerkEvade.txt = "+1 to DEF";
bPerkEvade.desc = ww.perkDesc[ww.perkDef];

bPerkRegen = instance_create_depth(500, 400, depth - 1, objSetupButton);
bPerkRegen.txt = "Hp Regen+";
bPerkRegen.desc = ww.perkDesc[ww.perkRegen];

bPerkWandRegen = instance_create_depth(800, 400, depth - 1, objSetupButton);
bPerkWandRegen.txt = "Wand Regen+";
bPerkWandRegen.desc = ww.perkDesc[ww.perkWandCharge];

bPerkMole = instance_create_depth(220, 440, depth - 1, objSetupButton);
bPerkMole.txt = "Mole Hands";
bPerkMole.desc = ww.perkDesc[ww.perkMoleHands];

bPerkFin = instance_create_depth(480, 440, depth - 1, objSetupButton);
bPerkFin.txt = "Weapon Finesse";
bPerkFin.desc = ww.perkDesc[ww.perkFin];

bPerkScav = instance_create_depth(480, 480, depth - 1, objSetupButton);
bPerkScav.txt = "Scavenge Knives";
bPerkScav.desc = ww.perkDesc[ww.perkScan];

bPerkWandMore = instance_create_depth(816, 440, depth - 1, objSetupButton);
bPerkWandMore.txt = "Can find 4th Wand";
bPerkWandMore.desc = ww.perkDesc[ww.perkWandMore];

bPerkID = instance_create_depth(200, 480, depth - 1, objSetupButton);
bPerkID.txt = "ID Potions";
bPerkID.desc = ww.perkDesc[ww.perkIDPotions];

for(var i=0; i<4; i++){
	bFood[i] = instance_create_depth(250 + (i * 100), 550, depth - 1, objSetupButton);
	bFood[i].txt = "Food";
}
bFood[0].selected = true;

bKnives = instance_create_depth(250, 585, depth - 1, objSetupButton);
bKnives.txt = "Knives";

bBombs = instance_create_depth(400, 585, depth - 1, objSetupButton);
bBombs.txt = "Bombs";

bSparkWand = instance_create_depth(670, 585, depth - 1, objSetupButton);
bSparkWand.txt = "Apprentice Wand";
bSparkWand.desc = "Does not count against your total number of wands.";

bRestore = instance_create_depth(800, 550, depth - 1, objSetupButton);
bRestore.txt = "Restore Potion"

for(var i=0; i<5; i++){
	bSTR[i] = instance_create_depth(100 + (i * 100), 680, depth - 1, objSetupButton);
	bSTR[i].txt = "STR";
	bSTR[i].desc = "STR increases your melee damage by 1. If you have as much STR as your worn armor's WEIGHT, you add AGI over 10 to DEF, up to a max of +10."
	
	bAGI[i] = instance_create_depth(600 + (i * 100), 680, depth - 1, objSetupButton);
	bAGI[i].txt = "AGI";
	bAGI[i].desc = "AGI increases your chance to hit by 1, which is 5 percent. If you have as much STR as your worn armor's WEIGHT, you add AGI over 10 to DEF, up to a max of +10."
}


bWep[0] = instance_create_depth(100, 750, depth - 1, objSetupButton); bWep[0].txt = "Weapon";
bWep[1] = instance_create_depth(100, 785, depth - 1, objSetupButton); bWep[1].txt = "Weapon";
	
bArm[0] = instance_create_depth(240, 750, depth - 1, objSetupButton); bArm[0].txt = "Armor";
bArm[1] = instance_create_depth(240, 785, depth - 1, objSetupButton); bArm[1].txt = "Armor";

bRing[0] = instance_create_depth(100 + (2 * 140), 750, depth - 1, objSetupButton); bRing[0].txt = "Rings";
bRing[1] = instance_create_depth(100 + (2 * 140), 785, depth - 1, objSetupButton); bRing[1].txt = "Rings";


