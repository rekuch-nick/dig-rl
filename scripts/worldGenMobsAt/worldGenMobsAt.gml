function worldGenMobsAt(aa, bb){
	
	var r = irandom_range(0, 5) + pc.stage;
	
	if(r <= 3){	putMobCloseTo(objMobSlime, aa, bb, choose(3, 4)); }
	if(r == 4){	putMobCloseTo(objMob, aa, bb, choose(1, 1, 2)); }
	if(r == 5){	putMobCloseTo(objMobImp, aa, bb, 1); }
	
	
	
	if(r == 6){	putMobCloseTo(objMobSnail, aa, bb, choose(1, 2)); }
	if(r == 7){	putMobCloseTo(objMobThief, aa, bb, choose(1, 2)); }
	if(r == 8){	putMobCloseTo(objMobFlyTrap, aa, bb, choose(1, 4)); }
	if(r == 9){	putMobCloseTo(objMobIceGolem, aa, bb, 1); }
	if(r >= 10){	putMobCloseTo(objMobCyclops, aa, bb, 1); }

}