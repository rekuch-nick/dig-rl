function combat(c1, c2){
	
	if(c1.hp < 1){ return; }
	
	if(c1.id == pc){ instance_create_depth(c2.xSpot * 64, c2.ySpot * 64, ww.layerE, effAttackSpace); }
	
	var isShockwave = false;
	var natRoll = irandom_range(1, 20);
	var hitRoll = natRoll + getHitPlus(c1);
	hitRoll += c1.rollingHitPlus;
	
	//show_debug_message("** " + string(natRoll))
	
	if(c1.trueStrike > 0){ hitRoll += 20; }
	
	var tar = getArmorClass(c2);
	if(c2.frozen > 0){ tar = 1; }
	
	
	if(c1.attackIsLunge){ 
		if(characterHasProp(pc, "Perfect Lunges")){ hitRoll += 8; }
		hitRoll += 4; 
	}
	
	
	if(hitRoll < tar && (natRoll == 19 || natRoll == 20)){ hitRoll = tar; }
	if(hitRoll >= tar && (natRoll == 1 || natRoll == 2)){ hitRoll = 0; }
	
	
	if(c1.slow > 0 && irandom_range(0, 99) < 40){ 
		var ss = c1 == pc ? "r" : "s";
		logMessage(c1.nam + ss + " attack is sluggish");
		hitRoll = -1;
	}
	
	
	
	
	if(c2.displace > 0){ if(irandom_range(0, 99) < 40){ 
		logMessageWhom(c1.nam, "strike", "at illusions", c1);
		hitRoll = -1;
	}}
	
	if(c2.webArmor > 0){ if(irandom_range(0, 99) < 40){ 
		logMessageWhom(c1.nam, "strike", "harmlessly at the webs", c1);
		hitRoll = -1;
	}}
	
	if(!attackIsCleave){ c1.dataAttacks ++; }
	
	if(hitRoll < tar && characterHasProp(c1, "Shockwave") && hitRoll > -1){
		hitRoll = tar;
		isShockwave = true;
	}
	
	if(hitRoll < tar && c1.id == pc){ c1.rollingHitPlus += 2; }
	
	if(hitRoll >= tar || c2.frozen > 0 || natRoll == 20){
		var v = c1 == pc ? " hit " : " hits ";
		if(!isShockwave){ c1.rollingHitPlus = 0; c1.dataHits ++; }
		
		if(characterHasProp(c1, "Mold Armor") && c2.gear[1] != noone){
			if(!itemHasProp(c2.gear[1], "Not Metal")){
				if(c2.gear[1].bonus > -1){
					logMessage(c1.nam + "'s slime corodes metal armor");
					itemEnchant(c2.gear[1], -1, false);
				}
			}
		}
		
		if(characterHasProp(c1, "Sunder") && c2.gear[0] != noone){
			if(choose(true, false)){
				if(c2.gear[0].bonus > -5){
					logMessage(c1.nam + "'s attack damages your weapon");
					itemEnchant(c2.gear[0], -1, false);
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
					
					if(pc.bag[i].charges > 1){
						pc.bag[i].charges --;
					} else {
						pc.bag[i] = noone;
					}
				}
			}
		}
		
		var dam = irandom_range(getMeleeMin(c1), getMeleeMax(c1));
		if(c1 == pc && pc.perk[ww.perkShadow]){
			var n = (pc.agi - 20) * 4;
			if(irandom_range(0, 99) < n){ dam *= 2; }
		}
		if(c1.sick > 0){ dam = ceil(dam * .6); }
		if(c1.attackIsLunge){ 
			var v = c1 == pc ? " lunge into " : " lunges into ";
			
			if(characterHasProp(pc, "Perfect Lunges")){ 
				dam = ceil(dam * 2); 
			} else {
				dam = ceil(dam * 1.5); 
			}
		}
		
		if(c1.attackIsCleave){
			dam = ceil(dam / 3);
		} else if(isShockwave){
			dam = ceil(dam / 3);
		}
		
		
		if(characterHasProp(c1, "Sickening Strikes")){
			c2.sick += dam;
			var v = c1 == pc ? " sicken " : " sickens ";
			//logMessage(c1.nam + v + c2.nam);
		}
		
		if(characterHasProp(c1, "Slip Strikes")){
			c2.slip = 60;
			var v = c1 == pc ? " ooze on " : " oozes on ";
			//logMessage(c1.nam + v + c2.nam);
		}
		
		if(characterHasProp(c1, "Fire Strikes")){
			c2.burning = clamp(c2.burning + 1, 0, 3);
			var v = c1 == pc ? " burn " : " burns ";
			//logMessage(c1.nam + v + c2.nam);
		}
		
		if(characterHasProp(c1, "Cripple Touch")){
			c2.str = clamp(c2.str - 1, 8, c2.str);
			var v = c1 == pc ? " cripple " : " cripples ";
			//logMessage(c1.nam + v + c2.nam);
		}
		
		if(characterHasProp(c1, "Cripple Slap")){
			c2.agi = clamp(c2.agi - 1, 8, c2.agi);
			var v = c1 == pc ? " cripple " : " cripples ";
			//logMessage(c1.nam + v + c2.nam);
		}
		
		if(characterHasProp(c1, "String Attack")){
			c2.web = 1;
			//var v = c1 == pc ? " poison " : " poisons ";
			//logMessage(c1.nam + v + c2.nam);
		}
		
		if(characterHasProp(c1, "Flesh to Stone")){
			if(choose(true, false, false) && (c1.gear[0].bonus * 5) >= c2.hp ){
				c2.hp = 0;
				var v = c1 == pc ? " petrify " : " petrified ";
				if(ww.bmap[c2.xSpot, c2.ySpot] == noone){
					var a = c2.xSpot; var b = c2.ySpot;
					var til = instance_create_depth(a*64, b*64, ww.layerB, objBlock);
					til.sprite_index = imgBlockPetMob;
					ww.bmap[a, b] = til;
				}
			}
		}
		
		if(characterHasProp(c1, "Slowing Strikes") && choose(true, false, false)){
			c2.slow = clamp(c2.slow + 10, 10, 30);
			var v = c1 == pc ? " slow " : " slows ";
			//logMessage(c1.nam + v + c2.nam);
		}
		
		if(characterHasProp(c1, "Ice Strikes") && choose(true, false, false) && c2.frozen < 1){
			c2.frozen = 3;
			c2.burning = 0;
			logMessage(c1.nam + " freezes " + c2.nam);
		}
		
		//if(characterHasProp(c1, "Icy Strikes") && irandom_range(0, 99) < 4 + (c1.gear[0].bonus * 1) && c2.frozen < 1){
		//	c2.frozen = 3;
		//	logMessage(c1.nam + " freezes " + c2.nam);
		//}
		
		if(characterHasProp(c1, "Poison Strikes")){
			c2.poison += dam;
			var v = c1 == pc ? " poison " : " poisons ";
			//logMessage(c1.nam + v + c2.nam);
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
		
		if(characterHasProp(c2, "Ironskin")){
			dam = clamp(dam - 4, 1, dam);
		}
		

		if(c1 == pc){ playerProcRoll(c1, c2); }
		
		
		//if(characterHasProp(c1, "Burn Chance")){
		//	var bns = itemHasProp(pc.gear[ww.gsRing], "Burn Chance") ? pc.gear[ww.gsRing].bonus : pc.gear[ww.gsRing2].bonus;
		//	if(irandom_range(0, 99) < (bns * 5) ){
		//		c2.burning += 1;
		//		var v = c1 == pc ? " burn " : " burns ";
		//	}
		//}
		
		//if(characterHasProp(c1, "Spiderlike")){
		//	var bns = itemHasProp(pc.gear[ww.gsRing], "Spiderlike") ? pc.gear[ww.gsRing].bonus : pc.gear[ww.gsRing2].bonus;
		//	if(irandom_range(0, 99) < (bns * 5) ){
		//		c2.sick += 5;
		//		c2.poison += 5;
		//		var v = c1 == pc ? " sicken " : " sickens ";
		//	}
		//}
		
		if(c2.frozen > 0){ dam *= 2; }
		if(c1.swordmastery > 0){
			//c1.swordmastery --;
			dam *= 2;
		}
		if(c2.defense > 0){
			//c2.defense --;
			dam = ceil(dam / 2);
		}
		if(dam < 1){ dam = 1; }
		c2.hp -= dam;
		if(c2.hp < 1){ c1.dataKills ++; }
		
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