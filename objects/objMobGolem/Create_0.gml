event_inherited();
nam = "Golem";

sleepChance = 15;
stepsMax = 8;


hpRegen = 0;


props = ["Slowing Strikes"];
willStepOnTrap = true;


spellRange = 2;
spellChance = 10;
spell = "Flame Strike";
castDis = 6;


monsterNormalStats();
str = 0; ac += 2; aim += 2;
monsterScale(hp/2,  2,   2,   1,   2,   1);