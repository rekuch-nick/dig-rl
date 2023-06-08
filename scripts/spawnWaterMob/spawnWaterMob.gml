function spawnWaterMob(aa, bb){
	
	if(choose(true, false)){ return; }
	if(pc.fly > 0){ return; }
	
	var tries = 0;
	while(tries < 20){
		tries ++;	
		
		var a = aa + irandom_range(-1, 1);
		var b = bb + irandom_range(-1, 1);
		
		if(a == aa && b == b){ continue; }
		if(!inBounds(a, b)){ continue; }
		if(ww.fmap[a, b].sprite_index != imgWater){ continue; }
		
		if(ww.mmap[a, b] == noone && ww.bmap[a, b] == noone){
			ww.mmap[a, b] = instance_create_depth(a * 64, b * 64, ww.layerM, objMobJelly);
			var mn = ww.mmap[a, b].nam;
			logMessage("A " + mn + " swims to the surface");
			break;
		}
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}