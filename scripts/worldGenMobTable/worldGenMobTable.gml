function worldGenMobTable(l){
	
	ww.mobTable = [];
	
	
	
	
	
	if(l == -4){
		mobTableAdd(objMobSlime, 1, 3);
		mobTableAdd(objMob, 1, 2);
		mobTableAdd(objMobImp, 1, 1);
	} else if(l == -3){
		mobTableAdd(objMobSlime, 1, 3); mobTableAdd(objMob, 1, 2); mobTableAdd(objMobImp, 1, 1);
		mobTableAdd(choose(objMobSnail, objMobOnion, objMobFungus), 1, 1);
	} else if(l == -2){
		mobTableAdd(objMobSlime, 1, 3); mobTableAdd(objMob, 1, 2); mobTableAdd(objMobImp, 1, 1);
		mobTableAdd(choose(objMobSnail, objMobOnion, objMobFungus), 1, 1);
		mobTableAdd(objMobSwarmling, 3, 8);
	} else if(l == -1){
		mobTableAdd(objMobSlime, 1, 3); mobTableAdd(objMob, 1, 2); mobTableAdd(objMobImp, 1, 1);
		mobTableAdd(choose(objMobSnail, objMobOnion, objMobFungus), 1, 1);
		mobTableAdd(objMobSwarmling, 3, 8);
		mobTableAdd(choose(objMobGreenKnight, objMobIceGolem), 1, 1);
	} else if(l == 0){
		mobTableAdd(objMobSlime, 1, 3); mobTableAdd(objMob, 1, 2); mobTableAdd(objMobImp, 1, 1);
		mobTableAdd(choose(objMobSnail, objMobOnion, objMobFungus), 1, 1);
		mobTableAdd(objMobSwarmling, 3, 8);
		mobTableAdd(choose(objMobGreenKnight, objMobIceGolem), 1, 1);
		choose(mobTableAdd(objMobSnailAcid, 1, 2), mobTableAdd(objMobHydra, 1, 1));
		
		
		
	} else if(l == 1){
		mobTableAdd(objMobAnt, 1, 3); mobTableAdd(objMobEye, 1, 2); mobTableAdd(objMobGrub, 1, 1);		
	} else if(l == 2){
		mobTableAdd(objMobAnt, 1, 3); mobTableAdd(objMobEye, 1, 2); mobTableAdd(objMobGrub, 1, 1);		
		choose(mobTableAdd(objMobMask, 1, 1), mobTableAdd(objMobWasp, 2, 3));
	} else if(l == 3){
		mobTableAdd(objMobAnt, 1, 3); mobTableAdd(objMobEye, 1, 2); mobTableAdd(objMobGrub, 1, 1);		
		choose(mobTableAdd(objMobMask, 1, 1), mobTableAdd(objMobWasp, 2, 3));
		mobTableAdd(choose(objMobFlyTrap, objMobThief), 1, 2);
	} else if(l == 4){
		mobTableAdd(objMobAnt, 1, 3); mobTableAdd(objMobEye, 1, 2); mobTableAdd(objMobGrub, 1, 1);		
		choose(mobTableAdd(objMobMask, 1, 1), mobTableAdd(objMobWasp, 2, 3));
		mobTableAdd(choose(objMobFlyTrap, objMobThief), 1, 2);
		mobTableAdd(choose(objMobGreenKnight, objMobHydra), 1, 2);
	} else if(l == 5){
		mobTableAdd(objMobAnt, 1, 3); mobTableAdd(objMobEye, 1, 2); mobTableAdd(objMobGrub, 1, 1);		
		choose(mobTableAdd(objMobMask, 1, 1), mobTableAdd(objMobWasp, 2, 3));
		mobTableAdd(choose(objMobFlyTrap, objMobThief), 1, 2);
		mobTableAdd(choose(objMobGreenKnight, objMobHydra), 1, 2);
		mobTableAdd(objMobAnt2, 1, 3);
	} else if(l == 6){
		mobTableAdd(objMobGoblin, 1, 4); mobTableAdd(objMobCyclops, 1, 1); mobTableAdd(objMobMecha, 1, 1);
	} else if(l == 7){
		mobTableAdd(objMobGoblin, 1, 4); mobTableAdd(objMobCyclops, 1, 1); mobTableAdd(objMobMecha, 1, 1);
		mobTableAdd(objMobFireSkull, 1, 3);
	} else if(l == 8){
		mobTableAdd(objMobGoblin, 1, 4); mobTableAdd(objMobCyclops, 1, 1); mobTableAdd(objMobMecha, 1, 1);
		mobTableAdd(choose(objMobSlipSlime, objMobFireSkull, objMobFungusFighter), 1, 3);
		choose(mobTableAdd(objMobCreep, 1, 1), mobTableAdd(objMobCreep2, 1, 1), mobTableAdd(objMobDarkBug, 1, 2));
	} else if(l == 9){
		mobTableAdd(objMobGoblin, 1, 4); mobTableAdd(objMobCyclops, 1, 1); mobTableAdd(objMobMecha, 1, 1);
		mobTableAdd(choose(objMobSlipSlime, objMobFireSkull, objMobFungusFighter), 1, 3);
		choose(mobTableAdd(objMobCreep, 1, 1), mobTableAdd(objMobCreep2, 1, 1), mobTableAdd(objMobDarkBug, 1, 2));
		choose(mobTableAdd(objMobSnailAcid, 1, 3), mobTableAdd(objMobKnight, 1, 1));
	
	
	
	
	
	
	} else {
		
		
		ww.mobTable = [
			{kind: objMobSlime, m1: 1, m2: 3},
			{kind: objMob, m1: 1, m2: 2},
			{kind: objMobImp, m1: 1, m2: 1},
			{kind: objMobSnail, m1: 1, m2: 2},
			{kind: objMobGrub, m1: 1, m2: 2},
			{kind: objMobAnt, m1: 3, m2: 4},
			{kind: objMobThief, m1: 1, m2: 3},
			{kind: objMobFlyTrap, m1: 1, m2: 4},
			{kind: objMobSnailAcid, m1: 1, m2: 3},
			{kind: objMobIceGolem, m1: 1, m2: 1},
			{kind: objMobCyclops, m1: 1, m2: 1},
			{kind: objMobWitch, m1: 1, m2: 1},
		
			{kind: objMobFungus, m1: 1, m2: 2},
			{kind: objMobOnion, m1: 1, m2: 3},
			{kind: objMobWasp, m1: 2, m2: 4},
			{kind: objMobGreenKnight, m1: 1, m2: 2},
		
			{kind: objMobGhost, m1: 1, m2: 1},
			{kind: objMobGolem, m1: 1, m2: 2},
			{kind: objMobHydra, m1: 1, m2: 1},
			{kind: objMobPhantom, m1: 1, m2: 2},
			{kind: objMobMask, m1: 1, m2: 1},
		
			{kind: objMobMagma, m1: 1, m2: 1},
			{kind: objMobCreep, m1: 1, m2: 1},
			{kind: objMobCreep2, m1: 1, m2: 1},
			{kind: objMobFungusFighter, m1: 1, m2: 1},
			{kind: objMobSlipSlime, m1: 1, m2: 1},
			{kind: objMobMecha, m1: 1, m2: 2},
			{kind: objMobGoblin, m1: 3, m2: 4},
			{kind: objMobFireSkull, m1: 1, m2: 1},
			{kind: objMobDarkBug, m1: 1, m2: 1},
			{kind: objMobKnight, m1: 1, m2: 1},
			{kind: objMobSwarmling, m1: 3, m2: 8},
		];
	
		var tt = [];
		for(var i=0; i<5; i++){
			var n = irandom_range(0, array_length(ww.mobTable) - 1);
			
			tt[i] = mobTable[n];
		}
		
		
		mobTable = [];
		for(var i=0; i<5; i++){ mobTable[i] = tt[i]; }
		
		
		
	}
	
	
		
}