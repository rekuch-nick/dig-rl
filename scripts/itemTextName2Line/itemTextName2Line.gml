function itemTextName2Line(itm){
	
	var s = itm.desc;
	
	if(itm.kind == "Potion"){
		if(itm.potID != -1 && !pc.potionKnown[itm.potID]){
			s = "Drink or Throw to ID";
		}
	}
	
	
	
	if(itm.kind == "Armor"){
		var ss = "W:" + string(itm.armorCheck) + " D:" + string(itm.armor);
		if(itemHasProp(itm, "Not Metal")){
			ss += " Not Metal";
		}
		ss += "\n";
		s = ss + s;
	}
	
	
	/*
	
	if(itm == noone){ return "----------"; }
	var s = itm.nam;
		
	if(itm.bonus != 0){ s = s + " +" + string(itm.bonus); }
	//var c = itm.col;
		
	if(itm.kind == "Potion" && itm.potID != -1 && !pc.potionKnown[itm.potID]){
		s = "Unidentified Potion"; 
		//c = c_white;
	}
	
	*/
	
	return itemTextName1Line(itm) + "\n" + s;

}