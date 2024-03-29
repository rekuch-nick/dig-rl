if(instance_number(objScreen) > 0){ return; }
if(pc.wait > 0){ return; }

var disToPlayer = abs(xSpot - pc.xSpot) + abs(ySpot - pc.ySpot);
if(disToPlayer < stepsMax - getShadow(pc) ){ 
	state = "!";
	var line = getLine(xSpot, ySpot, pc.xSpot, pc.ySpot);
	if(lineIsBlocked(line)){ state = "?"; }
} else {
	state = "z";
}

characterMove(id);
if(!moved && ready){
	ready = false;
	
	


	
	if(moveCD > 0){ moveCD --; return; }
	if(slow > 0 && choose(true, false)){ return; }
	if(web > 0){ 
		logMessage(nam + " can't move out of the web");
		return; 
	}
	
	
	if(disToPlayer >= stepsMax - getShadow(pc) && disToPlayer > 2){ return; }
	
	if(fireProof){ burning = 0; }
	if(characterHasProp(id, "Ice Immune")){ frozen = 0; }
	if(characterHasProp(id, "Frozen")){ frozen = 0; }
	if(frozen > 0){ return; }
	
	if(irandom_range(0, 99) < sleepChance){ return; }
	//if(abs(xSpot - pc.xSpot) + abs(ySpot - pc.ySpot) > stepsMax){ return; }
	
	var tar = noone;
	
	if(state == "!" || (state == "?" && lookType == "hunt") ){
		var danceCheck = choose(true, false);
		if(moveType == "flee" || (moveType == "dance" && danceCheck) ){
			var t = chooseClosestSpaceXFromPlayer(xSpot, ySpot, 3);
		
			if(t.a != -1){
				var tar = pathing(xSpot, ySpot, t.a, t.b, true);
				if(tar == noone){ tar = pathing(xSpot, ySpot, t.a, t.b, false); }
			}
		} else if (moveType == "still"){
			tar = noone;
		} else {
			var tar = pathing(xSpot, ySpot, pc.xSpot, pc.ySpot, true);
			if(tar == noone){ tar = pathing(xSpot, ySpot, pc.xSpot, pc.ySpot, false); }
		}
	} else if(state == "?"){
		var tar = getRandomAdjacent(xSpot, ySpot);
	}
	
	if(tar != noone){
		if(characterCanMove(id, tar.a, tar.b)){
			ww.mmap[xSpot, ySpot] = noone;
			
			if(irandom_range(0, 99) < fireTrail){
				if(ww.tmap[xSpot, ySpot] == noone && ww.fmap[xSpot, ySpot].sprite_index != imgWater){
					ww.tmap[xSpot, ySpot] = instance_create_depth(xSpot*64, ySpot*64, ww.layerT, objTrapFire);
				}
			}
			
			if(ww.fmap[xSpot, ySpot].sprite_index == imgBGDirtSpikeHoles && ww.tmap[xSpot, ySpot] == noone){
				if(!characterHasProp(id, "Flying") && fly < 1){
					ww.tmap[xSpot, ySpot] = instance_create_depth(xSpot*64, ySpot*64, ww.layerT, objTrap);
				}
			}
			
			
			
			xSpot = tar.a;
			ySpot = tar.b;
			
			ww.mmap[xSpot, ySpot] = id;
		}
	}
	
}


if(hp > 0 && lastHp != -1 && lastHp > hp){
	if(spawnMaster != noone){
		var tries = 0;
		while(tries < 10){
			tries ++;
			var a = irandom_range(0, 3);
			var b = irandom_range(0, a);
			a = choose(a, -a);
			b = choose(b, -b);
			a = xSpot + a;
			b = ySpot + b;
			if(inBounds(a, b)){
				if(ww.mmap[a, b] == noone && ww.bmap[a, b] == noone){
					ww.mmap[a, b] = instance_create_depth(a * 64, b * 64, ww.layerM, spawnMaster);
					ww.mmap[a, b].spawnMaster = noone;
					logMessage("The " + nam + " spreads")
					break;
				}
			}
		}
	}		
}

lastHp = hp;




if(hp < 1){
	
	if(isRogue){ 
		pc.dataRogueKilled ++;
		openExit(); 
	}
	
	
	if(characterHasProp(id, "Spike Corpse")){
		if(ww.tmap[xSpot, ySpot] == noone){
			ww.tmap[xSpot, ySpot] = instance_create_depth(xSpot*64, ySpot*64, ww.layerT, objTrap);
		}
	}
	
	if(characterHasProp(id, "Death Curse")){
		var dis = point_distance(xSpot, ySpot, pc.xSpot, pc.ySpot);
		if(dis <= 2){ if(choose(true, false)){
			if(choose(true, false)){
				pc.agi = clamp(pc.agi - 1, 8, pc.agi);
				logMessage(nam + " drains AGI as it dies");
			} else {
				pc.str = clamp(pc.str - 1, 8, pc.str);
				logMessage(nam + " drains STR as it dies");
			}
		}}
	}
	
	ww.mmap[xSpot, ySpot] = noone;
	
	if(reraise != noone){
		if(!characterHasProp(pc, "Still") && !characterHasProp(pc, "Seal")){
			ww.mmap[xSpot, ySpot] = instance_create_depth(xSpot * 64, ySpot * 64, ww.layerM, reraise);
			logMessage(nam + "s corpse rises again");
		}		
	}
	
	
	//check for blood statue
	for(var a=xSpot-1; a<=xSpot+1; a++){ for(var b=ySpot-1; b<=ySpot+1; b++){
		if(!inBounds(a, b)){ continue; }
		var bt = ww.bmap[a, b];
		if(ww.bmap[a, b] != noone){
			if(ww.mmap[a, b] == noone && bt.sprite_index == imgBlockMobStatueBlood04){ 
				instance_destroy(ww.bmap[a, b]);
				logMessage("The statue comes to life");
				ww.bmap[a, b] = noone;
				ww.mmap[a, b] = instance_create_depth(a * 64, b * 64, ww.layerM, objMobStatueBlood);
			}
			if(bt.sprite_index == imgBlockMobStatueBlood03){ ww.bmap[a, b].sprite_index = imgBlockMobStatueBlood04; }
			if(bt.sprite_index == imgBlockMobStatueBlood02){ ww.bmap[a, b].sprite_index = imgBlockMobStatueBlood03; }
			if(bt.sprite_index == imgBlockMobStatueBlood01){ ww.bmap[a, b].sprite_index = imgBlockMobStatueBlood02; }
		}
	}}
	
	
	
	if(ww.pmap[xSpot, ySpot] == noone){
		var t = noone;
		if(irandom_range(1, 4) >= 4){
			var t = imgHeart;
		}
		if(isRogue){ t = imgHeartStack; }
		if(t == noone && (pc.knifeFind || choose(true, false)) && hpMax > 10 ){ t = "Throwing Knife"; }
		if(t == "Throwing Knife"){
			var i = putPupAt(t, xSpot, ySpot);
			if(i != noone){ i.image_speed = 0; }
		} else if(t != noone){
			
			ww.pmap[xSpot, ySpot] = instance_create_depth(xSpot * 64, ySpot * 64, ww.layerP, objPup);
			ww.pmap[xSpot, ySpot].sprite_index = t;
			ww.pmap[xSpot, ySpot].itm = getItem("Orb");
		}	
	}
	
	
	
	
	
	var caller = id;
	with(objFireShot){ if(shooter == caller){ shooter = noone; } }
	
	if(pc.showBlood && hasBlood){
		if(floorBreakable(xSpot, ySpot)){
			var t = choose(imgBGDirtBlood, imgBGDirtBlood2);
			if(hasGreenBlood){ t = choose(imgBGDirtBloodGreen, imgBGDirtBloodGreen2); }
			ww.fmap[xSpot, ySpot].sprite_index = t;
		}
	}
	
	
	
	
	instance_destroy();
}





