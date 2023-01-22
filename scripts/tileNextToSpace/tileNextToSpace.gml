function tileNextToSpace(aa, bb){
	for(var i=1; i<5; i++){
		var a = aa; var b = bb;
		if(i == 1){ b --; }
		if(i == 2){ a ++; }
		if(i == 3){ b ++; }
		if(i == 4){ a --; }
		
		if(!inBounds(a, b)){ continue; }
		
		//if(ww.bmap[a, b] == noone && ww.fmap[a, b].playerSeen){ return true; }
		if(ww.bmap[a, b] == noone){ return true; }
	}
	return false;
}