function worldGenPosts(t){
	for(var a=0; a<ww.W; a++){ for(var b=ww.groundLevel+1; b<ww.H; b++){
		bmap[a, b] = noone;
	}}
	
	var tries = 10000;
	while(tries > 0){
		tries --;
		
		a = irandom_range(0, W-1);
		b = irandom_range(groundLevel+1, H-1);
		
		var adj = 0;
		for(var aa=a-2; aa<=a+2; aa++){ for(var bb=b-2; bb<=b+2; bb++){
			if(aa == a && bb == b){ continue; }
			if(!inBounds(aa, bb)){ continue; }
				
			if(bmap[aa, bb] != noone){
				adj ++;
			}
		}}
		
		if(adj == 0){
			bmap[a, b] = t;
		}
		
	}
}