function putPupObjectAt(t, a, b){
	
	if(t == noone){ return noone; }
	
	
	if(!inBounds(a, b)){ return noone; }
	if(ww.bmap[a, b] != noone){ ww.bmap[a, b] = noone; }
	if(ww.mmap[a, b] != noone){ return noone; }
	if(ww.pmap[a, b] != noone){ return noone; }
	
	ww.pmap[a, b] = instance_create_depth(a * 64, b * 64, ww.layerP, objPup);
	ww.pmap[a, b].sprite_index = t.img;
	ww.pmap[a, b].itm = t;
	return ww.pmap[a, b];
	
}