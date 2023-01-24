function combat(c1, c2){
	
	if(c1.hp < 1){ return; }
	
	var hitRoll = irandom_range(1, 20) + getHitPlus(c1);
	
	
	var tar = getArmorClass(c2);
	
	if(hitRoll >= tar || c2.frozen > 0){
		
		if(characterHasProp(c1, "Mold Armor") && c2.gear[1] != noone){
			if(!itemHasProp(c2.gear[1], "Not Metal")){
				if(c2.gear[1].bonus > -5){
					logMessage(c1.nam + "'s slime corodes metal armor.");
					itemEnchant(c2.gear[1], -1);
				}
			}
		}
		
		if(characterHasProp(c1, "Steal Potions")){
			var i = irandom_range(0, 25);
			if(pc.bag[i] != noone){
				if(pc.bag[i].kind == "Potion"){
					logMessage(c1.nam + " stole a " + pc.bag[i].nam);
					pc.bag[i] = noone;
				}
			}
		}
		
		var dam = irandom_range(getMeleeMin(c1), getMeleeMax(c1));
		
		if(characterHasProp(c1, "Poison Strikes")){
			c2.poison += dam;
			logMessage(c1.nam + " poisons " + c2.nam);
		}
		
		if(characterHasProp(c1, "Ice Strikes") && choose(true, false, false) ){
			c2.frozen = 3;
			logMessage(c1.nam + " freezes " + c2.nam);
		}
		
		if(characterHasProp(c2, "Protection")){
			var protReduction = itemPropBonus(c2, "Protection");
			dam = clamp(dam - protReduction, 0, dam);
		}
		
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