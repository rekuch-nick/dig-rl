function worldGenFinilize(){
	
	
	
	//implement images to tile obects
	for(var a=0; a<W; a++){ for(var b=0; b<H; b++){
		if(fmap[a, b] != noone){
			var til = instance_create_depth(a*64, b*64, layerF, objTile);
			til.sprite_index = fmap[a, b];
			if(b > groundLevel){ til.playerSeen = false; }
			fmap[a, b] = til;
		}
		
		if(tmap[a, b] != noone){
			tmap[a, b] = instance_create_depth(a*64, b*64, layerT, tmap[a, b]);
		}
		
		if(bmap[a, b] != noone){
			var til = instance_create_depth(a*64, b*64, layerB, objBlock);
			til.sprite_index = bmap[a, b];
			bmap[a, b] = til;
			
			
		}
		
	}}

}