function worldGenTrapPatch(t, r, chance, n){
	var tries = 0;
	while(tries < 10000){
		tries ++;
		var aa = irandom_range(0, ww.W);
		var bb = irandom_range(0, ww.H);
		
		
		
		var ok = false;
		for(var a=aa-r; a<=aa+r; a++){
			for(var b=bb-r; b<=bb+r; b++){
				if(inBounds(a, b)){
					if(ww.fmap[a, b] == imgBGDirt && ww.bmap[a, b] == noone){
						if(irandom_range(0, 99) < chance){
							ww.tmap[a, b] = t;
							ok = true;
							
						}
					}
				}
			}
		}
		if(ok){
			n --; if(n < 1){ return; }
		}
		
	}
}