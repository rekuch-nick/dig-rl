function combat(c1, c2){
	
	if(c1.hp < 1){ return; }
	
	if(c1.id == pc){ instance_create_depth(c2.xSpot * 64, c2.ySpot * 64, ww.layerE, effAttackSpace); }
	
	var isShockwave = false;
	var hitRoll = irandom_range(1, 20) + getHitPlus(c1);
	hitRoll += c1.rollingHitPlus;
	
	if(c1.attackIsLunge){ hitRoll += 4; }
	
	if(slow > 0){ 
		logMessage("The slow effect makes " + c1.nam + " miss");
		slow --; hitRoll -= 10; 
	}
	
	if(characterHasProp(c1, "Blur Self") && c1.displace < 1 && irandom_range(0, 99) < (c1.gear[0].bonus * 4) ){
		c1.displace = 4;
		logMessageWhom(c1.nam, "become", "hard to see", c1);
	}
	
	var tar = getArmorClass(c2);
	if(c2.displace > 0){ if(choose(true, false, false)){ 
		c2.displace --;
		logMessageWhom(c1.nam, "strike", "at illusions", c1);
		hitRoll = 0; } }
	
	
	if(hitRoll < tar && characterHasProp(c1, "Shockwave")){
		hitRoll = tar;
		isShockwave = true;
	}
	
	//if(hitRoll < tar && c1.id == pc){ c1.rollingHitPlus ++; }
	
	if(hitRoll >= tar || c2.frozen > 0){
		var v = c1 == pc ? " hit " : " hits ";
		if(!isShockwave){ c1.rollingHitPlus = 0; }
		
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
				if(pc.bag[i].kind == "Potion" || pc.bag[i].kind == "Food" || (choose(true, false) && (!itemIsEquipped(pc.bag[i])) )){
					logMessage(c1.nam + " stole a " + pc.bag[i].nam);
					pc.bag[i] = noone;
				}
			}
		}
		
		var dam = irandom_range(getMeleeMin(c1), getMeleeMax(c1));
		if(c1.attackIsLunge){ 
			var v = c1 == pc ? " lunge into " : " lunges into ";
			dam = ceil(dam * 1.5); 
		}
		
		
		if(characterHasProp(c1, "Knockback")){
			var a = c2.xSpot; var b = c2.ySpot;
			if(c1.xSpot < c2.xSpot){ a ++; }
			if(c1.xSpot > c2.xSpot){ a --; }
			if(c1.ySpot < c2.ySpot){ b ++; }
			if(c1.ySpot > c2.ySpot){ b --; }
			
			if(inBounds(a, b) && ( ww.bmap[a, b] == noone || tileDigCost(a, b) != 0) ){
				if(ww.mmap[a, b] == noone){
					//just move too strong //
					if(ww.bmap[a, b] != noone){
						ww.mmap[c2.xSpot, c2.ySpot] = noone;
						c2.xSpot = a; c2.ySpot = b; c2.x = a*64; c2.y = b*64;
						ww.mmap[a, b] = c2;
						//break tile
						dam += ceil(dam / 5);
						digAt(a, b, 30000);
					}
				} else {
					//bump monster
					dam += ceil(dam / 5);
				}
			} else {
				//bump edge of world or unbreakable
				dam += ceil(dam / 5);
			}
		}
		
		if(c1.attackIsCleave || isShockwave){
			dam = ceil(dam / 3);
		}
		
		if(characterHasProp(c1, "Poison Strikes")){
			c2.poison += dam;
			var v = c1 == pc ? " poison " : " poisons ";
			logMessage(c1.nam + v + c2.nam);
		}
		
		if(characterHasProp(c1, "Ice Strikes") && choose(true, false, false) && c2.frozen < 1){
			c2.frozen = 3;
			logMessage(c1.nam + " freezes " + c2.nam);
		}
		
		if(characterHasProp(c2, "Protection")){
			var protReduction = itemPropBonus(c2, "Protection");
			dam = clamp(dam - protReduction, 0, dam);
		}
		
		if(characterHasProp(c1, "Teleport Foe") && irandom_range(0, 99) < 5 + (c1.gear[0].bonus * 2) ){
			potionEffect(ww.potWarp, c2.xSpot, c2.ySpot);
		}
		
		if(characterHasProp(c1, "Flaming Burst") && irandom_range(0, 99) < (c1.gear[0].bonus * 5) ){
			potionEffect(ww.potBomb, c2.xSpot, c2.ySpot);
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
		
		if(c1.attackIsCleave){ v = c1 == pc ? " cleave " : " cleaves "; }
		if(isShockwave){ v = c1 == pc ? " clip " : " clips "; }
		logMessage(c1.nam + v + c2.nam + " for " + string(dam) + sn);
		
		if(c2.hp > 0 && characterHasProp(c2, "Thorns")){
			if(choose(false, false, true)){
				c1.tangle += irandom_range(3, 6);
				//logMessage("The roots aid " + c2.nam);
			}
		}
		
	} else {
		var v = " misses ";
		if(c1.object_index == objPlayer){ v = " miss the "; }
		logMessage(c1.nam + v + c2.nam);
		//miss
		
	}
	
	
	
	
	
	
	
}