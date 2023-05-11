function itemPropBonus(c, s){
	
	var b = 0;
	
	var index = -1;
	for(var i=0; i<26; i++){
		if( itemHasProp(c.gear[i], s) ){ 
			index = i; 
			b += c.gear[i].bonus;
		}
	}
	
	//if(index == -1){ return 0; }
	
	
	//return c.gear[index].bonus;
	
	return b;
}