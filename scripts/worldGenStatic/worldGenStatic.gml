function worldGenStatic(t1, t2){
	for(var a=0; a<ww.W; a++){ for(var b=ww.groundLevel+1; b<ww.H; b++){
		bmap[a, b] = choose(true, false) ? t1 : t2;
	}}
}