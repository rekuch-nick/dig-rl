function characterRemoveProp(c, s){
	
	var n = -1;
	for(var i=0; i<array_length(c.props); i++){
		if(c.props[i] == s){ n = i; break; }
	}
	
	if(n != -1){
		logMessage(c.nam + " loses " + c.props[n]);
		c.props[n] = "removed";
	}
}