function worldGenFeatureAt(aa, bb){
	
	aMin = aa - 2; aMax = aa + 2;
	bMin = bb - 2; bMax = bb + 2;
	
	
	
	
	var fet = choose(
		{t: "trap", c: 10}, {t: "trap", c: 10},
		{t: "web", c: 80}, {t: "web", c: 90},
		{t: "grass", c: 10},
		{t: "cauldren", c: 10}
	);
	var r = irandom_range(0, 99);
	if(fet.t == "trap" && r < fet.c){
		for(var a=aMin; a<=aMax; a++){ for(b=bMin; b<=bMax; b++){ if(inBounds(a, b)){
			if(bmap[a, b] == noone){
				r = irandom_range(0, 99);
				if(r < 25){
					tmap[a, b] = objTrap;
				}
			}
		}}}
	} else if(fet.t == "web" && r < fet.c){
		for(var a=aMin; a<=aMax; a++){ for(b=bMin; b<=bMax; b++){ if(inBounds(a, b)){
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
		for(var a=aMin; a<=aMax; a++){ for(b=bMin; b<=bMax; b++){ if(inBounds(a, b)){
			if(bmap[a, b] == noone && fmap[a, b] == imgBGDirt ){
				r = irandom_range(0, 99);
				if(r < 75){
					fmap[a, b] = imgBGGrass;
				}
			}
		}}}
	}

}