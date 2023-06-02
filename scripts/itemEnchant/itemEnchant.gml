function itemEnchant(itm, val, quiet){
	
	itm.bonus += val;
	if(val > 0){
		itm.bonusMax += val;
	}
	
	itm.col = itemColorByBonus(itm.bonus);
	
	if(!quiet){
		logMessage(itm.nam + " becomes +" + string(itm.bonus));
	}
	
	return itm;
}