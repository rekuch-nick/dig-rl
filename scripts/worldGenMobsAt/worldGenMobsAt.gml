function worldGenMobsAt(aa, bb){
	
	var r = irandom_range(0, 3 + pc.stage);
	
	
	
	if(r <= 2){	putMobCloseTo(objMobSlime, aa, bb, choose(3, 4)); }
	if(r == 3){	putMobCloseTo(objMob, aa, bb, choose(1, 1, 2)); }
	if(r == 4){	putMobCloseTo(objMobImp, aa, bb, 1); }
	
	if(r == 5){	putMobCloseTo(objMobSnail, aa, bb, choose(1, 2)); }
	if(r == 6){	putMobCloseTo(objMobGrub, aa, bb, choose(1, 2)); }
	
	if(r == 7){	putMobCloseTo(objMobThief, aa, bb, choose(1, 2)); }
	if(r == 8){	putMobCloseTo(objMobFlyTrap, aa, bb, choose(1, 4)); }
	if(r == 9){	putMobCloseTo(objMobSnailAcid, aa, bb, choose(1, 3)); }
	if(r == 10){	putMobCloseTo(objMobIceGolem, aa, bb, 1); }
	if(r >= 11){	putMobCloseTo(objMobCyclops, aa, bb, 1); }
	if(r == 12){	putMobCloseTo(objMobWitch, aa, bb, 1); }

}