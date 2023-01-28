function playerDigest(n){
	
	
	if(characterHasProp(pc, "Slow Digestion")){
		var bns = itemPropBonus(pc, "Slow Digestion");
		
		n = n * (1 - (bns/10) );
	}
	
	
	pc.food = clamp(pc.food - n, 0, pc.foodMax);
	
	
}