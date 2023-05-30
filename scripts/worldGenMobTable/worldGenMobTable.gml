function worldGenMobTable(l){
	
	var ll = l;
	while(ll > 5){ ll -= 5; }
	
	//l = 33;
	//ww.mobTable = [ {kind: objMobThief, m1: 3, m2: 8} ]; return; ///////
	
	if(l == 1){
		ww.mobTable = [
			{kind: objMobSlime, m1: 1, m2: 3},
			{kind: objMob, m1: 1, m2: 2},
			{kind: objMobImp, m1: 1, m2: 1}
		];
	}
	if(l == 2){
		ww.mobTable[array_length(ww.mobTable)] = choose(
			{kind: objMobSnail, m1: 1, m2: 1},
			{kind: objMobOnion, m1: 1, m2: 1},
			{kind: objMobFungus, m1: 1, m2: 1},
			{kind: objMobGhost, m1: 1, m2: 1},
		);
	}
	if(l == 3){
		ww.mobTable[array_length(ww.mobTable)] = choose(
			{kind: objMobGrub, m1: 1, m2: 1},
			{kind: objMobThief, m1: 1, m2: 1},
			{kind: objMobSwarmling, m1: 3, m2: 8},
		);
	}
	if(l == 4){
		ww.mobTable[array_length(ww.mobTable)] = choose(
			{kind: objMobGreenKnight, m1: 1, m2: 1},
			{kind: objMobIceGolem, m1: 1, m2: 1},
		);
	}
	if(l == 5){
		ww.mobTable[array_length(ww.mobTable)] = choose(
			{kind: objMobSnailAcid, m1: 1, m2: 1},
			{kind: objMobHydra, m1: 1, m2: 1},
		);
	}
	
	if(l == 6){
		ww.mobTable = [
			{kind: objMobAnt, m1: 1, m2: 3},
			{kind: objMobSnail, m1: 1, m2: 2},
			{kind: objMobGrub, m1: 1, m2: 1}
		];
	}
	if(l == 7){
		ww.mobTable[array_length(ww.mobTable)] = choose(
			{kind: objMobMask, m1: 1, m2: 1},
			{kind: objMobWasp, m1: 2, m2: 3},
		);
	}
	if(l == 8){
		ww.mobTable[array_length(ww.mobTable)] = choose(
			{kind: objMobFlyTrap, m1: 1, m2: 2},
			{kind: objMobThief, m1: 1, m2: 2},
		);
	}
	if(l == 9){
		ww.mobTable[array_length(ww.mobTable)] = choose(
			{kind: objMobGreenKnight, m1: 1, m2: 2},
			{kind: objMobHydra, m1: 1, m2: 2},
			//{kind: objMobMagma, m1: 1, m2: 2},
		);
	}
	if(l == 10){
		ww.mobTable[array_length(ww.mobTable)] = choose(
			{kind: objMobAnt2, m1: 1, m2: 2},
			{kind: objMobFireSkull, m1: 1, m2: 1},
		);
	}
	
	if(l == 11){
		ww.mobTable = [
			{kind: objMobGoblin, m1: 1, m2: 4},
			{kind: objMobCyclops, m1: 1, m2: 1},
			{kind: objMobMecha, m1: 1, m2: 1}
		];
	}
	if(l == 12){
		ww.mobTable[array_length(ww.mobTable)] = choose(
			{kind: objMobSlipSlime, m1: 1, m2: 3},
			{kind: objMobFireSkull, m1: 1, m2: 3},
			{kind: objMobFungusFighter, m1: 2, m2: 3},
		);
	}
	if(l == 13){
		ww.mobTable[array_length(ww.mobTable)] = choose(
			{kind: objMobCreep, m1: 1, m2: 1},
			{kind: objMobCreep2, m1: 1, m2: 1},
			{kind: objMobDarkBug, m1: 1, m2: 2},
		);
	}
	if(l == 14){
		ww.mobTable[array_length(ww.mobTable)] = choose(
			{kind: objMobFungusFighter, m1: 1, m2: 1},
			{kind: objMobSnailAcid, m1: 1, m2: 1},
		);
	}
	if(l == 15){
		ww.mobTable[array_length(ww.mobTable)] = choose(
			{kind: objMobPhantom, m1: 1, m2: 2},
			{kind: objMobWitch, m1: 1, m2: 1},
		);
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	if(l >= 16){
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
	
	
	return; /////////////////////////////////////////////////////////////////////////////////////
	
	
	
		
}