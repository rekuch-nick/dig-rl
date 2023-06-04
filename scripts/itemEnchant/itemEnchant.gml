function itemEnchant(itm, val, quiet){
	
	itm.bonus += val;
	
	itm.bonusMax = max(itm.bonus, itm.bonusMax);
	
	itm.col = itemColorByBonus(itm.bonus);
	
	if(!quiet){
		logMessage(itm.nam + " becomes +" + string(itm.bonus));
	}
	
	return itm;
}