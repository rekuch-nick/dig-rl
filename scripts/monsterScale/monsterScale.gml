function monsterScale(hpS, acS, strS, aimS, damS, splS){
	
	var lvl = 1 + floor(pc.stage / 5);
	
	hp = ceil((10 + 5 * lvl) * hpS);
	ac = ceil(8 + (lvl * 2) * acS)
	aim = ceil( (lvl * 1) * aimS);
	str = 10 + ceil((4 + lvl * 2) * strS);
	damRange = ceil((6 + lvl * 2) * damS);
	splRange = ceil((6 + lvl * 2) * splS);
	
	hpMax = hp;
}