function worldGenRiver(t, yStart, width, bend){
	
	if(t == -1){ t = choose(imgWater, imgWaterAcid, imgWaterLava); }
	if(yStart == -1){ yStart = floor(H / 2); }
	if(width == -1){ width = irandom_range(2, 4); }
	if(bend == -1){ bend = 30; }
	
	
	for(var a=0; a<W; a++){
		
		
		for(var b=yStart; b<yStart+width; b++){
			if(inBounds(a, b)){
				if(tmap[a, b] == noone && pmap[a, b] == noone){
					fmap[a, b] = t;
					if(bmap[a, b] != noone){ bmap[a, b] = noone; }
				}
			}
		}
		
		if(irandom_range(0, 99) < bend){
			yStart += choose(-1, 1);
		}
		
	}
	
}