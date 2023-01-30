function worldGenPatches(t1, t2, f1, f2){
	
	worldGenStatic(t1, t2);
	
	for(var i=0; i<4; i++){
		
		for(var a=0; a<ww.W; a++){ for(var b=ww.groundLevel+1; b<ww.H; b++){
			
			var adj1 = 0;
			var adj2 = 0;
			
			for(var aa=a-1; aa<=a+1; aa++){ for(var bb=b-1; bb<=b+1; bb++){
				if(aa == a && bb == b){ continue; }
				if(!inBounds(aa, bb)){ continue; }
				
				if(bmap[aa, bb] == t1){ adj1 ++; }
				if(bmap[aa, bb] == t2){ adj2 ++; }
			}}
			
			if(adj1 > adj2){ bmap[a, b] = t1; }
			if(adj2 > adj1){ bmap[a, b] = t2; }
			
		}}
		
	}
	
	
	
	
	for(var a=0; a<ww.W; a++){ for(var b=ww.groundLevel+1; b<ww.H; b++){
		if(bmap[a, b] == t1 && f1){ bmap[a, b] = noone; fmap[a, b] = t1; }
		if(bmap[a, b] == t2 && f2){ bmap[a, b] = noone; fmap[a, b] = t2; }
	}}
	
}