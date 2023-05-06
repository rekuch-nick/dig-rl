function worldGenMobsAt(aa, bb){
	
	var i = irandom_range(0, array_length(ww.mobTable) - 1);
	var encounter = ww.mobTable[i];
	var t = encounter.kind;
	//t = objMobSlipSlime; /////
	var n = irandom_range(encounter.m1, encounter.m2);
	putMobCloseTo(t, aa, bb, n);
	
	
	
	return;
	
	/*
	var r = irandom_range(1, 3) + ((pc.stage - 1) % 5);
	
	if(zone == "Grasslands"){
		if(r == 1){ putMobCloseTo(objMobSlime, aa, bb, choose(3, 4)); }
		if(r == 2){ putMobCloseTo(objMob, aa, bb, choose(1, 1, 2)); }
		if(r == 3){ putMobCloseTo(objMobImp, aa, bb, 1); }
		
		if(r == 4){ putMobCloseTo(objMobSnail, aa, bb, choose(1, 2)); }
		if(r == 5){ putMobCloseTo(objMobGrub, aa, bb, choose(1, 1, 2)); }
		if(r == 6){ putMobCloseTo(objMobThief, aa, bb, 1); }
		if(r == 7){ putMobCloseTo(objMobSnailAcid, aa, bb, choose(1, 2)); }
		
	} else if (zone == "Desert"){
		
		if(r == 1){ putMobCloseTo(objMobAnt, aa, bb, choose(3, 4)); }
		if(r == 2){ putMobCloseTo(objMob, aa, bb, choose(2, 3)); }
		if(r == 3){ putMobCloseTo(objMobGrub, aa, bb, choose(1, 2)); }
		
		if(r == 4){ putMobCloseTo(objMobFlyTrap, aa, bb, choose(1, 2, 3, 4)); }
		if(r == 5){ putMobCloseTo(objMobThief, aa, bb, choose(1, 1, 2)); }
		if(r == 6){ putMobCloseTo(objMobIceGolem, aa, bb, 1); }
		if(r == 7){ putMobCloseTo(objMobCyclops, aa, bb, 1); }
		
	} else {
	
		r = irandom_range(0, 3 + pc.stage);
	
	
		if(r <= 2){	putMobCloseTo(objMobSlime, aa, bb, choose(3, 4)); }
		if(r == 3){	putMobCloseTo(objMob, aa, bb, choose(1, 1, 2)); }
		if(r == 4){	putMobCloseTo(objMobImp, aa, bb, 1); }
	
		if(r == 5){	putMobCloseTo(objMobSnail, aa, bb, choose(1, 2)); }
		if(r == 6){	putMobCloseTo(objMobGrub, aa, bb, choose(1, 2)); }
	
		if(r == 7){	putMobCloseTo(objMobAnt, aa, bb, choose(3, 4)); }
	
		if(r == 8){	putMobCloseTo(objMobThief, aa, bb, choose(1, 2)); }
		if(r == 9){	putMobCloseTo(objMobFlyTrap, aa, bb, choose(1, 4)); }
		if(r == 10){	putMobCloseTo(objMobSnailAcid, aa, bb, choose(1, 3)); }
		if(r == 11){	putMobCloseTo(objMobIceGolem, aa, bb, 1); }
		if(r >= 12){	putMobCloseTo(objMobCyclops, aa, bb, 1); }
		if(r == 13){	putMobCloseTo(objMobWitch, aa, bb, 1); }
	}
	*/
}