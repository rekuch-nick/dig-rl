playerGetInput();
if(fCD > 0){ fCD --; }
if(hp < 1){ gameOver(); playerEatInput(); return; }
if(instance_number(objScreen) > 0){ return; }
if(wait > 0){ wait--; return; }
firstFrame = false;

if(keyboard_check_pressed(vk_f4)){ 
	debugMode = !debugMode; 
	if(debugMode){ 
		hp = hpMax; food = foodMax; str = 100; agi = 100; digPow = 100; moveSpeed = 16;
	} else {
		str = strMax; agi = agiMax; digPow = 1; moveSpeed = 4;
	}
}
if(keyboard_check_pressed(vk_f5)){ debugStats = !debugStats; }


if(characterHasProp(id, "Ice Immune")){ 
	if(frozen > 0){ logMessage("You are immune to being frozen"); }
	frozen = 0; 
}

//show_debug_message("player step")
//show_debug_message(random_range(0, 1))

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
		if(frozen > 0){ timePasses(); wait += 6; return; }
		
		
		if(clickLM || !holdLM){ logClear(); }
		
		if(xTar < xSpot){ face = -1; }
		if(xTar > xSpot){ face = 1; }
		
		if(blinkNext > 0){
			blinkNext --;
			characterBlink(pc, getDir(xTar - xSpot), getDir(yTar - ySpot));
			playerEatInput();
			return;
		}
	
		if(characterCanMove(id, xTar, yTar)){
			
			if(web > 0){ 
				timePasses();
				wait += 30;
				logMessage(nam + " can't move out of the web");
				return; 
			}
			
			if(characterHasProp(id, "Lunge")){
				var a = xTar; var b = yTar; var aa = xTar * 64; var bb = yTar * 64;
				if(xSpot < xTar){ a ++; aa += 32; }
				if(xSpot > xTar){ a --; aa -= 32; }
				if(ySpot < yTar){ b ++; bb += 32; }
				if(ySpot > yTar){ b --; bb -= 32; }
				if(inBounds(a, b) && ww.mmap[a, b] != noone){
					attackIsLunge = true;
					combat(id, ww.mmap[a, b]);
					x = aa; y = bb;
					attackIsLunge = false;
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
				var dc = tileDigCost(xTar, yTar);
				if(ww.bmap[xTar, yTar] != noone && dc > 0){
					var dp = digPow;
					
					if(characterHasProp(pc, "Stone Carving")){ dp = dp * 2; }
					playerDigest(dc);
					
					if(dc >= 10){
						logMessage("Digging up rocks is exhausting! Watch your hunger.");
					}
					
					
					if(digAt(xTar, yTar, dp)){
						if(characterHasProp(pc, "Rock Finding")){
							var bns = itemHasProp(pc.gear[ww.gsRing], "Rock Finding") ? pc.gear[ww.gsRing].bonus : pc.gear[ww.gsRing2].bonus;
							var a = xTar; var b = yTar;
							if(inBounds(a, b) && irandom_range(0, 99) < (bns * 2) + 10){
								if(ww.pmap[a, b] == noone){
									ww.pmap[a, b] = instance_create_depth(a * 64, b * 64, ww.layerP, objPup);
									ww.pmap[a, b].sprite_index = imgRock;
									ww.pmap[a, b].itm = getItem("Rock");
								}
							}
						}
						timePasses();
					}
					
					
				}
			}
		
		
		}
		
	}
	
	if(holdSpaceTime < 1 || hp >= hpMax){ beenRestingFor = 0; }
	if(clickSpace || holdSpaceTime > 10){ 
		blinkNext = 0;
		holdSpaceTime = 0;
		beenRestingFor ++;
		
		if(playerCloseToMob()){ beenRestingFor = 1; }
		
		logClear();
		timePasses(); 
		
		if(beenRestingFor > 4){ timePasses(); }
		if(beenRestingFor > 8){ timePasses(); }
		if(beenRestingFor > 12){ timePasses(); }
		if(beenRestingFor > 16){ timePasses(); }
		if(beenRestingFor > 20){ timePasses(); }
		if(beenRestingFor > 24){ timePasses(); }
		if(beenRestingFor > 28){ timePasses(); }
		if(beenRestingFor > 32){ timePasses(); }
		if(beenRestingFor > 36){ timePasses(); }
		if(beenRestingFor > 40){ timePasses(); }
	}
	
	
} /// end of not moved


characterMove(id);

if(justFinished){
	justFinished = false;
	
	if(ww.pmap[xSpot, ySpot] != noone && autoPickup){
		playerPickupItem(xSpot, ySpot);
	}
	
	spawnGrassMob(xLast, yLast);
	
	
	timePasses();
	
	spawnStatueMob(xSpot, ySpot);
	
	if(ww.fmap[xSpot, ySpot].sprite_index == imgWater){
		if(burning > 0){
			logMessage("The water stops you from burning");
			burning = 0;
		}
		spawnWaterMob(xSpot, ySpot);
	}
	
	if(ww.fmap[xSpot, ySpot].sprite_index == imgExit){
		xSpot = xFirst; ySpot = yFirst;
		x = xSpot * 64; y = ySpot * 64;
		ww.rollWord = true;
	}
	
	xLast = xSpot; yLast = ySpot;
	return;
}







if(viewCD > 0){ viewCD --; } else {
	viewCD = 15;
	playerVisionCheck();
}


if(clickChar == "Z"){
	playerEatInput();
	if(frozen > 0){ return; }
	if(bag[itemCursor] != noone){ manageBagZ(itemCursor); } else {
		instance_create_depth(0, 0, ww.layerS, objScreenBag);
	}
}

if(clickChar == "Q"){
	playerEatInput();
	if(frozen > 0){ return; }
	if(bag[itemCursor] != noone){ manageBagQ(itemCursor); } else {
		instance_create_depth(0, 0, ww.layerS, objScreenBag);
	}
}

if(clickChar == "I" || clickChar == "B" || clickChar == "E" || clickChar == "C"){
	if(frozen > 0){ return; }
	instance_create_depth(0, 0, ww.layerS, objScreenBag);
}


for(var i=0; i<9; i++){
	if(clickChar == string(i + 1)){
		if(bag[i] != noone){
			itemCursor = i;
			hotbarLeftmost = 0;
		}
	}
}

if(mouse_wheel_up()){ itemCursorMove(-1); }
if(mouse_wheel_down()){ itemCursorMove(1); }




if(keyboard_check_pressed(vk_backspace)){ 
	instance_create_depth(0, 0, ww.layerS, objScreenRougeUpgrade);
	//spawnMobClose(); 
}




