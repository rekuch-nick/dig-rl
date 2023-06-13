function tileDigCost(a, b){
	
	if(!inBounds(a, b)){ return 0; }
	if(ww.bmap[a, b] == noone){ return 0; }
	
	var t = ww.bmap[a, b].sprite_index;
	
	if(t == imgBlock){ return 1; }
	if(t == imgBlockBlast){ return 1; }
	if(t == imgBlockPhaseBlue){ return 1; }
	if(t == imgBlockPhasePink){ return 1; }
	if(t == imgBlockPetMob){ return 1; }
	if(t == imgBlockGrass){ return 1; }
	if(t == imgBlockSkull){ return 1; }
	if(t == imgBlockMobStatue){ return 1; }
	if(t == imgBlockMobStatueBlood01){ return 10; }
	if(t == imgBlockMobStatueBlood02){ return 10; }
	if(t == imgBlockMobStatueBlood03){ return 10; }
	if(t == imgBlockMobStatueBlood04){ return 10; }
	if(t == imgBlockMobStatueGold){ return 10; }
	if(t == imgBlockRock){ return 10; }
	if(t == imgBlockMagnet){ return 10; }
	if(t == imgBlockMobStatue2){ return 20; }
	if(t == imgBlockPush){ return 10; }
	if(t == imgBlockTurret){ return 20; }
	if(t == imgBlockPushLight){ return 10; }
	
	if(t == imgBlockCactus){ return 1; }
	
	return 0;
}