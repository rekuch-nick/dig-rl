function putPupCloseTo(t, aa, bb){
	
	t = getItem(t);
	
	//enchant, color change
	
	var tries = 0;
	while(tries < 1000){
		tries ++;
		
		var a = aa + irandom_range(-1, 1) + irandom_range(-1, 1);
		var b = bb + irandom_range(-1, 1) + irandom_range(-1, 1);
	
		if(!inBounds(a, b)){ continue; }
		if(ww.bmap[a, b] != noone){ continue; }
		if(ww.mmap[a, b] != noone){ continue; }
		if(ww.pmap[a, b] != noone){ continue; }
		
		pmap[a, b] = instance_create_depth(a * 64, b * 64, ww.layerP, objPup);
		pmap[a, b].sprite_index = t.img;
		pmap[a, b].itm = t;
		return;
	}
}