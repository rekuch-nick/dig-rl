function manageBagZ(n){
	
	if(itemIsEquipped(pc.bag[n]) == -1){
		logClear();
		var s = pc.bag[n].nam;
		if(pc.bag[n].potID != -1 && !pc.potionKnown[pc.bag[n].potID]){s = "Unidentified Potion"; }
		logMessage("Throw the " + s + " where?");
		logMessage("Warning: thrown items will be LOST. R-Click to cancel");
			
			
		var s = instance_create_depth(0, 0, ww.layerS, objScreenThrow);
		s.index = n;
			
	}
	
	
	

}