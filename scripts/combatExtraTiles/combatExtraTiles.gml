function combatExtraTiles(c, aa, bb){
	
	if(characterHasProp(c, "Cleave")){
		
		for(var i=1; i<9; i++){
			var a = c.xSpot; var b = c.ySpot;
			if(i == 1){ b --; }
			if(i == 2){ a ++; }
			if(i == 3){ b ++; }
			if(i == 4){ a --; }
			if(i == 5){ a = c.xSpot -1; b = c.ySpot - 1; }
			if(i == 6){ a = c.xSpot -1; b = c.ySpot + 1; }
			if(i == 7){ a = c.xSpot +1; b = c.ySpot - 1; }
			if(i == 8){ a = c.xSpot +1; b = c.ySpot + 1; }
			
			if(a != aa || b != bb){
				c.attackIsCleave = true;
				combatTile(c, a, b);
				c.attackIsCleave = false;
			}
		}
		
		
	}
	
	
	if(characterHasProp(c, "Pierce")){
		var a = aa; var b = bb;
		var a2 = aa; var b2 = bb;
		
		if(c.xSpot < a){ a ++; a2 += 2; }
		if(c.xSpot > a){ a --; a2 -= 2; }
		if(c.ySpot < b){ b ++; b2 += 2; }
		if(c.ySpot > b){ b --; b2 -= 2; }
		
		combatTile(c, a, b);
		combatTile(c, a2, b2);
	}
	
	
}