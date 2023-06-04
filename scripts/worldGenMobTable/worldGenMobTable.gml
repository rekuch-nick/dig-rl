function worldGenMobTable(l){
	
	ww.mobTable = noone;
	ww.mobTable = [];
	
	
	//ww.mobTable = [{kind: objMobLurker, m1: 1, m2: 3}]; return; //
	var addRand = 2;
	
	if(l == -4){
		mobTableAdd(objMobSlime, 1, 3);
		mobTableAdd(objMob, 1, 2);
		mobTableAdd(objMobImp, 1, 1);
		addRand = 0;
	} else if(l == -3){
		mobTableAdd(objMobSlime, 1, 3); mobTableAdd(objMob, 1, 2); mobTableAdd(objMobImp, 1, 1);
		mobTableAdd(choose(objMobSnail, objMobOnion, objMobFungus), 1, 1);
		addRand = 0;
	} else if(l == -2){
		mobTableAdd(objMobSlime, 1, 3); mobTableAdd(objMob, 1, 2); mobTableAdd(objMobImp, 1, 1);
		mobTableAdd(choose(objMobSnail, objMobOnion, objMobFungus), 1, 1);
		mobTableAdd(objMobSwarmling, 3, 8);
		addRand = 0;
	} else if(l == -1){
		mobTableAdd(objMobSlime, 1, 3); mobTableAdd(objMob, 1, 2); mobTableAdd(objMobImp, 1, 1);
		mobTableAdd(choose(objMobSnail, objMobOnion, objMobFungus), 1, 1);
		mobTableAdd(objMobSwarmling, 3, 8);
		mobTableAdd(choose(objMobGreenKnight, objMobIceGolem), 1, 1);
		addRand = 0;
	} else if(l == 0){
		mobTableAdd(objMobSlime, 1, 3); mobTableAdd(objMob, 1, 2); mobTableAdd(objMobImp, 1, 1);
		mobTableAdd(choose(objMobSnail, objMobOnion, objMobFungus), 1, 1);
		mobTableAdd(objMobSwarmling, 3, 8);
		mobTableAdd(choose(objMobGreenKnight, objMobIceGolem), 1, 1);
		mobTableAdd(choose(en(objMobSnailAcid, 1, 2), en(objMobHydra, 1, 1)));
		addRand = 0;
		
		
	// grasslands
	} else if(l >= 1 && l <= 4){
		mobTableAdd(objMobAnt, 1, 3); mobTableAdd(objMobEye, 1, 2); mobTableAdd(objMobGrub, 1, 1);
		if(l == 1){ addRand = 0; }
		if(l == 2){ addRand = 1; }
	} else if(l == 5){
		mobTableAdd(objMobAnt2, 1, 3); mobTableAdd(objMobEye, 1, 2); mobTableAdd(objMobGrub, 1, 1);		
		
	} else if(l == 7){
		mobTableAdd(objMobWasp, 1, 4); mobTableAdd(objMobGhost, 1, 2); mobTableAdd(objMobGolem, 1, 1);
		mobTableAdd(objMobFireSkull, 1, 3);	
		addRand = 0;
	} else if(l >= 6 && l <= 9){
		mobTableAdd(objMobWasp, 1, 4); mobTableAdd(objMobGhost, 1, 2); mobTableAdd(objMobGolem, 1, 1);
		if(l == 6){ addRand = 0; }		
	
	// desert
	} else if(l >= 11 && l <= 15){
		mobTableAdd(objMobGoblin, 1, 4); mobTableAdd(objMobCyclops, 1, 1); mobTableAdd(objMobMecha, 1, 1);
		if(l == 11){ addRand = 0; }
		if(l == 12){ addRand = 1; }	
	} else if(l == 19){
		mobTableAdd(objMobHydra, 1, 1); mobTableAdd(objMobWasp, 1, 3); mobTableAdd(objMobGreenKnight, 1, 1); 
		mobTableAdd(objMobLurker, 1, 1);
		addRand = 0;
	} else if(l >= 16 && l <= 19){
		mobTableAdd(objMobBufflock, 1, 2); mobTableAdd(objMobCyclops, 1, 1);
	
	// wetlands
	} else if(l >= 21 && l <= 25) {
		mobTableAdd(objMobIceGolem, 1, 2); mobTableAdd(objMobWitch, 1, 1);
		if(l == 21){ addRand = 1; }
	} else if(l == 27){
		mobTableAdd(objMobDarkBug, 1, 1);
		addRand = 0;
		
		
	// firelands
	} else if (l >= 31 && l <= 39){
		mobTableAdd(objMobFireSkull, 1, 2); mobTableAdd(objMobMagma, 1, 2); mobTableAdd(objMobNightMare, 1, 2);
		
	} else {
		addRand = 5;
		
	}
	repeat(addRand){ mobTableAdd(randomEncounter()); }
	
	//show_debug_message(ww.mobTable);
}