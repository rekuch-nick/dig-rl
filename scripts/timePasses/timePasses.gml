function timePasses(){
	
	
	
	shootTurrets();
	
	
	with(objWarning){
		waitTurns --;
		image_speed = clamp(8 - waitTurns, 2, 10);
		if(waitTurns < 1){
			potionEffect(effect, xSpot, ySpot);
			
			instance_destroy();
		}
	}
	
	
	
	
	if(ww.flood != noone && pc.ySpot > ww.groundLevel){
		var tries = 0;
		var n = 3;
		while(tries < 10000){
			tries ++;
			var a = irandom_range(0, ww.W - 1);
			var b = irandom_range(ww.groundLevel + 1, ww.H - 1);
			if(ww.fmap[a, b].sprite_index == ww.flood){
				a += irandom_range(-1, 1);
				b += irandom_range(-1, 1);
				if(inBounds(a, b)){
					if(floorBreakable(a, b)){
						ww.fmap[a, b].sprite_index = ww.flood;
						n --;
						if(n < 1){ break; }
					}
				}
			}
		}
		
	}
	
	
	
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
				reg += itemPropBonus(pc, "Regen") * .5;
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
		
		if(healing > 0){
			hp = clamp(hp + 2, 0, hpMax);
		}
		
		if(hpRegen > 0 && id != pc && poison < 1){
			hp = clamp(hp + hpRegen, 0, hpMax);
		}
		
		if(poison > 0){ 
			poison --;
			var d = 1;
			if(id != pc){
				d = clamp(floor(hpMax / 100), 1, 20);
			}
			hp -= d;
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
			if(trueStrike > 0){ trueStrike --; }
			if(itemFind > 0){ itemFind --; }
			if(healing > 0){ healing --; }
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