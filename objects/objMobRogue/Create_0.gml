event_inherited();
image_xscale = 4; image_yscale = 4;
nam = "Rogue";
isRogue = true;

sleepChance = 0;
stepsMax = 8;
moveCD = 0;

shotType = noone; shotChance = 0; shotRange = 0; splRange = 1;
hpRegen = 1;


mobTune(mobRole.rogue);

var tries = 0;
do {
	tries ++;
	var i = irandom_range(0, array_length(pc.bossSeen) - 1);
	var spt = pc.bossSeen[i];
	if(tries > 1000){ break; }
} until (spt != noone);


spellRange = 0;
spellChance = 10;
spell = "Random Buff";
castDis = 2;



if(tries <= 1000){
	sprite_index = spt;
	pc.bossSeen[i] = noone;
}

if(sprite_index == imgMCWizard){
	moveType = "flee";
	shotType = objFireShot;
	shotChance = 100;
	shotRange = 5;
	spellRange *= 2;
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
	props = ["Ironskin"];
}
if(sprite_index == imgMCMonk){
	hpRegen = 8;
	props = ["Slowing Strikes"];
}
if(sprite_index == imgMCRogue){
	props = ["Poison Strikes"];
}
if(sprite_index == imgMCBard){
	props = ["Displaced", "Steal Potions"];
}
if(sprite_index == imgMCKnight){
	props = ["Sunder"];
	ac += 2; str += 8; aim += 2;
}
if(sprite_index == imgMCHero){
	props = ["Fire Strikes", "Ice Immune"];
	shotType = objFireShot;
	shotChance = 50;
	shotRange = 5;
	fireTrail = 100;
	
	spellRange = 0;
	spellChance = 25;
	spell = "Flame Strike";
	castDis = 2;
	
	
}






