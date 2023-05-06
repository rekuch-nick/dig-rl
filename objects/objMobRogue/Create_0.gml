event_inherited();
image_xscale = 4; image_yscale = 4;
nam = "Rogue";
isRogue = true;

sleepChance = 5;
stepsMax = 8;
moveCD = 0;

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








hpRegen = 1;
shotType = noone;
shotChance = 0;
shotRange = 0;
splRange = 1;

hp = 200; ac = 18; aim = 6; str = 4; damRange = 10; splRange = 6;
monsterScale(25,  2,   2,   2,   4,   2);