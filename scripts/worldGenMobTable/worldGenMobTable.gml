function worldGenMobTable(l){
	
	var ll = l;
	while(ll > 5){ ll -= 5; }
	
	//ww.mobTable = [ {kind: objMobOnion, m1: 1, m2: 1} ]; return; ///////
	
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
			{kind: objMobGolem, m1: 1, m2: 1},
		);
	}
	if(l == 3){
		ww.mobTable[array_length(ww.mobTable)] = choose(
			{kind: objMobGrub, m1: 1, m2: 1},
			{kind: objMobThief, m1: 1, m2: 1},
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
			{kind: objMob, m1: 1, m2: 2},
			{kind: objMobGrub, m1: 1, m2: 1}
		];
	}
	
	
	
	
	
	return;
	
	
	
	if(l >= 1 && l <= 5){ // grasslands
		if(ll == 1){
			ww.mobTable = [
				{kind: objMobSlime, m1: 1, m2: 3},
				{kind: objMob, m1: 1, m2: 2},
				{kind: objMobImp, m1: 1, m2: 1}
			];
		}
		
		
		if(ll > 1){
			ww.mobTable[array_length(ww.mobTable)] = choose(
				{kind: objMobOnion, m1: 1, m2: 1},
				{kind: objMobSnail, m1: 1, m2: 1},
				{kind: objMobGolem, m1: 1, m2: 1},
				{kind: objMobFungus, m1: 1, m2: 1},
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
		if(ll == 1){
			ww.mobTable = [
				{kind: objMobAnt, m1: 3, m2: 4},
				{kind: objMob, m1: 1, m2: 3},
				{kind: objMobGrub, m1: 1, m2: 1}
			];
		}
		
		if(ll > 1){
			ww.mobTable[array_length(ww.mobTable)] = choose(
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
		if(ll == 1){
			ww.mobTable = [
				{kind: objMobSlime, m1: 3, m2: 4},
				{kind: objMob, m1: 1, m2: 3},
				{kind: objMobImp, m1: 1, m2: 1}
			];
		}
		
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
		
		{kind: objMobFungus, m1: 1, m2: 2},
		{kind: objMobOnion, m1: 1, m2: 3},
		{kind: objMobWasp, m1: 2, m2: 4},
		{kind: objMobGreenKnight, m1: 1, m2: 2},
		
		{kind: objMobGhost, m1: 1, m2: 1},
		{kind: objMobGolem, m1: 1, m2: 2},
		{kind: objMobHydra, m1: 1, m2: 1},
		{kind: objMobPhantom, m1: 1, m2: 2},
		{kind: objMobMask, m1: 1, m2: 1},
	];
	
	
	
	
	
	
}