function manageBagSwap(i1, i2){
	
	var tempItem = pc.bag[i1];
	
	pc.bag[i1] = pc.bag[i2];
	
	pc.bag[i2] = tempItem;
	
	
	
	return; 
	
	/*
	if(pc.gear[ww.gsWep] == pc.bag[i1]){ 
		pc.gear[ww.gsWep] = i2; 
	} else if (pc.gear[ww.gsWep] == i2) {
		
	}
	
	
	if(pc.gear[ww.gsArm] == i1){ pc.gear[ww.gsArm] = i2; }
	if(pc.gear[ww.gsArm] == i2){ pc.gear[ww.gsArm] = i1; }
	
	if(pc.gear[ww.gsRing] == i1){ pc.gear[ww.gsRing] = i2; }
	if(pc.gear[ww.gsRing] == i2){ pc.gear[ww.gsRing] = i1; }
	
	if(pc.gear[ww.gsRing2] == i1){ pc.gear[ww.gsRing2] = i2; }
	if(pc.gear[ww.gsRing2] == i2){ pc.gear[ww.gsRing2] = i1; }
	*/
	
}