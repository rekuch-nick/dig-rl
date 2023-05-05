function tileDigCost(a, b){
	
	if(!inBounds(a, b)){ return 0; }
	if(ww.bmap[a, b] == noone){ return 0; }
	
	var t = ww.bmap[a, b].sprite_index;
	
	if(t == imgBlock){ return 1; }
	if(t == imgBlockPetMob){ return 1; }
	if(t == imgBlockGrass){ return 1; }
	if(t == imgBlockSkull){ return 1; }
	if(t == imgBlockMobStatue){ return 1; }
	if(t == imgBlockRock){ return 10; }
	
	if(t == imgBlock02){ return 1; }
	if(t == imgBlockGrass02){ return 1; }
	if(t == imgBlock02Skull){ return 1; }
	if(t == imgBlockRock02){ return 10; }
	
	if(t == imgBlock03){ return 1; }
	if(t == imgBlockGrass03){ return 1; }
	if(t == imgBlock03Skull){ return 1; }
	if(t == imgBlockRock03){ return 10; }
	
	return 0;
}