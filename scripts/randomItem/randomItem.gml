function randomItem(r){
	
	if(r == -1){
		r = irandom_range(1, 2);
		
		
		
		
	}
	
	
	if(r == 1){ return "Food"; }
	
	if(r == 2){ return choose(
			"Leather Armor","Leather Armor","Leather Armor","Leather Armor",
			"Scale Armor","Scale Armor","Scale Armor",
			"Chain Armor","Chain Armor","Chain Armor",
			"Banded Armor","Banded Armor",
			"Splint Armor",
			"Plate Armor",
		); }

}