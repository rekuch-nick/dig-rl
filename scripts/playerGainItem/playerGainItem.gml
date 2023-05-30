function playerGainItem(itm){
	
	
	
	if(itm.stacks && playerHasItem(itm.nam)){
		
		var stackIndex = playerHasItemId(itm.nam);
		pc.bag[stackIndex].charges ++;
		
	} else {
		var i = playerGetEmptyBagSlot();
		if(i != -1){
			pc.bag[i] = itm;
		}
	}

}