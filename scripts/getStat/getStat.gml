function getStat(who, what){
	var n = 0;
	
	if(what == "str"){
		n = who.str;
	}
	
	
	if(what == "int"){
		n = who.int;
	}
	
	
	
	if(what == "agi"){
		n = who.agi;
	}
	
	
	return n;
}