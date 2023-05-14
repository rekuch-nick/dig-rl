event_inherited();
nam = "Hydra";

sleepChance = 20;
stepsMax = 12;







//props = ["Ice Strikes", "Ice Immune"];
willStepOnTrap = true;






monsterNormalStats();
hp *= 2.5; str += 4;
monsterScale(hp/2,  2,   2,   1,   2,   1);



hpRegen = ceil(hp / 20);