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



moveCD = 0;

shotType = noone;
shotChance = 0;
shotRange = 0;
splRange = 1;

willStepOnTrap = false;

isRogue = false;



//           hp,  ac,  aim, str, dam, spl
monsterScale(.5,  1,   1,   1,   1,   1);


