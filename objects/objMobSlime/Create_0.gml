event_inherited();
nam = "Slime";

sleepChance = 40;
stepsMax = 8;




hpRegen = 0;


//moveType = "flee";
willStepOnTrap = true;

hasBlood = true;
hasGreenBlood = true;

monsterNormalStats();
hp *= .5; ac -= 4;
monsterScale(hp/2,  2,   2,   1,   2,   0);