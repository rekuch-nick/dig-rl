function lineIsBlocked(line){
	
	var blocks = 0;
	
	for(var i=0; i<array_length(line)-1; i++){
		if(i == 0){ continue; }
		
		var a = line[i].a;
		var b = line[i].b;
		
		if(!inBounds(a, b)){ blocks += 1; continue; }
		
		if(ww.bmap[a, b] != noone){ 
			if(ww.bmap[a, b].sprite_index != imgBlockPush){
				blocks ++; 
			}
		}
	}
	
	return blocks;

}