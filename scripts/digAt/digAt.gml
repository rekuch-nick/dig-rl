function digAt(a, b, n){
	
	if(!inBounds(a, b)){ return false; }
	if(ww.bmap[a, b] == noone){ return false; }
	if(tileDigCost(a, b) == 0){ return false; }
	
	ww.bmap[a, b].hp -= n;
	
	if(ww.bmap[a, b].hp < 1){
		tileBreak(a, b);
		ww.fmap[a, b].playerSeen = true;
		return true;
	}
	
	return false;
}