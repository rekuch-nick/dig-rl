function chargeWands(){
	
	var bns = 0;
	if(characterHasProp(pc, "Wandskill")){
		bns = itemPropBonus(pc, "Wandskill");
	}
	
	var bonus = 0;
	while(bns > 2){ bns -= 2; bonus ++; }
	if(irandom_range(0, 1) < bns){ bonus ++; }
	
	for(var i=0; i<26; i++){
		if(pc.bag[i] != noone && pc.bag[i].kind == "Wand"){
			var n = pc.wandSkill + pc.bag[i].wandCharge + bonus;
			pc.bag[i].charges = pc.bag[i].charges + n;
			
			if(pc.bag[i].charges > pc.bag[i].chargesMax){
				if(pc.bag[i].nam == "Spark Wand"){
					logMessage("The apprentice wand is full of energy!");
					logMessage("The apprentice wand reacting!");
					logMessage("The apprentice wand TRANSFORMS!");
					
					pc.bag[i] = itemEnchant(getItem("Storm Staff"), 7, true);
				}
			}
			
			pc.bag[i].charges = clamp(pc.bag[i].charges, 0, pc.bag[i].chargesMax);
		}
	}
}