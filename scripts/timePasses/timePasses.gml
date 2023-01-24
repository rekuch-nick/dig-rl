function timePasses(){
	
	
	with(objMob){ 
		if(ww.fmap[xSpot, ySpot].playerSeen){
			if(abs(xSpot - pc.xSpot) + abs(ySpot - pc.ySpot) < stepsMax){
				ready = true;
			}
		}
	}
	
	playerDigest(2);
	
	
	if(pc.food > 0){
		
		if(pc.poison < 1){
			var r = pc.hpRegen;
			pc.hp = clamp(pc.hp + r, 0, pc.hpMax);
		}
	} else {
		pc.hp --;
	}
	
	with(objCreature){
		if(poison > 0){ 
			poison --;
			hp -= clamp(floor(hpMax / 100), 1, 20);
			if(hp < 1){ logMessageWhom(nam, "succumb", "to the poison", id); }
		}
	}
	
	if(characterHasProp(pc, "Dig Aura")){
		digAt(pc.xSpot - 1, pc.ySpot - 1, 5);
		digAt(pc.xSpot - 1, pc.ySpot, 5);
		digAt(pc.xSpot - 1, pc.ySpot + 1, 5);
		
		digAt(pc.xSpot, pc.ySpot - 1, 5);
		digAt(pc.xSpot, pc.ySpot + 1, 5);
		
		digAt(pc.xSpot + 1, pc.ySpot - 1, 5);
		digAt(pc.xSpot + 1, pc.ySpot, 5);
		digAt(pc.xSpot + 1, pc.ySpot + 1, 5);
	}
	
	
	mobsAttack();
}