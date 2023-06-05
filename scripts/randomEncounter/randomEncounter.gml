function randomEncounter(ignoreLevel){
	
	do {
		var e = choose(	
			{kind: objMob, m1: 1, m2: 2, l: -10},
			{kind: objMobSlime, m1: 1, m2: 3, l: -10},
			{kind: objMobImp, m1: 1, m2: 1, l: -10},
			{kind: objMobSnail, m1: 1, m2: 2, l: -10},
			{kind: objMobFungus, m1: 1, m2: 2, l: -10},
			{kind: objMobOnion, m1: 1, m2: 3, l: -10},
			{kind: objMobGhost, m1: 1, m2: 1, l: -10},
			{kind: objMobGolem, m1: 1, m2: 2, l: -10},
			{kind: objMobSwarmling, m1: 3, m2: 8, l: -10},
			
			{kind: objMobGrub, m1: 1, m2: 2, l: 1},
			{kind: objMobAnt, m1: 3, m2: 4, l: 1},
			{kind: objMobThief, m1: 1, m2: 3, l: 1},
			{kind: objMobWasp, m1: 2, m2: 4, l: 1},
			{kind: objMobGreenKnight, m1: 1, m2: 2, l: 1},
			{kind: objMobSnailAcid, m1: 1, m2: 3, l: 1},
			{kind: objMobFlyTrap, m1: 1, m2: 4, l: 1},
			{kind: objMobHydra, m1: 1, m2: 1, l: 1},
			{kind: objMobMask, m1: 1, m2: 1, l: 1},
			
			{kind: objMobSlipSlime, m1: 1, m2: 1, l: 10},
			{kind: objMobGoblin, m1: 3, m2: 4, l: 10},
			{kind: objMobMecha, m1: 1, m2: 2, l: 10},
			{kind: objMobIceGolem, m1: 1, m2: 1, l: 10},
			{kind: objMobCyclops, m1: 1, m2: 1, l: 10},
			{kind: objMobWitch, m1: 1, m2: 1, l: 10},
			{kind: objMobPhantom, m1: 1, m2: 2, l: 10},
			{kind: objMobCreep, m1: 1, m2: 1, l: 10},
			{kind: objMobCreep2, m1: 1, m2: 1, l: 10},
			{kind: objMobFungusFighter, m1: 1, m2: 1, l: 10},
			{kind: objMobDarkBug, m1: 1, m2: 1, l: 10},
			{kind: objMobBlastTurtle, m1: 1, m2: 2, l: 10},
			
			{kind: objMobMagma, m1: 1, m2: 1, l: 20},
			{kind: objMobFireSkull, m1: 1, m2: 1, l: 20},
			{kind: objMobKnight, m1: 1, m2: 1, l: 20},
			{kind: objMobLurker, m1: 1, m2: 1, l: 20},
			{kind: objMobBufflock, m1: 1, m2: 2, l: 20},
			
	
		);
	} until (e.l <= pc.stage || !is_undefined(ignoreLevel));
	
	
	
	
	return e;
	
	
	
	
	

}