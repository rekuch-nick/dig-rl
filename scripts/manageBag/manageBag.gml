function manageBag(){
	
	
	// move equipped items to bottom
	// shift unequipped items up
	
	
	
	for(var i=0; i<26-4; i++){
		if(pc.gear[ww.gsWep] != noone && pc.gear[ww.gsWep] == pc.bag[i]){ manageBagSwap(i, 22); shifted = true; }
		if(pc.gear[ww.gsArm] != noone && pc.gear[ww.gsArm] == pc.bag[i]){ manageBagSwap(i, 23); shifted = true; }
		if(pc.gear[ww.gsRing] != noone && pc.gear[ww.gsRing] == pc.bag[i]){ manageBagSwap(i, 24); shifted = true; }
		if(pc.gear[ww.gsRing2] != noone && pc.gear[ww.gsRing2] == pc.bag[i]){ manageBagSwap(i, 25); shifted = true; }
	}
	
	var shifted = true;
	while(shifted){
		shifted = false;
		
		if(shifted){ continue; }
		
		for(i=1; i<26-4; i++){
			if(pc.bag[i] != noone && pc.bag[i-1] == noone && itemIsEquipped(pc.bag[i]) == -1){
				manageBagSwap(i, i-1); shifted = true; break;
			}
		}
		
	}
	
	
}