function mobsCast(c, s){
	
	var isBuffAoE = false;
	var txt = c.nam + " mutters something arcane";
	
	if(s == "Random Buff"){
		s = choose("Aim", "Rage", "Block", "Blur");
		isBuffAoE = true;
	}
	if(s == "Aim"){ isBuffAoE = true; }
	if(s == "Rage"){ isBuffAoE = true; }
	if(s == "Block"){ isBuffAoE = true; }
	if(s == "Blur"){ isBuffAoE = true; }
	
	
	if(isBuffAoE){
		
		logMessage(txt);
		
		for(var a=c.xSpot-c.spellRange; a<=c.xSpot+c.spellRange; a++){
			for(var b=c.ySpot-c.spellRange; b<=c.ySpot+c.spellRange; b++){
				if(!inBounds(a, b)){ continue; }
				var m = ww.mmap[a, b];
				if(m != noone){
					if(m == pc){ continue; }
					if(s == "Aim"){ m.trueStrike += 10; }
					if(s == "Rage"){ m.swordmastery += 10; }
					if(s == "Block"){ m.defense += 10; }
					if(s == "Blur"){ m.displace += 10; }
				}
			}
		}
		
	}
	
	
	if(s == "Blink"){
		var dis = abs(pc.xSpot - c.xSpot) + abs(pc.ySpot - c.ySpot);
		
		if(dis == 1 || (dis == 2 && pc.xSpot != c.xSpot && pc.ySpot != c.ySpot) ){
			//already close, blink away
			if(characterBlink(c, choose(-1, 0, 1), choose(-1, 0, 1))){
				logMessage(c.nam + " blinks away");
			}
		} else {
			//far, blink close
			var p = getEmptySpaceAdjacentToPlayer();
			if(p != noone){
				logMessage(c.nam + " blinks in to attack");
				ww.mmap[c.xSpot, c.ySpot] = noone;
				c.xSpot = p.a;
				c.ySpot = p.b;
				c.x = p.a * 64;
				c.y = p.b * 64;
				ww.mmap[c.xSpot, c.ySpot] = c;
			}
		}
	}
	
	
}