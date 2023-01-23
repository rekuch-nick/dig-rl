function itemEnchant(itm, val){
	
	itm.bonus = itm.bonus + val;
	
	itm.col = c_white;
	if(itm.bonus < 0){ itm.col = c_red; }
	if(itm.bonus >= 1){ itm.col = c_lime; }
	if(itm.bonus >= 3){ itm.col = c_blue; }
	if(itm.bonus >= 5){ itm.col = c_fuchsia; }
	if(itm.bonus >= 7){ itm.col = c_orange; }
	if(itm.bonus >= 9){ itm.col = c_yellow; }
	
	logMessage(itm.nam + " becomes +" + string(itm.bonus));
	
	return itm;
}