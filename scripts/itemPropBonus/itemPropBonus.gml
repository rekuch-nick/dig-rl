function itemPropBonus(c, s){
	
	var index = -1;
	for(var i=0; i<26; i++){
		if( itemHasProp(c.gear[i], s) ){ 
			index = i; 
			break;
		}
	}
	
	if(index == -1){ return 0; }
	
	
	return c.gear[index].bonus;
}