function timePasses(){
	
	
	with(objMob){ 
		//if(ww.fmap[xSpot, ySpot].playerSeen){
			if(abs(xSpot - pc.xSpot) + abs(ySpot - pc.ySpot) < stepsMax){
				ready = true;
			}
		//}
	}
	
	playerDigest(2);
	
	
	if(pc.food > 0){
		
		if(pc.poison < 1 && pc.burning < 1){
			var reg = pc.hpRegen;
			
			if(characterHasProp(pc, "Regen")){
				reg += itemPropBonus(pc, "Regen") * .4;
			}
			
			var r = 0;
			while(reg >= 1){ reg --; r ++; }
			if(random_range(0, .99) < reg){ r ++; }
			
			pc.hp = clamp(pc.hp + r, 0, pc.hpMax);
		}
	} else {
		logMessage("You are starving")
		pc.hp --;
	}
	
	with(objCreature){
		
		if(hpRegen > 0 && id != pc && poison < 1){
			hp = clamp(hp + hpRegen, 0, hpMax);
		}
		
		if(poison > 0){ 
			poison --;
			hp -= clamp(floor(hpMax / 100), 1, 20);
			if(hp < 1){ logMessageWhom(nam, "succumb", "to the poison", id); }
		}
		
		if(burning > 0){ 
			hp -= burning;
			if(irandom_range(1, 10) >= 10){ burning --; }
			if(hp < 1){ logMessageWhom(nam, "burn", "to death", id); }
		}
		
		if(tangle > 0){ 
			tangle --;
			hp -= clamp(floor(hpMax / 30), 1, 20);
			if(hp < 1){ logMessageWhom(nam, "succumb", "to the thorns", id); }
		}
		
		var ii = 1;
		if(isRogue){ ii = 2; }
		for(var i=0; i<ii; i++){
			if(slow > 0){ slow --; }
			if(webArmor > 0){ webArmor --; }
			if(frozen > 0){ frozen --; }
			if(sick > 0){ sick --; }
			if(slip > 0){ slip --; }
			if(defense > 0){ defense --; }
			if(swordmastery > 0){ swordmastery --; }
			if(displace > 0){ displace --; }
			if(web > 0 && choose(true, false)){ web --; }
		}
		
		if(characterHasProp(id, "Displaced") && displace < 10){ displace = 10; }
	}
	
	/*
	if(characterHasProp(pc, "Dig Aura")){
		digAt(pc.xSpot - 1, pc.ySpot - 1, 5);
		digAt(pc.xSpot - 1, pc.ySpot, 5);
		digAt(pc.xSpot - 1, pc.ySpot + 1, 5);
		
		digAt(pc.xSpot, pc.ySpot - 1, 5);
		digAt(pc.xSpot, pc.ySpot + 1, 5);
		
		digAt(pc.xSpot + 1, pc.ySpot - 1, 5);
		digAt(pc.xSpot + 1, pc.ySpot, 5);
		digAt(pc.xSpot + 1, pc.ySpot + 1, 5);
	}*/
	
	
	mobsAttack();
}