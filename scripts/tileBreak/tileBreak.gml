function tileBreak(a, b){
	if(!inBounds(a, b)){ return; }
	if(ww.bmap[a, b] == noone){ return; }
	
	var spt = ww.bmap[a, b].sprite_index;
	
	if(spt == imgBlock || spt == imgBlockGrass
				|| spt == imgBlock02 || spt == imgBlockGrass02
				|| spt == imgBlockCactus
					){
		instance_create_depth(a * 64 + 8, b * 64 + 8, ww.layerE, effChip);
		instance_create_depth(a * 64 + 24, b * 64 + 8, ww.layerE, effChip);
		instance_create_depth(a * 64 + 8, b * 64 + 24, ww.layerE, effChip);
		instance_create_depth(a * 64 + 24, b * 64 + 24, ww.layerE, effChip);
	}
	
	if(spt == imgBlock02Skull || spt == imgBlockSkull || spt == imgBlock03Skull ){
		if(ww.mmap[a, b] == noone){
			ww.mmap[a, b] = instance_create_depth(a*64, b*64, ww.layerM, objMobSkellie);
		}
	}
	
	
	
	
	instance_destroy(ww.bmap[a, b]);
	ww.bmap[a, b] = noone;
}