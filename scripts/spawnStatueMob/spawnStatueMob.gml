function spawnStatueMob(aa, bb){
	
	
	
	for(var a=aa-2; a<=aa+2; a++){ for(var b=bb-2; b<=bb+2; b++){
		if(a == aa && b == bb){ continue; }
		if(orthDistance(a, b, aa, bb) >= 4){ continue; }
	
		if(inBounds(a, b) && ww.bmap[a, b] != noone){
			var spt = ww.bmap[a, b].sprite_index;
			if(spt == imgBlockMobStatue && choose(true, false, false, false, false, false, false, false) ){
				if(ww.mmap[a, b] == noone){
					ww.mmap[a, b] = instance_create_depth(a*64, b*64, ww.layerM, objMobStatue);
					logMessage("The statue comes to life");
					
					tileBreak(a, b);
				}
			}
			
			
		}
		
		if(inBounds(a, b)){
			var spt = ww.fmap[a, b].sprite_index;
			if(!characterHasProp(pc, "Still") && !characterHasProp(pc, "Seal") ){ 
				if(spt == imgBGDirtGrave && choose(true, false, false, false, false) ){
					if(ww.mmap[a, b] == noone){
						ww.fmap[a, b].sprite_index = imgBGDirtGraveBroken
						ww.mmap[a, b] = instance_create_depth(a*64, b*64, ww.layerM, objMobZomb);
						logMessage("Something rises from the ground");
						if(ww.bmap[a, b] != noone){ tileBreak(a, b); }
					}
				}
			}
		}
	
	
	
	}}
	
	
	
	
	
	
	
	for(var a=aa-1; a<=aa+1; a++){ for(var b=bb-1; b<=bb+1; b++){
		if(a == aa && b == bb){ continue; }
	
		if(inBounds(a, b) && ww.bmap[a, b] != noone){
			var spt = ww.bmap[a, b].sprite_index;
			if(spt == imgBlockMobStatue && choose(true, false, false, false) ){
				if(ww.mmap[a, b] == noone){
					ww.mmap[a, b] = instance_create_depth(a*64, b*64, ww.layerM, objMobStatue);
					logMessage("The statue comes to life");
					
					tileBreak(a, b);
				}
			}
		}
	
	
	
	}}

}