function worldGenColRooms(){
	
	var aExitLast = 8;
	
	for(var b = groundLevel + 3; b < H; b+= 6){
		for(var a=2; a<W; a+=6){ 
	
			
			worldGenRoomAt(a, b);
			worldGenFeatureAt(a, b);
			
		
		}
		
		
		var aExit = choose(2, 8, 14);
		bmap[aExit, b + 3] = noone;
		
		if(aExit == aExitLast){
			if(choose(true, false) ){ bmap[5, b] = noone; }
			if(choose(true, false) ){ bmap[11, b] = noone; }
		} else if(abs(aExit - aExitLast) > 6){
			bmap[5, b] = noone; bmap[11, b] = noone;
		} else if(aExit > aExitLast){
			bmap[aExitLast + 3, b] = noone;
		} else if(aExit < aExitLast){
			bmap[aExitLast - 3, b] = noone;
		}
		
		if(irandom_range(0, 99) < 30){ bmap[5, b] = noone; }
		if(irandom_range(0, 99) < 30){ bmap[11, b] = noone; }
		if(irandom_range(0, 99) < 40){ 
			do{ a = choose(2, 8, 14); } until (a != aExit);
			bmap[a, b + 3] = noone;
		}
		
		

		
		
		
		aExitLast = aExit;
	}

}