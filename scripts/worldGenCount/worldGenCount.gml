function worldGenCount(t){
	var n = 0;
	
	for(var a=0; a<ww.W; a++){ for(var b=0; b<ww.H; b++){
		if(fmap[a, b] == t){ n ++; }
		if(bmap[a, b] == t){ n ++; }
	}}
	return n;
}