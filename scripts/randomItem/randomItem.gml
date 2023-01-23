function randomItem(r){
	
	if(r == -1){
		r = irandom_range(1, 9);
		
		
		
		
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
	
	if( r >= 3 && r <= 8){ return choose(
			"Healing Potion",
			"Blasting Potion",
			"Ice Potion",
			"Poison Potion",
			"Swordmastery Potion",
			"Defense Potion",
			"Warp Potion"
	); }
	
	if( r == 9 ){ return choose(
			"STR Potion",
			"AGI Potion"
	); }

}