function spawnStatueMob(aa, bb){
	
	
	
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