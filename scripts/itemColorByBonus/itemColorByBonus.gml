function itemColorByBonus(n){
	
	var col = c_white;
	if(n < 0){ col = c_dkgray; }
	if(n >= 1){ col = c_lime; }
	if(n >= 3){ col = c_blue; }
	if(n >= 5){ col = c_fuchsia; }
	if(n >= 7){ col = c_orange; }
	if(n >= 9){ col = c_red; }
	
	
	return col;
}