function worldGenReplaceAllBlocksWithBoth(t1, t2, f){
	
	for(var a=0; a<ww.W; a++){ for(var b=0; b<ww.H; b++){
		if(bmap[a, b] == t1){
			bmap[a, b] = t2;
			fmap[a, b] = f;
		}
	}}

}