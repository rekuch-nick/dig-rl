function floorBreakable(a, b){
	
	if(ww.fmap[a, b].sprite_index == imgBGDirt){ return true; }
	if(ww.fmap[a, b].sprite_index == imgBGGrass){ return true; }
	if(ww.fmap[a, b].sprite_index == imgBGFrozen){ return true; }
	if(ww.fmap[a, b].sprite_index == imgBGDirtBlasted){ return true; }
	
	
	return false;
}