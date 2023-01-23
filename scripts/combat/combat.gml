function combat(c1, c2){
	
	if(c1.hp < 1){ return; }
	
	var hitRoll = irandom_range(1, 20) + getHitPlus(c1);
	
	
	var tar = getArmorClass(c2);
	
	if(hitRoll >= tar || c2.frozen > 0){
		
		var dam = irandom_range(getMeleeMin(c1), getMeleeMax(c1));
		if(c2.frozen > 0){ dam *= 2; }
		if(c1.swordmastery > 0){
			c1.swordmastery --;
			dam *= 2;
		}
		if(c2.defense > 0){
			c2.defense --;
			dam = ceil(dam / 2);
		}
		c2.hp -= dam;
		
		var sn = c2.hp < 1 ? ". " + c2.nam + " is killed!" : ".";
		var v = c1 == pc ? " hit " : " hits ";
		logMessage(c1.nam + v + c2.nam + " for " + string(dam) + sn);
		
		
	} else {
		var v = " misses ";
		if(c1.object_index == objPlayer){ v = " miss the "; }
		logMessage(c1.nam + v + c2.nam);
		//miss
		
	}
	
	
	
	
	
	
	
	
}