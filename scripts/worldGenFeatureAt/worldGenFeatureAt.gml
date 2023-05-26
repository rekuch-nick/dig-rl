function worldGenFeatureAt(aa, bb){
	
	aMin = aa - 2; aMax = aa + 2;
	bMin = bb - 2; bMax = bb + 2;
	
	
	
	
	var fet = choose(
		{t: "trap", c: 40},
		{t: "web", c: 20},
		{t: "grass", c: 25},
		{t: "cauldren", c: 5},
		{t: "pool", c: 25},
		{t: "walled pot", c: 20},
		{t: "graves", c: 20},
		{t: "item guard", c: 10},
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
		if(kind == "rooms"){
			bmap[aMin, bMin] = noone; 
			bmap[aMin, bMax] = noone; 
			bmap[aMax, bMin] = noone; 
			bmap[aMax, bMax] = noone;
		}
	} else if(fet.t == "stats" && r < fet.c){
		var i = choose(0, 1);
		for(var a=aMin+i; a<=aMax; a+=2){ for(var b=bMin+i; b<=bMax; b+=2){ if(inBounds(a, b)){
			if(irandom_range(0, 99) < 70){
				bmap[a, b] = imgBlockMobStatue;
			}
			
		}}}
	} else if(fet.t == "graves" && r < fet.c){
		var i = choose(0, 1);
		for(var a=aMin+i; a<=aMax; a+=2){ for(var b=bMin+i; b<=bMax; b+=2){ if(inBounds(a, b)){
			if(irandom_range(0, 99) < 80){
				fmap[a, b] = imgBGDirtGrave;
				bmap[a, b] = noone;
			}
			
		}}}
	} else if(fet.t == "item guard" && r < fet.c){
		bmap[aa-1, bb-1] = imgBlockMobStatue2;
		bmap[aa-1, bb+1] = imgBlockMobStatue2;
		bmap[aa+1, bb-1] = imgBlockMobStatue2;
		bmap[aa+1, bb+1] = imgBlockMobStatue2;
		
		bmap[aa, bb] = noone;
		var t = getItem(randomWeaponType());
		var b = clamp(floor(pc.stage + 2 / 5), 2, 6);
		t = itemEnchant(t, b, true);
		itemEnchantWepProp(t, -1);
		putPupObjectAt(t, aa, bb);
	}

}