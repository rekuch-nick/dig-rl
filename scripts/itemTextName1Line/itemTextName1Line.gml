function itemTextName1Line(itm){
	
	if(itm == noone){ return "----------"; }
	var s = itm.nam;
		
	if(itm.bonus != 0){ s = s + " +" + string(itm.bonus); }
	//var c = itm.col;
		
	if(itm.kind == "Potion" && itm.potID != -1 && !pc.potionKnown[itm.potID]){
		s = "Unidentified Potion"; 
		//c = c_white;
	}
	
	
	return s;

}