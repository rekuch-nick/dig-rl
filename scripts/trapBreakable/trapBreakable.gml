function trapBreakable(a, b){
	if(!inBounds(a, b)){ return false; }
	if(ww.tmap[a, b] == noone){ return false; }
	
	if(ww.tmap[a, b].nam == "Web"){ return true; }
	if(ww.tmap[a, b].nam == "Spikes"){ return true; }
	
	
	return false;
}