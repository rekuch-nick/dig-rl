function worldGenSky(){
	
	
	for(var a=0; a<ww.W; a++){ for(var b=0; b<ww.H; b++){
		var t = imgBGSky;
		if(b == ww.groundLevel){ t = imgBGDirtTop; }
		if(b > ww.groundLevel){ continue; }
		
		ww.fmap[a, b] = t;
	}}
	
	for(var a=0; a<W; a++){ for(var b=0; b<ww.groundLevel - 1; b++){
		ww.bmap[a, b] = imgBGSkyBlock;
	}}
	
	for(var a=0; a<W; a++){
		ww.bmap[a, ww.groundLevel - 1] = noone;
	}
	
	for(var a=0; a<ww.W; a++){ for(var b=ww.groundLevel; b<ww.H; b++){
		if(b == ww.groundLevel){ ww.bmap[a, b] = imgBlockGrass; }
	}}
	
	
	

}