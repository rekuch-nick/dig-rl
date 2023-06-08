function playerZapStrip(c){
	
	//if(choose(true, false)){ return; }
	
	if(choose(true, false)){
		var r = irandom_range(1, 4);
		if(r == 1){	c.slow += 10; }
		if(r == 2){	c.sick += 10; }
		if(r == 3){	c.frozen += 3; }
		if(r == 4){	c.poison += 10; burning += 2; }
	} else {
		var r = irandom_range(1, 3);
		if(r == 1){ characterRemoveProp(c, "Flying"); }
		if(r == 1){ characterRemoveProp(c, "Fire Strikes"); }
		if(r == 1){ characterRemoveProp(c, "Poison Strikes"); }
		if(r == 2){ characterRemoveProp(c, "Slowing Strikes"); }
		if(r == 2){ characterRemoveProp(c, "Sickening Strikes"); }
		if(r == 2){ characterRemoveProp(c, "Ice Strikes"); }
		if(r == 3){ characterRemoveProp(c, "Cripple Touch"); }
		if(r == 3){ characterRemoveProp(c, "Cripple Slap"); }
		if(r == 3){ characterRemoveProp(c, "Death Curse"); }
		if(r == 3){ characterRemoveProp(c, "Sunder"); }
	}
	
}