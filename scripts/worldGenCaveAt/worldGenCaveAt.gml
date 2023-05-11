function worldGenCaveAt(aa, bb){
	
	
	bmap[aa, bb] = noone;
	
	aMin = aa - 2; aMax = aa + 2;
	bMin = bb - 2; bMax = bb + 2;
	
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
	
	
	
	
	worldGenFeatureAt(aa, bb);
	
	
	worldGenMobsAt(aa, bb);
	
	if(choose(true, false, false) || (pc.stage == 1) ){
		worldGenItemAt(aa, bb);
		//var t = randomItem(-1);
		//putPupCloseTo(t, aa, bb)
	}
	
	
	
	
	
	
	
	
}