function playerHasItem(s){
	for(var i=0; i<26; i++){
		if(pc.bag[i] != noone){
			if(pc.bag[i].nam == s){
				return true;
			}
		}
	}
	return false;
}