function unequip(wi, bi){
	
	var i = playerGetEmptyBagSlot();
	
	if(i == -1){ return; }
	
	pc.gear[wi] = noone;
	manageBagSwap(i, bi);
	
}