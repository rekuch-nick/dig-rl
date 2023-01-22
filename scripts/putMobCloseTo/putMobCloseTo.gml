function putMobCloseTo(t, aa, bb, n){
	
	var tries = 0;
	while(tries < 1000 && n > 0){
		tries ++;
		
		var a = aa + irandom_range(-1, 1) + irandom_range(-1, 1);
		var b = bb + irandom_range(-1, 1) + irandom_range(-1, 1);
	
		if(!inBounds(a, b)){ continue; }
		if(ww.bmap[a, b] != noone){ continue; }
		if(ww.mmap[a, b] != noone){ continue; }
		
		mmap[a, b] = instance_create_depth(a * 64, b * 64, ww.layerM, t);
		n --;
	}
}