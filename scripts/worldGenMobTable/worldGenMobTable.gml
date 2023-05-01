function worldGenMobTable(l){
	
	var ll = l;
	while(ll > 5){ ll -= 5; }
	
	//ww.mobTable = [ {kind: objMobFungus, m1: 1, m2: 1} ]; return; ///////
	
	if(l >= 1 && l <= 5){ // grasslands
		ww.mobTable = [
			{kind: objMobSlime, m1: 1, m2: 3},
			{kind: objMob, m1: 1, m2: 2},
			{kind: objMobImp, m1: 1, m2: 1}
		];
		
		
		if(ll > 1){
			ww.mobTable[array_length(ww.mobTable)] = choose(
				{kind: objMobGrub, m1: 1, m2: 1},
				{kind: objMobSnail, m1: 1, m2: 1},
				{kind: objMobThief, m1: 1, m2: 1},
				{kind: objMobGolem, m1: 1, m2: 1},
			);
		}
		if(ll > 3){
			ww.mobTable[array_length(ww.mobTable)] = choose(
				{kind: objMobGrub, m1: 1, m2: 1},
				{kind: objMobThief, m1: 1, m2: 1},
				{kind: objMobSnailAcid, m1: 1, m2: 1},
				{kind: objMobHydra, m1: 1, m2: 1},
			);
		}
		
		return;
	}
	
	
	
	if(l >= 6 && l <= 10){ // desert
		ww.mobTable = [
			{kind: objMobAnt, m1: 3, m2: 4},
			{kind: objMob, m1: 1, m2: 3},
			{kind: objMobGrub, m1: 1, m2: 1}
		];
		
		if(ll > 1){
			ww.mobTable[array_length(ww.mobTable)] = choose(
				{kind: objMobGrub, m1: 1, m2: 1},
				{kind: objMobSnail, m1: 1, m2: 1},
				{kind: objMobThief, m1: 1, m2: 1},
				{kind: objMobGhost, m1: 1, m2: 1},
			);
		}
		if(ll > 3){
			ww.mobTable[array_length(ww.mobTable)] = choose(
				{kind: objMobFlyTrap, m1: 1, m2: 4},
				{kind: objMobThief, m1: 1, m2: 2},
				{kind: objMobIceGolem, m1: 1, m2: 1},
				{kind: objMobMask, m1: 1, m2: 1},
			);
		}
		
		return;
	}
	
	
	
	if(l >= 11 && l <= 15){ // coral
		ww.mobTable = [
			{kind: objMobSlime, m1: 3, m2: 4},
			{kind: objMob, m1: 1, m2: 3},
			{kind: objMobImp, m1: 1, m2: 1}
		];
		
		if(ll > 1){
			ww.mobTable[array_length(ww.mobTable)] = choose(
				{kind: objMobGrub, m1: 1, m2: 2},
				{kind: objMobThief, m1: 1, m2: 3},
				{kind: objMobFlyTrap, m1: 1, m2: 4}
			);
		}
		if(ll > 3){
			ww.mobTable[array_length(ww.mobTable)] = choose(
				{kind: objMobSnailAcid, m1: 1, m2: 3},
				{kind: objMobIceGolem, m1: 1, m2: 1},
				{kind: objMobCyclops, m1: 1, m2: 1}
			);
		}
		
		return;
	}
	
	
	
	
	
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
		
		{kind: objMobGhost, m1: 1, m2: 1},
		{kind: objMobGolem, m1: 1, m2: 2},
		{kind: objMobHydra, m1: 1, m2: 1},
		{kind: objMobPhantom, m1: 1, m2: 2},
		{kind: objMobMask, m1: 1, m2: 1},
	];
	
	
	
	
	
	
}