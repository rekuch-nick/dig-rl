function worldGenCaveAt(aa, bb){
	
	
	bmap[aa, bb] = noone;
	
	for(var trails = 0; trails < 10; trails ++){
		var a = aa; var b = bb;
				
		for(steps = 0; steps < 6; steps ++){
			var r = irandom_range(1, 4);
			if(r == 1){ a --; }
			if(r == 2){ a ++; }
			if(r == 3){ b --; }
			if(r == 4){ b ++; }
			
			if(inBounds(a, b)){
				bmap[a, b] = noone;
			}
		}
	}
	
	worldGenMobsAt(aa, bb);
	
	
	if(choose(true, false)){
		var t = randomItem(-1);
		putPupCloseTo(t, aa, bb)
	}
	
}