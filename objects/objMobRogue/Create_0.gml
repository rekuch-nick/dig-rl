event_inherited();
image_xscale = 4; image_yscale = 4;
nam = "Rogue";
isRogue = true;

sleepChance = 5;
stepsMax = 8;
moveCD = 0;

shotType = noone; shotChance = 0; shotRange = 0; splRange = 1;
hpRegen = 1;
hp = 200; ac = 18; aim = 6; str = 4; damRange = 10; splRange = 6;
monsterScale(40,  2,   2,   2,   4,   2);

var tries = 0;
do {
	tries ++;
	var i = irandom_range(0, array_length(pc.bossSeen) - 1);
	var spt = pc.bossSeen[i];
	if(tries > 1000){ break; }
} until (spt != noone);


if(tries <= 1000){
	sprite_index = spt;
	pc.bossSeen[i] = noone;
}

if(sprite_index == imgMCWizard){
	moveType = "flee";
	shotType = objFireShot;
	shotChance = 100;
	shotRange = 5;
}
if(sprite_index == imgMCSorcerer){
	sleepChance = 30;
	props = ["Cripple Touch", "Cripple Slap"];
	shotType = objFireShot;
	shotChance = 100;
	shotRange = 5;
}
if(sprite_index == imgMCBarbarian){
	shotType = objRockShot;
	shotChance = 100;
	shotRange = 12;
}
if(sprite_index == imgMCMonk){
	hpRegen = 8;
}
if(sprite_index == imgMCRogue){
	props = ["Poison Strikes"];
}
if(sprite_index == imgMCBard){
	props = ["Displaced"];
}
if(sprite_index == imgMCKnight){
	ac += 2; str += 4; aim += 2;
}
if(sprite_index == imgMCHero){
	props = ["Fire Strikes"];
	shotType = objFireShot;
	shotChance = 50;
	shotRange = 5;
	fireTrail = 100;
}






