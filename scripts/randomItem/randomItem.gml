function randomItem(r){
	
	if(r == -1){
		r = irandom_range(1, 10);
	}
	
	
	if(r >= 1 && r <= 2){ return "Food"; }
	
	if( r >= 3 && r <= 8){ return choose(
			"Healing Potion",
			"Blasting Potion",
			"Ice Potion",
			"Poison Potion",
			"Swordmastery Potion",
			"Defense Potion",
			"Warp Potion",
			"Displacement Potion",
			"Restore Potion",
			"Slow Potion"
	); }
	
	if(r >= 9 && r <= 9){ return choose(
			"Leather Armor","Leather Armor",
			"Scale Armor","Scale Armor","Scale Armor",
			"Chain Armor","Chain Armor","Chain Armor",
			"Banded Armor","Banded Armor",
			"Splint Armor",
			"Plate Armor",
			
			"Sword","Sword","Sword",
			"Axe","Axe","Axe",
			"Spear","Spear","Spear",
			"Maul","Maul","Maul"

	); }
	
	
	if(r == 10){ return choose(
			"Ring of Protection",
			"Ring of Sustenance",
			"Ring of Lightning",
			"Ring of Striking",
			
			"STR Potion",
			"AGI Potion",
			"Bless Weapon Potion","Bless Weapon Potion",
			"Bless Armor Potion","Bless Armor Potion",
			"Bless Rings Potion"
	); }
	
	
	

}