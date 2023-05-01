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
	
	
	if(characterHasProp(id, "Ice Immune")){ frozen = 0; }
	if(frozen > 0){ frozen --; return; }
	
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
			
			xSpot = tar.a;
			ySpot = tar.b;
			
			ww.mmap[xSpot, ySpot] = id;
		}
	}
	
}


if(hp < 1){
	ww.mmap[xSpot, ySpot] = noone;
	var caller = id;
	with(objFireShot){ if(shooter == caller){ shooter = noone; } }
	instance_destroy();
}
