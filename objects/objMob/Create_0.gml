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

hp = 10;
hpMax = 10;
hpRegen = 0;
str = 14;
agi = 10;
ac = 8;
damRange = 6;
aim = 6;

moveCD = 0;

shotType = noone;
shotChance = 0;
shotRange = 0;
splRange = 1;

willStepOnTrap = false;

isRogue = false;