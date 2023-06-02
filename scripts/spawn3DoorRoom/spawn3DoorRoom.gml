function spawn3DoorRoom(aa, bb){
	
	var ain = ww.animalmap[aa, bb-1];
	var i = doorNumber(ain);
	ain = ww.roomMap3Doors[i];
	
	
	
	var a1 = aa - 2;
	var a2 = aa + 2;
	var b1 = bb;
	var b2 = bb + 4;
	
	for(var a=0; a<ww.W; a++){
		if(ww.fmap[a, bb].sprite_index == imgBGDirt3Doors){
			ww.txtmap[a, bb - 1] = "";
			ww.fmap[a, bb].sprite_index = imgBGDirt;
		}
	}
	
	
	for(var a=a1; a<=a2; a++){
		for(var b=b1; b<=b2; b++){
			if(ww.bmap[a, b] != noone){
				instance_destroy(ww.bmap[a, b]);
				ww.bmap[a, b] = noone;
			}
			if(ww.pmap[a, b] != noone){
				instance_destroy(ww.pmap[a, b]);
				ww.pmap[a, b] = noone;
			}
			if(ww.mmap[a, b] != noone && ww.mmap[a, b] != pc){
				instance_destroy(ww.mmap[a, b]);
				ww.mmap[a, b] = noone;
			}
		}
	}
	
	
	
	
	
	if(ain == "Water"){
		for(var a=a1; a<=a2; a++){ for(var b=b1; b<=b2; b++){
			ww.fmap[a, b].sprite_index = imgWater;
		}}
		putMobCloseTo(choose(objMobSnailAcid, objMobZomb), aa, bb+2, irandom_range(1, 3));
	}
	if(ain == "Acid"){
		for(var a=a1; a<=a2; a++){ for(var b=b1; b<=b2; b++){
			ww.fmap[a, b].sprite_index = imgWaterAcid;
		}}
		putMobCloseTo(choose(objMobHydra, objMobGreenKnight), aa, bb+2, irandom_range(1, 3));
	}
	if(ain == "Lava"){
		for(var a=a1; a<=a2; a++){ for(var b=b1; b<=b2; b++){
			ww.fmap[a, b].sprite_index = choose(imgWaterLava, imgWaterLavaRock);
		}}
		putMobCloseTo(choose(objMobMagma, objMobFireSkull), aa, bb+2, irandom_range(1, 3));
	}
	if(ain == "Food"){
		putPupAt("Food", aa, bb + 2);
	}
	if(ain == "Swarm"){
		for(var a=a1; a<=a2; a++){ for(var b=b1; b<=b2; b++){
			if(ww.mmap[a, b] == noone){
				if(choose(true, false, false, false)){ continue; }
				ww.mmap[a, b] = instance_create_depth(a*64, b*64, ww.layerM, objMobSwarmling);
			}
		}}
	}
	if(ain == "Grass"){
		for(var a=a1; a<=a2; a++){ for(var b=b1; b<=b2; b++){
			ww.fmap[a, b].sprite_index = imgBGGrass;
		}}
		putMobCloseTo(choose(objMobGolem, objMobMask), aa, bb+2, irandom_range(2, 4));
	}
	if(ain == "Gear"){
		putPupAt("Gear", aa-1, bb + 1);
		putPupAt("Gear", aa+1, bb + 3);
	}
	if(ain == "Item"){
		for(var a=a1+1; a<a2; a++){ for(var b=b1+1; b<b2; b++){
			if(choose(true, false)){ continue; }
			putPupAt(randomPotionType(), a, b);
		}}
	}
	if(ain == "Fight1"){
		var i = irandom_range(0, array_length(ww.mobTable) - 1);
		var encounter = ww.mobTable[i];
		var t = encounter.kind;
		putMobCloseTo(t, aa, bb+2, 1);
	}
	if(ain == "Fight2"){
		var i = irandom_range(0, array_length(ww.mobTable) - 1);
		var encounter = ww.mobTable[i];
		var t = encounter.kind;
		putMobCloseTo(t, aa, bb+2, 2);
	}
	if(ain == "Fight3"){
		var i = irandom_range(0, array_length(ww.mobTable) - 1);
		var encounter = ww.mobTable[i];
		var t = encounter.kind;
		putMobCloseTo(t, aa, bb+2, 4);
	}
	if(ain == "Fight4"){
		var i = irandom_range(0, array_length(ww.mobTable) - 1);
		var encounter = ww.mobTable[i];
		var t = encounter.kind;
		putMobCloseTo(t, aa, bb+2, 6);
	}
	
	
	
	
	
	
	
	
	
}