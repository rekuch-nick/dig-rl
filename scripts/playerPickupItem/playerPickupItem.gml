function playerPickupItem(a, b){
	if(!inBounds(a, b)){ return; }
	var i = ww.pmap[a, b];
	if(i == noone){ return; }
	
	if(i.object_index == objRougeFlake){
		instance_create_depth(0, 0, ww.layerS, objScreenRougeUpgrade);
		
		instance_destroy(ww.pmap[a, b]);
		ww.pmap[a, b] = noone;
		return;
	}
	
	if(playerGetEmptyBagSlot() == -1){ 
		logMessage("Backpack is full.")
		return; 
	}
	
	pc.bag[playerGetEmptyBagSlot()] = i.itm;
	var n = i.itm.nam;
	if(i.itm.potID != -1 && !pc.potionKnown[i.itm.potID]){
		n = "Unidentified Potion";
	}
	logMessage("Picked up " + string(n));
	
	
	instance_destroy(ww.pmap[a, b]);
	ww.pmap[a, b] = noone;
	
	
	manageBag();
}