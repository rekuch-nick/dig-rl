function worldGenBiomeSprites(z){
	
	for(var a=0; a<ww.W; a++){ for(var b=0; b<ww.H; b++){
		
		if(z == "Desert"){
			if(bmap[a, b] == imgBlock){ bmap[a, b] = imgBlock02; }
			if(bmap[a, b] == imgBlockRock){ bmap[a, b] = imgBlockRock02; }
			if(bmap[a, b] == imgBlockGrass){ bmap[a, b] = imgBlockGrass02; }
			if(bmap[a, b] == imgBlockSkull){ bmap[a, b] = imgBlock02Skull; }
		}
		
		if(z == "Coral"){
			if(bmap[a, b] == imgBlock){ bmap[a, b] = imgBlock03; }
			if(bmap[a, b] == imgBlockRock){ bmap[a, b] = imgBlockRock03; }
			if(bmap[a, b] == imgBlockGrass){ bmap[a, b] = imgBlockGrass03; }
			if(bmap[a, b] == imgBlockSkull){ bmap[a, b] = imgBlock03Skull; }
		}
		
	}}
	
	
	
}