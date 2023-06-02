function worldGenDoubleMap(){
	
	for(var a=0; a<W/2; a++){
		for(var b=0; b<H/2; b++){
			bbmap[a, b] = bmap[a, b];
		}
	}
	
	
	for(var a=0; a<W/2; a++){
		for(var b=0; b<H/2; b++){
			bmap[a*2+1, b*2] = bbmap[a, b];
			bmap[a*2+2, b*2] = bbmap[a, b];
			bmap[a*2+1, b*2+1] = bbmap[a, b];
			bmap[a*2+2, b*2+1] = bbmap[a, b];
		}
	}
	
	
	for(var b=0; b<H; b++){
		bmap[0, b] = imgBlock;
	}
}