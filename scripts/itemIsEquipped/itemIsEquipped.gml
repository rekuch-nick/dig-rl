function itemIsEquipped(itm){
	
	for(var i=0; i<12; i++){
		if(pc.gear[i] == itm){ return i; }
	}
	
	return -1;
}