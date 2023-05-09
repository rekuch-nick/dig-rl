function itemTextName1LineAt(itm){
	
	var equiped = false;
	for(var j=0; j<4; j++){
		if(itm == pc.gear[j]){ equiped = true; }
	}
	
	if(equiped && itm != noone){
		return "@ " + itemTextName1Line(itm);
	} else {
		return "  " + itemTextName1Line(itm);
	}

}