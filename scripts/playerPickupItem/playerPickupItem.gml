function playerPickupItem(a, b){
	if(!inBounds(a, b)){ return; }
	var i = ww.pmap[a, b];
	if(i == noone){ return; }
	
	if(playerGetEmptyBagSlot() == -1){ 
		logMessage("Backpack is full.")
		return; 
	}
	
	pc.bag[playerGetEmptyBagSlot()] = i.itm;
	
	instance_destroy(ww.pmap[a, b]);
	ww.pmap[a, b] = noone;
	
	

}