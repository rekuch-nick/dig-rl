function getEmptySpaceAdjacentToPlayer(){
	
	var tries = 0;
	
	while(tries < 20){
		tries ++;
		
		var a = pc.xSpot;
		var b = pc.ySpot;
		
		var r = choose(1, 2, 3, 4);
		if(r == 1){ b --; }
		if(r == 2){ a ++; }
		if(r == 3){ b ++; }
		if(r == 4){ a --; }
		
		if(inBounds(a, b)){
			if(ww.mmap[a, b] == noone){
				if(ww.bmap[a, b] == noone){
					return {a: a, b: b};
				}
			}
		}
	
	}
	
	return noone;
}