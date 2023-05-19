function worldGenReplaceRandomFloor(t1, t2, n){
	var tries = 0;
	while(tries < 10000 && n > 0){
		tries ++;
		
		var a = irandom_range(0, W-1);
		var b = irandom_range(groundLevel, H-1);
		
		if(fmap[a, b] == t1){
			fmap[a, b] = t2;
			n --;
		}
	}
}