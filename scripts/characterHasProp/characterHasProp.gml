function characterHasProp(c, s){
	for(var i=0; i<26; i++){
		if(c.gear[i] != noone){
			if(itemHasProp(c.gear[i], s)){ return true; }
		}
	}
	
	for(var i=0; i<array_length(c.props); i++){
		if(c.props[i] == s){ return true; }
	}
	
	return false;
}