function tileDigCost(a, b){
	
	var t = ww.bmap[a, b].sprite_index;
	
	if(t == imgBlock){ return 1; }
	if(t == imgBlockGrass){ return 1; }
	
	return 0;
}