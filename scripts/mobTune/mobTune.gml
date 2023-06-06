function mobTune(role){
	
	var lvl = floor( (pc.stage) / 10);
	if(lvl < 0){ lvl = 0; }
	
	
	
	//role == rank, default
	hp = 20 + (lvl * 10);
	ac = 14 + (lvl * 2);
	aim = 8 + (lvl + 2);
	str = 10 + 4 + (lvl * 2);
	damRange = 6 + (lvl * 2);
	splRange = 6 + (lvl * 2);
	
	if(role == mobRole.minion){
		hp = 4 + (lvl * 5);
	}
	
	if(role == mobRole.goon){
		hp = 10 + (lvl * 10);
		ac = 10 + (lvl * 2);
		aim = 8 + (lvl + 2);
		str = 10 + 4 + (lvl * 2);
		damRange = 6 + (lvl * 2);
		splRange = 6 + (lvl * 2);
	}
	
	if(role == mobRole.sponge){
		hp = 30 + (lvl * 15);
		ac = 10 + (lvl * 2);
		aim = 8 + (lvl + 2);
		str = 10 + 4 + (lvl * 2);
		damRange = 6 + (lvl * 2);
		splRange = 6 + (lvl * 2);
	}
	
	if(role == mobRole.champ){
		hp = 30 + (lvl * 15);
		ac = 16 + (lvl * 3);
		aim = 12 + (lvl + 3);
		str = 10 + 6 + (lvl * 3);
		damRange = 9 + (lvl * 3);
		splRange = 9 + (lvl * 3);
	}
	
	if(role == mobRole.striker){
		aim = 16 + (lvl * 4);
	}
	
	if(role == mobRole.brute){
		hp = 40 + (lvl * 20);
		ac = 10 + (lvl * 2);
		aim = 4 + (lvl + 1);
		str = 10 + 8 + (lvl * 4);
		damRange = 9 + (lvl * 3);
		splRange = 9 + (lvl * 3);
	}
	
	if(role == mobRole.wild){
		aim = 16 + (lvl * 4);
		str = 10 + (lvl * 1);
		damRange = 12 + (lvl * 4);
	}
	
	if(role == mobRole.tank){
		hp = 40 + (lvl * 20);
		ac = 16 + (lvl * 3);
	}
	
	if(role == mobRole.bat){
		hp = 10 + (lvl * 10);
		ac = 18 + (lvl * 4);
		aim = 8 + (lvl + 2);
		str = 10 + 4 + (lvl * 2);
		damRange = 6 + (lvl * 2);
		splRange = 6 + (lvl * 2);
	}
	
	if(role == mobRole.rogue){
		hp = 300 + (lvl * 100);
		ac = 16 + (lvl * 3);
		aim = 16 + (lvl + 4);
		str = 10 + 8 + (lvl * 4);
		damRange = 12 + (lvl * 4);
		splRange = 12 + (lvl * 4);
	}
	
	hp = ceil(hp);
	ac = ceil(ac);
	aim = ceil(aim);
	str = ceil(str);
	damRange = ceil(damRange);
	splRange = ceil(splRange);
	hpMax = hp;
}

/*
	minion, //very low hp, normal attack
	goon, // low everything
	sponge, //high hp goon
	rank, // normal everything
	champ, //moderate high all
	striker, //high hit
	brute, //high dmg, low hit, hit hp, low def
	wild, //high hit, random damage
	tank, //high hp / def
	bat, //very high def, bad else
	rogue //boss level stats

*/