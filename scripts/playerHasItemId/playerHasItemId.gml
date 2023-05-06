function playerHasItemId(s){
	for(var i=0; i<26; i++){
		if(pc.bag[i] != noone){
			if(pc.bag[i].nam == s){
				return i;
			}
		}
	}
	return -1;
}