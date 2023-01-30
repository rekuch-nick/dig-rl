function worldGenBiomeSprites(z){
	
	for(var a=0; a<ww.W; a++){ for(var b=0; b<ww.H; b++){
		
		if(z == "Desert"){
			if(bmap[a, b] == imgBlock){ bmap[a, b] = imgBlock02; }
			if(bmap[a, b] == imgBlockGrass){ bmap[a, b] = imgBlockGrass02; }
		}
		
	}}
	
	
	
}