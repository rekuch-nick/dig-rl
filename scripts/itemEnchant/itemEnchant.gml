function itemEnchant(itm, val, quiet){
	
	itm.bonus = itm.bonus + val;
	
	itm.col = itemColorByBonus(itm.bonus);
	
	if(!quiet){
		logMessage(itm.nam + " becomes +" + string(itm.bonus));
	}
	
	return itm;
}