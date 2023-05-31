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
bWepType[1].txt = "Axe";
bWepType[2].txt = "Maul";
bWepType[3].txt = "Spear";

//for(var i=0; i<8; i++){
//	bWepProp[i] = instance_create_depth(100 + (i * 130), 240, depth - 1, objSetupButton);
//	bWepProp[i].wepPropGroup = true;
//}
//bWepProp[0].txt = "Mason"; bWepProp[0].selected = true; bWepProp[1].txt = "Venom"; bWepProp[2].txt = "Crush"; bWepProp[3].txt = "Multi"; bWepProp[4].txt = "Blur"; bWepProp[5].txt = "Firey"; bWepProp[6].txt = "Ice"; bWepProp[7].txt = "Bolt";

for(var i=0; i<6; i++){
	bArmType[i] = instance_create_depth(270 + (i * 150), 240, depth - 1, objSetupButton);
	bArmType[i].armTypeGroup = true;
}
bArmType[0].txt = "Leather"; bArmType[0].selected = true;
bArmType[1].txt = "Scale";
bArmType[2].txt = "Chain";
bArmType[3].txt = "Banded";
bArmType[4].txt = "Splint";
bArmType[5].txt = "Plate";

bPerkEvade = instance_create_depth(200, 400, depth - 1, objSetupButton);
bPerkEvade.txt = "+1 to DEF";

bPerkRegen = instance_create_depth(500, 400, depth - 1, objSetupButton);
bPerkRegen.txt = "Hp Regen+";


bPerkWandRegen = instance_create_depth(800, 400, depth - 1, objSetupButton);
bPerkWandRegen.txt = "Wand Regen+";
bPerkWandRegen.desc = "Your wands will recharge 2 extra charges per stage.";

bPerkMole = instance_create_depth(220, 440, depth - 1, objSetupButton);
bPerkMole.txt = "Mole Hands";
bPerkMole.desc = "Dig much more quickly, but AGI is reduced by 2.";

bPerkFin = instance_create_depth(480, 440, depth - 1, objSetupButton);
bPerkFin.txt = "Weapon Finesse";
bPerkFin.desc = "While unencumbdered, if your AGI bonus is greater than your STR bonus, add it to damage rolls instead of STR. Cannot gain more than 10 damage in this way.";

bPerkScav = instance_create_depth(480, 480, depth - 1, objSetupButton);
bPerkScav.txt = "Scavenge Knives";
bPerkScav.desc = "Many monsters will drop Throwing Knives when they die.";

bPerkWandMore = instance_create_depth(816, 440, depth - 1, objSetupButton);
bPerkWandMore.txt = "Can find 4th Wand";
bPerkWandMore.desc = "Without this perk you will stop finding wands once you have collected 3 of them.";

bPerkID = instance_create_depth(200, 480, depth - 1, objSetupButton);
bPerkID.txt = "ID Potions";

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
	
	bAGI[i] = instance_create_depth(600 + (i * 100), 680, depth - 1, objSetupButton);
	bAGI[i].txt = "AGI";
}

for(var i=0; i<2; i++){
	bWep[i] = instance_create_depth(100 + (i * 140), 750, depth - 1, objSetupButton);
	bWep[i].txt = "Weapon";
	
	bArm[i] = instance_create_depth(100 + (i * 140), 785, depth - 1, objSetupButton);
	bArm[i].txt = "Armor";
}
bRing[0] = instance_create_depth(100 + (2 * 140), 750, depth - 1, objSetupButton); bRing[0].txt = "Rings";
bRing[1] = instance_create_depth(100 + (2 * 140), 785, depth - 1, objSetupButton); bRing[1].txt = "Rings";


