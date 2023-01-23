function lineIsBlocked(line){
	
	for(var i=0; i<array_length(line)-1; i++){
		if(i == 0){ continue; }
		
		var a = line[i].a;
		var b = line[i].b;
		
		if(!inBounds(a, b)){ return true; }
		
		if(ww.bmap[a, b] != noone){ return true; }
	}
	
	return false;

}