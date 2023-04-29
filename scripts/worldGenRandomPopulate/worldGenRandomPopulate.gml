function worldGenRandomPopulate(){
	
	var tries = 0;
	n = 36;
	
	while(tries < 1000 && n > 0){
		tries ++;
		
		var a = irandom_range(2, W-3);
		var b = irandom_range(groundLevel + 2, H-3);
		
		if(ww.mmap[a, b] == noone && ww.bmap[a, b] == noone){
			worldGenMobsAt(a, b);
			if(choose(true, false)){
				//putPupCloseTo(randomItem(-1), a, b);
				worldGenItemAt(a, b);
			}
			n --;
		}
		
		
	}
	

}