function playerProcRoll(c1, c2){
	
	var roll = 0;
	var bns = 0;
	
	
	
	
	roll = irandom_range(1, 100) + pc.procLuck;
	if(characterHasProp(c1, "Knockback")){
		bns = itemPropBonus(pc, "Knockback");
		var a = c2.xSpot; var b = c2.ySpot;
		if(c1.xSpot < c2.xSpot){ a ++; }
		if(c1.xSpot > c2.xSpot){ a --; }
		if(c1.ySpot < c2.ySpot){ b ++; }
		if(c1.ySpot > c2.ySpot){ b --; }
		
		pc.procLuck ++;
		if(roll + (bns * 2) >= 80){
			pc.procLuck = pc.procLuckBase;
			var dam = bns * 2;
			
			if(inBounds(a, b) && ( ww.bmap[a, b] == noone || tileDigCost(a, b) != 0) ){
				if(ww.mmap[a, b] == noone){
				
					ww.mmap[c2.xSpot, c2.ySpot] = noone;
					c2.xSpot = a; c2.ySpot = b; c2.x = a*64; c2.y = b*64;
					ww.mmap[a, b] = c2;
				
					if(ww.bmap[a, b] != noone){
						//break tile
						logMessage(c2.nam + " crashed into the wall for " + string(dam));
						c2.hp -= dam;
						digAt(a, b, 30000);
					}
				} else {
					//bump monster
					var m = ww.mmap[a, b];
					logMessage(c2.nam + " crashed into " + m.nam + " for " + string(dam));
					c2.hp -= dam;
					m.hp -= dam;
				}
			} else {
				//bump edge of world or unbreakable
				logMessage(c2.nam + " crashed into the wall for " + string(dam));
					c2.hp -= dam;
			}
		}
	}
	
	
	
	
	
	
	
	roll = irandom_range(1, 100) + pc.procLuck;
	if(characterHasProp(c1, "Blur Self")){
		bns = itemPropBonus(pc, "Blur Self");
		pc.procLuck ++;
		if(roll + (bns * 4) >= 100){
			c1.displace += 10;
			logMessageWhom(c1.nam, "become", "hard to see", c1);
			pc.procLuck = pc.procLuckBase;
		}
	}
	
	
	
	
	roll = irandom_range(1, 100) + pc.procLuck;
	if(characterHasProp(c1, "Flaming Burst")){
		bns = itemPropBonus(pc, "Flaming Burst");
		pc.procLuck ++;
		if(roll + (bns * 5) >= 100){
			potionEffect(ww.potBomb, c2.xSpot, c2.ySpot);
			pc.procLuck = pc.procLuckBase;
		}
	}
	
	
	roll = irandom_range(1, 100) + pc.procLuck;
	if(characterHasProp(c1, "Teleport Foe")){
		bns = itemPropBonus(pc, "Teleport Foe");
		pc.procLuck ++;
		if(roll + (bns * 2) >= 96){
			potionEffect(ww.potWarp, c2.xSpot, c2.ySpot);
			pc.procLuck = pc.procLuckBase;
		}
	}
	
	
	
	roll = irandom_range(1, 100) + pc.procLuck;
	if(characterHasProp(c1, "Spiderlike")){
		bns = itemPropBonus(pc, "Spiderlike");
		pc.procLuck ++;
		if(roll + (bns * 5) >= 100){
			c2.poison += 5;
			c2.sick += 5;
			pc.procLuck = pc.procLuckBase;
		}
	}
	
	
	
	roll = irandom_range(1, 100) + pc.procLuck;
	if(characterHasProp(c1, "Burn Chance")){
		bns = itemPropBonus(pc, "Burn Chance");
		pc.procLuck ++;
		if(roll + (bns * 5) >= 100){
			c2.burning += 1;
			pc.procLuck = pc.procLuckBase;
		}
	}
	
	
	roll = irandom_range(1, 100) + pc.procLuck;
	if(characterHasProp(c1, "Icy Strikes")){
		bns = itemPropBonus(pc, "Icy Strikes");
		pc.procLuck ++;
		if(roll + (bns * 2) >= 96){
			c2.frozen += 3;
			c2.burning = 0;
			pc.procLuck = pc.procLuckBase;
		}
	}
	
	roll = irandom_range(1, 100) + pc.procLuck;
	if(characterHasProp(c1, "Lightning Strike")){
		bns = itemPropBonus(pc, "Lightning Strike");
		pc.procLuck ++;
		if(roll + (bns * 2) >= 100){
			beamEffect(ww.potShock, c1.xSpot, c1.ySpot, c2.xSpot, c2.ySpot, "", 10);
			pc.procLuck = pc.procLuckBase;
		}
	}
	
	
	
	
	
}