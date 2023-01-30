function worldGenColCaves(){
	
	
	for(var b = groundLevel + 3; b < H; b+= 5){
		skip = [false, false, false, false];
		if(b > 10){
			skip[choose(0, 1, 2, 3)] = true;
		}
		if(!skip[0]){ bmap[2, b] = "cave"; }
		if(!skip[1]){ bmap[8, b] = "cave"; }
		if(!skip[2]){ bmap[14, b] = "cave"; }
	}
	for(var a=0; a<W; a++){ for(var b=0; b<H; b++){
		if(bmap[a, b] == "cave"){
			bmap[a, b] = noone;
			worldGenCaveAt(a, b);
		}
	}}

}