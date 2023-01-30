function tileDigCost(a, b){
	
	var t = ww.bmap[a, b].sprite_index;
	
	if(t == imgBlock){ return 1; }
	if(t == imgBlockGrass){ return 1; }
	if(t == imgBlockRock){ return 10; }
	
	if(t == imgBlock02){ return 1; }
	if(t == imgBlockGrass02){ return 1; }
	if(t == imgBlockRock02){ return 10; }
	
	return 0;
}