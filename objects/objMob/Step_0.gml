if(instance_number(objScreen) > 0){ return; }


characterMove(id);
if(!moved && ready){
	ready = false;
	if(moveCD > 0){ moveCD --; return; }
	if(frozen > 0){ frozen --; return; }
	
	if(irandom_range(0, 99) < sleepChance){ return; }
	if(abs(xSpot - pc.xSpot) + abs(ySpot - pc.ySpot) > stepsMax){ return; }
	
	
	var tar = pathing(xSpot, ySpot, pc.xSpot, pc.ySpot, true);
	
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
	instance_destroy();
}
