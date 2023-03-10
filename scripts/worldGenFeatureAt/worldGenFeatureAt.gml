function worldGenFeatureAt(aa, bb){
	
	aMin = aa - 2; aMax = aa + 2;
	bMin = bb - 2; bMax = bb + 2;
	
	
	
	
	var fet = choose(
		{t: "trap", c: 20}, {t: "trap", c: 20},
		{t: "web", c: 20}, {t: "web", c: 20},
		{t: "grass", c: 20},
		{t: "cauldren", c: 20},
		{t: "pool", c: 20}, {t: "pool", c: 20},
		{t: "walled pot", c: 20}, {t: "walled pot", c: 20}
	);
	var r = irandom_range(0, 99);
	if(fet.t == "trap" && r < fet.c){
		for(var a=aMin; a<=aMax; a++){ for(var b=bMin; b<=bMax; b++){ if(inBounds(a, b)){
			if(bmap[a, b] == noone){
				r = irandom_range(0, 99);
				if(r < 25){
					tmap[a, b] = objTrap;
				}
			}
		}}}
	} else if(fet.t == "web" && r < fet.c){
		for(var a=aMin; a<=aMax; a++){ for(var b=bMin; b<=bMax; b++){ if(inBounds(a, b)){
			if(bmap[a, b] == noone){
				r = irandom_range(0, 99);
				if(r < 75){
					tmap[a, b] = objTrapWeb;
				}
			}
		}}}
	} else if(fet.t == "cauldren" && r < fet.c){
		bmap[aa, bb] = noone;
		fmap[aa, bb] = imgBGCauldren;
	} else if(fet.t == "grass" && r < fet.c){
		for(var a=aMin; a<=aMax; a++){ for(var b=bMin; b<=bMax; b++){ if(inBounds(a, b)){
			if(bmap[a, b] == noone && fmap[a, b] == imgBGDirt ){
				r = irandom_range(0, 99);
				if(r < 75){
					fmap[a, b] = imgBGGrass;
				}
			}
		}}}
	} else if(fet.t == "pool" && r < fet.c){
		for(var a=aMin+1; a<=aMax-1; a++){ for(var b=bMin+1; b<=bMax-1; b++){ if(inBounds(a, b)){
			if(bmap[a, b] == noone && fmap[a, b] == imgBGDirt ){
				r = irandom_range(0, 99);
				if(r < 75 || a == aMin + 2 || b == bMin + 2){
					fmap[a, b] = imgWater;
				}
			}
		}}}
	} else if(fet.t == "walled pot" && r < fet.c){
		for(var a=aMin+1; a<=aMax-1; a++){ for(var b=bMin+1; b<=bMax-1; b++){ if(inBounds(a, b)){
			if(bmap[a, b] == noone && fmap[a, b] == imgBGDirt ){
				if(a == aMin + 2 && b == bMin + 2){
					putPupAt(noone, a, b);
				} else {
					bmap[a, b] = imgBlockRock;
				}
			}
		}}}
	}

}