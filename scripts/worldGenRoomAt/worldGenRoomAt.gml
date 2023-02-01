function worldGenRoomAt(aa, bb){
	
	//bmap[aa, bb] = noone;
	
	aMin = aa - 2; aMax = aa + 2;
	bMin = bb - 2; bMax = bb + 2;
	
	var skipCorners = choose(true, false, false, false);
	var midPil = choose(true, false, false, false);
	var midPlus = choose(true, false, false, false, false, false);
	if(midPlus){ midPil = choose(true, false); }
	
	for(var a=aMin; a<=aMax; a++){ for(var b=bMin; b<=bMax; b++){
		if(skipCorners && abs(a - aa) + abs(b - bb) >= 4){ continue; }
		if(midPil && abs(a - aa) + abs(b - bb) == 0){ continue; }
		if(midPlus && abs(a - aa) + abs(b - bb) == 1){ continue; }
		
		bmap[a, b] = noone;
	}}
	
	
	
	
	
	worldGenMobsAt(aa, bb);
	
	
	if(choose(true, false, false)){
		var t = randomItem(-1);
		putPupCloseTo(t, aa, bb)
	}
	
	
}