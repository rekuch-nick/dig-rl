function chargeWands(){
	
	var bns = 0;
	if(characterHasProp(pc, "Wandskill")){
		bns = itemPropBonus(pc, "Wandskill");
	}
	
	var bonus = 0;
	while(bns > 5){ bns -= 5; bonus ++; }
	if(irandom_range(0, 4) < bns){ bonus ++; }
	
	for(var i=0; i<26; i++){
		if(pc.bag[i] != noone && pc.bag[i].kind == "Wand"){
			var n = pc.wandSkill + pc.bag[i].wandCharge + bonus;
			pc.bag[i].charges = clamp(pc.bag[i].charges + n, 0, 99);
		}
	}
}