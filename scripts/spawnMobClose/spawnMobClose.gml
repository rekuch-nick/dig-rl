function spawnMobClose(){
	
	var tries = 0;
	
	while(tries < 500){
		tries ++;
		var a = irandom_range(pc.xSpot - 5, pc.xSpot + 5);
		var b = irandom_range(pc.ySpot - 5, pc.ySpot + 5);
		
		while(b < ww.groundLevel - 1){ b ++; }
		
		var dis = point_distance(a, b, pc.xSpot, pc.ySpot);
		
		if(dis < 2){ continue; }
		
		if(inBounds(a, b)){
			if(ww.mmap[a, b] == noone){
				if(ww.bmap[a, b] == noone){
					//if(ww.fmap[a, b].playerSeen){
					
						var t = objMob;
						if(b < ww.groundLevel){ t = objMobSlime; }
						ww.mmap[a, b] = instance_create_depth(a * 64, b * 64, ww.layerM, t);
						
						ww.mmap[a, b].timeSpawn = true;
					
						return ww.mmap[a, b];
					//}
				}
			}
		}
		
	}
	
	return noone;
}