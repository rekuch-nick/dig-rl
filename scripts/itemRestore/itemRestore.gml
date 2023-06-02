function itemRestore(itm){
	if(itm.bonus < itm.bonusMax){
		itm.bonus = itm.bonusMax;
		logMessage(itm.nam + " is restored.");
	}
}