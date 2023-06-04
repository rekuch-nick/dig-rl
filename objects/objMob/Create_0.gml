event_inherited();
image_xscale = 4; image_yscale = 4;
nam = "Imp";

face = 1;
xSpot = floor(x / 64);
ySpot = floor(y / 64);
ready = false;
hasStruck = false;

moveSpeed = 4;
moved = false;
justFinished = false;

sleepChance = 10;
stepsMax = 8;

timeSpawn = false;

hpRegen = 0;

fireTrail = 0;

moveCD = 0;

shotType = noone;
shotChance = 0;
shotRange = 0;
splRange = 1;

willStepOnTrap = false;

isRogue = false;

castDis = 4;
spellRange = 0;
spellChance = 0;
spell = "";



monsterNormalStats();
hp *= .5;
monsterScale(hp/2,  2,   2,   1,   2,   1);


