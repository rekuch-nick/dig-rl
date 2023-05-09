function playerProcRoll(c1, c2){
	
	var roll = 0;
	var bns = 0;
	
	
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
		}
	}
	
	
	
	roll = irandom_range(1, 100) + pc.procLuck;
	if(characterHasProp(c1, "Spiderlike")){
		bns = itemPropBonus(pc, "Spiderlike");
		pc.procLuck ++;
		if(roll + (bns * 5) >= 100){
			c2.poison += 5;
			c2.sick += 5;
		}
	}
	
	
	
	roll = irandom_range(1, 100) + pc.procLuck;
	if(characterHasProp(c1, "Burn Chance")){
		bns = itemPropBonus(pc, "Burn Chance");
		pc.procLuck ++;
		if(roll + (bns * 5) >= 100){
			c2.burning += 1;
		}
	}
	
	
	roll = irandom_range(1, 100) + pc.procLuck;
	if(characterHasProp(c1, "Icy Strikes")){
		bns = itemPropBonus(pc, "Icy Strikes");
		pc.procLuck ++;
		if(roll + (bns * 2) >= 96){
			c2.frozen += 3;
		}
	}
	
	
	
	
	
	
	
}