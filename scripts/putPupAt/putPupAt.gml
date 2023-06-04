function putPupAt(t, a, b){
	
	if(t == noone){ t = randomItem(); }
	
	if(t == "Gear"){
		
		var bns = clamp(floor((pc.stage + 2) / 5), 2, 6);
		
		if(choose(true, false)){
			var tt = getItem(randomWeaponType());
			tt = itemEnchant(tt, bns, true);
			itemEnchantWepProp(tt, -1);
		} else {
			var tt = getItem(randomArmorType());
			tt = itemEnchant(tt, bns, true);
			itemEnchantArmorProp(tt, -1);
		}
		t = tt;
	} else {
	
		t = getItem(t);
	}
	
	if(!inBounds(a, b)){ return noone; }
	if(ww.bmap[a, b] != noone){ 
		instance_destroy(ww.bmap[a, b]);
		ww.bmap[a, b] = noone; 
	}
	if(ww.mmap[a, b] != noone){ return noone; }
	if(ww.pmap[a, b] != noone){ return noone; }
	
	ww.pmap[a, b] = instance_create_depth(a * 64, b * 64, ww.layerP, objPup);
	ww.pmap[a, b].sprite_index = t.img;
	ww.pmap[a, b].itm = t;
	return ww.pmap[a, b];
	
}