function playerGetEmptyBagSlot(){
	for(var i=0; i<26-4; i++){
		if(pc.bag[i] == noone){ return i; }
	}
	return -1;
}