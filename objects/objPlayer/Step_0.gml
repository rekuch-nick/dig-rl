playerGetInput();
if(hp < 1){ gameOver(); playerEatInput(); return; }
if(instance_number(objScreen) > 0){ return; }
if(wait > 0){ wait--; return; }



if(characterHasProp(id, "Ice Immune")){ frozen = 0; }



if(!moved){
	
	
	
	xTar = xSpot; yTar = ySpot;
	
	
	
	xTar += xIn;
	yTar += yIn;
	if(xIn != 0 && yIn != 0){ xTar = xSpot; yTar = ySpot; }
	
	if(xIn < 0){ face = -1; }
	if(xIn > 0){ face = 1; }
	
	
	if(holdLM){
		var dis = abs(xSpot - xMouse) + abs(ySpot - yMouse);
		
		if(dis == 1){ xTar = xMouse; yTar = yMouse; }
		if(dis > 1){
			var tar = pathing(xSpot, ySpot, xMouse, yMouse, true);
			if(tar == noone){
				tar = pathing(xSpot, ySpot, xMouse, yMouse, false);
			}
			
			if(tar != noone){
				xTar = tar.a;
				yTar = tar.b;
			}
		}
	}
	
	
	if(xTar != xSpot || yTar != ySpot){
		if(frozen > 0){ timePasses(); frozen --; wait += 6; return; }
		
		if(clickLM || !holdLM){ logClear(); }
		
		if(xTar < xSpot){ face = -1; }
		if(xTar > xSpot){ face = 1; }
	
		if(characterCanMove(id, xTar, yTar)){
			
			if(characterHasProp(id, "Lunge")){
				var a = xTar; var b = yTar; var aa = xTar * 64; var bb = yTar * 64;
				if(xSpot < xTar){ a ++; aa += 32; }
				if(xSpot > xTar){ a --; aa -= 32; }
				if(ySpot < yTar){ b ++; bb += 32; }
				if(ySpot > yTar){ b --; bb -= 32; }
				if(inBounds(a, b) && ww.mmap[a, b] != noone){
					combat(id, ww.mmap[a, b]);
					x = aa; y = bb;
				}
			}
			
			ww.mmap[xSpot, ySpot] = noone;
			xSpot = xTar; ySpot = yTar;
			ww.mmap[xSpot, ySpot] = id;
			
		
		} else if(inBounds(xTar, yTar) && ww.mmap[xTar, yTar] != noone && (clickLM || !holdLM) ) {
			logClear();
			
			if(characterHasProp(pc, "Random Bolts")){
				var n = itemPropBonus(pc, "Random Bolts") * 10;
				if(irandom_range(0, 99) < n){ playerRandomLightning(); }
			}
			
			
			characterShiftTowards(id, xTar, yTar);
			combat(id, ww.mmap[xTar, yTar]);
			combatExtraTiles(id, xTar, yTar);
			//mobsAttack();
		
		} else {
		
			if(inBounds(xTar, yTar)){
				if(ww.bmap[xTar, yTar] != noone && tileDigCost(xTar, yTar) > 0){
					
					playerDigest(1);
					
					if(digAt(xTar, yTar, 1)){
						timePasses();
					}
					
					
				}
			}
		
		
		}
		
	}
	
	if(clickSpace || holdSpaceTime > 10){ 
		holdSpaceTime = 0;
		logClear();
		timePasses(); 
	}
	
} /// end of not moved


characterMove(id);

if(justFinished){
	justFinished = false;
	
	if(ww.pmap[xSpot, ySpot] != noone && autoPickup){
		playerPickupItem(xSpot, ySpot);
	}
	
	
	timePasses();
	
	if(ww.fmap[xSpot, ySpot].sprite_index == imgExit){
		xSpot = xFirst; ySpot = yFirst;
		x = xSpot * 64; y = ySpot * 64;
		ww.rollWord = true;
	}
	
	return;
}







if(viewCD > 0){ viewCD --; } else {
	viewCD = 15;
	playerVisionCheck();
}


if(clickChar == "I" || clickChar == "B" || clickChar == "Z" || clickChar == "Q" || clickChar == "E" ){
	if(frozen > 0){ return; }
	instance_create_depth(0, 0, ww.layerS, objScreenBag);
}


if(keyboard_check_pressed(vk_backspace)){ 
	instance_create_depth(0, 0, ww.layerS, objScreenRougeUpgrade);
	//spawnMobClose(); 
}

if(keyboard_check_pressed(vk_f1)){
	for(var a=0; a<ww.W; a++){ for(var b=0; b<ww.H; b++){
		ww.fmap[a, b].playerSeen = true;
	}}
}

