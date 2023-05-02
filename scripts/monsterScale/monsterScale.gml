function monsterScale(hpS, acS, aimS, strS, damS, splS){
	
	var lvl = floor( (pc.stage - 1) / 5);
	if(lvl < 0){ lvl = 0; }
	
	/*
	hp = ceil((10 + 5 * lvl) * hpS);
	ac = ceil( (6 + (lvl * 2)) * acS)
	aim = ceil( (lvl * 1) * aimS);
	str = 10 + ceil((4 + lvl * 2) * strS);
	damRange = ceil((6 + lvl * 2) * damS);
	splRange = ceil((6 + lvl * 2) * splS);
	*/
	hp += lvl * hpS;
	ac += lvl * acS;
	aim += lvl * aimS;
	str += 10 + (lvl * strS);
	damRange += lvl * damS;
	splRange += lvl * splS;
	
	hpMax = hp;
}