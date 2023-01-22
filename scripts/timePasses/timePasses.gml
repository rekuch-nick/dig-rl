function timePasses(){
	
	
	with(objMob){ 
		if(ww.fmap[xSpot, ySpot].playerSeen){
			if(abs(xSpot - pc.xSpot) + abs(ySpot - pc.ySpot) < stepsMax){
				ready = true;
			}
		}
	}
	
	pc.food = clamp(pc.food - 1, 0, pc.foodMax);
	
	if(pc.food > 0){
		var r = pc.hpRegen;
		pc.hp = clamp(pc.hp + r, 0, pc.hpMax);
	} else {
		pc.hp --;
	}
	
	mobsAttack();
}