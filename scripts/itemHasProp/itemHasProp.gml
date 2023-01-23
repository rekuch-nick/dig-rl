function itemHasProp(itm, s){
	if(itm == noone){ return false; }
	
	for(var i=0; i<array_length(itm.props); i++){
		if(itm.props[i] == s){ return true; }
	}
	return false;
}