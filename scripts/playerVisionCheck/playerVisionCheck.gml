function playerVisionCheck(){
	
	var bb = clamp(pc.ySpot - 10, 0, ww.H-1);
	
	for(var a=0; a<ww.W; a++){ for(var b=bb; b<clamp(bb+20, 0, ww.H); b++){
		
		/*
		if(pc.seeAll){ ww.fmap[a, b].playerSeen = true; continue; }
		
		for(var d=1; d<=8; d++){
			var xx = a; var yy = b;
			if(d == 1){ yy --; }
			if(d == 2){ xx ++; }
			if(d == 3){ yy ++; }
			if(d == 4){ xx --; }
			if(d == 5){ xx = a-1; yy = b-1; }
			if(d == 6){ xx = a+1; yy = b-1; }
			if(d == 7){ xx = a+1; yy = b+1; }
			if(d == 8){ xx = a-1; yy = b+1; }
			
			if(inBounds(xx, yy)){
				if(!ww.fmap[a, b].playerSeen){
					if(ww.fmap[xx, yy].playerSeen && ww.bmap[xx, yy] == noone){
						ww.fmap[a, b].playerSeen = true;
					}
				}
			}
			
		}
		*/
		ww.canSee[a, b] = false;
		
		var n = 0;
		if(characterHasProp(pc, "X-Ray")){ n = 1; }
		
		//if(ww.losVision && b <= ww.groundLevel){
		var line = getLine(a, b, pc.xSpot, pc.ySpot);
		if(lineIsBlocked(line) <= n){ 
			ww.canSee[a, b] = true;
			ww.memmap[a, b] = ww.bmap[a, b] == noone ? false : true;
		}
		//}
		
		if(b <= ww.groundLevel){ ww.canSee[a, b] = true; }
		//if(ww.fmap[a, b].playerSeen){
		//	ww.memmap[a, b] = ww.bmap[a, b] == noone ? false : true;
		//}
	}}
	
	
	
	
	
	
	
}