function tileBreak(a, b){
	if(!inBounds(a, b)){ return; }
	if(ww.bmap[a, b] == noone){ return; }
	
	var spt = ww.bmap[a, b].sprite_index;
	
	if(spt == imgBlock || spt == imgBlockGrass){
		instance_create_depth(a * 64 + 8, b * 64 + 8, ww.layerE, effChip);
		instance_create_depth(a * 64 + 24, b * 64 + 8, ww.layerE, effChip);
		instance_create_depth(a * 64 + 8, b * 64 + 24, ww.layerE, effChip);
		instance_create_depth(a * 64 + 24, b * 64 + 24, ww.layerE, effChip);
	}
	
	instance_destroy(ww.bmap[a, b]);
	ww.bmap[a, b] = noone;
}