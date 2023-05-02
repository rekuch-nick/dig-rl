function combat(c1, c2){
	
	if(c1.hp < 1){ return; }
	
	if(c1.id == pc){ instance_create_depth(c2.xSpot * 64, c2.ySpot * 64, ww.layerE, effAttackSpace); }
	
	var isShockwave = false;
	var natRoll = irandom_range(1, 20);
	var hitRoll = natRoll + getHitPlus(c1);
	hitRoll += c1.rollingHitPlus;
	
	var tar = getArmorClass(c2);
	
	
	
	if(c1.attackIsLunge){ 
		if(characterHasProp(pc, "Perfect Lunges")){ hitRoll += 8; }
		hitRoll += 4; 
	}
	
	
	if(hitRoll < tar && (natRoll == 19 || natRoll == 20)){ hitRoll = tar; }
	if(hitRoll >= tar && (natRoll == 1 || natRoll == 2)){ hitRoll = 0; }
	
	
	if(slow > 0 && choose(true, false)){ 
		var ss = c1 == pc ? "r" : "s";
		logMessage(c1.nam + ss + " attack is sluggish");
		hitRoll = 1;
	}
	
	if(characterHasProp(c1, "Blur Self") && c1.displace < 1 && irandom_range(0, 99) < (c1.gear[0].bonus * 4) ){
		c1.displace = 4;
		logMessageWhom(c1.nam, "become", "hard to see", c1);
	}
	
	
	if(c2.displace > 0){ if(choose(true, false)){ 
		//c2.displace --;
		logMessageWhom(c1.nam, "strike", "at illusions", c1);
		hitRoll = 0; } }
	
	
	if(hitRoll < tar && characterHasProp(c1, "Shockwave")){
		hitRoll = tar;
		isShockwave = true;
	}
	
	//if(hitRoll < tar && c1.id == pc){ c1.rollingHitPlus ++; }
	
	if(hitRoll >= tar || c2.frozen > 0 || natRoll == 20){
		var v = c1 == pc ? " hit " : " hits ";
		if(!isShockwave){ c1.rollingHitPlus = 0; }
		
		if(characterHasProp(c1, "Mold Armor") && c2.gear[1] != noone){
			if(!itemHasProp(c2.gear[1], "Not Metal")){
				if(c2.gear[1].bonus > -5){
					logMessage(c1.nam + "'s slime corodes metal armor.");
					itemEnchant(c2.gear[1], -1, false);
				}
			}
		}
		
		if(characterHasProp(c1, "Steal Potions")){
			var i = irandom_range(0, 21);
			if(pc.bag[i] != noone){
				if(pc.bag[i].kind != "Wand" && itemIsEquipped(pc.bag[i]) == -1 ){
					var namString = pc.bag[i].nam;
					if(pc.bag[i].kind == "Potion" && !pc.potionKnown[pc.bag[i].potID]){
						namString = "Unidentified Potion";
					}
					logMessage(c1.nam + " stole a " + namString);
					pc.bag[i] = noone;
				}
			}
		}
		
		var dam = irandom_range(getMeleeMin(c1), getMeleeMax(c1));
		if(c1.attackIsLunge){ 
			var v = c1 == pc ? " lunge into " : " lunges into ";
			
			if(characterHasProp(pc, "Perfect Lunges")){ 
				dam = ceil(dam * 2); 
			} else {
				dam = ceil(dam * 1.5); 
			}
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
			//logMessage(c1.nam + v + c2.nam);
		}
		
		if(characterHasProp(c1, "Slowing Strikes") && choose(true, false, false)){
			c2.slow = clamp(c2.slow, 10, max(30, c2.slow));
			//var v = c1 == pc ? " slow " : " slows ";
			logMessage(c1.nam + v + c2.nam);
		}
		
		if(characterHasProp(c1, "Ice Strikes") && choose(true, false, false) && c2.frozen < 1){
			c2.frozen = 3;
			logMessage(c1.nam + " freezes " + c2.nam);
		}
		
		//"Memory Burn"
		if(characterHasProp(c1, "Memory Burn") && choose(true, false) && c2 == pc){
			logMessage(c1.nam + " muddles " + c2.nam);
			for(var a=0; a<ww.W; a++){ for(var b=0; b<ww.H; b++){
				ww.memmap[a, b] = false;
				
			}}
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
			//c1.swordmastery --;
			dam *= 2;
		}
		if(c2.defense > 0){
			//c2.defense --;
			dam = ceil(dam / 2);
		}
		c2.hp -= dam;
		
		var sn = c2.hp < 1 ? ". " + c2.nam + " is killed!" : ".";
		if(c2.id == pc){ sn = " (" + string(pc.hp) + ")"; }
		
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